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
static const char *ng0 = "D:/GitHub/VHDL_Modules/Nokia5110_display/Nokia5110_display_controller.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2573695896_3212880686_p_0(char *t0)
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

LAB3:    t1 = (t0 + 7592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 10464);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 10336);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2573695896_3212880686_p_1(char *t0)
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
    int t10;

LAB0:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 10352);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 10528);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 10592);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 10656);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 10720);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 10784);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 10848);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 10912);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 5992U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 10528);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 10592);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 6792U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = (t0 + 10656);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 7112U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = (t0 + 10720);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 7432U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 10784);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 6312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 10848);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 7752U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 10912);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_2573695896_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    unsigned int t9;
    char *t10;
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned char t49;
    unsigned int t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;

LAB0:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1792U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB9;

LAB10:
LAB3:    t1 = (t0 + 10368);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(95, ng0);
    t1 = xsi_get_transient_memory(4032U);
    memset(t1, 0, 4032U);
    t5 = t1;
    t6 = (84U * 8U);
    t7 = (t6 * 1U);
    t8 = t5;
    t9 = (8U * 1U);
    t10 = t8;
    memset(t10, (unsigned char)2, t9);
    t11 = (t9 != 0);
    if (t11 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 22612);
    t15 = (0 - 83);
    t16 = (t15 * -1);
    t17 = (8U * t16);
    t18 = (t8 + t17);
    memcpy(t18, t13, 8U);
    t19 = (t0 + 22620);
    t21 = (1 - 83);
    t22 = (t21 * -1);
    t23 = (8U * t22);
    t24 = (t8 + t23);
    memcpy(t24, t19, 8U);
    t25 = (t0 + 22628);
    t27 = (2 - 83);
    t28 = (t27 * -1);
    t29 = (8U * t28);
    t30 = (t8 + t29);
    memcpy(t30, t25, 8U);
    t31 = (t0 + 22636);
    t33 = (3 - 83);
    t34 = (t33 * -1);
    t35 = (8U * t34);
    t36 = (t8 + t35);
    memcpy(t36, t31, 8U);
    t37 = (t0 + 22644);
    t39 = (4 - 83);
    t40 = (t39 * -1);
    t41 = (8U * t40);
    t42 = (t8 + t41);
    memcpy(t42, t37, 8U);
    t43 = (t0 + 22652);
    t45 = (5 - 83);
    t46 = (t45 * -1);
    t47 = (8U * t46);
    t48 = (t8 + t47);
    memcpy(t48, t43, 8U);
    t49 = (t7 != 0);
    if (t49 == 1)
        goto LAB7;

LAB8:    t51 = (t0 + 10976);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    memcpy(t55, t1, 4032U);
    xsi_driver_first_trans_fast(t51);
    goto LAB3;

LAB5:    t12 = (t7 / t9);
    xsi_mem_set_data(t8, t8, t9, t12);
    goto LAB6;

LAB7:    t50 = (4032U / t7);
    xsi_mem_set_data(t5, t5, t7, t50);
    goto LAB8;

LAB9:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t2 = (t0 + 1672U);
    t8 = *((char **)t2);
    t15 = *((int *)t8);
    t21 = (t15 - 5);
    t6 = (t21 * -1);
    t7 = (t6 * 84U);
    t2 = (t0 + 1512U);
    t10 = *((char **)t2);
    t27 = *((int *)t10);
    t33 = (t27 - 83);
    t9 = (t33 * -1);
    t12 = (t7 + t9);
    t16 = (8U * t12);
    t17 = (0U + t16);
    t2 = (t0 + 10976);
    t13 = (t2 + 56U);
    t14 = *((char **)t13);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 8U);
    xsi_driver_first_trans_delta(t2, t17, 8U, 0LL);
    goto LAB3;

}

static void work_a_2573695896_3212880686_p_3(char *t0)
{
    char t20[16];
    char t23[16];
    char t34[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    int t21;
    char *t22;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 5832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 11040);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(113, ng0);
    t1 = (t0 + 6152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 11104);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 6632U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t1 = (t0 + 11168);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t8;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 6952U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t1 = (t0 + 11232);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t8;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 7272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 11296);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 7592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 11360);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 5832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 10384);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(121, ng0);
    t4 = (t0 + 11424);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(122, ng0);
    t1 = (t0 + 11360);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t10 = (t3 == (unsigned char)3);
    if (t10 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB2;

LAB4:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    t11 = *((unsigned char *)t2);
    t12 = (t11 == (unsigned char)2);
    if (t12 == 1)
        goto LAB14;

LAB15:    t10 = (unsigned char)0;

LAB16:    if (t10 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t10 = (t3 == (unsigned char)3);
    if (t10 != 0)
        goto LAB29;

LAB30:    t1 = (t0 + 7272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t10 = (t3 == (unsigned char)2);
    if (t10 != 0)
        goto LAB42;

LAB43:
LAB9:    goto LAB2;

LAB5:    xsi_set_current_line(124, ng0);
    t1 = (t0 + 11040);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 11296);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 6632U);
    t6 = *((char **)t1);
    t8 = *((int *)t6);
    t17 = (t8 <= 83);
    if (t17 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB9;

LAB11:    t1 = (t0 + 7272U);
    t5 = *((char **)t1);
    t15 = *((unsigned char *)t5);
    t16 = (t15 == (unsigned char)3);
    t3 = t16;
    goto LAB13;

LAB14:    t1 = (t0 + 3272U);
    t4 = *((char **)t1);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)2);
    t10 = t14;
    goto LAB16;

LAB17:    xsi_set_current_line(130, ng0);
    t1 = (t0 + 6152U);
    t7 = *((char **)t1);
    t18 = *((unsigned char *)t7);
    t19 = (t18 == (unsigned char)0);
    if (t19 != 0)
        goto LAB20;

