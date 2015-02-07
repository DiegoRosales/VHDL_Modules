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
extern char *IEEE_P_2592010699;
extern char *SIMPRIM_P_0947159679;
extern char *IEEE_P_2717149903;
extern char *SIMPRIM_P_4208868169;
extern char *IEEE_P_1367372525;

unsigned char ieee_p_1367372525_sub_3976821582_4070434989(char *, unsigned char , unsigned char , char *);
unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1388759734_503743352(char *, unsigned char );
void ieee_p_2717149903_sub_3490601596_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, char *, char *, unsigned char , char *, char *, char *, unsigned char , unsigned char , unsigned char , unsigned char , char *, unsigned char , unsigned char , unsigned char );
char *ieee_p_2717149903_sub_4115899059_2101202839(char *, char *);
void ieee_p_2717149903_sub_539877840_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, unsigned int , unsigned int , char *);
void simprim_p_4208868169_sub_293484706_3008368149(char *, char *, char *, char *, unsigned int , unsigned int , char *, char *, char *, char *, unsigned char , unsigned char , int64 , unsigned char , unsigned char );


static void simprim_a_3156740924_4150518722_p_0(char *t0)
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

LAB0:
LAB3:    t1 = ((SIMPRIM_P_0947159679) + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1388759734_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 6136);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 6008);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void simprim_a_3156740924_4150518722_p_1(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 5248);
    t2 = (t0 + 1736U);
    t3 = (t0 + 6200);
    t4 = (t0 + 1416U);
    t5 = (t0 + 2432U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 6024);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_3156740924_4150518722_p_2(char *t0)
{
    char t31[16];
    char t47[16];
    char t51[48];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    int64 t13;
    int64 t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    int64 t20;
    char *t21;
    char *t22;
    int64 t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned char t38;
    char *t39;
    int64 t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t48;
    int t49;
    char *t50;
    char *t52;
    char *t53;

LAB0:    t1 = (t0 + 1776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1388759734_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 3392U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = t4;
    t1 = (t0 + 1576U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 1616U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB5;

LAB7:
LAB6:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)0);
    if (t4 != 0)
        goto LAB17;

LAB19:
LAB18:    t1 = (t0 + 1776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1616U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t1 = ((IEEE_P_2717149903) + 1888U);
    t8 = *((char **)t1);
    t6 = ieee_p_1367372525_sub_3976821582_4070434989(IEEE_P_1367372525, t3, t4, t8);
    t1 = (t0 + 2792U);
    t15 = *((char **)t1);
    t1 = (t15 + 0);
    *((unsigned char *)t1) = t6;
    t1 = (t0 + 5496);
    t2 = (t0 + 1256U);
    t5 = (t0 + 6264);
    t8 = (t0 + 2912U);
    t15 = *((char **)t8);
    t8 = (t0 + 9721);
    t22 = (t31 + 0U);
    t24 = (t22 + 0U);
    *((int *)t24) = 1;
    t24 = (t22 + 4U);
    *((int *)t24) = 1;
    t24 = (t22 + 8U);
    *((int *)t24) = 1;
    t9 = (1 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t24 = (t22 + 12U);
    *((unsigned int *)t24) = t10;
    t24 = (t0 + 2792U);
    t25 = *((char **)t24);
    t3 = *((unsigned char *)t25);
    t24 = xsi_get_transient_memory(128U);
    memset(t24, 0, 128U);
    t26 = t24;
    t16 = (0 - 0);
    t10 = (t16 * 1);
    t11 = (64U * t10);
    t27 = (t26 + t11);
    t28 = t27;
    t29 = (t0 + 1576U);
    t13 = xsi_signal_get_last_event(t29);
    *((int64 *)t28) = t13;
    t30 = (t27 + 8U);
    t32 = (t0 + 3632U);
    t33 = *((char **)t32);
    memcpy(t30, t33, 48U);
    t32 = (t27 + 56U);
    *((unsigned char *)t32) = (unsigned char)1;
    t34 = (1 - 0);
    t12 = (t34 * 1);
    t17 = (64U * t12);
    t36 = (t26 + t17);
    t37 = t36;
    t39 = (t0 + 1736U);
    t14 = xsi_signal_get_last_event(t39);
    *((int64 *)t37) = t14;
    t41 = (t36 + 8U);
    t42 = (t0 + 2552U);
    t43 = *((char **)t42);
    t42 = ieee_p_2717149903_sub_4115899059_2101202839(IEEE_P_2717149903, t43);
    memcpy(t41, t42, 48U);
    t44 = (t36 + 56U);
    t45 = (t0 + 1616U);
    t46 = *((char **)t45);
    t4 = *((unsigned char *)t46);
    t6 = (t4 == (unsigned char)2);
    *((unsigned char *)t44) = t6;
    t45 = (t47 + 0U);
    t48 = (t45 + 0U);
    *((int *)t48) = 0;
    t48 = (t45 + 4U);
    *((int *)t48) = 1;
    t48 = (t45 + 8U);
    *((int *)t48) = 1;
    t49 = (1 - 0);
    t18 = (t49 * 1);
    t18 = (t18 + 1);
    t48 = (t45 + 12U);
    *((unsigned int *)t48) = t18;
    t48 = ((IEEE_P_2717149903) + 1408U);
    t50 = *((char **)t48);
    memcpy(t51, t50, 48U);
    t48 = (t0 + 2072U);
    t52 = *((char **)t48);
    t7 = *((unsigned char *)t52);
    t48 = (t0 + 2192U);
    t53 = *((char **)t48);
    t38 = *((unsigned char *)t53);
    t48 = (t0 + 9722);
    ieee_p_2717149903_sub_3490601596_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t5, t15, t8, t31, t3, t24, t47, t51, (unsigned char)3, t7, t38, (unsigned char)1, t48, (unsigned char)0, (unsigned char)0, (unsigned char)0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB20;

LAB22:
LAB21:    t1 = (t0 + 6040);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t2 = (t0 + 3512U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((unsigned char *)t2) = (unsigned char)1;
    goto LAB3;

LAB5:    t1 = (t0 + 3512U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)1);
    if (t7 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 2552U);
    t2 = *((char **)t1);
    t9 = ((unsigned char)0 - 0);
    t10 = (t9 * 1);
    t11 = (8U * t10);
    t12 = (0 + t11);
    t1 = (t2 + t12);
    t13 = *((int64 *)t1);
    t5 = (t0 + 2672U);
    t8 = *((char **)t5);
    t14 = *((int64 *)t8);
    t4 = (t13 < t14);
    if (t4 == 1)
        goto LAB14;

LAB15:    t5 = (t0 + 2552U);
    t15 = *((char **)t5);
    t16 = ((unsigned char)1 - 0);
    t17 = (t16 * 1);
    t18 = (8U * t17);
    t19 = (0 + t18);
    t5 = (t15 + t19);
    t20 = *((int64 *)t5);
    t21 = (t0 + 2672U);
    t22 = *((char **)t21);
    t23 = *((int64 *)t22);
    t6 = (t20 < t23);
    t3 = t6;

LAB16:    if (t3 != 0)
        goto LAB11;

LAB13:    t21 = (t0 + 5496);
    t24 = (t0 + 3272U);
    t25 = *((char **)t24);
    t24 = (t25 + 0);
    t26 = (t0 + 1256U);
    t27 = (t0 + 6264);
    t28 = (t0 + 3032U);
    t29 = *((char **)t28);
    t28 = (t0 + 9720);
    t32 = (t31 + 0U);
    t33 = (t32 + 0U);
    *((int *)t33) = 1;
    t33 = (t32 + 4U);
    *((int *)t33) = 1;
    t33 = (t32 + 8U);
    *((int *)t33) = 1;
    t34 = (1 - 1);
    t35 = (t34 * 1);
    t35 = (t35 + 1);
    t33 = (t32 + 12U);
    *((unsigned int *)t33) = t35;
    t33 = (t0 + 3392U);
    t36 = *((char **)t33);
    t7 = *((unsigned char *)t36);
    t33 = (t0 + 3152U);
    t37 = *((char **)t33);
    t38 = *((unsigned char *)t37);
    t33 = (t0 + 2672U);
    t39 = *((char **)t33);
    t40 = *((int64 *)t39);
    simprim_p_4208868169_sub_293484706_3008368149(SIMPRIM_P_4208868169, t21, t24, t26, 0U, 0U, t27, t29, t28, t31, t7, t38, t40, (unsigned char)0, (unsigned char)1);

LAB12:
LAB9:    goto LAB6;

LAB8:    t1 = (t0 + 3512U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB9;

LAB11:    goto LAB12;

LAB14:    t3 = (unsigned char)1;
    goto LAB16;

LAB17:    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_1388759734_503743352(IEEE_P_2592010699, t6);
    t1 = (t0 + 3152U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((unsigned char *)t1) = t7;
    goto LAB18;

LAB20:    t1 = (t0 + 3272U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB21;

}


extern void simprim_a_3156740924_4150518722_0433961640_init()
{
	static char *pe[] = {(void *)simprim_a_3156740924_4150518722_p_0,(void *)simprim_a_3156740924_4150518722_p_1,(void *)simprim_a_3156740924_4150518722_p_2};
	xsi_register_didat("simprim_a_3156740924_4150518722_0433961640", "isim/binary_counter_tbench_isim_translate.exe.sim/simprim/a_3156740924_4150518722_0433961640.didat");
	xsi_register_executes(pe);
}
