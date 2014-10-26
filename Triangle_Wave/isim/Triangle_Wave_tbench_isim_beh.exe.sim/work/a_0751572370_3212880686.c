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
static const char *ng0 = "D:/GitHub/VHDL_Modules/Triangle_Wave/Triangle_Wave.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0751572370_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    static char *nl0[] = {&&LAB11, &&LAB12};

LAB0:    xsi_set_current_line(53, ng0);
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
LAB3:    t1 = (t0 + 4120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 4216);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2568U);
    t5 = *((char **)t2);
    t9 = *((int *)t5);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t4 = (t9 >= t10);
    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t10 = (t9 + 1);
    t1 = (t0 + 2568U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t10;

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2568U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = 1;
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB10:    goto LAB8;

LAB11:    xsi_set_current_line(61, ng0);
    t5 = (t0 + 2152U);
    t6 = *((char **)t5);
    t9 = *((int *)t6);
    t5 = (t0 + 1832U);
    t7 = *((char **)t5);
    t10 = *((int *)t7);
    t4 = (t9 >= t10);
    if (t4 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t10 = *((int *)t5);
    t14 = (t9 + t10);
    t1 = (t0 + 4216);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = t14;
    xsi_driver_first_trans_fast(t1);

LAB14:    goto LAB10;

LAB12:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 <= 0);
    if (t3 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t10 = *((int *)t5);
    t14 = (t9 - t10);
    t1 = (t0 + 4216);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = t14;
    xsi_driver_first_trans_fast(t1);

LAB17:    goto LAB10;

LAB13:    xsi_set_current_line(62, ng0);
    t5 = (t0 + 4280);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)1;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t10 = *((int *)t5);
    t14 = (t9 - t10);
    t1 = (t0 + 4216);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4280);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t10 = *((int *)t5);
    t14 = (t9 + t10);
    t1 = (t0 + 4216);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

}

static void work_a_0751572370_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(82, ng0);

LAB3:    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t1, t4, 16);
    t5 = (t0 + 4344);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast_port(t5);

LAB2:    t10 = (t0 + 4136);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0751572370_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0751572370_3212880686_p_0,(void *)work_a_0751572370_3212880686_p_1};
	xsi_register_didat("work_a_0751572370_3212880686", "isim/Triangle_Wave_tbench_isim_beh.exe.sim/work/a_0751572370_3212880686.didat");
	xsi_register_executes(pe);
}
