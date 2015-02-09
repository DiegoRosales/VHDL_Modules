
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name UART_test -dir "D:/GitHub/VHDL_Modules/UART_test/planAhead_run_1" -part xc3s500evq100-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "UART_test_repeat.ucf" [current_fileset -constrset]
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
set hdlfile [add_files [list {UART_test_echo.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top UART_test_echo $srcset
add_files [list {UART_test_repeat.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500evq100-4
