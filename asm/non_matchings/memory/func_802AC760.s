glabel func_802AC760
/* 115D70 802AC760 27BDFF88 */  addiu $sp, $sp, -0x78
/* 115D74 802AC764 AFA5007C */  sw    $a1, 0x7c($sp)
/* 115D78 802AC768 97A5008E */  lhu   $a1, 0x8e($sp)
/* 115D7C 802AC76C 3C0A8016 */  lui   $t2, %hi(D_8015F580) # $t2, 0x8016
/* 115D80 802AC770 8D4AF580 */  lw    $t2, %lo(D_8015F580)($t2)
/* 115D84 802AC774 00054880 */  sll   $t1, $a1, 2
/* 115D88 802AC778 01254823 */  subu  $t1, $t1, $a1
/* 115D8C 802AC77C 00094880 */  sll   $t1, $t1, 2
/* 115D90 802AC780 01254823 */  subu  $t1, $t1, $a1
/* 115D94 802AC784 00094880 */  sll   $t1, $t1, 2
/* 115D98 802AC788 AFB00004 */  sw    $s0, 4($sp)
/* 115D9C 802AC78C AFA70084 */  sw    $a3, 0x84($sp)
/* 115DA0 802AC790 012A1821 */  addu  $v1, $t1, $t2
/* 115DA4 802AC794 846B0004 */  lh    $t3, 4($v1)
/* 115DA8 802AC798 44866000 */  mtc1  $a2, $f12
/* 115DAC 802AC79C 00808025 */  move  $s0, $a0
/* 115DB0 802AC7A0 448B5000 */  mtc1  $t3, $f10
/* 115DB4 802AC7A4 24020001 */  li    $v0, 1
/* 115DB8 802AC7A8 46805120 */  cvt.s.w $f4, $f10
/* 115DBC 802AC7AC 4604603C */  c.lt.s $f12, $f4
/* 115DC0 802AC7B0 00000000 */  nop   
/* 115DC4 802AC7B4 45020004 */  bc1fl .L802AC7C8
/* 115DC8 802AC7B8 846C0008 */   lh    $t4, 8($v1)
/* 115DCC 802AC7BC 100000F6 */  b     .L802ACB98
/* 115DD0 802AC7C0 00001025 */   move  $v0, $zero
/* 115DD4 802AC7C4 846C0008 */  lh    $t4, 8($v1)
.L802AC7C8:
/* 115DD8 802AC7C8 C7A00088 */  lwc1  $f0, 0x88($sp)
/* 115DDC 802AC7CC 448C4000 */  mtc1  $t4, $f8
/* 115DE0 802AC7D0 00000000 */  nop   
/* 115DE4 802AC7D4 468041A0 */  cvt.s.w $f6, $f8
/* 115DE8 802AC7D8 4606003C */  c.lt.s $f0, $f6
/* 115DEC 802AC7DC 00000000 */  nop   
/* 115DF0 802AC7E0 45020004 */  bc1fl .L802AC7F4
/* 115DF4 802AC7E4 846D000A */   lh    $t5, 0xa($v1)
/* 115DF8 802AC7E8 100000EB */  b     .L802ACB98
/* 115DFC 802AC7EC 00001025 */   move  $v0, $zero
/* 115E00 802AC7F0 846D000A */  lh    $t5, 0xa($v1)
.L802AC7F4:
/* 115E04 802AC7F4 448D5000 */  mtc1  $t5, $f10
/* 115E08 802AC7F8 00000000 */  nop   
/* 115E0C 802AC7FC 46805120 */  cvt.s.w $f4, $f10
/* 115E10 802AC800 460C203C */  c.lt.s $f4, $f12
/* 115E14 802AC804 00000000 */  nop   
/* 115E18 802AC808 45020004 */  bc1fl .L802AC81C
/* 115E1C 802AC80C 846E000E */   lh    $t6, 0xe($v1)
/* 115E20 802AC810 100000E1 */  b     .L802ACB98
/* 115E24 802AC814 00001025 */   move  $v0, $zero
/* 115E28 802AC818 846E000E */  lh    $t6, 0xe($v1)
.L802AC81C:
/* 115E2C 802AC81C 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 115E30 802AC820 448E4000 */  mtc1  $t6, $f8
/* 115E34 802AC824 00000000 */  nop   
/* 115E38 802AC828 468041A0 */  cvt.s.w $f6, $f8
/* 115E3C 802AC82C 4600303C */  c.lt.s $f6, $f0
/* 115E40 802AC830 00000000 */  nop   
/* 115E44 802AC834 45020004 */  bc1fl .L802AC848
/* 115E48 802AC838 C7A4007C */   lwc1  $f4, 0x7c($sp)
/* 115E4C 802AC83C 100000D6 */  b     .L802ACB98
/* 115E50 802AC840 00001025 */   move  $v0, $zero
/* 115E54 802AC844 C7A4007C */  lwc1  $f4, 0x7c($sp)
.L802AC848:
/* 115E58 802AC848 44814000 */  mtc1  $at, $f8
/* 115E5C 802AC84C E7AC0080 */  swc1  $f12, 0x80($sp)
/* 115E60 802AC850 846F0006 */  lh    $t7, 6($v1)
/* 115E64 802AC854 46082182 */  mul.s $f6, $f4, $f8
/* 115E68 802AC858 C7AA0084 */  lwc1  $f10, 0x84($sp)
/* 115E6C 802AC85C 448F2000 */  mtc1  $t7, $f4
/* 115E70 802AC860 00000000 */  nop   
/* 115E74 802AC864 46802220 */  cvt.s.w $f8, $f4
/* 115E78 802AC868 46064101 */  sub.s $f4, $f8, $f6
/* 115E7C 802AC86C 4604503C */  c.lt.s $f10, $f4
/* 115E80 802AC870 00000000 */  nop   
/* 115E84 802AC874 45020004 */  bc1fl .L802AC888
/* 115E88 802AC878 8C640010 */   lw    $a0, 0x10($v1)
/* 115E8C 802AC87C 100000C6 */  b     .L802ACB98
/* 115E90 802AC880 00001025 */   move  $v0, $zero
/* 115E94 802AC884 8C640010 */  lw    $a0, 0x10($v1)
.L802AC888:
/* 115E98 802AC888 8C670018 */  lw    $a3, 0x18($v1)
/* 115E9C 802AC88C 8C660014 */  lw    $a2, 0x14($v1)
/* 115EA0 802AC890 84980000 */  lh    $t8, ($a0)
/* 115EA4 802AC894 84990004 */  lh    $t9, 4($a0)
/* 115EA8 802AC898 84EA0000 */  lh    $t2, ($a3)
/* 115EAC 802AC89C 44984000 */  mtc1  $t8, $f8
/* 115EB0 802AC8A0 44993000 */  mtc1  $t9, $f6
/* 115EB4 802AC8A4 84C80000 */  lh    $t0, ($a2)
/* 115EB8 802AC8A8 46804320 */  cvt.s.w $f12, $f8
/* 115EBC 802AC8AC 448A4000 */  mtc1  $t2, $f8
/* 115EC0 802AC8B0 84C90004 */  lh    $t1, 4($a2)
/* 115EC4 802AC8B4 44885000 */  mtc1  $t0, $f10
/* 115EC8 802AC8B8 468033A0 */  cvt.s.w $f14, $f6
/* 115ECC 802AC8BC 44892000 */  mtc1  $t1, $f4
/* 115ED0 802AC8C0 468041A0 */  cvt.s.w $f6, $f8
/* 115ED4 802AC8C4 C7A80088 */  lwc1  $f8, 0x88($sp)
/* 115ED8 802AC8C8 46805420 */  cvt.s.w $f16, $f10
/* 115EDC 802AC8CC E7A6006C */  swc1  $f6, 0x6c($sp)
/* 115EE0 802AC8D0 84EB0004 */  lh    $t3, 4($a3)
/* 115EE4 802AC8D4 E7A80008 */  swc1  $f8, 8($sp)
/* 115EE8 802AC8D8 448B5000 */  mtc1  $t3, $f10
/* 115EEC 802AC8DC 468024A0 */  cvt.s.w $f18, $f4
/* 115EF0 802AC8E0 46805120 */  cvt.s.w $f4, $f10
/* 115EF4 802AC8E4 C7AA0080 */  lwc1  $f10, 0x80($sp)
/* 115EF8 802AC8E8 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 115EFC 802AC8EC 46087181 */  sub.s $f6, $f14, $f8
/* 115F00 802AC8F0 E7A40064 */  swc1  $f4, 0x64($sp)
/* 115F04 802AC8F4 460A8101 */  sub.s $f4, $f16, $f10
/* 115F08 802AC8F8 E7A60028 */  swc1  $f6, 0x28($sp)
/* 115F0C 802AC8FC C7A60028 */  lwc1  $f6, 0x28($sp)
/* 115F10 802AC900 460A6201 */  sub.s $f8, $f12, $f10
/* 115F14 802AC904 E7A40024 */  swc1  $f4, 0x24($sp)
/* 115F18 802AC908 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 115F1C 802AC90C E7A80020 */  swc1  $f8, 0x20($sp)
/* 115F20 802AC910 C7A80008 */  lwc1  $f8, 8($sp)
/* 115F24 802AC914 46043002 */  mul.s $f0, $f6, $f4
/* 115F28 802AC918 E7A60008 */  swc1  $f6, 8($sp)
/* 115F2C 802AC91C 46089181 */  sub.s $f6, $f18, $f8
/* 115F30 802AC920 E7A4000C */  swc1  $f4, 0xc($sp)
/* 115F34 802AC924 C7B20008 */  lwc1  $f18, 8($sp)
/* 115F38 802AC928 E7A6001C */  swc1  $f6, 0x1c($sp)
/* 115F3C 802AC92C C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 115F40 802AC930 C7A60020 */  lwc1  $f6, 0x20($sp)
/* 115F44 802AC934 46043082 */  mul.s $f2, $f6, $f4
/* 115F48 802AC938 46020281 */  sub.s $f10, $f0, $f2
/* 115F4C 802AC93C 46001032 */  c.eq.s $f2, $f0
/* 115F50 802AC940 E7AA0018 */  swc1  $f10, 0x18($sp)
/* 115F54 802AC944 C7AA0018 */  lwc1  $f10, 0x18($sp)
/* 115F58 802AC948 45000018 */  bc1f  .L802AC9AC
/* 115F5C 802AC94C E7AA0038 */   swc1  $f10, 0x38($sp)
/* 115F60 802AC950 E7A80008 */  swc1  $f8, 8($sp)
/* 115F64 802AC954 C7A80010 */  lwc1  $f8, 0x10($sp)
/* 115F68 802AC958 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 115F6C 802AC95C 46085001 */  sub.s $f0, $f10, $f8
/* 115F70 802AC960 C7A80008 */  lwc1  $f8, 8($sp)
/* 115F74 802AC964 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 115F78 802AC968 46085081 */  sub.s $f2, $f10, $f8
/* 115F7C 802AC96C 46002282 */  mul.s $f10, $f4, $f0
/* 115F80 802AC970 C7A8000C */  lwc1  $f8, 0xc($sp)
/* 115F84 802AC974 46024102 */  mul.s $f4, $f8, $f2
/* 115F88 802AC978 46045201 */  sub.s $f8, $f10, $f4
/* 115F8C 802AC97C 46061282 */  mul.s $f10, $f2, $f6
/* 115F90 802AC980 00000000 */  nop   
/* 115F94 802AC984 46120102 */  mul.s $f4, $f0, $f18
/* 115F98 802AC988 46045181 */  sub.s $f6, $f10, $f4
/* 115F9C 802AC98C 44802000 */  mtc1  $zero, $f4
/* 115FA0 802AC990 46064282 */  mul.s $f10, $f8, $f6
/* 115FA4 802AC994 4604503C */  c.lt.s $f10, $f4
/* 115FA8 802AC998 00000000 */  nop   
/* 115FAC 802AC99C 45000039 */  bc1f  .L802ACA84
/* 115FB0 802AC9A0 00000000 */   nop   
/* 115FB4 802AC9A4 10000037 */  b     .L802ACA84
/* 115FB8 802AC9A8 00001025 */   move  $v0, $zero
.L802AC9AC:
/* 115FBC 802AC9AC C7A80064 */  lwc1  $f8, 0x64($sp)
/* 115FC0 802AC9B0 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 115FC4 802AC9B4 C7A4006C */  lwc1  $f4, 0x6c($sp)
/* 115FC8 802AC9B8 C7AA0024 */  lwc1  $f10, 0x24($sp)
/* 115FCC 802AC9BC 46064081 */  sub.s $f2, $f8, $f6
/* 115FD0 802AC9C0 C7A80080 */  lwc1  $f8, 0x80($sp)
/* 115FD4 802AC9C4 C7A6001C */  lwc1  $f6, 0x1c($sp)
/* 115FD8 802AC9C8 C7B20028 */  lwc1  $f18, 0x28($sp)
/* 115FDC 802AC9CC 46082001 */  sub.s $f0, $f4, $f8
/* 115FE0 802AC9D0 46025382 */  mul.s $f14, $f10, $f2
/* 115FE4 802AC9D4 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 115FE8 802AC9D8 46003302 */  mul.s $f12, $f6, $f0
/* 115FEC 802AC9DC 460C7032 */  c.eq.s $f14, $f12
/* 115FF0 802AC9E0 00000000 */  nop   
/* 115FF4 802AC9E4 4502000E */  bc1fl .L802ACA20
/* 115FF8 802AC9E8 460E6401 */   sub.s $f16, $f12, $f14
/* 115FFC 802AC9EC 460A1102 */  mul.s $f4, $f2, $f10
/* 116000 802AC9F0 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* 116004 802AC9F4 46120202 */  mul.s $f8, $f0, $f18
/* 116008 802AC9F8 46082181 */  sub.s $f6, $f4, $f8
/* 11600C 802AC9FC 44804000 */  mtc1  $zero, $f8
/* 116010 802ACA00 46065102 */  mul.s $f4, $f10, $f6
/* 116014 802ACA04 4608203C */  c.lt.s $f4, $f8
/* 116018 802ACA08 00000000 */  nop   
/* 11601C 802ACA0C 4500001D */  bc1f  .L802ACA84
/* 116020 802ACA10 00000000 */   nop   
/* 116024 802ACA14 1000001B */  b     .L802ACA84
/* 116028 802ACA18 00001025 */   move  $v0, $zero
/* 11602C 802ACA1C 460E6401 */  sub.s $f16, $f12, $f14
.L802ACA20:
/* 116030 802ACA20 C7AA0018 */  lwc1  $f10, 0x18($sp)
/* 116034 802ACA24 44802000 */  mtc1  $zero, $f4
/* 116038 802ACA28 C7A80020 */  lwc1  $f8, 0x20($sp)
/* 11603C 802ACA2C 46105182 */  mul.s $f6, $f10, $f16
/* 116040 802ACA30 4604303C */  c.lt.s $f6, $f4
/* 116044 802ACA34 00000000 */  nop   
/* 116048 802ACA38 45000003 */  bc1f  .L802ACA48
/* 11604C 802ACA3C 00000000 */   nop   
/* 116050 802ACA40 10000010 */  b     .L802ACA84
/* 116054 802ACA44 00001025 */   move  $v0, $zero
.L802ACA48:
/* 116058 802ACA48 46120382 */  mul.s $f14, $f0, $f18
/* 11605C 802ACA4C 00000000 */  nop   
/* 116060 802ACA50 46081302 */  mul.s $f12, $f2, $f8
/* 116064 802ACA54 460C7032 */  c.eq.s $f14, $f12
/* 116068 802ACA58 00000000 */  nop   
/* 11606C 802ACA5C 45010009 */  bc1t  .L802ACA84
/* 116070 802ACA60 00000000 */   nop   
/* 116074 802ACA64 460E6281 */  sub.s $f10, $f12, $f14
/* 116078 802ACA68 44802000 */  mtc1  $zero, $f4
/* 11607C 802ACA6C 460A8182 */  mul.s $f6, $f16, $f10
/* 116080 802ACA70 4604303C */  c.lt.s $f6, $f4
/* 116084 802ACA74 00000000 */  nop   
/* 116088 802ACA78 45000002 */  bc1f  .L802ACA84
/* 11608C 802ACA7C 00000000 */   nop   
/* 116090 802ACA80 00001025 */  move  $v0, $zero
.L802ACA84:
/* 116094 802ACA84 14400003 */  bnez  $v0, .L802ACA94
/* 116098 802ACA88 C7A80080 */   lwc1  $f8, 0x80($sp)
/* 11609C 802ACA8C 10000042 */  b     .L802ACB98
/* 1160A0 802ACA90 00001025 */   move  $v0, $zero
.L802ACA94:
/* 1160A4 802ACA94 C462001C */  lwc1  $f2, 0x1c($v1)
/* 1160A8 802ACA98 C46C0020 */  lwc1  $f12, 0x20($v1)
/* 1160AC 802ACA9C C7A60084 */  lwc1  $f6, 0x84($sp)
/* 1160B0 802ACAA0 46081282 */  mul.s $f10, $f2, $f8
/* 1160B4 802ACAA4 C46E0024 */  lwc1  $f14, 0x24($v1)
/* 1160B8 802ACAA8 C4700028 */  lwc1  $f16, 0x28($v1)
/* 1160BC 802ACAAC 46066102 */  mul.s $f4, $f12, $f6
/* 1160C0 802ACAB0 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 1160C4 802ACAB4 46045200 */  add.s $f8, $f10, $f4
/* 1160C8 802ACAB8 46067282 */  mul.s $f10, $f14, $f6
/* 1160CC 802ACABC C7A6007C */  lwc1  $f6, 0x7c($sp)
/* 1160D0 802ACAC0 460A4100 */  add.s $f4, $f8, $f10
/* 1160D4 802ACAC4 C7A80094 */  lwc1  $f8, 0x94($sp)
/* 1160D8 802ACAC8 46102000 */  add.s $f0, $f4, $f16
/* 1160DC 802ACACC C7A40090 */  lwc1  $f4, 0x90($sp)
/* 1160E0 802ACAD0 4600303C */  c.lt.s $f6, $f0
/* 1160E4 802ACAD4 00000000 */  nop   
/* 1160E8 802ACAD8 45000014 */  bc1f  .L802ACB2C
/* 1160EC 802ACADC 00000000 */   nop   
/* 1160F0 802ACAE0 C6080014 */  lwc1  $f8, 0x14($s0)
/* 1160F4 802ACAE4 240C0001 */  li    $t4, 1
/* 1160F8 802ACAE8 4608003C */  c.lt.s $f0, $f8
/* 1160FC 802ACAEC 00000000 */  nop   
/* 116100 802ACAF0 4500000C */  bc1f  .L802ACB24
/* 116104 802ACAF4 00000000 */   nop   
/* 116108 802ACAF8 A60C0004 */  sh    $t4, 4($s0)
/* 11610C 802ACAFC A605000A */  sh    $a1, 0xa($s0)
/* 116110 802ACB00 C7AA007C */  lwc1  $f10, 0x7c($sp)
/* 116114 802ACB04 460A0101 */  sub.s $f4, $f0, $f10
/* 116118 802ACB08 E6040014 */  swc1  $f4, 0x14($s0)
/* 11611C 802ACB0C C466001C */  lwc1  $f6, 0x1c($v1)
/* 116120 802ACB10 E6060030 */  swc1  $f6, 0x30($s0)
/* 116124 802ACB14 C4680020 */  lwc1  $f8, 0x20($v1)
/* 116128 802ACB18 E6080034 */  swc1  $f8, 0x34($s0)
/* 11612C 802ACB1C C46A0024 */  lwc1  $f10, 0x24($v1)
/* 116130 802ACB20 E60A0038 */  swc1  $f10, 0x38($s0)
.L802ACB24:
/* 116134 802ACB24 1000001C */  b     .L802ACB98
/* 116138 802ACB28 00001025 */   move  $v0, $zero
.L802ACB2C:
/* 11613C 802ACB2C 46041182 */  mul.s $f6, $f2, $f4
/* 116140 802ACB30 240D0001 */  li    $t5, 1
/* 116144 802ACB34 46086282 */  mul.s $f10, $f12, $f8
/* 116148 802ACB38 C7A80098 */  lwc1  $f8, 0x98($sp)
/* 11614C 802ACB3C 460A3100 */  add.s $f4, $f6, $f10
/* 116150 802ACB40 46087182 */  mul.s $f6, $f14, $f8
/* 116154 802ACB44 44804000 */  mtc1  $zero, $f8
/* 116158 802ACB48 46062280 */  add.s $f10, $f4, $f6
/* 11615C 802ACB4C 46105480 */  add.s $f18, $f10, $f16
/* 116160 802ACB50 4608903C */  c.lt.s $f18, $f8
/* 116164 802ACB54 00000000 */  nop   
/* 116168 802ACB58 45020004 */  bc1fl .L802ACB6C
/* 11616C 802ACB5C A60D0004 */   sh    $t5, 4($s0)
/* 116170 802ACB60 1000000D */  b     .L802ACB98
/* 116174 802ACB64 00001025 */   move  $v0, $zero
/* 116178 802ACB68 A60D0004 */  sh    $t5, 4($s0)
.L802ACB6C:
/* 11617C 802ACB6C A605000A */  sh    $a1, 0xa($s0)
/* 116180 802ACB70 C7A4007C */  lwc1  $f4, 0x7c($sp)
/* 116184 802ACB74 24020001 */  li    $v0, 1
/* 116188 802ACB78 46040181 */  sub.s $f6, $f0, $f4
/* 11618C 802ACB7C E6060014 */  swc1  $f6, 0x14($s0)
/* 116190 802ACB80 C46A001C */  lwc1  $f10, 0x1c($v1)
/* 116194 802ACB84 E60A0030 */  swc1  $f10, 0x30($s0)
/* 116198 802ACB88 C4680020 */  lwc1  $f8, 0x20($v1)
/* 11619C 802ACB8C E6080034 */  swc1  $f8, 0x34($s0)
/* 1161A0 802ACB90 C4640024 */  lwc1  $f4, 0x24($v1)
/* 1161A4 802ACB94 E6040038 */  swc1  $f4, 0x38($s0)
.L802ACB98:
/* 1161A8 802ACB98 8FB00004 */  lw    $s0, 4($sp)
/* 1161AC 802ACB9C 03E00008 */  jr    $ra
/* 1161B0 802ACBA0 27BD0078 */   addiu $sp, $sp, 0x78