LAB22:    t1 = (t0 + 6152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t10 = (t3 == (unsigned char)1);
    if (t10 != 0)
        goto LAB25;

LAB26:    xsi_set_current_line(135, ng0);
    t1 = (t0 + 5672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6952U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t21 = (t8 - 5);
    t26 = (t21 * -1);
    xsi_vhdl_check_range_of_index(5, 0, -1, t8);
    t27 = (t26 * 84U);
    t1 = (t0 + 6632U);
    t5 = *((char **)t1);
    t35 = *((int *)t5);
    t36 = (t35 - 83);
    t37 = (t36 * -1);
    xsi_vhdl_check_range_of_index(83, 0, -1, t35);
    t38 = (t27 + t37);
    t39 = (8U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t6 = (t0 + 11488);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t22 = (t9 + 56U);
    t24 = *((char **)t22);
    memcpy(t24, t1, 8U);
    xsi_driver_first_trans_fast(t6);

LAB21:    xsi_set_current_line(138, ng0);
    t1 = (t0 + 11424);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(139, ng0);
    t1 = (t0 + 11296);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 6632U);
    t9 = *((char **)t1);
    t21 = *((int *)t9);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t20, t21, 7);
    t24 = ((IEEE_P_2592010699) + 4024);
    t22 = xsi_base_array_concat(t22, t23, t24, (char)99, (unsigned char)2, (char)97, t1, t20, (char)101);
    t25 = (t20 + 12U);
    t26 = *((unsigned int *)t25);
    t26 = (t26 * 1U);
    t27 = (1U + t26);
    t28 = (8U != t27);
    if (t28 == 1)
        goto LAB23;

LAB24:    t29 = (t0 + 11488);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t22, 8U);
    xsi_driver_first_trans_fast(t29);
    goto LAB21;

LAB23:    xsi_size_not_matching(8U, t27, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 22660);
    t5 = (t0 + 6952U);
    t6 = *((char **)t5);
    t8 = *((int *)t6);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t20, t8, 3);
    t9 = ((IEEE_P_2592010699) + 4024);
    t22 = (t34 + 0U);
    t24 = (t22 + 0U);
    *((int *)t24) = 0;
    t24 = (t22 + 4U);
    *((int *)t24) = 4;
    t24 = (t22 + 8U);
    *((int *)t24) = 1;
    t21 = (4 - 0);
    t26 = (t21 * 1);
    t26 = (t26 + 1);
    t24 = (t22 + 12U);
    *((unsigned int *)t24) = t26;
    t7 = xsi_base_array_concat(t7, t23, t9, (char)97, t1, t34, (char)97, t5, t20, (char)101);
    t24 = (t20 + 12U);
    t26 = *((unsigned int *)t24);
    t26 = (t26 * 1U);
    t27 = (5U + t26);
    t11 = (8U != t27);
    if (t11 == 1)
        goto LAB27;

LAB28:    t25 = (t0 + 11488);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t7, 8U);
    xsi_driver_first_trans_fast(t25);
    goto LAB21;

LAB27:    xsi_size_not_matching(8U, t27, 0);
    goto LAB28;

LAB29:    xsi_set_current_line(144, ng0);
    t1 = (t0 + 11424);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(145, ng0);
    t1 = (t0 + 6152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t10 = (t3 == (unsigned char)0);
    if (t10 != 0)
        goto LAB31;

LAB33:    t1 = (t0 + 6152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t10 = (t3 == (unsigned char)1);
    if (t10 != 0)
        goto LAB34;

LAB35:    xsi_set_current_line(150, ng0);
    t1 = (t0 + 11104);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(151, ng0);
    t1 = (t0 + 6632U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t3 = (t8 >= 83);
    if (t3 != 0)
        goto LAB36;

LAB38:    xsi_set_current_line(162, ng0);
    t1 = (t0 + 6632U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t21 = (t8 + 1);
    t1 = (t0 + 11168);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t21;
    xsi_driver_first_trans_fast(t1);

LAB37:
LAB32:    goto LAB9;

LAB31:    xsi_set_current_line(146, ng0);
    t1 = (t0 + 11104);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB32;

LAB34:    xsi_set_current_line(148, ng0);
    t1 = (t0 + 11104);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB32;

LAB36:    xsi_set_current_line(152, ng0);
    t1 = (t0 + 6952U);
    t4 = *((char **)t1);
    t21 = *((int *)t4);
    t10 = (t21 < 5);
    if (t10 != 0)
        goto LAB39;

LAB41:    xsi_set_current_line(156, ng0);
    t1 = (t0 + 11168);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(157, ng0);
    t1 = (t0 + 11232);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(158, ng0);
    t1 = (t0 + 11360);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(159, ng0);
    t1 = (t0 + 11040);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB40:    goto LAB37;

LAB39:    xsi_set_current_line(153, ng0);
    t1 = (t0 + 11168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(154, ng0);
    t1 = (t0 + 6952U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t21 = (t8 + 1);
    t1 = (t0 + 11232);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t21;
    xsi_driver_first_trans_fast(t1);
    goto LAB40;

LAB42:    xsi_set_current_line(166, ng0);
    t1 = (t0 + 11296);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

}


extern void work_a_2573695896_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2573695896_3212880686_p_0,(void *)work_a_2573695896_3212880686_p_1,(void *)work_a_2573695896_3212880686_p_2,(void *)work_a_2573695896_3212880686_p_3};
	xsi_register_didat("work_a_2573695896_3212880686", "isim/Nokia5110_tbench_isim_beh.exe.sim/work/a_2573695896_3212880686.didat");
	xsi_register_executes(pe);
}
