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
static const char *ng0 = "D:/GitHub/VHDL_Modules/UART/UART.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2532736160_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    static char *nl0[] = {&&LAB8, &&LAB9};

LAB0:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1312U);
    t5 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t14 = *((int *)t2);
    t3 = (t14 == 0);
    if (t3 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t14 = *((int *)t2);
    t15 = (t14 - 1);
    t1 = (t0 + 6568);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t15;
    xsi_driver_first_trans_fast(t1);

LAB25:    t1 = (t0 + 6184);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    goto LAB3;

LAB5:    xsi_set_current_line(42, ng0);
    t6 = (t0 + 2312U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t6 = (char *)((nl0) + t8);
    goto **((char **)t6);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(46, ng0);
    t9 = (t0 + 6312);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB7;

LAB9:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 3768U);
    t2 = *((char **)t1);
    t14 = *((int *)t2);
    t1 = (t0 + 3648U);
    t6 = *((char **)t1);
    t15 = *((int *)t6);
    t3 = (t14 >= t15);
    if (t3 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3768U);
    t2 = *((char **)t1);
    t14 = *((int *)t2);
    t15 = (t14 + 1);
    t1 = (t0 + 3768U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t15;

LAB14:    goto LAB7;

LAB10:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 6312);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 6440);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 3768U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 6504);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t4;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t14 = *((int *)t2);
    t3 = (t14 < 8);
    if (t3 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t14 = *((int *)t2);
    t4 = (t14 >= 8);
    if (t4 == 1)
        goto LAB21;

LAB22:    t3 = (unsigned char)0;

LAB23:    if (t3 != 0)
        goto LAB19;

LAB20:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 6440);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB17:    goto LAB14;

LAB16:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2472U);
    t6 = *((char **)t1);
    t1 = (t0 + 3888U);
    t7 = *((char **)t1);
    t15 = *((int *)t7);
    t16 = (8 - t15);
    t17 = (t16 - 1);
    t18 = (t17 - 7);
    t19 = (t18 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t17);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t1 = (t6 + t21);
    t4 = *((unsigned char *)t1);
    t9 = (t0 + 6312);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t4;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t14 = *((int *)t2);
    t15 = (t14 + 1);
    t1 = (t0 + 3888U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t15;
    goto LAB17;

LAB19:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 6312);
    t7 = (t1 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3888U);
    t2 = *((char **)t1);
    t14 = *((int *)t2);
    t15 = (t14 + 1);
    t1 = (t0 + 3888U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t15;
    goto LAB17;

LAB21:    t1 = (t0 + 3888U);
    t6 = *((char **)t1);
    t15 = *((int *)t6);
    t16 = (8 + 2);
    t5 = (t15 < t16);
    t3 = t5;
    goto LAB23;

LAB24:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3888U);
    t6 = *((char **)t1);
    t15 = *((int *)t6);
    t1 = (t0 + 6568);
    t7 = (t1 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t15;
    xsi_driver_first_trans_fast(t1);
    goto LAB25;

}

static void work_a_2532736160_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(82, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6632);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6200);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2532736160_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(83, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6696);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 6216);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2532736160_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 6760);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 6232);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 6760);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_2532736160_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(85, ng0);

LAB3:    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t3 = (t0 + 6824);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2532736160_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2532736160_3212880686_p_0,(void *)work_a_2532736160_3212880686_p_1,(void *)work_a_2532736160_3212880686_p_2,(void *)work_a_2532736160_3212880686_p_3,(void *)work_a_2532736160_3212880686_p_4};
	xsi_register_didat("work_a_2532736160_3212880686", "isim/UART_tbench_isim_beh.exe.sim/work/a_2532736160_3212880686.didat");
	xsi_register_executes(pe);
}
