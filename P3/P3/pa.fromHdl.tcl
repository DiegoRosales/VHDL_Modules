
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name P3 -dir "D:/GitHub/VHDL_Modules/P3/P3/planAhead_run_1" -part xc3s100ecp132-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "P3.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {P3.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top P3 $srcset
add_files [list {P3.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-5
