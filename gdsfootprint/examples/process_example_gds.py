# Imports
import gdsfootprint as fp
import os

if __name__ == "__main__":

	# Configuration
	# Don't use any Python libraries here because we make no assumptions about the GDS source

	label_layer_in = ( 53, 10 )
	pad_layer_in = ( 53, 0 )

	dirname_current = os.path.dirname(__file__)

	gds_file_in = os.path.join( dirname_current, "inputs/test_chip.gds" )
	gds_file_interposer_pad = os.path.join( dirname_current, "inputs/interposer_pad.gds" )

	gds_file_out = os.path.join( dirname_current, "outputs/test_footprint.gds" )
	altium_symbol_script_out = os.path.join( dirname_current, "outputs/generate_altium_symbol.pas" )
	altium_footprint_script_out = os.path.join( dirname_current, "outputs/generate_altium_footprint.pas" )

	# ================================================================================================
	# Step 1: Load and parse the chip GDS to find the bump locations and their labels (method #1)
	# In this version, search by cell name (assuming there is a single unique cell name for the bumps)
	# ================================================================================================

	print( 'Step 1: Parsing GDS by name.' )

	parsed_gds_by_name = fp.parse_gds(
		gds_file_in = gds_file_in,
		label_layer = label_layer_in,
		search_by_cell_name = True,
		search_cell_name = 'c4_bump'
	)

	# ================================================================================================
	# Step 2: Load and parse the chip GDS to find the bump locations and their labels (method #2)
	# In this version, search using the top metal layer without assuming cell names are the same
	# This can happen in academic tapeouts when the top-level design is composed of many different
	# designers' GDS files pasted together
	# ================================================================================================

	print( 'Step 2: Parsing GDS by layer' )

	parsed_gds_by_layer = fp.parse_gds(
		gds_file_in = gds_file_in,
		label_layer = label_layer_in,
		search_by_cell_name = False,
		search_pad_layer = pad_layer_in,
		pad_size = 120.71
	)

	# Double check that the two methods produced identical results
	assert( parsed_gds_by_name == parsed_gds_by_layer )

	# ================================================================================================
	# Step 2: Generate a mirrored GDS footprint for a silicon interposer
	# ================================================================================================

	label_layer_out = ( 53, 10 )

	fp.generate_footprint_gds(
		parsed_gds_in = parsed_gds_by_name,
		gds_file_interposer_pad = gds_file_interposer_pad,
		label_layer_out = label_layer_out,
		gds_file_out = gds_file_out
	)

	# ================================================================================================
	# Step 3: Generate Altium symbol and footprint generation scripts for an organic interposer or PCB
	# ================================================================================================

	fp.generate_footprint_altium_scripts(
		parsed_gds_in = parsed_gds_by_name,
		altium_sym_script_out = altium_symbol_script_out,
		altium_fp_script_out = altium_footprint_script_out
	)



