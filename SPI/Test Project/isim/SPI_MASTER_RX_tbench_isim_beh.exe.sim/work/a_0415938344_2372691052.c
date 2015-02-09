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
static const char *ng0 = "D:/GitHub/VHDL_Modules/SPI/Test Project/SPI_MASTER_RX_tbench.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0415938344_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 3248U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t12 = (t0 + 3368U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t12 = (t0 + 5872);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_fast(t12);

LAB2:
LAB1:    return;
LAB3:    t1 = (t0 + 3368U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t6);
    t1 = (t0 + 5872);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0415938344_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 5936);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 3488U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4768);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 5936);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 3488U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4768);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0415938344_2372691052_p_2(char *t0)
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

LAB0:    xsi_set_current_line(143, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5776);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(144, ng0);
    t3 = (t0 + 3608U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 < 3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 3608U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 >= 3);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = (unsigned char)0;

LAB12:    if (t2 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 3608U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 >= 7);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = (unsigned char)0;

LAB17:    if (t2 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 3608U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 >= 10);
    if (t6 == 1)
        goto LAB20;

LAB21:    t2 = (unsigned char)0;

LAB22:    if (t2 != 0)
        goto LAB18;

LAB19:    xsi_set_current_line(162, ng0);
    t1 = (t0 + 6128);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(146, ng0);
    t3 = (t0 + 6000);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(147, ng0);
    t1 = (t0 + 6064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(148, ng0);
    t1 = (t0 + 3608U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3608U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t11;
    goto LAB6;

LAB8:    xsi_set_current_line(150, ng0);
    t1 = (t0 + 6000);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(151, ng0);
    t1 = (t0 + 6064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(152, ng0);
    t1 = (t0 + 3608U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3608U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t11;
    goto LAB6;

LAB10:    t1 = (t0 + 3608U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t12 = (t11 < 7);
    t2 = t12;
    goto LAB12;

LAB13:    xsi_set_current_line(154, ng0);
    t1 = (t0 + 6000);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(155, ng0);
    t1 = (t0 + 6064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(156, ng0);
    t1 = (t0 + 3608U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3608U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t11;
    goto LAB6;

LAB15:    t1 = (t0 + 3608U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t12 = (t11 < 10);
    t2 = t12;
    goto LAB17;

LAB18:    xsi_set_current_line(158, ng0);
    t1 = (t0 + 6064);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(159, ng0);
    t1 = (t0 + 6000);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(160, ng0);
    t1 = (t0 + 3608U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3608U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t11;
    goto LAB6;

LAB20:    t1 = (t0 + 3608U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t12 = (t11 < 500);
    t2 = t12;
    goto LAB22;

}

static void work_a_0415938344_2372691052_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    int t11;
    unsigned char t12;
    char *t13;
    int t14;
    int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;

LAB0:    xsi_set_current_line(170, ng0);
    t2 = (t0 + 1472U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5792);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(171, ng0);
    t4 = (t0 + 3728U);
    t10 = *((char **)t4);
    t11 = *((int *)t10);
    t12 = (t11 < 7);
    if (t12 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(175, ng0);
    t2 = (t0 + 3728U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(176, ng0);
    t2 = (t0 + 2952U);
    t4 = *((char **)t2);
    t2 = (t0 + 3728U);
    t5 = *((char **)t2);
    t11 = *((int *)t5);
    t14 = (7 - t11);
    t15 = (t14 - 7);
    t17 = (t15 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t14);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t2 = (t4 + t19);
    t1 = *((unsigned char *)t2);
    t7 = (t0 + 6192);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t20 = *((char **)t16);
    *((unsigned char *)t20) = t1;
    xsi_driver_first_trans_fast(t7);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t4 = (t0 + 2792U);
    t7 = *((char **)t4);
    t8 = *((unsigned char *)t7);
    t9 = (t6 == t8);
    t1 = t9;
    goto LAB7;

LAB8:    xsi_set_current_line(172, ng0);
    t4 = (t0 + 3728U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    t15 = (t14 + 1);
    t4 = (t0 + 3728U);
    t16 = *((char **)t4);
    t4 = (t16 + 0);
    *((int *)t4) = t15;
    xsi_set_current_line(173, ng0);
    t2 = (t0 + 2952U);
    t4 = *((char **)t2);
    t2 = (t0 + 3728U);
    t5 = *((char **)t2);
    t11 = *((int *)t5);
    t14 = (7 - t11);
    t15 = (t14 - 7);
    t17 = (t15 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t14);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t2 = (t4 + t19);
    t1 = *((unsigned char *)t2);
    t7 = (t0 + 6192);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t20 = *((char **)t16);
    *((unsigned char *)t20) = t1;
    xsi_driver_first_trans_fast(t7);
    goto LAB9;

}


extern void work_a_0415938344_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0415938344_2372691052_p_0,(void *)work_a_0415938344_2372691052_p_1,(void *)work_a_0415938344_2372691052_p_2,(void *)work_a_0415938344_2372691052_p_3};
	xsi_register_didat("work_a_0415938344_2372691052", "isim/SPI_MASTER_RX_tbench_isim_beh.exe.sim/work/a_0415938344_2372691052.didat");
	xsi_register_executes(pe);
}
