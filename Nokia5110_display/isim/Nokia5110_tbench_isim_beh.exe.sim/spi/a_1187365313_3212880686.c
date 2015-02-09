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
static const char *ng0 = "D:/GitHub/VHDL_Modules/SPI/Library/SPI/SPI_MASTER_TX.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_3472088553_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void spi_a_1187365313_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = ((unsigned char)3 == (unsigned char)3);
    if (t1 != 0)
        goto LAB3;

LAB4:
LAB5:    t7 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, (unsigned char)3);
    t8 = (t0 + 7192);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:
LAB1:    return;
LAB3:    t2 = (t0 + 7192);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB6:    goto LAB2;

}

static void spi_a_1187365313_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = (0 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 7256);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 7064);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void spi_a_1187365313_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7320);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7080);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void spi_a_1187365313_3212880686_p_3(char *t0)
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
LAB3:    t1 = (t0 + 7096);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 7384);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(55, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 7448);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 7512);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 7576);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(58, ng0);
    t1 = xsi_get_transient_memory(2U);
    memset(t1, 0, 2U);
    t2 = t1;
    memset(t2, (unsigned char)2, 2U);
    t5 = (t0 + 7640);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 7704);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2472U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 7384);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 7448);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7512);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7576);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 7640);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7704);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void spi_a_1187365313_3212880686_p_4(char *t0)
{
    char t11[16];
    char t21[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t22;
    char *t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    unsigned char t29;
    unsigned char t30;
    unsigned char t31;
    unsigned int t32;
    unsigned char t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    int t38;
    unsigned int t39;
    unsigned char t40;
    char *t41;
    char *t42;
    char *t43;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7768);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 7832);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7896);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7960);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 8024);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8088);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 7112);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(82, ng0);
    t4 = (t0 + 7960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 8088);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 11704U);
    t4 = (t0 + 11778);
    t6 = (t11 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t12 = (1 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t13;
    t3 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t2, t1, t4, t11);
    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB2;

LAB4:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t1 = (t0 + 2952U);
    t4 = *((char **)t1);
    t10 = *((unsigned char *)t4);
    t14 = (t9 == t10);
    if (t14 == 1)
        goto LAB21;

LAB22:    t3 = (unsigned char)0;

LAB23:    if (t3 != 0)
        goto LAB19;

LAB20:
LAB17:    goto LAB2;

LAB5:    xsi_set_current_line(85, ng0);
    t8 = xsi_get_transient_memory(2U);
    memset(t8, 0, 2U);
    t15 = t8;
    memset(t15, (unsigned char)2, 2U);
    t16 = (t0 + 8024);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 2U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 7768);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 7832);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    t1 = (t0 + 3752U);
    t4 = *((char **)t1);
    t1 = (t0 + 11704U);
    t5 = (t0 + 11776);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 1;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (1 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t14 = ieee_p_1242562249_sub_3472088553_1035706684(IEEE_P_1242562249, t4, t1, t5, t11);
    t3 = t14;
    goto LAB10;

LAB11:    xsi_set_current_line(90, ng0);
    t7 = (t0 + 3752U);
    t8 = *((char **)t7);
    t7 = (t0 + 11704U);
    t15 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t21, t8, t7, 1);
    t16 = (t21 + 12U);
    t13 = *((unsigned int *)t16);
    t22 = (1U * t13);
    t9 = (2U != t22);
    if (t9 == 1)
        goto LAB14;

LAB15:    t17 = (t0 + 8024);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t23 = *((char **)t20);
    memcpy(t23, t15, 2U);
    xsi_driver_first_trans_fast(t17);
    goto LAB12;

LAB14:    xsi_size_not_matching(2U, t22, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 7768);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 7960);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB19:    xsi_set_current_line(97, ng0);
    t29 = ((unsigned char)3 == (unsigned char)3);
    if (t29 == 1)
        goto LAB27;

LAB28:    t28 = (unsigned char)0;

LAB29:    if (t28 != 0)
        goto LAB24;

LAB26:    t9 = ((unsigned char)3 == (unsigned char)3);
    if (t9 == 1)
        goto LAB34;

LAB35:    t3 = (unsigned char)0;

LAB36:    if (t3 != 0)
        goto LAB32;

LAB33:    t3 = ((unsigned char)3 == (unsigned char)2);
    if (t3 != 0)
        goto LAB37;

