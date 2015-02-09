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
extern char *SIMPRIM_P_4208868169;
extern char *IEEE_P_2717149903;

unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
char *ieee_p_2592010699_sub_3879918230_503743352(char *, char *, char *, char *);
void ieee_p_2717149903_sub_2486506143_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, char *, char *, unsigned char , char *, char *, char *, unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char );
void ieee_p_2717149903_sub_539877840_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, unsigned int , unsigned int , char *);
int simprim_p_4208868169_sub_3182959421_3008368149(char *, char *, char *);


unsigned char simprim_a_0562922936_1912361408_sub_655425482_666834939(char *t1, char *t2, char *t3)
{
    char t4[128];
    char t5[40];
    char t6[16];
    char t11[16];
    char t16[8];
    unsigned char t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    char *t21;
    char *t22;
    unsigned char t23;
    char *t24;
    unsigned char t25;
    char *t26;
    int t27;
    char *t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned char t34;
    char *t35;
    int t36;
    char *t37;
    int t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned char t44;
    unsigned char t45;
    unsigned char t46;
    char *t47;
    int t48;
    char *t49;
    int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned char t56;
    char *t57;
    int t58;
    char *t59;
    int t60;
    int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned char t66;
    unsigned char t67;
    unsigned char t68;
    int t69;
    char *t70;
    int t71;
    char *t72;
    int t73;
    int t74;
    unsigned int t75;
    char *t76;
    int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    unsigned char t81;
    char *t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned char t87;
    unsigned char t88;
    int t89;
    int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned char t94;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 3;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t11 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 1;
    t12 = (t8 + 4U);
    *((int *)t12) = 0;
    t12 = (t8 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - 1);
    t10 = (t13 * -1);
    t10 = (t10 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t10;
    t12 = (t4 + 4U);
    t14 = ((IEEE_P_2592010699) + 3320);
    t15 = (t12 + 88U);
    *((char **)t15) = t14;
    t17 = (t12 + 56U);
    *((char **)t17) = t16;
    xsi_type_set_default_value(t14, t16, 0);
    t18 = (t12 + 80U);
    *((unsigned int *)t18) = 1U;
    t19 = (t5 + 4U);
    t20 = (t2 != 0);
    if (t20 == 1)
        goto LAB3;

LAB2:    t21 = (t5 + 12U);
    *((char **)t21) = t6;
    t22 = (t5 + 20U);
    t23 = (t3 != 0);
    if (t23 == 1)
        goto LAB5;

LAB4:    t24 = (t5 + 28U);
    *((char **)t24) = t11;
    t26 = (t11 + 0U);
    t27 = *((int *)t26);
    t28 = (t11 + 8U);
    t29 = *((int *)t28);
    t30 = (1 - t27);
    t10 = (t30 * t29);
    t31 = (1U * t10);
    t32 = (0 + t31);
    t33 = (t3 + t32);
    t34 = *((unsigned char *)t33);
    t35 = (t11 + 0U);
    t36 = *((int *)t35);
    t37 = (t11 + 8U);
    t38 = *((int *)t37);
    t39 = (0 - t36);
    t40 = (t39 * t38);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t43 = (t3 + t42);
    t44 = *((unsigned char *)t43);
    t45 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t34, t44);
    t46 = (t45 == (unsigned char)3);
    if (t46 == 1)
        goto LAB9;

LAB10:    t47 = (t11 + 0U);
    t48 = *((int *)t47);
    t49 = (t11 + 8U);
    t50 = *((int *)t49);
    t51 = (1 - t48);
    t52 = (t51 * t50);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t55 = (t3 + t54);
    t56 = *((unsigned char *)t55);
    t57 = (t11 + 0U);
    t58 = *((int *)t57);
    t59 = (t11 + 8U);
    t60 = *((int *)t59);
    t61 = (0 - t58);
    t62 = (t61 * t60);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t65 = (t3 + t64);
    t66 = *((unsigned char *)t65);
    t67 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t56, t66);
    t68 = (t67 == (unsigned char)2);
    t25 = t68;

LAB11:    if (t25 != 0)
        goto LAB6;

