# Imports
from dataclasses import dataclass # https://stackoverflow.com/questions/35988/c-like-structures-in-python
import numpy as np
# KLayout Python API
import pya

# Define data class representing a pad (extract from GDS, then send to output writer)
@dataclass
class Pad:
	x_um : float
	y_um : float
	x_size_um : float
	y_size_um : float
	name : str

# ================================================================================================
# Main methods
# ================================================================================================

def parse_gds( gds_file_in, label_layer, search_by_cell_name, search_cell_name = None, search_pad_layer = None, pad_size = None ):
	# =================================================================
	print( 'Loading input gds file ', gds_file_in )
	# =================================================================

	layout_in = pya.Layout( )
	layout_in.read( gds_file_in )
	topcell_in = layout_in.top_cell( )

	print( 'Layout dbu =', layout_in.dbu )

	# =================================================================
	print( 'Searching for IO pads...' )
	# =================================================================

	if search_by_cell_name:
		print( 'Searching by cell name for {:s}'.format( search_cell_name ) )
		pad_matches = find_insts_with_trans_by_name(
			cell = topcell_in,
			name_str = search_cell_name,
			verbose = True
		)
		pad_trans_list = [ x[ 1 ] for x in pad_matches ]
	else:
		# Get the layer index that corresponds to the lpp we want to search for in the input layout
		pad_layerinfo = pya.LayerInfo( search_pad_layer )
		pad_layer_index = layout_in.find_layer( pad_layerinfo )

		print( 'Searching by shapes on layer:', pad_layerinfo, ', index =', pad_layer_index )
		pad_trans_list = find_all_nsided_polygons_on_layer(
			search_layer_index = pad_layer_index,
			layout = layout_in,
			size = pad_size,
			n_sides = 8
		)
	
	# Convert GDS translations (trans) into coordinate tuples
	pad_coord_list = [ ( trans.disp.x * layout_in.dbu, trans.disp.y * layout_in.dbu ) for trans in pad_trans_list ]

	# Remove any duplicates (next time check for duplicates in the source GDS within the footprint generation script and prune them there)
	pad_coord_list = set( pad_coord_list )

	print( 'Found {:d} IO pads in GDS footprint'.format( len( pad_coord_list ) ) )

	# =================================================================
	print( 'Searching for labels...' )
	# =================================================================

	# Get the layer index that corresponds to the lpp we want to search for in the input layout
	label_layerinfo = pya.LayerInfo( label_layer )
	label_layer_index = layout_in.find_layer( label_layerinfo )

	print( 'Searching by text on layer:', label_layerinfo, ', index =', label_layer_index )

	label_trans_tuple_list = find_text_labels_with_trans( label_layer_index, layout_in.top_cell( ).flatten( -1, True ) )
	label_coord_list = [ ( trans.disp.x * layout_in.dbu, trans.disp.y * layout_in.dbu ) for ( label, trans ) in label_trans_tuple_list ]
	label_list = [ label for ( label, trans ) in label_trans_tuple_list ]

	print( label_list )
	print( 'Found {:d} labels in GDS footprint'.format( len( label_trans_tuple_list ) ) )

	# Check that the number of pads and labels matches
	assert( len( pad_coord_list ) == len( label_trans_tuple_list ) ), "Number of pads and labels should match."

	# =================================================================
	print( 'Associating pads with labels and building pad list...' )
	# =================================================================

	pad_list = [ ]
	label_index_list = [ ]

	for pad_coord in pad_coord_list:
		dist_list = [ ]

		# Iterate through labels and compute the distance to each one,
		# go through whole list each time so that any labels that could be associated with multiple pads are caught
		for label_coord in label_coord_list:
			pad_to_label_dist = np.sqrt(
				( pad_coord[ 0 ] - label_coord[ 0 ] )**2 + ( pad_coord[ 1 ] - label_coord[ 1 ] )**2
			)
			dist_list.append( pad_to_label_dist )

		# Find the label with minimum distance
		label_index = dist_list.index( min( dist_list ) )			
		label_index_list.append( label_index )

		# Add pad entry
		pad_list.append(
			Pad(
				x_um = pad_coord[ 0 ],
				y_um = pad_coord[ 1 ],
				x_size_um = 105,
				y_size_um = 105,
				name = label_list[ label_index ].translate( { ord( '<' ) : '_', ord( '>' ) : None } ) # Replace Pin<X> with Pin_X
			)
		)

	# Check that the label index associations were unique (no single label associated with multiple pads)
	assert( len( label_index_list ) == len( label_list ) ), "Label to pad association not unique."

	# =================================================================
	print( 'Done parsing!\n' )
	# =================================================================
	return pad_list

