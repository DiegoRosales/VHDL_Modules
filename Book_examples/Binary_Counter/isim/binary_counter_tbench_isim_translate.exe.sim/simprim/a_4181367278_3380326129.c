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



static void simprim_a_4181367278_3380326129_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    int64 t5;
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

LAB0:    t1 = (t0 + 2600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1328U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (0 * 1000LL);
    t6 = (t4 <= t5);
    if (t6 != 0)
        goto LAB4;

LAB6:    t2 = (t0 + 2984);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t10 = (t0 + 1328U);
    t11 = *((char **)t10);
    t4 = *((int64 *)t11);
    t10 = (t0 + 2984);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t10, 0U, 1, t4);

LAB5:
LAB11:    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB4:    if ((unsigned char)0 == 0)
        goto LAB7;

LAB8:    goto LAB5;

LAB7:    t2 = (t0 + 4716);
    xsi_report(t2, 58U, (unsigned char)3);
    goto LAB8;

LAB9:    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}


extern void simprim_a_4181367278_3380326129_0433961640_init()
{
	static char *pe[] = {(void *)simprim_a_4181367278_3380326129_p_0};
	xsi_register_didat("simprim_a_4181367278_3380326129_0433961640", "isim/binary_counter_tbench_isim_translate.exe.sim/simprim/a_4181367278_3380326129_0433961640.didat");
	xsi_register_executes(pe);
}
