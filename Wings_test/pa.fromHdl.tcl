
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Wings_test -dir "D:/GitHub/VHDL_Modules/Wings_test/planAhead_run_1" -part xc3s500evq100-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Wings_test.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Wings_test.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Wings_test $srcset
add_files [list {Wings_test.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500evq100-5
