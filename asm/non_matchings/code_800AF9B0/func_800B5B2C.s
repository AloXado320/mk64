glabel func_800B5B2C
/* 0B672C 800B5B2C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B6730 800B5B30 28810004 */  slti  $at, $a0, 4
/* 0B6734 800B5B34 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B6738 800B5B38 10200003 */  beqz  $at, .L800B5B48
/* 0B673C 800B5B3C 00803025 */   move  $a2, $a0
/* 0B6740 800B5B40 04810003 */  bgez  $a0, .L800B5B50
/* 0B6744 800B5B44 27A5001F */   addiu $a1, $sp, 0x1f
.L800B5B48:
/* 0B6748 800B5B48 1000000E */  b     .L800B5B84
/* 0B674C 800B5B4C 00001025 */   move  $v0, $zero
.L800B5B50:
/* 0B6750 800B5B50 3C048015 */  lui   $a0, %hi(gSIEventMesgQueue) # $a0, 0x8015
/* 0B6754 800B5B54 2484F0B8 */  addiu $a0, %lo(gSIEventMesgQueue) # addiu $a0, $a0, -0xf48
/* 0B6758 800B5B58 0C0338EC */  jal   osPfsIsPlug
/* 0B675C 800B5B5C AFA60020 */   sw    $a2, 0x20($sp)
/* 0B6760 800B5B60 8FA60020 */  lw    $a2, 0x20($sp)
/* 0B6764 800B5B64 93AE001F */  lbu   $t6, 0x1f($sp)
/* 0B6768 800B5B68 240F0001 */  li    $t7, 1
/* 0B676C 800B5B6C 00CFC004 */  sllv  $t8, $t7, $a2
/* 0B6770 800B5B70 01D8C824 */  and   $t9, $t6, $t8
/* 0B6774 800B5B74 13200003 */  beqz  $t9, .L800B5B84
/* 0B6778 800B5B78 00001025 */   move  $v0, $zero
/* 0B677C 800B5B7C 10000001 */  b     .L800B5B84
/* 0B6780 800B5B80 24020001 */   li    $v0, 1
.L800B5B84:
/* 0B6784 800B5B84 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B6788 800B5B88 27BD0020 */  addiu $sp, $sp, 0x20
/* 0B678C 800B5B8C 03E00008 */  jr    $ra
/* 0B6790 800B5B90 00000000 */   nop   