glabel place_falling_rocks
/* 106628 8029D018 27BDFF80 */  addiu $sp, $sp, -0x80
/* 10662C 8029D01C 00047602 */  srl   $t6, $a0, 0x18
/* 106630 8029D020 000E7880 */  sll   $t7, $t6, 2
/* 106634 8029D024 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 106638 8029D028 030FC021 */  addu  $t8, $t8, $t7
/* 10663C 8029D02C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 106640 8029D030 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 106644 8029D034 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 106648 8029D038 0081C824 */  and   $t9, $a0, $at
/* 10664C 8029D03C AFB00024 */  sw    $s0, 0x24($sp)
/* 106650 8029D040 3C018000 */  lui   $at, 0x8000
/* 106654 8029D044 03198021 */  addu  $s0, $t8, $t9
/* 106658 8029D048 AFBF0044 */  sw    $ra, 0x44($sp)
/* 10665C 8029D04C AFB70040 */  sw    $s7, 0x40($sp)
/* 106660 8029D050 AFB6003C */  sw    $s6, 0x3c($sp)
/* 106664 8029D054 AFB50038 */  sw    $s5, 0x38($sp)
/* 106668 8029D058 AFB40034 */  sw    $s4, 0x34($sp)
/* 10666C 8029D05C AFB30030 */  sw    $s3, 0x30($sp)
/* 106670 8029D060 AFB2002C */  sw    $s2, 0x2c($sp)
/* 106674 8029D064 AFB10028 */  sw    $s1, 0x28($sp)
/* 106678 8029D068 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 10667C 8029D06C F7B40010 */  sdc1  $f20, 0x10($sp)
/* 106680 8029D070 02018021 */  addu  $s0, $s0, $at
/* 106684 8029D074 86020000 */  lh    $v0, ($s0)
/* 106688 8029D078 24178000 */  li    $s7, -32768
/* 10668C 8029D07C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 106690 8029D080 12E20034 */  beq   $s7, $v0, .L8029D154
/* 106694 8029D084 24160070 */   li    $s6, 112
/* 106698 8029D088 3C158016 */  lui   $s5, %hi(D_8015F9B8) # $s5, 0x8016
/* 10669C 8029D08C 3C138016 */  lui   $s3, %hi(gCourseDirection) # $s3, 0x8016
/* 1066A0 8029D090 4481B000 */  mtc1  $at, $f22
/* 1066A4 8029D094 4480A000 */  mtc1  $zero, $f20
/* 1066A8 8029D098 2673F784 */  addiu $s3, %lo(gCourseDirection) # addiu $s3, $s3, -0x87c
/* 1066AC 8029D09C 26B5F9B8 */  addiu $s5, %lo(D_8015F9B8) # addiu $s5, $s5, -0x648
/* 1066B0 8029D0A0 27B40064 */  addiu $s4, $sp, 0x64
/* 1066B4 8029D0A4 27B20050 */  addiu $s2, $sp, 0x50
/* 1066B8 8029D0A8 27B10058 */  addiu $s1, $sp, 0x58
/* 1066BC 8029D0AC 44822000 */  mtc1  $v0, $f4
.L8029D0B0:
/* 1066C0 8029D0B0 C6680000 */  lwc1  $f8, ($s3)
/* 1066C4 8029D0B4 4405A000 */  mfc1  $a1, $f20
/* 1066C8 8029D0B8 468021A0 */  cvt.s.w $f6, $f4
/* 1066CC 8029D0BC 4406A000 */  mfc1  $a2, $f20
/* 1066D0 8029D0C0 4407A000 */  mfc1  $a3, $f20
/* 1066D4 8029D0C4 02202025 */  move  $a0, $s1
/* 1066D8 8029D0C8 46083282 */  mul.s $f10, $f6, $f8
/* 1066DC 8029D0CC E7AA0064 */  swc1  $f10, 0x64($sp)
/* 1066E0 8029D0D0 86080002 */  lh    $t0, 2($s0)
/* 1066E4 8029D0D4 44888000 */  mtc1  $t0, $f16
/* 1066E8 8029D0D8 00000000 */  nop   
/* 1066EC 8029D0DC 468084A0 */  cvt.s.w $f18, $f16
/* 1066F0 8029D0E0 46169100 */  add.s $f4, $f18, $f22
/* 1066F4 8029D0E4 E7A40068 */  swc1  $f4, 0x68($sp)
/* 1066F8 8029D0E8 86090004 */  lh    $t1, 4($s0)
/* 1066FC 8029D0EC 44893000 */  mtc1  $t1, $f6
/* 106700 8029D0F0 00000000 */  nop   
/* 106704 8029D0F4 46803220 */  cvt.s.w $f8, $f6
/* 106708 8029D0F8 0C0AD4A7 */  jal   load_giant_egg
/* 10670C 8029D0FC E7A8006C */   swc1  $f8, 0x6c($sp)
/* 106710 8029D100 02402025 */  move  $a0, $s2
/* 106714 8029D104 00002825 */  move  $a1, $zero
/* 106718 8029D108 00003025 */  move  $a2, $zero
/* 10671C 8029D10C 0C0AD4AF */  jal   func_802B52BC
/* 106720 8029D110 00003825 */   move  $a3, $zero
/* 106724 8029D114 02802025 */  move  $a0, $s4
/* 106728 8029D118 02402825 */  move  $a1, $s2
/* 10672C 8029D11C 02203025 */  move  $a2, $s1
/* 106730 8029D120 0C0A7B22 */  jal   func_8029EC88
/* 106734 8029D124 24070005 */   li    $a3, 5
/* 106738 8029D128 00560019 */  multu $v0, $s6
/* 10673C 8029D12C 960B0006 */  lhu   $t3, 6($s0)
/* 106740 8029D130 00005012 */  mflo  $t2
/* 106744 8029D134 02AA1821 */  addu  $v1, $s5, $t2
/* 106748 8029D138 24640030 */  addiu $a0, $v1, 0x30
/* 10674C 8029D13C 0C0AAAAB */  jal   func_802AAAAC
/* 106750 8029D140 A46B0006 */   sh    $t3, 6($v1)
/* 106754 8029D144 86020008 */  lh    $v0, 8($s0)
/* 106758 8029D148 26100008 */  addiu $s0, $s0, 8
/* 10675C 8029D14C 56E2FFD8 */  bnel  $s7, $v0, .L8029D0B0
/* 106760 8029D150 44822000 */   mtc1  $v0, $f4
.L8029D154:
/* 106764 8029D154 8FBF0044 */  lw    $ra, 0x44($sp)
/* 106768 8029D158 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 10676C 8029D15C D7B60018 */  ldc1  $f22, 0x18($sp)
/* 106770 8029D160 8FB00024 */  lw    $s0, 0x24($sp)
/* 106774 8029D164 8FB10028 */  lw    $s1, 0x28($sp)
/* 106778 8029D168 8FB2002C */  lw    $s2, 0x2c($sp)
/* 10677C 8029D16C 8FB30030 */  lw    $s3, 0x30($sp)
/* 106780 8029D170 8FB40034 */  lw    $s4, 0x34($sp)
/* 106784 8029D174 8FB50038 */  lw    $s5, 0x38($sp)
/* 106788 8029D178 8FB6003C */  lw    $s6, 0x3c($sp)
/* 10678C 8029D17C 8FB70040 */  lw    $s7, 0x40($sp)
/* 106790 8029D180 03E00008 */  jr    $ra
/* 106794 8029D184 27BD0080 */   addiu $sp, $sp, 0x80