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
static const char *ng0 = "D:/GitHub/VHDL_Modules/Digital Snake Wing/DAC_Test/Square_wave.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_0482656317_3212880686_p_0(char *t0)
{
    char t15[16];
    char t19[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 2888U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 == 1);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2888U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 1;

LAB6:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3008U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t14 = (t5 + 1);
    t1 = (t0 + 3008U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t14;
    goto LAB3;

LAB5:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 1832U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t8);
    t3 = (t0 + 4392);
    t10 = (t3 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3008U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t1 = (t0 + 2768U);
    t4 = *((char **)t1);
    t14 = *((int *)t4);
    t2 = (t5 >= t14);
    if (t2 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3008U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t16 = (47 - 47);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t1 = (t3 + t18);
    t4 = (t19 + 0U);
    t7 = (t4 + 0U);
    *((int *)t7) = 47;
    t7 = (t4 + 4U);
    *((int *)t7) = 0;
    t7 = (t4 + 8U);
    *((int *)t7) = -1;
    t5 = (0 - 47);
    t20 = (t5 * -1);
    t20 = (t20 + 1);
    t7 = (t4 + 12U);
    *((unsigned int *)t7) = t20;
    t7 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t15, t1, t19);
    t10 = (t15 + 12U);
    t20 = *((unsigned int *)t10);
    t21 = (1U * t20);
    t2 = (48U != t21);
    if (t2 == 1)
        goto LAB11;

LAB12:    t11 = (t0 + 4456);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t22 = (t13 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t7, 48U);
    xsi_driver_first_trans_delta(t11, 0U, 48U, 0LL);
    goto LAB9;

LAB11:    xsi_size_not_matching(48U, t21, 0);
    goto LAB12;

}


extern void work_a_0482656317_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0482656317_3212880686_p_0};
	xsi_register_didat("work_a_0482656317_3212880686", "isim/square_wave_tbench_isim_beh.exe.sim/work/a_0482656317_3212880686.didat");
	xsi_register_executes(pe);
}
