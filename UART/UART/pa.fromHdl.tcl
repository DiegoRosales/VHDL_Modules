
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name UART -dir "D:/GitHub/VHDL_Modules/Book_examples/UART/planAhead_run_1" -part xc3s250evq100-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Echo_test.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {UART_TX.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {UART_RX.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {mod_m_counter.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {FIFO.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {UART.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Echo_test.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Echo_test $srcset
add_files [list {Echo_test.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s250evq100-5
