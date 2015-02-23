/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *MC_25LC640A_LIBRARY_P_1396835567;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    mc_25lc640a_library_p_1396835567_init();
    ieee_p_1242562249_init();
    uart_library_a_4140323202_3212880686_init();
    uart_library_a_2292769034_3212880686_init();
    uart_library_a_2090800054_3212880686_init();
    uart_library_a_4222785664_3212880686_init();
    uart_library_a_0586551877_3212880686_init();
    spi_a_2431581248_3212880686_init();
    spi_a_0852731450_3212880686_init();
    spi_a_2090800054_3212880686_init();
    spi_a_3390172556_3212880686_init();
    spi_a_1012328464_3212880686_init();
    spi_a_1639252690_3212880686_init();
    mc_25lc640a_library_a_1205673475_3212880686_init();
    work_a_3796989329_3212880686_init();
    work_a_3404702035_2372691052_init();


    xsi_register_tops("work_a_3404702035_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    MC_25LC640A_LIBRARY_P_1396835567 = xsi_get_engine_memory("mc_25lc640a_library_p_1396835567");

    return xsi_run_simulation(argc, argv);

}
