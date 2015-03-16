
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name MC_25LC640A -dir "D:/GitHub/VHDL_Modules/EEPROM/MC_25LC640A/planAhead_run_2" -part xc3s500evq100-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "MC_25LC640A_Test.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../../SPI/Library/SPI/SPI_MASTER_TX.vhd}]]
set_property file_type VHDL $hdlfile
set_property library SPI $hdlfile
set hdlfile [add_files [list {../../SPI/Library/SPI/SPI_MASTER_RX.vhd}]]
set_property file_type VHDL $hdlfile
set_property library SPI $hdlfile
set hdlfile [add_files [list {../../SPI/Library/SPI/SCLK_CE_GEN.vhd}]]
set_property file_type VHDL $hdlfile
set_property library SPI $hdlfile
set hdlfile [add_files [list {../../SPI/Library/SPI/mod_m_counter.vhd}]]
set_property file_type VHDL $hdlfile
set_property library SPI $hdlfile
set hdlfile [add_files [list {../../SPI/Library/SPI/FIFO.vhd}]]
set_property file_type VHDL $hdlfile
set_property library SPI $hdlfile
set hdlfile [add_files [list {../../UART/UART_Library/UART_TX.vhd}]]
set_property file_type VHDL $hdlfile
set_property library UART_Library $hdlfile
set hdlfile [add_files [list {../../UART/UART_Library/UART_RX.vhd}]]
set_property file_type VHDL $hdlfile
set_property library UART_Library $hdlfile
set hdlfile [add_files [list {../../UART/UART_Library/mod_m_counter.vhd}]]
set_property file_type VHDL $hdlfile
set_property library UART_Library $hdlfile
set hdlfile [add_files [list {../../UART/UART_Library/FIFO.vhd}]]
set_property file_type VHDL $hdlfile
set_property library UART_Library $hdlfile
set hdlfile [add_files [list {../../SPI/Library/SPI/SPI_MASTER_MODULE.vhd}]]
set_property file_type VHDL $hdlfile
set_property library SPI $hdlfile
set hdlfile [add_files [list {../MC_25LC640A_Library/MC_25LC640A_TYPES.vhd}]]
set_property file_type VHDL $hdlfile
set_property library MC_25LC640A_Library $hdlfile
set hdlfile [add_files [list {../../UART/UART_Library/UART.vhd}]]
set_property file_type VHDL $hdlfile
set_property library UART_Library $hdlfile
set hdlfile [add_files [list {../MC_25LC640A_Library/MC_25LC640A_CONTROLLER.vhd}]]
set_property file_type VHDL $hdlfile
set_property library MC_25LC640A_Library $hdlfile
set hdlfile [add_files [list {MC_25LC640A_Test.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top MC_25LC640A_Test $srcset
add_files [list {MC_25LC640A_Test.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500evq100-5
