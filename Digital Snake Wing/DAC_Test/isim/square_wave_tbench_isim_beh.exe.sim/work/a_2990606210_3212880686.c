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
static const char *ng0 = "D:/GitHub/VHDL_Modules/Digital Snake Wing/DAC_Test/MAX5556.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2990606210_3212880686_p_0(char *t0)
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
    int t11;
    unsigned char t12;
    unsigned char t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    int t20;
    unsigned char t21;
    unsigned char t22;
    static char *nl0[] = {&&LAB8, &&LAB9};

LAB0:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1632U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(146, ng0);
    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 7200);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t11;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(147, ng0);
    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t1 = (t0 + 7264);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t11;
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 6544);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(72, ng0);
    t1 = xsi_get_transient_memory(48U);
    memset(t1, 0, 48U);
    t5 = t1;
    memset(t5, (unsigned char)2, 48U);
    t6 = (t0 + 6688);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 48U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 6752);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(75, ng0);
    t11 = (0 - 1);
    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = t11;
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 4248U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB3;

LAB5:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(82, ng0);
    t6 = (t0 + 6816);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(84, ng0);
    t11 = (0 - 1);
    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = t11;
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB7;

LAB9:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 7136);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB14:    goto LAB7;

LAB10:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 6880);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6688);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 48U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 6752);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 6944);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)0);
    if (t13 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 7008);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t3 = (t11 >= 0);
    if (t3 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 7072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB23:
LAB17:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t12 = (t11 == 23);
    if (t12 == 1)
        goto LAB31;

LAB32:    t4 = (unsigned char)0;

LAB33:    if (t4 == 1)
        goto LAB28;

LAB29:    t3 = (unsigned char)0;

LAB30:    if (t3 != 0)
        goto LAB25;

LAB27:    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t12 = (t11 == 23);
    if (t12 == 1)
        goto LAB39;

LAB40:    t4 = (unsigned char)0;

LAB41:    if (t4 == 1)
        goto LAB36;

LAB37:    t3 = (unsigned char)0;

LAB38:    if (t3 != 0)
        goto LAB34;

LAB35:    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t3 = (t11 < 23);
    if (t3 != 0)
        goto LAB45;

LAB46:
LAB26:    xsi_set_current_line(137, ng0);
    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t14 = (t11 + 1);
    t1 = (t0 + 4128U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t14;
    goto LAB14;

LAB16:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 7008);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t3 = (t11 >= 0);
    if (t3 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 7072);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB20:    goto LAB17;

LAB19:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t1 = (t0 + 4008U);
    t6 = *((char **)t1);
    t14 = *((int *)t6);
    t15 = (t14 - 47);
    t16 = (t15 * -1);
    xsi_vhdl_check_range_of_index(47, 0, -1, t14);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t1 = (t5 + t18);
    t4 = *((unsigned char *)t1);
    t7 = (t0 + 7072);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t19 = *((char **)t10);
    *((unsigned char *)t19) = t4;
    xsi_driver_first_trans_fast(t7);
    goto LAB20;

LAB22:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t1 = (t0 + 4008U);
    t6 = *((char **)t1);
    t14 = *((int *)t6);
    t15 = (t14 + 24);
    t20 = (t15 - 47);
    t16 = (t20 * -1);
    xsi_vhdl_check_range_of_index(47, 0, -1, t15);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t1 = (t5 + t18);
    t4 = *((unsigned char *)t1);
    t7 = (t0 + 7072);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t19 = *((char **)t10);
    *((unsigned char *)t19) = t4;
    xsi_driver_first_trans_fast(t7);
    goto LAB23;

LAB25:    xsi_set_current_line(119, ng0);
    t15 = (0 - 1);
    t1 = (t0 + 4008U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = t15;
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 6944);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB26;

LAB28:    t1 = (t0 + 2632U);
    t6 = *((char **)t1);
    t21 = *((unsigned char *)t6);
    t22 = (t21 == (unsigned char)0);
    t3 = t22;
    goto LAB30;

LAB31:    t1 = (t0 + 4128U);
    t5 = *((char **)t1);
    t14 = *((int *)t5);
    t13 = (t14 >= 127);
    t4 = t13;
    goto LAB33;

LAB34:    xsi_set_current_line(123, ng0);
    t15 = (0 - 1);
    t1 = (t0 + 4008U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = t15;
    xsi_set_current_line(124, ng0);
    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 6944);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(127, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 <= (unsigned char)2);
    if (t4 != 0)
        goto LAB42;

LAB44:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6688);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 48U);
    xsi_driver_first_trans_fast(t1);

LAB43:    goto LAB26;

LAB36:    t1 = (t0 + 2632U);
    t6 = *((char **)t1);
    t21 = *((unsigned char *)t6);
    t22 = (t21 == (unsigned char)1);
    t3 = t22;
    goto LAB38;

LAB39:    t1 = (t0 + 4128U);
    t5 = *((char **)t1);
    t14 = *((int *)t5);
    t13 = (t14 > 255);
    t4 = t13;
    goto LAB41;

LAB42:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 6752);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 6880);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB43;

LAB45:    xsi_set_current_line(135, ng0);
    t1 = (t0 + 4008U);
    t5 = *((char **)t1);
    t14 = *((int *)t5);
    t15 = (t14 + 1);
    t1 = (t0 + 4008U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t15;
    goto LAB26;

}

static void work_a_2990606210_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(151, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7328);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6560);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2990606210_3212880686_p_2(char *t0)
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

LAB0:    xsi_set_current_line(152, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 7392);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t9 = (t0 + 6576);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2990606210_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(153, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7456);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6592);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2990606210_3212880686_p_4(char *t0)
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

LAB0:    xsi_set_current_line(154, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 7520);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t9 = (t0 + 6608);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2990606210_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2990606210_3212880686_p_0,(void *)work_a_2990606210_3212880686_p_1,(void *)work_a_2990606210_3212880686_p_2,(void *)work_a_2990606210_3212880686_p_3,(void *)work_a_2990606210_3212880686_p_4};
	xsi_register_didat("work_a_2990606210_3212880686", "isim/square_wave_tbench_isim_beh.exe.sim/work/a_2990606210_3212880686.didat");
	xsi_register_executes(pe);
}
