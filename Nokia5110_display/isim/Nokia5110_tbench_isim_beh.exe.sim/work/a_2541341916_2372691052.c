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
static const char *ng0 = "D:/GitHub/VHDL_Modules/Nokia5110_display/Nokia5110_tbench.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2541341916_2372691052_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t2 = (t0 + 3112U);
    t3 = *((char **)t2);
    t2 = (t0 + 9300U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t1, t3, t2, 1);
    t5 = (t1 + 12U);
    t6 = *((unsigned int *)t5);
    t7 = (1U * t6);
    t8 = (4U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 5824);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t4, 4U);
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 5728);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t7, 0);
    goto LAB6;

}

static void work_a_2541341916_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5160U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 5888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3568U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4968);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 5888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 3568U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4968);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2541341916_2372691052_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    unsigned char t12;

LAB0:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5744);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(93, ng0);
    t3 = (t0 + 3688U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 < 3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 3688U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 >= 3);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = (unsigned char)0;

LAB12:    if (t2 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 3688U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 >= 7);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = (unsigned char)0;

LAB17:    if (t2 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 3688U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 >= 8);
    if (t2 != 0)
        goto LAB18;

LAB19:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(94, ng0);
    t3 = (t0 + 5952);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 6016);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3688U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3688U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t11;
    goto LAB6;

LAB8:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 5952);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 6016);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 3688U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3688U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t11;
    goto LAB6;

LAB10:    t1 = (t0 + 3688U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t12 = (t11 < 7);
    t2 = t12;
    goto LAB12;

LAB13:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 5952);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 6016);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 3688U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3688U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t11;
    goto LAB6;

LAB15:    t1 = (t0 + 3688U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t12 = (t11 < 8);
    t2 = t12;
    goto LAB17;

LAB18:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 6016);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 5952);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}


extern void work_a_2541341916_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2541341916_2372691052_p_0,(void *)work_a_2541341916_2372691052_p_1,(void *)work_a_2541341916_2372691052_p_2};
	xsi_register_didat("work_a_2541341916_2372691052", "isim/Nokia5110_tbench_isim_beh.exe.sim/work/a_2541341916_2372691052.didat");
	xsi_register_executes(pe);
}
