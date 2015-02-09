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
static const char *ng0 = "D:/GitHub/VHDL_Modules/SPI/Test Project/SPI_MASTER_MODULE_tbench.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3794195758_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 6232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 8168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 4888U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 6040);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 8168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 4888U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 6040);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3794195758_2372691052_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    int t9;
    unsigned char t10;
    char *t11;
    int t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    unsigned int t17;

LAB0:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(161, ng0);
    t1 = (t0 + 2592U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB50;

LAB52:
LAB51:    t1 = (t0 + 8040);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(117, ng0);
    t3 = (t0 + 8232);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 5248U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)2);
    if (t8 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 5248U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB36;

LAB37:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 5008U);
    t4 = *((char **)t1);
    t9 = *((int *)t4);
    t10 = (t9 < 3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 5008U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t8 = (t9 >= 3);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = (unsigned char)0;

LAB15:    if (t2 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 5008U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t8 = (t9 >= 7);
    if (t8 == 1)
        goto LAB18;

LAB19:    t2 = (unsigned char)0;

LAB20:    if (t2 != 0)
        goto LAB16;

LAB17:    t1 = (t0 + 5008U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t8 = (t9 >= 8);
    if (t8 == 1)
        goto LAB23;

LAB24:    t2 = (unsigned char)0;

LAB25:    if (t2 != 0)
        goto LAB21;

LAB22:    t1 = (t0 + 5008U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t8 = (t9 >= 9);
    if (t8 == 1)
        goto LAB28;

LAB29:    t2 = (unsigned char)0;

LAB30:    if (t2 != 0)
        goto LAB26;

LAB27:    t1 = (t0 + 5008U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t8 = (t9 >= 10);
    if (t8 == 1)
        goto LAB33;

LAB34:    t2 = (unsigned char)0;

LAB35:    if (t2 != 0)
        goto LAB31;

LAB32:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 8296);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(121, ng0);
    t1 = (t0 + 8360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(122, ng0);
    t1 = (t0 + 5008U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t12 = (t9 + 1);
    t1 = (t0 + 5008U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t12;
    goto LAB9;

LAB11:    xsi_set_current_line(124, ng0);
    t1 = (t0 + 13573);
    t6 = (t0 + 8424);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(125, ng0);
    t1 = (t0 + 8296);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(126, ng0);
    t1 = (t0 + 8360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(127, ng0);
    t1 = (t0 + 5008U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t12 = (t9 + 1);
    t1 = (t0 + 5008U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t12;
    goto LAB9;

LAB13:    t1 = (t0 + 5008U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t10 = (t12 < 7);
    t2 = t10;
    goto LAB15;

LAB16:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 8296);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 8360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(131, ng0);
    t1 = (t0 + 8232);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(132, ng0);
    t1 = (t0 + 5008U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t12 = (t9 + 1);
    t1 = (t0 + 5008U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t12;
    goto LAB9;

LAB18:    t1 = (t0 + 5008U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t10 = (t12 < 8);
    t2 = t10;
    goto LAB20;

LAB21:    xsi_set_current_line(134, ng0);
    t1 = (t0 + 13581);
    t6 = (t0 + 8424);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(135, ng0);
    t1 = (t0 + 8360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(136, ng0);
    t1 = (t0 + 8232);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(137, ng0);
    t1 = (t0 + 8296);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(138, ng0);
    t1 = (t0 + 5008U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t12 = (t9 + 1);
    t1 = (t0 + 5008U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t12;
    goto LAB9;

LAB23:    t1 = (t0 + 5008U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t10 = (t12 < 9);
    t2 = t10;
    goto LAB25;

LAB26:    xsi_set_current_line(140, ng0);
    t1 = (t0 + 5008U);
    t5 = *((char **)t1);
    t15 = *((int *)t5);
    t16 = (t15 + 1);
    t1 = (t0 + 5008U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t16;
    xsi_set_current_line(141, ng0);
    t1 = (t0 + 8360);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB28:    t1 = (t0 + 5008U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t10 = (t12 < 10);
    t2 = t10;
    goto LAB30;

LAB31:    xsi_set_current_line(143, ng0);
    t1 = (t0 + 8360);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB33:    t1 = (t0 + 5008U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t10 = (t12 < 11);
    t2 = t10;
    goto LAB35;

LAB36:    xsi_set_current_line(146, ng0);
    t1 = (t0 + 5128U);
    t4 = *((char **)t1);
    t9 = *((int *)t4);
    t10 = (t9 >= 1);
    if (t10 != 0)
        goto LAB38;

LAB40:    xsi_set_current_line(156, ng0);
    t1 = (t0 + 8488);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(157, ng0);
    t1 = (t0 + 5128U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t12 = (t9 + 1);
    t1 = (t0 + 5128U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t12;

LAB39:    goto LAB6;

LAB38:    xsi_set_current_line(147, ng0);
    t1 = (t0 + 8232);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(148, ng0);
    t1 = (t0 + 8488);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(149, ng0);
    t1 = (t0 + 4232U);
    t3 = *((char **)t1);
    t1 = (t0 + 4072U);
    t4 = *((char **)t1);
    t2 = 1;
    if (8U == 8U)
        goto LAB44;

LAB45:    t2 = 0;

LAB46:    if (t2 != 0)
        goto LAB41;

LAB43:
LAB42:    goto LAB39;

LAB41:    xsi_set_current_line(150, ng0);
    t6 = (t0 + 13589);
    xsi_report(t6, 21U, 0);
    xsi_set_current_line(151, ng0);
    t1 = (t0 + 5248U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB42;

LAB44:    t17 = 0;

LAB47:    if (t17 < 8U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t1 = (t3 + t17);
    t5 = (t4 + t17);
    if (*((unsigned char *)t1) != *((unsigned char *)t5))
        goto LAB45;

LAB49:    t17 = (t17 + 1);
    goto LAB47;

LAB50:    xsi_set_current_line(162, ng0);
    t3 = (t0 + 5248U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    *((unsigned char *)t3) = (unsigned char)3;
    goto LAB51;

}

static void work_a_3794195758_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(167, ng0);

LAB3:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8552);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 8056);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3794195758_2372691052_p_3(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(168, ng0);

LAB3:    t1 = (t0 + 13610);
    t3 = (t0 + 8616);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 1U);
    xsi_driver_first_trans_fast(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3794195758_2372691052_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(170, ng0);

LAB3:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 8680);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 8072);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3794195758_2372691052_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(171, ng0);

LAB3:    t1 = (t0 + 8744);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3794195758_2372691052_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(172, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 8088);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3794195758_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3794195758_2372691052_p_0,(void *)work_a_3794195758_2372691052_p_1,(void *)work_a_3794195758_2372691052_p_2,(void *)work_a_3794195758_2372691052_p_3,(void *)work_a_3794195758_2372691052_p_4,(void *)work_a_3794195758_2372691052_p_5,(void *)work_a_3794195758_2372691052_p_6};
	xsi_register_didat("work_a_3794195758_2372691052", "isim/SPI_MASTER_MODULE_tbench_isim_beh.exe.sim/work/a_3794195758_2372691052.didat");
	xsi_register_executes(pe);
}