LAB38:
LAB25:    xsi_set_current_line(105, ng0);
    t3 = ((unsigned char)3 == (unsigned char)2);
    if (t3 != 0)
        goto LAB39;

LAB41:
LAB40:    goto LAB17;

LAB21:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t24 = *((unsigned char *)t5);
    t1 = (t0 + 2952U);
    t6 = *((char **)t1);
    t25 = *((unsigned char *)t6);
    t26 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t25);
    t27 = (t24 == t26);
    t3 = t27;
    goto LAB23;

LAB24:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 2632U);
    t8 = *((char **)t1);
    t12 = (0 - 7);
    t13 = (t12 * -1);
    t22 = (1U * t13);
    t32 = (0 + t22);
    t1 = (t8 + t32);
    t33 = *((unsigned char *)t1);
    t15 = (t0 + 2632U);
    t16 = *((char **)t15);
    t34 = (8 - 1);
    t35 = (7 - t34);
    t36 = (t35 * 1U);
    t37 = (0 + t36);
    t15 = (t16 + t37);
    t18 = ((IEEE_P_2592010699) + 4024);
    t19 = (t21 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 7;
    t20 = (t19 + 4U);
    *((int *)t20) = 1;
    t20 = (t19 + 8U);
    *((int *)t20) = -1;
    t38 = (1 - 7);
    t39 = (t38 * -1);
    t39 = (t39 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t39;
    t17 = xsi_base_array_concat(t17, t11, t18, (char)99, t33, (char)97, t15, t21, (char)101);
    t39 = (1U + 7U);
    t40 = (8U != t39);
    if (t40 == 1)
        goto LAB30;

LAB31:    t20 = (t0 + 7832);
    t23 = (t20 + 56U);
    t41 = *((char **)t23);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t17, 8U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 8088);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB25;

LAB27:    t1 = (t0 + 4072U);
    t7 = *((char **)t1);
    t30 = *((unsigned char *)t7);
    t31 = (t30 == (unsigned char)3);
    t28 = t31;
    goto LAB29;

LAB30:    xsi_size_not_matching(8U, t39, 0);
    goto LAB31;

LAB32:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 8088);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB25;

LAB34:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t10 = *((unsigned char *)t2);
    t14 = (t10 == (unsigned char)2);
    t3 = t14;
    goto LAB36;

LAB37:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 8088);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB25;

LAB39:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t12 = (0 - 7);
    t13 = (t12 * -1);
    t22 = (1U * t13);
    t32 = (0 + t22);
    t1 = (t2 + t32);
    t9 = *((unsigned char *)t1);
    t4 = (t0 + 2632U);
    t5 = *((char **)t4);
    t34 = (8 - 1);
    t35 = (7 - t34);
    t36 = (t35 * 1U);
    t37 = (0 + t36);
    t4 = (t5 + t37);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t21 + 0U);
    t15 = (t8 + 0U);
    *((int *)t15) = 7;
    t15 = (t8 + 4U);
    *((int *)t15) = 1;
    t15 = (t8 + 8U);
    *((int *)t15) = -1;
    t38 = (1 - 7);
    t39 = (t38 * -1);
    t39 = (t39 + 1);
    t15 = (t8 + 12U);
    *((unsigned int *)t15) = t39;
    t6 = xsi_base_array_concat(t6, t11, t7, (char)99, t9, (char)97, t4, t21, (char)101);
    t39 = (1U + 7U);
    t10 = (8U != t39);
    if (t10 == 1)
        goto LAB42;

LAB43:    t15 = (t0 + 7832);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t6, 8U);
    xsi_driver_first_trans_fast(t15);
    goto LAB40;

LAB42:    xsi_size_not_matching(8U, t39, 0);
    goto LAB43;

}


extern void spi_a_1187365313_3212880686_init()
{
	static char *pe[] = {(void *)spi_a_1187365313_3212880686_p_0,(void *)spi_a_1187365313_3212880686_p_1,(void *)spi_a_1187365313_3212880686_p_2,(void *)spi_a_1187365313_3212880686_p_3,(void *)spi_a_1187365313_3212880686_p_4};
	xsi_register_didat("spi_a_1187365313_3212880686", "isim/Nokia5110_tbench_isim_beh.exe.sim/spi/a_1187365313_3212880686.didat");
	xsi_register_executes(pe);
}
