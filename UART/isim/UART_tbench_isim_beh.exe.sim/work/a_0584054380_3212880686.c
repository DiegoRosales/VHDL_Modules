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


static void work_a_0584054380_3212880686_p_0(char *t0)
{
    char t14[16];
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
    unsigned int t15;
    char *t16;
    int t17;
    int t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    static char *nl0[] = {&&LAB8, &&LAB9};

LAB0:    xsi_set_current_line(36, ng0);
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
LAB3:    t1 = (t0 + 5656);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    goto LAB3;

LAB5:    xsi_set_current_line(38, ng0);
    t6 = (t0 + 2312U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t6 = (char *)((nl0) + t8);
    goto **((char **)t6);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(42, ng0);
    t9 = (t0 + 5784);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB7;

LAB9:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t17 = *((int *)t2);
    t1 = (t0 + 3368U);
    t6 = *((char **)t1);
    t18 = *((int *)t6);
    t3 = (t17 >= t18);
    if (t3 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t17 = *((int *)t2);
    t18 = (t17 + 1);
    t1 = (t0 + 3488U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t18;

LAB16:    goto LAB7;

LAB10:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 8612U);
    t1 = xsi_base_array_concat(t1, t14, t7, (char)99, (unsigned char)2, (char)97, t6, t9, (char)101);
    t15 = (1U + 8U);
    t5 = (9U != t15);
    if (t5 == 1)
        goto LAB13;

LAB14:    t10 = (t0 + 5848);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t16 = *((char **)t13);
    memcpy(t16, t1, 9U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 5912);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    xsi_size_not_matching(9U, t15, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3488U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 5784);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t4;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3608U);
    t2 = *((char **)t1);
    t17 = *((int *)t2);
    t3 = (t17 <= 8);
    if (t3 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 3608U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 5912);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB19:    goto LAB16;

LAB18:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2472U);
    t6 = *((char **)t1);
    t1 = (t0 + 3608U);
    t7 = *((char **)t1);
    t18 = *((int *)t7);
    t19 = (8 - t18);
    t20 = (t19 - 8);
    t15 = (t20 * -1);
    xsi_vhdl_check_range_of_index(8, 0, -1, t19);
    t21 = (1U * t15);
    t22 = (0 + t21);
    t1 = (t6 + t22);
    t4 = *((unsigned char *)t1);
    t9 = (t0 + 5976);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t4;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3608U);
    t2 = *((char **)t1);
    t17 = *((int *)t2);
    t18 = (t17 + 1);
    t1 = (t0 + 3608U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t18;
    goto LAB19;

}

static void work_a_0584054380_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 6040);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t16 = (t0 + 5672);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t1 = (t0 + 6040);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0584054380_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6104);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 5688);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0584054380_3212880686_p_3(char *t0)
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

LAB0:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 6168);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 5704);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 6168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_0584054380_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0584054380_3212880686_p_0,(void *)work_a_0584054380_3212880686_p_1,(void *)work_a_0584054380_3212880686_p_2,(void *)work_a_0584054380_3212880686_p_3};
	xsi_register_didat("work_a_0584054380_3212880686", "isim/UART_tbench_isim_beh.exe.sim/work/a_0584054380_3212880686.didat");
	xsi_register_executes(pe);
}