def generate_footprint_gds( parsed_gds_in, gds_file_interposer_pad, label_layer_out, gds_file_out ):
	return False

def generate_footprint_altium_scripts( parsed_gds_in, altium_sym_script_out, altium_fp_script_out ):
	return False

# ================================================================================================
# Utility methods
# ================================================================================================

# Utility method for recursively searching for pads in GDS cell
def find_insts_with_trans_by_name( cell, name_str, trans = pya.Trans.new( 0, 0 ), verbose = False ):
	inst_list = cell.each_inst( )
	matches = [ ]

	for inst in inst_list:
		if inst.is_regular_array( ):
			if verbose:
				print( 'Scanning array {:d} X {:d} array:'.format( inst.na, inst.nb ), inst.cell.name )
			for i in range( inst.na ):
				for j in range( inst.nb ):				
					trans_i = pya.Trans( int( i * inst.da.x / inst.cell.layout( ).dbu ), int( i * inst.da.y / inst.cell.layout( ).dbu ) )
					trans_j = pya.Trans( int( j * inst.db.x / inst.cell.layout( ).dbu ), int( j * inst.db.y / inst.cell.layout( ).dbu ) )
					array_item_trans = trans * inst.trans * trans_j * trans_i
					if name_str in inst.cell.name:
						if verbose:
							print( 'Detected matching inst that is a {:d} X {:d} array:'.format( inst.na, inst.nb ), inst.cell.name )
							print( array_item_trans )
						matches.append( [ inst, array_item_trans ] )
					else:
						new_matches = find_insts_with_trans_by_name( inst.cell, name_str, array_item_trans )
						if len( new_matches ) > 0 :
							matches += new_matches
		else:
			if name_str in inst.cell.name:
				matches.append( [ inst, trans * inst.trans ] )
			else:
				new_matches = find_insts_with_trans_by_name( inst.cell, name_str, trans * inst.trans )
				if len( new_matches ) > 0 :
					matches += new_matches

	return matches

# Utility method for recursively searching for labels in GDS cell
def find_text_labels_with_trans( search_layer_index, cell, trans = pya.Trans.new( 0, 0 ) ):
	inst_list = cell.each_inst( )
	matches = [ ]

	# Iterate through all shapes (texts) in the cell
	for shape in cell.each_shape( search_layer_index ):
		if shape.is_text( ):
			matches.append( ( shape.text.string, trans * shape.text_trans ) )

	# Recursively search through instances (child cells)
	for inst in inst_list:
		new_matches = find_text_labels_with_trans( search_layer_index, inst.cell, trans * inst.trans )
		if len( new_matches ) > 0:
			matches += new_matches

	return matches

# Utility method for finding pad-shaped polygons on a layer
def find_all_nsided_polygons_on_layer( search_layer_index, layout, size, n_sides = 8, tolerance = 0.010 ):
	top_cell = layout.top_cell( )

	# Flatten topcell so we can iterate through shapes directly
	top_cell.flatten( -1, True ) # levels, prune

	centers = [ ]
	for shape in top_cell.shapes( search_layer_index ).each( ):
		# Check for octagon with tolerance, which is needed due to small rounding bugs that can happen in gdsfactory
		if ( shape.simple_polygon.num_points( ) == n_sides ) and ( abs( shape.dbbox( ).width( ) - size ) < tolerance ) and ( abs( shape.dbbox( ).height( ) - size ) < tolerance ):
			trans = pya.Trans.new( shape.bbox( ).center( ) )
			centers.append( trans )
		# Debugging that uncovered slightly different sizes than expected for octagons (off by a few nm)
		elif ( abs( shape.dbbox( ).width( ) - size ) < 1 ) and ( abs( shape.dbbox( ).height( ) - size ) < 1 ):
			print( 'Note: Excluded shape with width = {:f} and height = {:f}.'.format( shape.dbbox( ).width( ), shape.dbbox( ).height( ) ) )

	# Only return unique centers, some GDS files may have duplicate IOs
	return list( set( centers ) )