import gdsfactory as gf
from gf180.layers import LAYER
import numpy as np

@gf.cell
def c4_bump_octagon( pad_layer, pad_width, opening_layer, opening_size, label_layer, label_str ) -> gf.Component:
    c = gf.Component( )

    # Create top-metal C4 pad
    pad_octagon = c << gf.components.regular_polygon(
        sides = 8,
        side_length = pad_width / ( 1 + np.sqrt( 2 ) ),
        layer = pad_layer
    )
    # Create circular passivation opening over top metal pad
    opening_circle = c << gf.components.circle(
        radius = opening_size / 2,
        angle_resolution = 1,
        layer = opening_layer
    )

    # Add a label
    c.add_label(
        text = label_str,
        position = ( 0, 0 ),
        layer = label_layer
    )

    return c

if __name__ == "__main__":
    # ================================================================================================
    # Generate a GDS file with an array of pads and labels, mimicking the top-level of some flip-chip SoC
    # ================================================================================================

    # ================================================================================================
    # Pull the needed layers from the PDK
    # Reference this file: https://github.com/gdsfactory/gf180/blob/main/gf180/layers.py
    # ================================================================================================
    
    pad_layer = LAYER.metaltop
    opening_layer = LAYER.pad # Bad name in PDK layer setup: this is a passivation opening, not a pad
    label_layer = LAYER.metaltop_label
    outline_layer = LAYER.border

    print( "Top metal layer is:", pad_layer )
    print( "Passivation opening layer is:", opening_layer )
    print( "Label layer is:", label_layer )

    # ================================================================================================
    # Define other parameters
    # ================================================================================================

    # Define pad sizes
    pad_width = 100
    opening_size = 75

    # Define offset from bottom-right corner and array spacings
    os_x = 250
    os_y = 250
    pitch_x = 200
    pitch_y = 250

    # ================================================================================================
    # Create gdsfactory component to assemble the GDS into
    # ================================================================================================

    pad_assembly = gf.Component( name = "io_pads" )

    # ================================================================================================
    # Make some VDD and VSS pads using arrays
    # It is important to use both arrays and individual instances for this example to make sure that both work
    # ================================================================================================

    pad_VSS = c4_bump_octagon(
        pad_layer = pad_layer,
        pad_width = pad_width,
        opening_layer = opening_layer,
        opening_size = opening_size,
        label_layer = label_layer,
        label_str = "DVSS" # I found that just using "VSS" for the label causes it to disappear!
    )

    pad_VDD = c4_bump_octagon(
        pad_layer = pad_layer,
        pad_width = pad_width,
        opening_layer = opening_layer,
        opening_size = opening_size,
        label_layer = label_layer,
        label_str = "DVDD" # I found that just using "VDD" for the label causes it to disappear!
    )
    
    array_VSS = gf.components.array( component = pad_VSS, columns = 3, rows = 2, spacing = ( 2 * pitch_x, pitch_y ) )
    array_VDD = gf.components.array( component = pad_VDD, columns = 3, rows = 2, spacing = ( 2 * pitch_x, pitch_y ) )

    pad_assembly.add_ref( array_VSS )
    temp = pad_assembly.add_ref( array_VDD )
    temp.move( ( pitch_x, pitch_y ) )

    # ================================================================================================
    # Add an array with only one element, which is a component consisting of other arrays
    # ================================================================================================

    component_both_arrays = gf.Component( name = "component_both_arrays" )
    component_both_arrays.add_ref( array_VSS )
    temp = component_both_arrays.add_ref( array_VDD )
    temp.move( ( pitch_x, 0 ) )

    array_mixed = gf.components.array( component = component_both_arrays, columns = 1, rows = 1, spacing = ( 0, 0 ) )
    temp = pad_assembly.add_ref( array_mixed )
    temp.move( ( 0, 6 * pitch_y ) )

    # ================================================================================================
    # Add some VDD and VSS pads as individual instances
    # ================================================================================================

    temp = pad_assembly.add_ref( pad_VSS )
    temp.move( ( 0, 2 * pitch_y ) )
    temp = pad_assembly.add_ref( pad_VDD )
    temp.move( ( 2 * pitch_x, 2 * pitch_y ) )

    # ================================================================================================
    # Make some other IO pads one by one with unique names
    # ================================================================================================

    num_x = 5
    num_y = 3
    for ind_x in range( num_x ):
        for ind_y in range( num_y ):
            pad_num = ind_x + ind_y * num_x
            pad_IO =c4_bump_octagon(
                pad_layer = pad_layer,
                pad_width = pad_width,
                opening_layer = opening_layer,
                opening_size = opening_size,
                label_layer = label_layer,
                label_str = "IO{:d}".format( pad_num )
            )
            ref = pad_assembly.add_ref( pad_IO )
            ref.move( ( ( 0.5 + ind_x ) * pitch_x, ( 3 + ind_y ) * pitch_y ) )

    # ================================================================================================
    # Now put pads and chip outline on top-level
    # ================================================================================================

    toplevel_assembly = gf.Component( name = "chip_top" )

    pads = toplevel_assembly.add_ref( pad_assembly )
    pads.move( ( os_x, os_y ) )

    outline = toplevel_assembly << gf.components.rectangle(
        size = ( 2 * os_x + 5 * pitch_x, 2 * os_y + 7 * pitch_y ),
        layer = outline_layer
    )

    # ================================================================================================
    # Write example chip GDS
    # ================================================================================================

    gds_path_out = 'inputs/test_chip.gds'
    toplevel_assembly.write_gds( gds_path_out )
    print( 'Wrote GDS to:', gds_path_out )





