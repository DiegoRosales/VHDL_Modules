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
static const char *ng0 = "D:/GitHub/VHDL_Modules/Book_examples/UART/Echo_test_tbench.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1396790802_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3920);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3080);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3920);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3080);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1396790802_2372691052_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3840);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 2168U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 > 120);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2168U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 + 1);
    t1 = (t0 + 2168U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t8;

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 2288U);
    t7 = *((char **)t3);
    t8 = *((int *)t7);
    t9 = (t8 > 35);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2288U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 + 1);
    t1 = (t0 + 2288U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t8;

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 2288U);
    t10 = *((char **)t3);
    t3 = (t10 + 0);
    *((int *)t3) = 0;
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1928U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 > 13);
    if (t2 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1928U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 + 1);
    t1 = (t0 + 1928U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t8;

LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1928U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 0);
    if (t2 != 0)
        goto LAB14;

LAB16:    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 > 0);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = (unsigned char)0;

LAB21:    if (t2 != 0)
        goto LAB17;

LAB18:    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 > 8);
    if (t6 == 1)
        goto LAB24;

LAB25:    t2 = (unsigned char)0;

LAB26:    if (t2 != 0)
        goto LAB22;

LAB23:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;

LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3984);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 + 1);
    t1 = (t0 + 2048U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t8;
    goto LAB15;

LAB17:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1512U);
    t7 = *((char **)t1);
    t1 = (t0 + 2048U);
    t10 = *((char **)t1);
    t12 = *((int *)t10);
    t13 = (t12 - 1);
    t14 = (t13 - 7);
    t15 = (t14 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t13);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t1 = (t7 + t17);
    t18 = *((unsigned char *)t1);
    t11 = (t0 + 3984);
    t19 = (t11 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = t18;
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 + 1);
    t1 = (t0 + 2048U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t8;
    goto LAB15;

LAB19:    t1 = (t0 + 2048U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t9 = (t8 <= 8);
    t2 = t9;
    goto LAB21;

LAB22:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 3984);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t19 = *((char **)t11);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2048U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 + 1);
    t1 = (t0 + 2048U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t8;
    goto LAB15;

LAB24:    t1 = (t0 + 2048U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t9 = (t8 < 12);
    t2 = t9;
    goto LAB26;

}


extern void work_a_1396790802_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1396790802_2372691052_p_0,(void *)work_a_1396790802_2372691052_p_1};
	xsi_register_didat("work_a_1396790802_2372691052", "isim/Echo_test_tbench_isim_beh.exe.sim/work/a_1396790802_2372691052.didat");
	xsi_register_executes(pe);
}
