
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Latch_based_Flip_Flop -dir "D:/GitHub/VHDL_Modules/Latch_based_Flip_Flop/planAhead_run_1" -part xc3s250evq100-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Latch_based_Flip_Flop.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Latch_based_Flip_Flop.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Latch_based_Flip_Flop $srcset
add_files [list {Latch_based_Flip_Flop.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s250evq100-5
