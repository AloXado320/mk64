glabel func_80006114
/* 006D14 80006114 3C18800E */  lui   $t8, %hi(gIsMirrorMode)
/* 006D18 80006118 8F18C604 */  lw    $t8, %lo(gIsMirrorMode)($t8)
/* 006D1C 8000611C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 006D20 80006120 00067400 */  sll   $t6, $a2, 0x10
/* 006D24 80006124 000E7C03 */  sra   $t7, $t6, 0x10
/* 006D28 80006128 AFA60040 */  sw    $a2, 0x40($sp)
/* 006D2C 8000612C 01E03025 */  move  $a2, $t7
/* 006D30 80006130 AFBF0014 */  sw    $ra, 0x14($sp)
/* 006D34 80006134 13000004 */  beqz  $t8, .L80006148
/* 006D38 80006138 00803825 */   move  $a3, $a0
/* 006D3C 8000613C 000F3023 */  negu  $a2, $t7
/* 006D40 80006140 0006CC00 */  sll   $t9, $a2, 0x10
/* 006D44 80006144 00193403 */  sra   $a2, $t9, 0x10
.L80006148:
/* 006D48 80006148 C4E40000 */  lwc1  $f4, ($a3)
/* 006D4C 8000614C C4A60000 */  lwc1  $f6, ($a1)
/* 006D50 80006150 30C4FFFF */  andi  $a0, $a2, 0xffff
/* 006D54 80006154 46062201 */  sub.s $f8, $f4, $f6
/* 006D58 80006158 E7A80034 */  swc1  $f8, 0x34($sp)
/* 006D5C 8000615C C4B00008 */  lwc1  $f16, 8($a1)
/* 006D60 80006160 C4EA0008 */  lwc1  $f10, 8($a3)
/* 006D64 80006164 AFA70038 */  sw    $a3, 0x38($sp)
/* 006D68 80006168 AFA5003C */  sw    $a1, 0x3c($sp)
/* 006D6C 8000616C 46105481 */  sub.s $f18, $f10, $f16
/* 006D70 80006170 AFA4001C */  sw    $a0, 0x1c($sp)
/* 006D74 80006174 0C0AE006 */  jal   func_802B8018
/* 006D78 80006178 E7B20030 */   swc1  $f18, 0x30($sp)
/* 006D7C 8000617C 8FA4001C */  lw    $a0, 0x1c($sp)
/* 006D80 80006180 0C0AE00E */  jal   func_802B8038
/* 006D84 80006184 E7A00024 */   swc1  $f0, 0x24($sp)
/* 006D88 80006188 C7AC0034 */  lwc1  $f12, 0x34($sp)
/* 006D8C 8000618C C7A20024 */  lwc1  $f2, 0x24($sp)
/* 006D90 80006190 C7AE0030 */  lwc1  $f14, 0x30($sp)
/* 006D94 80006194 46006102 */  mul.s $f4, $f12, $f0
/* 006D98 80006198 8FA5003C */  lw    $a1, 0x3c($sp)
/* 006D9C 8000619C 8FA70038 */  lw    $a3, 0x38($sp)
/* 006DA0 800061A0 46027182 */  mul.s $f6, $f14, $f2
/* 006DA4 800061A4 C4AA0000 */  lwc1  $f10, ($a1)
/* 006DA8 800061A8 46007482 */  mul.s $f18, $f14, $f0
/* 006DAC 800061AC 46062200 */  add.s $f8, $f4, $f6
/* 006DB0 800061B0 46026102 */  mul.s $f4, $f12, $f2
/* 006DB4 800061B4 46085400 */  add.s $f16, $f10, $f8
/* 006DB8 800061B8 46049181 */  sub.s $f6, $f18, $f4
/* 006DBC 800061BC E4F00000 */  swc1  $f16, ($a3)
/* 006DC0 800061C0 C4AA0008 */  lwc1  $f10, 8($a1)
/* 006DC4 800061C4 46065200 */  add.s $f8, $f10, $f6
/* 006DC8 800061C8 E4E80008 */  swc1  $f8, 8($a3)
/* 006DCC 800061CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 006DD0 800061D0 27BD0038 */  addiu $sp, $sp, 0x38
/* 006DD4 800061D4 03E00008 */  jr    $ra
/* 006DD8 800061D8 00000000 */   nop   