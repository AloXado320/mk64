glabel func_8007266C
/* 07326C 8007266C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 073270 80072670 AFBF001C */  sw    $ra, 0x1c($sp)
/* 073274 80072674 AFB00018 */  sw    $s0, 0x18($sp)
/* 073278 80072678 00808025 */  move  $s0, $a0
/* 07327C 8007267C 0C01C8E2 */  jal   func_80072388
/* 073280 80072680 00002825 */   move  $a1, $zero
/* 073284 80072684 02002025 */  move  $a0, $s0
/* 073288 80072688 0C01C87A */  jal   func_800721E8
/* 07328C 8007268C 24052000 */   li    $a1, 8192
/* 073290 80072690 02002025 */  move  $a0, $s0
/* 073294 80072694 0C01C87A */  jal   func_800721E8
/* 073298 80072698 24050008 */   li    $a1, 8
/* 07329C 8007269C 0C01C94C */  jal   func_80072530
/* 0732A0 800726A0 02002025 */   move  $a0, $s0
/* 0732A4 800726A4 001070C0 */  sll   $t6, $s0, 3
/* 0732A8 800726A8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0732AC 800726AC 01D07023 */  subu  $t6, $t6, $s0
/* 0732B0 800726B0 000E7140 */  sll   $t6, $t6, 5
/* 0732B4 800726B4 3C018016 */  lui   $at, %hi(D_80165CBE) # 0x8016
/* 0732B8 800726B8 002E0821 */  addu  $at, $at, $t6
/* 0732BC 800726BC 8FB00018 */  lw    $s0, 0x18($sp)
/* 0732C0 800726C0 A4225CBE */  sh    $v0, %lo(D_80165CBE)($at) # 0x5cbe($at)
/* 0732C4 800726C4 03E00008 */  jr    $ra
/* 0732C8 800726C8 27BD0020 */   addiu $sp, $sp, 0x20