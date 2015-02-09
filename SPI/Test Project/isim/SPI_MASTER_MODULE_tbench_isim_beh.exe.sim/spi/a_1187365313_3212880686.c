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

unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void spi_a_1187365313_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (t0 + 3752U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t4 != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t17 = (t0 + 7776);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast(t17);

LAB2:    t22 = (t0 + 7632);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 7776);
    t13 = (t2 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB5:    t2 = (t0 + 3592U);
    t8 = *((char **)t2);
    t9 = *((unsigned char *)t8);
    t2 = (t0 + 3112U);
    t10 = *((char **)t2);
    t11 = *((unsigned char *)t10);
    t12 = (t9 == t11);
    t1 = t12;
    goto LAB7;

LAB9:    goto LAB2;

}

static void spi_a_1187365313_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(48, ng0);
    t1 = ((unsigned char)3 == (unsigned char)2);
    if (t1 != 0)
        goto LAB3;

LAB4:
LAB5:    t7 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, (unsigned char)3);
    t8 = (t0 + 7840);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:
LAB1:    return;
LAB3:    t2 = (t0 + 7840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB6:    goto LAB2;

}

static void spi_a_1187365313_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = (8 - 1);
    t4 = (t3 - 7);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = *((unsigned char *)t1);
    t9 = (t0 + 7904);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 7648);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void spi_a_1187365313_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7968);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7664);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void spi_a_1187365313_3212880686_p_4(char *t0)
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

LAB0:    xsi_set_current_line(55, ng0);
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
LAB3:    t1 = (t0 + 7680);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 8032);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(57, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 8096);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 8160);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 8224);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 8288);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(61, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t5 = (t0 + 8352);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2632U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 8032);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8096);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8160);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8224);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8288);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 8352);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void spi_a_1187365313_3212880686_p_5(char *t0)
{
    char t19[16];
    char t20[16];
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
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    int t30;
    int t31;
    unsigned char t32;
    char *t33;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8416);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 8480);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8544);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8608);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8672);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 8736);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 7696);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(86, ng0);
    t4 = (t0 + 8672);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(87, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t4 = (t0 + 8736);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 8608);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB2;

LAB4:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 8608);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(99, ng0);
    t3 = ((unsigned char)3 == (unsigned char)2);
    if (t3 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB33;

LAB35:
LAB34:
LAB12:    goto LAB2;

LAB5:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 8480);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t4, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 8416);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 8416);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 8608);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t11 = (7 - 6);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t4 + t13);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t14 = (7 - 7);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t5 = (t6 + t17);
    t18 = *((unsigned char *)t5);
    t8 = ((IEEE_P_2592010699) + 4024);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 6;
    t22 = (t21 + 4U);
    *((int *)t22) = 0;
    t22 = (t21 + 8U);
    *((int *)t22) = -1;
    t23 = (0 - 6);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t7 = xsi_base_array_concat(t7, t19, t8, (char)97, t1, t20, (char)99, t18, (char)101);
    t24 = (7U + 1U);
    t25 = (8U != t24);
    if (t25 == 1)
        goto LAB17;

LAB18:    t22 = (t0 + 8480);
    t26 = (t22 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t7, 8U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 12584U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t19, t2, t1, 1);
    t5 = (t19 + 12U);
    t11 = *((unsigned int *)t5);
    t12 = (1U * t11);
    t3 = (4U != t12);
    if (t3 == 1)
        goto LAB19;

LAB20:    t6 = (t0 + 8736);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t21 = (t8 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t4, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 12584U);
    t14 = (8 - 1);
    t9 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t14);
    if (t9 == 1)
        goto LAB24;

LAB25:    t3 = (unsigned char)0;

LAB26:    if (t3 != 0)
        goto LAB21;

LAB23:
LAB22:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB30;

LAB31:    t3 = (unsigned char)0;

LAB32:    if (t3 != 0)
        goto LAB27;

LAB29:
LAB28:    goto LAB15;