LAB8:    t7 = (t6 + 0U);
    t9 = *((int *)t7);
    t8 = (t6 + 8U);
    t13 = *((int *)t8);
    t27 = (0 - t9);
    t10 = (t27 * t13);
    t31 = (1U * t10);
    t32 = (0 + t31);
    t14 = (t2 + t32);
    t25 = *((unsigned char *)t14);
    t15 = (t6 + 0U);
    t29 = *((int *)t15);
    t17 = (t6 + 8U);
    t30 = *((int *)t17);
    t36 = (1 - t29);
    t40 = (t36 * t30);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t18 = (t2 + t42);
    t34 = *((unsigned char *)t18);
    t44 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t25, t34);
    t45 = (t44 == (unsigned char)2);
    if (t45 == 1)
        goto LAB17;

LAB18:    t23 = (unsigned char)0;

LAB19:    if (t23 == 1)
        goto LAB14;

LAB15:    t20 = (unsigned char)0;

LAB16:    if (t20 != 0)
        goto LAB12;

LAB13:    t7 = (t11 + 0U);
    t9 = *((int *)t7);
    t8 = (t11 + 8U);
    t13 = *((int *)t8);
    t27 = (1 - t9);
    t10 = (t27 * t13);
    t31 = (1U * t10);
    t32 = (0 + t31);
    t14 = (t3 + t32);
    t23 = *((unsigned char *)t14);
    t25 = (t23 == (unsigned char)2);
    if (t25 == 1)
        goto LAB22;

LAB23:    t20 = (unsigned char)0;

LAB24:    if (t20 != 0)
        goto LAB20;

LAB21:    t7 = (t11 + 0U);
    t9 = *((int *)t7);
    t8 = (t11 + 8U);
    t13 = *((int *)t8);
    t27 = (1 - t9);
    t10 = (t27 * t13);
    t31 = (1U * t10);
    t32 = (0 + t31);
    t14 = (t3 + t32);
    t23 = *((unsigned char *)t14);
    t25 = (t23 == (unsigned char)3);
    if (t25 == 1)
        goto LAB27;

LAB28:    t20 = (unsigned char)0;

LAB29:    if (t20 != 0)
        goto LAB25;

LAB26:    t7 = (t11 + 0U);
    t9 = *((int *)t7);
    t8 = (t11 + 8U);
    t13 = *((int *)t8);
    t27 = (0 - t9);
    t10 = (t27 * t13);
    t31 = (1U * t10);
    t32 = (0 + t31);
    t14 = (t3 + t32);
    t23 = *((unsigned char *)t14);
    t25 = (t23 == (unsigned char)2);
    if (t25 == 1)
        goto LAB32;

LAB33:    t20 = (unsigned char)0;

LAB34:    if (t20 != 0)
        goto LAB30;

LAB31:    t7 = (t11 + 0U);
    t9 = *((int *)t7);
    t8 = (t11 + 8U);
    t13 = *((int *)t8);
    t27 = (0 - t9);
    t10 = (t27 * t13);
    t31 = (1U * t10);
    t32 = (0 + t31);
    t14 = (t3 + t32);
    t23 = *((unsigned char *)t14);
    t25 = (t23 == (unsigned char)3);
    if (t25 == 1)
        goto LAB37;

LAB38:    t20 = (unsigned char)0;

LAB39:    if (t20 != 0)
        goto LAB35;

LAB36:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((unsigned char *)t7) = (unsigned char)1;

LAB7:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t20 = *((unsigned char *)t8);
    t0 = t20;

LAB1:    return t0;
LAB3:    *((char **)t19) = t2;
    goto LAB2;

LAB5:    *((char **)t22) = t3;
    goto LAB4;

LAB6:    t69 = simprim_p_4208868169_sub_3182959421_3008368149(SIMPRIM_P_4208868169, t3, t11);
    t70 = (t6 + 0U);
    t71 = *((int *)t70);
    t72 = (t6 + 8U);
    t73 = *((int *)t72);
    t74 = (t69 - t71);
    t75 = (t74 * t73);
    t76 = (t6 + 4U);
    t77 = *((int *)t76);
    xsi_vhdl_check_range_of_index(t71, t77, t73, t69);
    t78 = (1U * t75);
    t79 = (0 + t78);
    t80 = (t2 + t79);
    t81 = *((unsigned char *)t80);
    t82 = (t12 + 56U);
    t83 = *((char **)t82);
    t82 = (t83 + 0);
    *((unsigned char *)t82) = t81;
    goto LAB7;

