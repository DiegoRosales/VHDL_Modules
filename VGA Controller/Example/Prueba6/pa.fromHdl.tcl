
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Prueba6 -dir "D:/Users/Diego/Documents/FPGA/VGA/Prueba6/Prueba6/planAhead_run_1" -part xc3s100ecp132-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Imagen_1.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Sync.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Imagen_1.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Imagen_1 $srcset
add_files [list {Imagen_1.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-4
