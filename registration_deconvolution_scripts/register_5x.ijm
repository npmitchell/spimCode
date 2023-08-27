


dataset="/mnt/crunch/actb2-mem-cherry_h2afva-gfp/202307111346_4views_1p4um_1ms/dataset.xml";

runline="select_xml="+dataset+" process_angle=[All angles] process_illumination=[All illuminations] process_timepoint=[Single Timepoint (Select from List)] ";
runline+="processing_timepoint=[Timepoint 0] ";
runline4=runline+"registration_algorithm=[Iterative closest-point (ICP, no invariance)] type_of_registration=[Register timepoints individually] interest_points_channel_1=beads interest_points_channel_2=beads fix_tiles=[Fix first tile] map_back_tiles=[Do not map back (use this if tiles are fixed)] transformation=Affine regularize_model model_to_regularize_with=Rigid lamba=0.10 maximal_distance=5 maximal_number=100";
runline5=runline+"registration_algorithm=[Fast 3d geometric hashing (rotation invariant)] type_of_registration=[Register timepoints individually] interest_points_channel_1=beads interest_points_channel_2=beads fix_tiles=[Fix first tile] map_back_tiles=[Do not map back (use this if tiles are fixed)] transformation=Affine regularize_model model_to_regularize_with=Rigid lamba=0.10 allowed_error_for_ransac=5 significance=10");



run("Register Dataset based on Interest Points", runline4);
run("Register Dataset based on Interest Points", runline5);