LAB17:    xsi_size_not_matching(8U, t24, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(4U, t12, 0);
    goto LAB20;

LAB21:    xsi_set_current_line(104, ng0);
    t4 = (t0 + 1992U);
    t6 = *((char **)t4);
    t4 = (t0 + 8480);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t21 = (t8 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t6, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(105, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t4 = (t0 + 8736);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB22;

LAB24:    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t10 = *((unsigned char *)t5);
    t18 = (t10 == (unsigned char)3);
    t3 = t18;
    goto LAB26;

LAB27:    xsi_set_current_line(108, ng0);
    t5 = (t0 + 8608);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t21 = *((char **)t8);
    *((unsigned char *)t21) = (unsigned char)3;
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB30:    t1 = (t0 + 3272U);
    t4 = *((char **)t1);
    t1 = (t0 + 12584U);
    t14 = (8 - 2);
    t18 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t4, t1, t14);
    t3 = t18;
    goto LAB32;

LAB33:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 4232U);
    t4 = *((char **)t1);
    t10 = *((unsigned char *)t4);
    t18 = (t10 == (unsigned char)3);
    if (t18 != 0)
        goto LAB36;

LAB38:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 8672);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB37:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 12584U);
    t14 = (8 - 1);
    t9 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t14);
    if (t9 == 1)
        goto LAB46;

LAB47:    t3 = (unsigned char)0;

LAB48:    if (t3 != 0)
        goto LAB43;

LAB45:
LAB44:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB52;

LAB53:    t3 = (unsigned char)0;

LAB54:    if (t3 != 0)
        goto LAB49;

LAB51:
LAB50:    goto LAB34;

LAB36:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 2792U);
    t5 = *((char **)t1);
    t14 = (8 - 2);
    t11 = (7 - t14);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t5 + t13);
    t6 = (t0 + 2792U);
    t7 = *((char **)t6);
    t23 = (8 - 1);
    t30 = (t23 - 7);
    t15 = (t30 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t6 = (t7 + t17);
    t25 = *((unsigned char *)t6);
    t21 = ((IEEE_P_2592010699) + 4024);
    t22 = (t20 + 0U);
    t26 = (t22 + 0U);
    *((int *)t26) = 6;
    t26 = (t22 + 4U);
    *((int *)t26) = 0;
    t26 = (t22 + 8U);
    *((int *)t26) = -1;
    t31 = (0 - 6);
    t24 = (t31 * -1);
    t24 = (t24 + 1);
    t26 = (t22 + 12U);
    *((unsigned int *)t26) = t24;
    t8 = xsi_base_array_concat(t8, t19, t21, (char)97, t1, t20, (char)99, t25, (char)101);
    t24 = (7U + 1U);
    t32 = (8U != t24);
    if (t32 == 1)
        goto LAB39;

LAB40:    t26 = (t0 + 8480);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t33 = *((char **)t29);
    memcpy(t33, t8, 8U);
    xsi_driver_first_trans_fast(t26);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 12584U);
    t4 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t19, t2, t1, 1);
    t5 = (t19 + 12U);
    t11 = *((unsigned int *)t5);
    t12 = (1U * t11);
    t3 = (4U != t12);
    if (t3 == 1)
        goto LAB41;

LAB42:    t6 = (t0 + 8736);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t21 = (t8 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t4, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB37;

LAB39:    xsi_size_not_matching(8U, t24, 0);
    goto LAB40;

LAB41:    xsi_size_not_matching(4U, t12, 0);
    goto LAB42;

LAB43:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 1992U);
    t6 = *((char **)t4);
    t4 = (t0 + 8480);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t21 = (t8 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t6, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(121, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t4 = (t0 + 8736);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    goto LAB44;

LAB46:    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t10 = *((unsigned char *)t5);
    t18 = (t10 == (unsigned char)3);
    t3 = t18;
    goto LAB48;

LAB49:    xsi_set_current_line(124, ng0);
    t5 = (t0 + 8608);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t21 = *((char **)t8);
    *((unsigned char *)t21) = (unsigned char)3;
    xsi_driver_first_trans_fast(t5);
    goto LAB50;

LAB52:    t1 = (t0 + 3272U);
    t4 = *((char **)t1);
    t1 = (t0 + 12584U);
    t14 = (8 - 2);
    t18 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t4, t1, t14);
    t3 = t18;
    goto LAB54;

}


extern void spi_a_1187365313_3212880686_init()
{
	static char *pe[] = {(void *)spi_a_1187365313_3212880686_p_0,(void *)spi_a_1187365313_3212880686_p_1,(void *)spi_a_1187365313_3212880686_p_2,(void *)spi_a_1187365313_3212880686_p_3,(void *)spi_a_1187365313_3212880686_p_4,(void *)spi_a_1187365313_3212880686_p_5};
	xsi_register_didat("spi_a_1187365313_3212880686", "isim/SPI_MASTER_MODULE_tbench_isim_beh.exe.sim/spi/a_1187365313_3212880686.didat");
	xsi_register_executes(pe);
}