LAB9:    t25 = (unsigned char)1;
    goto LAB11;

LAB12:    t70 = (t6 + 0U);
    t77 = *((int *)t70);
    t72 = (t6 + 8U);
    t89 = *((int *)t72);
    t90 = (0 - t77);
    t91 = (t90 * t89);
    t92 = (1U * t91);
    t93 = (0 + t92);
    t76 = (t2 + t93);
    t94 = *((unsigned char *)t76);
    t80 = (t12 + 56U);
    t82 = *((char **)t80);
    t80 = (t82 + 0);
    *((unsigned char *)t80) = t94;
    goto LAB7;

LAB14:    t47 = (t6 + 0U);
    t60 = *((int *)t47);
    t49 = (t6 + 8U);
    t61 = *((int *)t49);
    t69 = (0 - t60);
    t75 = (t69 * t61);
    t78 = (1U * t75);
    t79 = (0 + t78);
    t55 = (t2 + t79);
    t68 = *((unsigned char *)t55);
    t57 = (t6 + 0U);
    t71 = *((int *)t57);
    t59 = (t6 + 8U);
    t73 = *((int *)t59);
    t74 = (2 - t71);
    t84 = (t74 * t73);
    t85 = (1U * t84);
    t86 = (0 + t85);
    t65 = (t2 + t86);
    t81 = *((unsigned char *)t65);
    t87 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t68, t81);
    t88 = (t87 == (unsigned char)2);
    t20 = t88;
    goto LAB16;

LAB17:    t26 = (t6 + 0U);
    t38 = *((int *)t26);
    t28 = (t6 + 8U);
    t39 = *((int *)t28);
    t48 = (2 - t38);
    t52 = (t48 * t39);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t33 = (t2 + t54);
    t46 = *((unsigned char *)t33);
    t35 = (t6 + 0U);
    t50 = *((int *)t35);
    t37 = (t6 + 8U);
    t51 = *((int *)t37);
    t58 = (3 - t50);
    t62 = (t58 * t51);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t43 = (t2 + t64);
    t56 = *((unsigned char *)t43);
    t66 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t46, t56);
    t67 = (t66 == (unsigned char)2);
    t23 = t67;
    goto LAB19;

LAB20:    t35 = (t6 + 0U);
    t50 = *((int *)t35);
    t37 = (t6 + 8U);
    t51 = *((int *)t37);
    t58 = (0 - t50);
    t62 = (t58 * t51);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t43 = (t2 + t64);
    t46 = *((unsigned char *)t43);
    t47 = (t12 + 56U);
    t49 = *((char **)t47);
    t47 = (t49 + 0);
    *((unsigned char *)t47) = t46;
    goto LAB7;

LAB22:    t15 = (t6 + 0U);
    t29 = *((int *)t15);
    t17 = (t6 + 8U);
    t30 = *((int *)t17);
    t36 = (0 - t29);
    t40 = (t36 * t30);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t18 = (t2 + t42);
    t34 = *((unsigned char *)t18);
    t26 = (t6 + 0U);
    t38 = *((int *)t26);
    t28 = (t6 + 8U);
    t39 = *((int *)t28);
    t48 = (1 - t38);
    t52 = (t48 * t39);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t33 = (t2 + t54);
    t44 = *((unsigned char *)t33);
    t45 = (t34 == t44);
    t20 = t45;
    goto LAB24;

LAB25:    t35 = (t6 + 0U);
    t50 = *((int *)t35);
    t37 = (t6 + 8U);
    t51 = *((int *)t37);
    t58 = (2 - t50);
    t62 = (t58 * t51);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t43 = (t2 + t64);
    t46 = *((unsigned char *)t43);
    t47 = (t12 + 56U);
    t49 = *((char **)t47);
    t47 = (t49 + 0);
    *((unsigned char *)t47) = t46;
    goto LAB7;

