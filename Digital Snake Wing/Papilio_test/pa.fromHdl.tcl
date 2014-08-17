
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Papilio_test -dir "D:/GitHub/VHDL_Modules/Papilio_test/planAhead_run_2" -part xc3s500evq100-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Test_blinky.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Test_blinky.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Test_blinky $srcset
add_files [list {Test_blinky.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500evq100-5
