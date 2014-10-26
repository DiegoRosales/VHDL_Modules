
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ADC_Test -dir "D:/GitHub/VHDL_Modules/Digital Snake Wing/ADC_Test/planAhead_run_1" -part xc3s500evq100-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ADC_test.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {DCM32to27.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ADC_Control.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ADC_test.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top ADC_test $srcset
add_files [list {ADC_test.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500evq100-4