LAB27:    t15 = (t6 + 0U);
    t29 = *((int *)t15);
    t17 = (t6 + 8U);
    t30 = *((int *)t17);
    t36 = (2 - t29);
    t40 = (t36 * t30);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t18 = (t2 + t42);
    t34 = *((unsigned char *)t18);
    t26 = (t6 + 0U);
    t38 = *((int *)t26);
    t28 = (t6 + 8U);
    t39 = *((int *)t28);
    t48 = (3 - t38);
    t52 = (t48 * t39);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t33 = (t2 + t54);
    t44 = *((unsigned char *)t33);
    t45 = (t34 == t44);
    t20 = t45;
    goto LAB29;

LAB30:    t35 = (t6 + 0U);
    t50 = *((int *)t35);
    t37 = (t6 + 8U);
    t51 = *((int *)t37);
    t58 = (0 - t50);
    t62 = (t58 * t51);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t43 = (t2 + t64);
    t46 = *((unsigned char *)t43);
    t47 = (t12 + 56U);
    t49 = *((char **)t47);
    t47 = (t49 + 0);
    *((unsigned char *)t47) = t46;
    goto LAB7;

LAB32:    t15 = (t6 + 0U);
    t29 = *((int *)t15);
    t17 = (t6 + 8U);
    t30 = *((int *)t17);
    t36 = (0 - t29);
    t40 = (t36 * t30);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t18 = (t2 + t42);
    t34 = *((unsigned char *)t18);
    t26 = (t6 + 0U);
    t38 = *((int *)t26);
    t28 = (t6 + 8U);
    t39 = *((int *)t28);
    t48 = (2 - t38);
    t52 = (t48 * t39);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t33 = (t2 + t54);
    t44 = *((unsigned char *)t33);
    t45 = (t34 == t44);
    t20 = t45;
    goto LAB34;

LAB35:    t35 = (t6 + 0U);
    t50 = *((int *)t35);
    t37 = (t6 + 8U);
    t51 = *((int *)t37);
    t58 = (1 - t50);
    t62 = (t58 * t51);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t43 = (t2 + t64);
    t46 = *((unsigned char *)t43);
    t47 = (t12 + 56U);
    t49 = *((char **)t47);
    t47 = (t49 + 0);
    *((unsigned char *)t47) = t46;
    goto LAB7;

LAB37:    t15 = (t6 + 0U);
    t29 = *((int *)t15);
    t17 = (t6 + 8U);
    t30 = *((int *)t17);
    t36 = (1 - t29);
    t40 = (t36 * t30);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t18 = (t2 + t42);
    t34 = *((unsigned char *)t18);
    t26 = (t6 + 0U);
    t38 = *((int *)t26);
    t28 = (t6 + 8U);
    t39 = *((int *)t28);
    t48 = (3 - t38);
    t52 = (t48 * t39);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t33 = (t2 + t54);
    t44 = *((unsigned char *)t33);
    t45 = (t34 == t44);
    t20 = t45;
    goto LAB39;

LAB40:;
}

