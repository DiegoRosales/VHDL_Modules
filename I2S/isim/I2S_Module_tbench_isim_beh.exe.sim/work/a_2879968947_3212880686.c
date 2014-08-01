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
static const char *ng0 = "D:/GitHub/VHDL_Modules/I2S/I2S_Module.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2879968947_3212880686_p_0(char *t0)
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
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    int t15;
    int t16;
    int t17;
    int t18;
    unsigned char t19;
    int t20;
    int t21;
    int t22;
    unsigned char t23;
    char *t24;
    static char *nl0[] = {&&LAB9, &&LAB8};

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1952U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4920);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5016);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5080);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5144);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(58, ng0);
    t1 = xsi_get_transient_memory(48U);
    memset(t1, 0, 48U);
    t2 = t1;
    memset(t2, (unsigned char)2, 48U);
    t5 = (t0 + 5208);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 48U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5272);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t10 = (-(1));
    t1 = (t0 + 5336);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 5400);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(65, ng0);
    t6 = (t0 + 5464);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(66, ng0);
    t1 = xsi_get_transient_memory(48U);
    memset(t1, 0, 48U);
    t2 = t1;
    memset(t2, (unsigned char)2, 48U);
    t5 = (t0 + 5208);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 48U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5272);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 5080);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 5080);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(70, ng0);
    t10 = (-(1));
    t1 = (t0 + 5336);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB7;

LAB9:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 5016);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t15 = (24 * 2);
    t16 = (t15 - 1);
    t3 = (t10 <= t16);
    if (t3 != 0)
        goto LAB13;

LAB15:
LAB14:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t15 = (24 * 2);
    t16 = (t15 - 1);
    t3 = (t10 == t16);
    if (t3 != 0)
        goto LAB25;

LAB27:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 < 0);
    if (t3 != 0)
        goto LAB31;

LAB32:
LAB26:    goto LAB7;

LAB10:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 5016);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5208);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 48U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t10 = (0 - 47);
    t12 = (t10 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5272);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 5400);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t17 = *((int *)t5);
    t18 = (24 - 1);
    t19 = (t17 < t18);
    if (t19 == 1)
        goto LAB19;

LAB20:    t1 = (t0 + 2952U);
    t6 = *((char **)t1);
    t20 = *((int *)t6);
    t21 = (24 * 2);
    t22 = (t21 - 2);
    t23 = (t20 > t22);
    t4 = t23;

LAB21:    if (t4 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 5080);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB17:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 >= 0);
    if (t3 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5144);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB23:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t15 = (t10 + 1);
    t1 = (t0 + 5336);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t15;
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 5080);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB17;

LAB19:    t4 = (unsigned char)1;
    goto LAB21;

LAB22:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t15 = (24 * 2);
    t16 = (t15 - 1);
    t1 = (t0 + 2952U);
    t6 = *((char **)t1);
    t17 = *((int *)t6);
    t18 = (t16 - t17);
    t20 = (t18 - 47);
    t12 = (t20 * -1);
    xsi_vhdl_check_range_of_index(47, 0, -1, t18);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t5 + t14);
    t4 = *((unsigned char *)t1);
    t7 = (t0 + 5144);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t24 = *((char **)t11);
    *((unsigned char *)t24) = t4;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB23;

LAB25:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t19 = (t4 == (unsigned char)2);
    if (t19 != 0)
        goto LAB28;

LAB30:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5208);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 48U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 5336);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);

LAB29:    goto LAB26;

LAB28:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 5400);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB29;

LAB31:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t15 = *((int *)t5);
    t16 = (t15 + 1);
    t1 = (t0 + 5336);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t16;
    xsi_driver_first_trans_fast(t1);
    goto LAB26;

}

static void work_a_2879968947_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(111, ng0);
    t1 = ((unsigned char)2 == (unsigned char)2);
    if (t1 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = (t0 + 1992U);
    t11 = *((char **)t10);
    t12 = *((unsigned char *)t11);
    t10 = (t0 + 5528);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t12;
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t17 = (t0 + 4936);
    *((int *)t17) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 5528);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_2879968947_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2879968947_3212880686_p_0,(void *)work_a_2879968947_3212880686_p_1};
	xsi_register_didat("work_a_2879968947_3212880686", "isim/I2S_Module_tbench_isim_beh.exe.sim/work/a_2879968947_3212880686.didat");
	xsi_register_executes(pe);
}
