glabel func_80046030
/* 046C30 80046030 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 046C34 80046034 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 046C38 80046038 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 046C3C 8004603C 8D020000 */  lw    $v0, ($t0)
/* 046C40 80046040 AFB60030 */  sw    $s6, 0x30($sp)
/* 046C44 80046044 8FB60054 */  lw    $s6, 0x54($sp)
/* 046C48 80046048 244E0008 */  addiu $t6, $v0, 8
/* 046C4C 8004604C AFBF003C */  sw    $ra, 0x3c($sp)
/* 046C50 80046050 AFBE0038 */  sw    $fp, 0x38($sp)
/* 046C54 80046054 AFB70034 */  sw    $s7, 0x34($sp)
/* 046C58 80046058 AFB5002C */  sw    $s5, 0x2c($sp)
/* 046C5C 8004605C AFB40028 */  sw    $s4, 0x28($sp)
/* 046C60 80046060 AFB30024 */  sw    $s3, 0x24($sp)
/* 046C64 80046064 AFB20020 */  sw    $s2, 0x20($sp)
/* 046C68 80046068 AFB1001C */  sw    $s1, 0x1c($sp)
/* 046C6C 8004606C AFB00018 */  sw    $s0, 0x18($sp)
/* 046C70 80046070 AFA60048 */  sw    $a2, 0x48($sp)
/* 046C74 80046074 AD0E0000 */  sw    $t6, ($t0)
/* 046C78 80046078 3C180D01 */  lui   $t8, %hi(D_0D008138) # $t8, 0xd01
/* 046C7C 8004607C 27188138 */  addiu $t8, %lo(D_0D008138) # addiu $t8, $t8, -0x7ec8
/* 046C80 80046080 3C0F0600 */  lui   $t7, 0x600
/* 046C84 80046084 AC4F0000 */  sw    $t7, ($v0)
/* 046C88 80046088 AC580004 */  sw    $t8, 4($v0)
/* 046C8C 8004608C 8FB90050 */  lw    $t9, 0x50($sp)
/* 046C90 80046090 00E0B825 */  move  $s7, $a3
/* 046C94 80046094 00008025 */  move  $s0, $zero
/* 046C98 80046098 0336001A */  div   $zero, $t9, $s6
/* 046C9C 8004609C 0000A012 */  mflo  $s4
/* 046CA0 800460A0 00808825 */  move  $s1, $a0
/* 046CA4 800460A4 00A09025 */  move  $s2, $a1
/* 046CA8 800460A8 00009825 */  move  $s3, $zero
/* 046CAC 800460AC 00401825 */  move  $v1, $v0
/* 046CB0 800460B0 16C00002 */  bnez  $s6, .L800460BC
/* 046CB4 800460B4 00000000 */   nop   
/* 046CB8 800460B8 0007000D */  break 7
.L800460BC:
/* 046CBC 800460BC 2401FFFF */  li    $at, -1
/* 046CC0 800460C0 16C10004 */  bne   $s6, $at, .L800460D4
/* 046CC4 800460C4 3C018000 */   lui   $at, 0x8000
/* 046CC8 800460C8 17210002 */  bne   $t9, $at, .L800460D4
/* 046CCC 800460CC 00000000 */   nop   
/* 046CD0 800460D0 0006000D */  break 6
.L800460D4:
/* 046CD4 800460D4 26C9FFFF */  addiu $t1, $s6, -1
/* 046CD8 800460D8 1A800013 */  blez  $s4, .L80046128
/* 046CDC 800460DC 00000000 */   nop   
/* 046CE0 800460E0 02E90019 */  multu $s7, $t1
/* 046CE4 800460E4 0000A812 */  mflo  $s5
/* 046CE8 800460E8 0015F040 */  sll   $fp, $s5, 1
/* 046CEC 800460EC 00000000 */  nop   
.L800460F0:
/* 046CF0 800460F0 02202025 */  move  $a0, $s1
/* 046CF4 800460F4 02402825 */  move  $a1, $s2
/* 046CF8 800460F8 02E03025 */  move  $a2, $s7
/* 046CFC 800460FC 0C0115CE */  jal   func_80045738
/* 046D00 80046100 02C03825 */   move  $a3, $s6
/* 046D04 80046104 8FAB0048 */  lw    $t3, 0x48($sp)
/* 046D08 80046108 00105100 */  sll   $t2, $s0, 4
/* 046D0C 8004610C 0C0116CB */  jal   func_80045B2C
/* 046D10 80046110 014B2021 */   addu  $a0, $t2, $t3
/* 046D14 80046114 26730001 */  addiu $s3, $s3, 1
/* 046D18 80046118 023E8821 */  addu  $s1, $s1, $fp
/* 046D1C 8004611C 02559021 */  addu  $s2, $s2, $s5
/* 046D20 80046120 1674FFF3 */  bne   $s3, $s4, .L800460F0
/* 046D24 80046124 26100004 */   addiu $s0, $s0, 4
.L80046128:
/* 046D28 80046128 3C028015 */  lui   $v0, %hi(gDisplayListHead) # $v0, 0x8015
/* 046D2C 8004612C 8C420298 */  lw    $v0, %lo(gDisplayListHead)($v0)
/* 046D30 80046130 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 046D34 80046134 3C0E0001 */  lui   $t6, (0x00010001 >> 16) # lui $t6, 1
/* 046D38 80046138 244C0008 */  addiu $t4, $v0, 8
/* 046D3C 8004613C AC2C0298 */  sw    $t4, %lo(gDisplayListHead)($at)
/* 046D40 80046140 35CE0001 */  ori   $t6, (0x00010001 & 0xFFFF) # ori $t6, $t6, 1
/* 046D44 80046144 3C0DBB00 */  lui   $t5, 0xbb00
/* 046D48 80046148 AC4D0000 */  sw    $t5, ($v0)
/* 046D4C 8004614C AC4E0004 */  sw    $t6, 4($v0)
/* 046D50 80046150 3C028015 */  lui   $v0, %hi(gDisplayListHead) # $v0, 0x8015
/* 046D54 80046154 8C420298 */  lw    $v0, %lo(gDisplayListHead)($v0)
/* 046D58 80046158 3C190D01 */  lui   $t9, %hi(D_0D008120) # $t9, 0xd01
/* 046D5C 8004615C 27398120 */  addiu $t9, %lo(D_0D008120) # addiu $t9, $t9, -0x7ee0
/* 046D60 80046160 244F0008 */  addiu $t7, $v0, 8
/* 046D64 80046164 AC2F0298 */  sw    $t7, %lo(gDisplayListHead)($at)
/* 046D68 80046168 3C180600 */  lui   $t8, 0x600
/* 046D6C 8004616C AC580000 */  sw    $t8, ($v0)
/* 046D70 80046170 AC590004 */  sw    $t9, 4($v0)
/* 046D74 80046174 8FBF003C */  lw    $ra, 0x3c($sp)
/* 046D78 80046178 8FBE0038 */  lw    $fp, 0x38($sp)
/* 046D7C 8004617C 8FB70034 */  lw    $s7, 0x34($sp)
/* 046D80 80046180 8FB60030 */  lw    $s6, 0x30($sp)
/* 046D84 80046184 8FB5002C */  lw    $s5, 0x2c($sp)
/* 046D88 80046188 8FB40028 */  lw    $s4, 0x28($sp)
/* 046D8C 8004618C 8FB30024 */  lw    $s3, 0x24($sp)
/* 046D90 80046190 8FB20020 */  lw    $s2, 0x20($sp)
/* 046D94 80046194 8FB1001C */  lw    $s1, 0x1c($sp)
/* 046D98 80046198 8FB00018 */  lw    $s0, 0x18($sp)
/* 046D9C 8004619C 03E00008 */  jr    $ra
/* 046DA0 800461A0 27BD0040 */   addiu $sp, $sp, 0x40