static void simprim_a_0562922936_1912361408_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 4928);
    t2 = (t0 + 1896U);
    t3 = (t0 + 6328);
    t4 = (t0 + 1416U);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 6184);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_0562922936_1912361408_p_1(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 5176);
    t2 = (t0 + 2056U);
    t3 = (t0 + 6392);
    t4 = (t0 + 1576U);
    t5 = (t0 + 2912U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 6200);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_0562922936_1912361408_p_2(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 5424);
    t2 = (t0 + 2216U);
    t3 = (t0 + 6456);
    t4 = (t0 + 1736U);
    t5 = (t0 + 3032U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 6216);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_0562922936_1912361408_p_3(char *t0)
{
    char t1[16];
    char t7[16];
    char t12[16];
    char t52[16];
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    unsigned char t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned char t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t53;
    char *t54;
    char *t55;
    int64 t56;
    int t57;
    int64 t58;
    char *t59;
    char *t60;
    int t61;
    char *t62;
    char *t63;
    char *t64;
    int64 t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    int t71;
    char *t72;
    char *t73;
    char *t74;

LAB0:    t2 = (t0 + 2256U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (t0 + 2096U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t8 = ((IEEE_P_2592010699) + 3912);
    t2 = xsi_base_array_concat(t2, t7, t8, (char)99, t4, (char)99, t6, (char)101);
    t9 = (t0 + 1936U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t13 = ((IEEE_P_2592010699) + 3912);
    t9 = xsi_base_array_concat(t9, t12, t13, (char)97, t2, t7, (char)99, t11, (char)101);
    t14 = ieee_p_2592010699_sub_3879918230_503743352(IEEE_P_2592010699, t1, t9, t12);
    t15 = (t0 + 3992U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    t17 = (t1 + 12U);
    t18 = *((unsigned int *)t17);
    t18 = (t18 * 1U);
    memcpy(t15, t14, t18);
    t2 = (t0 + 2256U);
    t3 = *((char **)t2);
    t6 = *((unsigned char *)t3);
    t2 = (t0 + 2096U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t19 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t6, t11);
    t2 = (t0 + 1936U);
    t8 = *((char **)t2);
    t20 = *((unsigned char *)t8);
    t21 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t19, t20);
    t22 = (t21 == (unsigned char)3);
    if (t22 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 2256U);
    t9 = *((char **)t2);
    t23 = *((unsigned char *)t9);
    t2 = (t0 + 2096U);
    t10 = *((char **)t2);
    t24 = *((unsigned char *)t10);
    t25 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t23, t24);
    t2 = (t0 + 1936U);
    t13 = *((char **)t2);
    t26 = *((unsigned char *)t13);
    t27 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t25, t26);
    t28 = (t27 == (unsigned char)2);
    t4 = t28;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t3 = ((IEEE_P_2592010699) + 4024);
    t2 = xsi_base_array_concat(t2, t1, t3, (char)99, (unsigned char)2, (char)99, (unsigned char)2, (char)101);
    t5 = (t0 + 3632U);
    t8 = *((char **)t5);
    t18 = (7 - 7);
    t31 = (t18 * 1U);
    t32 = (0 + t31);
    t5 = (t8 + t32);
    t9 = (t0 + 3992U);
    t10 = *((char **)t9);
    t35 = (2 - 1);
    t36 = (t35 * 1U);
    t37 = (0 + t36);
    t9 = (t10 + t37);
    t4 = simprim_a_0562922936_1912361408_sub_655425482_666834939(t0, t5, t9);
    t14 = ((IEEE_P_2592010699) + 4024);
    t13 = xsi_base_array_concat(t13, t7, t14, (char)97, t2, t1, (char)99, t4, (char)101);
    t15 = (t0 + 3632U);
    t16 = *((char **)t15);
    t38 = (7 - 3);
    t39 = (t38 * 1U);
    t40 = (0 + t39);
    t15 = (t16 + t40);
    t17 = (t0 + 3992U);
    t34 = *((char **)t17);
    t41 = (2 - 1);
    t42 = (t41 * 1U);
    t43 = (0 + t42);
    t17 = (t34 + t43);
    t6 = simprim_a_0562922936_1912361408_sub_655425482_666834939(t0, t15, t17);
    t45 = ((IEEE_P_2592010699) + 4024);
    t44 = xsi_base_array_concat(t44, t12, t45, (char)97, t13, t7, (char)99, t6, (char)101);
    t46 = (t0 + 3992U);
    t47 = *((char **)t46);
    t29 = (2 - 2);
    t48 = (t29 * -1);
    t49 = (1U * t48);
    t50 = (0 + t49);
    t46 = (t47 + t50);
    t11 = *((unsigned char *)t46);
    t53 = ((IEEE_P_2592010699) + 4024);
    t51 = xsi_base_array_concat(t51, t52, t53, (char)99, (unsigned char)2, (char)99, t11, (char)101);
    t19 = simprim_a_0562922936_1912361408_sub_655425482_666834939(t0, t44, t51);
    t54 = (t0 + 3752U);
    t55 = *((char **)t54);
    t54 = (t55 + 0);
    *((unsigned char *)t54) = t19;

LAB3:    t2 = (t0 + 5672);
    t3 = (t0 + 1256U);
    t5 = (t0 + 6520);
    t8 = (t0 + 3872U);
    t9 = *((char **)t8);
    t8 = (t0 + 9899);
    t13 = (t1 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 1;
    t14 = (t13 + 4U);
    *((int *)t14) = 1;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t29 = (1 - 1);
    t18 = (t29 * 1);
    t18 = (t18 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t18;
    t14 = (t0 + 3752U);
    t15 = *((char **)t14);
    t4 = *((unsigned char *)t15);
    t14 = xsi_get_transient_memory(96U);
    memset(t14, 0, 96U);
    t16 = t14;
    t30 = (0 - 0);
    t18 = (t30 * 1);
    t31 = (32U * t18);
    t17 = (t16 + t31);
    t34 = t17;
    t44 = (t0 + 1896U);
    t56 = xsi_signal_get_last_event(t44);
    *((int64 *)t34) = t56;
    t45 = (t17 + 8U);
    t46 = (t0 + 3152U);
    t47 = *((char **)t46);
    memcpy(t45, t47, 16U);
    t46 = (t17 + 24U);
    *((unsigned char *)t46) = (unsigned char)1;
    t57 = (1 - 0);
    t32 = (t57 * 1);
    t35 = (32U * t32);
    t51 = (t16 + t35);
    t53 = t51;
    t54 = (t0 + 2056U);
    t58 = xsi_signal_get_last_event(t54);
    *((int64 *)t53) = t58;
    t55 = (t51 + 8U);
    t59 = (t0 + 3272U);
    t60 = *((char **)t59);
    memcpy(t55, t60, 16U);
    t59 = (t51 + 24U);
    *((unsigned char *)t59) = (unsigned char)1;
    t61 = (2 - 0);
    t36 = (t61 * 1);
    t37 = (32U * t36);
    t62 = (t16 + t37);
    t63 = t62;
    t64 = (t0 + 2216U);
    t65 = xsi_signal_get_last_event(t64);
    *((int64 *)t63) = t65;
    t66 = (t62 + 8U);
    t67 = (t0 + 3392U);
    t68 = *((char **)t67);
    memcpy(t66, t68, 16U);
    t67 = (t62 + 24U);
    *((unsigned char *)t67) = (unsigned char)1;
    t69 = (t7 + 0U);
    t70 = (t69 + 0U);
    *((int *)t70) = 0;
    t70 = (t69 + 4U);
    *((int *)t70) = 2;
    t70 = (t69 + 8U);
    *((int *)t70) = 1;
    t71 = (2 - 0);
    t38 = (t71 * 1);
    t38 = (t38 + 1);
    t70 = (t69 + 12U);
    *((unsigned int *)t70) = t38;
    t70 = ((IEEE_P_2717149903) + 1288U);
    t72 = *((char **)t70);
    memcpy(t12, t72, 16U);
    t70 = (t0 + 2552U);
    t73 = *((char **)t70);
    t6 = *((unsigned char *)t73);
    t70 = (t0 + 2672U);
    t74 = *((char **)t70);
    t11 = *((unsigned char *)t74);
    ieee_p_2717149903_sub_2486506143_2101202839(IEEE_P_2717149903, t2, t3, 0U, 0U, t5, t9, t8, t1, t4, t14, t7, t12, (unsigned char)3, t6, t11, (unsigned char)1, (unsigned char)0, (unsigned char)0, (unsigned char)0);
    t2 = (t0 + 6232);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    t2 = (t0 + 3632U);
    t14 = *((char **)t2);
    t2 = (t0 + 3992U);
    t15 = *((char **)t2);
    t2 = (t0 + 9728U);
    t29 = simprim_p_4208868169_sub_3182959421_3008368149(SIMPRIM_P_4208868169, t15, t2);
    t30 = (t29 - 7);
    t18 = (t30 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t29);
    t31 = (1U * t18);
    t32 = (0 + t31);
    t16 = (t14 + t32);
    t33 = *((unsigned char *)t16);
    t17 = (t0 + 3752U);
    t34 = *((char **)t17);
    t17 = (t34 + 0);
    *((unsigned char *)t17) = t33;
    goto LAB3;

LAB5:    t4 = (unsigned char)1;
    goto LAB7;

}


extern void simprim_a_0562922936_1912361408_0433961640_init()
{
	static char *pe[] = {(void *)simprim_a_0562922936_1912361408_p_0,(void *)simprim_a_0562922936_1912361408_p_1,(void *)simprim_a_0562922936_1912361408_p_2,(void *)simprim_a_0562922936_1912361408_p_3};
	static char *se[] = {(void *)simprim_a_0562922936_1912361408_sub_655425482_666834939};
	xsi_register_didat("simprim_a_0562922936_1912361408_0433961640", "isim/I2S_Master_tbench_isim_translate.exe.sim/simprim/a_0562922936_1912361408_0433961640.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
