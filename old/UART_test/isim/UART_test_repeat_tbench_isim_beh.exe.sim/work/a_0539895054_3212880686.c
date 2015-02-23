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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/GitHub/VHDL_Modules/UART_test/UART_test_repeat.vhd";



static void work_a_0539895054_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 >= 100);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 3672);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t9 = (t3 + 1);
    t1 = (t0 + 2288U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t9;

LAB3:    t1 = (t0 + 3592);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 3672);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}


extern void work_a_0539895054_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0539895054_3212880686_p_0};
	xsi_register_didat("work_a_0539895054_3212880686", "isim/UART_test_repeat_tbench_isim_beh.exe.sim/work/a_0539895054_3212880686.didat");
	xsi_register_executes(pe);
}
