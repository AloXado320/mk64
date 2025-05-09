.section .late_rodata

glabel D_800ECFA8
.float 1300.0

glabel D_800ECFAC
.float -1300.0

.section .text

glabel update_player_path_completion
/* 009E9C 8000929C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 009EA0 800092A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 009EA4 800092A4 C4A0001C */  lwc1  $f0, 0x1c($a1)
/* 009EA8 800092A8 C4AC0014 */  lwc1  $f12, 0x14($a1)
/* 009EAC 800092AC C4AE0018 */  lwc1  $f14, 0x18($a1)
/* 009EB0 800092B0 3C0E8016 */  lui   $t6, %hi(D_80163240) # $t6, 0x8016
/* 009EB4 800092B4 3C018016 */  lui   $at, %hi(gIsPlayerNewPathPoint) # $at, 0x8016
/* 009EB8 800092B8 25CE3240 */  addiu $t6, %lo(D_80163240) # addiu $t6, $t6, 0x3240
/* 009EBC 800092BC 00041040 */  sll   $v0, $a0, 1
/* 009EC0 800092C0 A42030E2 */  sh    $zero, %lo(gIsPlayerNewPathPoint)($at)
/* 009EC4 800092C4 004E1821 */  addu  $v1, $v0, $t6
/* 009EC8 800092C8 A4600000 */  sh    $zero, ($v1)
/* 009ECC 800092CC 3C0F8016 */  lui   $t7, %hi(gNearestPathPointByPlayerId) # $t7, 0x8016
/* 009ED0 800092D0 3C188016 */  lui   $t8, %hi(gPlayerPathIndex) # $t8, 0x8016
/* 009ED4 800092D4 8F183448 */  lw    $t8, %lo(gPlayerPathIndex)($t8)
/* 009ED8 800092D8 25EF4438 */  addiu $t7, %lo(gNearestPathPointByPlayerId) # addiu $t7, $t7, 0x4438
/* 009EDC 800092DC 004F4021 */  addu  $t0, $v0, $t7
/* 009EE0 800092E0 44060000 */  mfc1  $a2, $f0
/* 009EE4 800092E4 85070000 */  lh    $a3, ($t0)
/* 009EE8 800092E8 AFA80030 */  sw    $t0, 0x30($sp)
/* 009EEC 800092EC AFA3002C */  sw    $v1, 0x2c($sp)
/* 009EF0 800092F0 AFA50054 */  sw    $a1, 0x54($sp)
/* 009EF4 800092F4 AFA40050 */  sw    $a0, 0x50($sp)
/* 009EF8 800092F8 AFA40014 */  sw    $a0, 0x14($sp)
/* 009EFC 800092FC AFA50010 */  sw    $a1, 0x10($sp)
/* 009F00 80009300 E7A00044 */  swc1  $f0, 0x44($sp)
/* 009F04 80009304 E7AC004C */  swc1  $f12, 0x4c($sp)
/* 009F08 80009308 0C003349 */  jal   update_player_path
/* 009F0C 8000930C AFB80018 */   sw    $t8, 0x18($sp)
/* 009F10 80009310 3C058016 */  lui   $a1, %hi(sSomeNearestPathPoint) # $a1, 0x8016
/* 009F14 80009314 24A52FCE */  addiu $a1, %lo(sSomeNearestPathPoint) # addiu $a1, $a1, 0x2fce
/* 009F18 80009318 A4A20000 */  sh    $v0, ($a1)
/* 009F1C 8000931C 84A70000 */  lh    $a3, ($a1)
/* 009F20 80009320 8FA80030 */  lw    $t0, 0x30($sp)
/* 009F24 80009324 3C018016 */  lui   $at, %hi(gCurrentNearestPathPoint) # $at, 0x8016
/* 009F28 80009328 A42730E0 */  sh    $a3, %lo(gCurrentNearestPathPoint)($at)
/* 009F2C 8000932C 95190000 */  lhu   $t9, ($t0)
/* 009F30 80009330 8FA40050 */  lw    $a0, 0x50($sp)
/* 009F34 80009334 C7AC004C */  lwc1  $f12, 0x4c($sp)
/* 009F38 80009338 10F9000C */  beq   $a3, $t9, .L8000936C
/* 009F3C 8000933C 00E01825 */   move  $v1, $a3
/* 009F40 80009340 A5030000 */  sh    $v1, ($t0)
/* 009F44 80009344 24090001 */  li    $t1, 1
/* 009F48 80009348 3C018016 */  lui   $at, %hi(gIsPlayerNewPathPoint) # $at, 0x8016
/* 009F4C 8000934C A42930E2 */  sh    $t1, %lo(gIsPlayerNewPathPoint)($at)
/* 009F50 80009350 AFA40050 */  sw    $a0, 0x50($sp)
/* 009F54 80009354 0C0023CE */  jal   update_player_completion
/* 009F58 80009358 E7AC004C */   swc1  $f12, 0x4c($sp)
/* 009F5C 8000935C 3C078016 */  lui   $a3, %hi(sSomeNearestPathPoint) # $a3, 0x8016
/* 009F60 80009360 84E72FCE */  lh    $a3, %lo(sSomeNearestPathPoint)($a3)
/* 009F64 80009364 8FA40050 */  lw    $a0, 0x50($sp)
/* 009F68 80009368 C7AC004C */  lwc1  $f12, 0x4c($sp)
.L8000936C:
/* 009F6C 8000936C 3C02800E */  lui   $v0, %hi(gCurrentCourseId)
/* 009F70 80009370 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 009F74 80009374 24010014 */  li    $at, 20
/* 009F78 80009378 30E5FFFF */  andi  $a1, $a3, 0xffff
/* 009F7C 8000937C 14410005 */  bne   $v0, $at, .L80009394
/* 009F80 80009380 3C068016 */   lui   $a2, %hi(gPlayerPathIndex) # $a2, 0x8016
/* 009F84 80009384 0C002E57 */  jal   update_player_position_factor
/* 009F88 80009388 8CC63448 */   lw    $a2, %lo(gPlayerPathIndex)($a2)
/* 009F8C 8000938C 10000111 */  b     .L800097D4
/* 009F90 80009390 8FBF0024 */   lw    $ra, 0x24($sp)
.L80009394:
/* 009F94 80009394 28E10014 */  slti  $at, $a3, 0x14
/* 009F98 80009398 1420000B */  bnez  $at, .L800093C8
/* 009F9C 8000939C 3C0A8016 */   lui   $t2, %hi(gPlayerPathIndex) # $t2, 0x8016
/* 009FA0 800093A0 8D4A3448 */  lw    $t2, %lo(gPlayerPathIndex)($t2)
/* 009FA4 800093A4 3C0C8016 */  lui   $t4, %hi(gPathCountByPathIndex) # 0x8016
/* 009FA8 800093A8 000A5840 */  sll   $t3, $t2, 1
/* 009FAC 800093AC 018B6021 */  addu  $t4, $t4, $t3
/* 009FB0 800093B0 958C45C8 */  lhu   $t4, %lo(gPathCountByPathIndex)($t4) # 0x45c8($t4)
/* 009FB4 800093B4 258DFFEC */  addiu $t5, $t4, -0x14
/* 009FB8 800093B8 01A7082A */  slt   $at, $t5, $a3
/* 009FBC 800093BC 14200002 */  bnez  $at, .L800093C8
/* 009FC0 800093C0 2401000B */   li    $at, 11
/* 009FC4 800093C4 144100BC */  bne   $v0, $at, .L800096B8
.L800093C8:
/* 009FC8 800093C8 2401000B */   li    $at, 11
/* 009FCC 800093CC 00001825 */  move  $v1, $zero
/* 009FD0 800093D0 1441004A */  bne   $v0, $at, .L800094FC
/* 009FD4 800093D4 00004025 */   move  $t0, $zero
/* 009FD8 800093D8 8FAE0054 */  lw    $t6, 0x54($sp)
/* 009FDC 800093DC 3C028016 */  lui   $v0, %hi(D_801634EC) # $v0, 0x8016
/* 009FE0 800093E0 244234EC */  addiu $v0, %lo(D_801634EC) # addiu $v0, $v0, 0x34ec
/* 009FE4 800093E4 A4400000 */  sh    $zero, ($v0)
/* 009FE8 800093E8 8DCF00BC */  lw    $t7, 0xbc($t6)
/* 009FEC 800093EC 24190001 */  li    $t9, 1
/* 009FF0 800093F0 3C09800E */  lui   $t1, %hi(gIsMirrorMode)
/* 009FF4 800093F4 31F80200 */  andi  $t8, $t7, 0x200
/* 009FF8 800093F8 13000002 */  beqz  $t8, .L80009404
/* 009FFC 800093FC 3C01C396 */   li    $at, 0xC3960000 # -300.000000
/* 00A000 80009400 A4590000 */  sh    $t9, ($v0)
.L80009404:
/* 00A004 80009404 8D29C604 */  lw    $t1, %lo(gIsMirrorMode)($t1)
/* 00A008 80009408 51200020 */  beql  $t1, $zero, .L8000948C
/* 00A00C 8000940C 44814000 */   mtc1  $at, $f8
/* 00A010 80009410 3C014396 */  li    $at, 0x43960000 # 300.000000
/* 00A014 80009414 44812000 */  mtc1  $at, $f4
/* 00A018 80009418 3C01800F */  lui    $at, %hi(D_800ECFA8) # -0.000000
/* 00A01C 8000941C 00043880 */  sll   $a3, $a0, 2
/* 00A020 80009420 4604603C */  c.lt.s $f12, $f4
/* 00A024 80009424 00000000 */  nop   
/* 00A028 80009428 45000004 */  bc1f  .L8000943C
/* 00A02C 8000942C 00000000 */   nop   
/* 00A030 80009430 24030001 */  li    $v1, 1
/* 00A034 80009434 10000034 */  b     .L80009508
/* 00A038 80009438 24080001 */   li    $t0, 1
.L8000943C:
/* 00A03C 8000943C C426CFA8 */  lwc1  $f6, %lo(D_800ECFA8)($at)
/* 00A040 80009440 00045080 */  sll   $t2, $a0, 2
/* 00A044 80009444 3C0B8016 */  lui   $t3, %hi(gLapCountByPlayerId) # 0x8016
/* 00A048 80009448 4606603C */  c.lt.s $f12, $f6
/* 00A04C 8000944C 016A5821 */  addu  $t3, $t3, $t2
/* 00A050 80009450 45000028 */  bc1f  .L800094F4
/* 00A054 80009454 00000000 */   nop   
/* 00A058 80009458 8D6B4390 */  lw    $t3, %lo(gLapCountByPlayerId)($t3) # 0x4390($t3)
/* 00A05C 8000945C 29610002 */  slti  $at, $t3, 2
/* 00A060 80009460 10200024 */  beqz  $at, .L800094F4
/* 00A064 80009464 00000000 */   nop   
/* 00A068 80009468 844C0000 */  lh    $t4, ($v0)
/* 00A06C 8000946C 24010001 */  li    $at, 1
/* 00A070 80009470 00043880 */  sll   $a3, $a0, 2
/* 00A074 80009474 1581001F */  bne   $t4, $at, .L800094F4
/* 00A078 80009478 00000000 */   nop   
/* 00A07C 8000947C 24030001 */  li    $v1, 1
/* 00A080 80009480 10000021 */  b     .L80009508
/* 00A084 80009484 24080001 */   li    $t0, 1
/* 00A088 80009488 44814000 */  mtc1  $at, $f8
.L8000948C:
/* 00A08C 8000948C 3C01800F */  lui   $at, %hi(D_800ECFAC) # $at, 0x800f
/* 00A090 80009490 00043880 */  sll   $a3, $a0, 2
/* 00A094 80009494 460C403C */  c.lt.s $f8, $f12
/* 00A098 80009498 00000000 */  nop   
/* 00A09C 8000949C 45000004 */  bc1f  .L800094B0
/* 00A0A0 800094A0 00000000 */   nop   
/* 00A0A4 800094A4 24030001 */  li    $v1, 1
/* 00A0A8 800094A8 10000017 */  b     .L80009508
/* 00A0AC 800094AC 24080001 */   li    $t0, 1
.L800094B0:
/* 00A0B0 800094B0 C42ACFAC */  lwc1  $f10, %lo(D_800ECFAC)($at)
/* 00A0B4 800094B4 00046880 */  sll   $t5, $a0, 2
/* 00A0B8 800094B8 3C0E8016 */  lui   $t6, %hi(gLapCountByPlayerId) # 0x8016
/* 00A0BC 800094BC 460C503C */  c.lt.s $f10, $f12
/* 00A0C0 800094C0 01CD7021 */  addu  $t6, $t6, $t5
/* 00A0C4 800094C4 4500000B */  bc1f  .L800094F4
/* 00A0C8 800094C8 00000000 */   nop   
/* 00A0CC 800094CC 8DCE4390 */  lw    $t6, %lo(gLapCountByPlayerId)($t6) # 0x4390($t6)
/* 00A0D0 800094D0 29C10002 */  slti  $at, $t6, 2
/* 00A0D4 800094D4 10200007 */  beqz  $at, .L800094F4
/* 00A0D8 800094D8 00000000 */   nop   
/* 00A0DC 800094DC 844F0000 */  lh    $t7, ($v0)
/* 00A0E0 800094E0 24010001 */  li    $at, 1
/* 00A0E4 800094E4 15E10003 */  bne   $t7, $at, .L800094F4
/* 00A0E8 800094E8 00000000 */   nop   
/* 00A0EC 800094EC 24030001 */  li    $v1, 1
/* 00A0F0 800094F0 24080001 */  li    $t0, 1
.L800094F4:
/* 00A0F4 800094F4 10000004 */  b     .L80009508
/* 00A0F8 800094F8 00043880 */   sll   $a3, $a0, 2
.L800094FC:
/* 00A0FC 800094FC 24030001 */  li    $v1, 1
/* 00A100 80009500 24080001 */  li    $t0, 1
/* 00A104 80009504 00043880 */  sll   $a3, $a0, 2
.L80009508:
/* 00A108 80009508 3C018016 */  lui   $at, %hi(gPreviousPlayerZ)
/* 00A10C 8000950C 00270821 */  addu  $at, $at, $a3
/* 00A110 80009510 C4303450 */  lwc1  $f16, %lo(gPreviousPlayerZ)($at)
/* 00A114 80009514 3C018016 */  lui   $at, %hi(gPathStartZ) # $at, 0x8016
/* 00A118 80009518 10600052 */  beqz  $v1, .L80009664
/* 00A11C 8000951C E7B00038 */   swc1  $f16, 0x38($sp)
/* 00A120 80009520 C420344C */  lwc1  $f0, %lo(gPathStartZ)($at)
/* 00A124 80009524 C7B20044 */  lwc1  $f18, 0x44($sp)
/* 00A128 80009528 C7A40038 */  lwc1  $f4, 0x38($sp)
/* 00A12C 8000952C 4600903E */  c.le.s $f18, $f0
/* 00A130 80009530 00000000 */  nop   
/* 00A134 80009534 4500004B */  bc1f  .L80009664
/* 00A138 80009538 00000000 */   nop   
/* 00A13C 8000953C 4604003C */  c.lt.s $f0, $f4
/* 00A140 80009540 3C188016 */  lui   $t8, %hi(gLapCountByPlayerId) # $t8, 0x8016
/* 00A144 80009544 27184390 */  addiu $t8, %lo(gLapCountByPlayerId) # addiu $t8, $t8, 0x4390
/* 00A148 80009548 00F81021 */  addu  $v0, $a3, $t8
/* 00A14C 8000954C 45000045 */  bc1f  .L80009664
/* 00A150 80009550 00000000 */   nop   
/* 00A154 80009554 8C590000 */  lw    $t9, ($v0)
/* 00A158 80009558 3C0A800E */  lui   $t2, %hi(gModeSelection)
/* 00A15C 8000955C 24010005 */  li    $at, 5
/* 00A160 80009560 27290001 */  addiu $t1, $t9, 1
/* 00A164 80009564 AC490000 */  sw    $t1, ($v0)
/* 00A168 80009568 8D4AC53C */  lw    $t2, %lo(gModeSelection)($t2)
/* 00A16C 8000956C 5540001A */  bnel  $t2, $zero, .L800095D8
/* 00A170 80009570 8FAD002C */   lw    $t5, 0x2c($sp)
/* 00A174 80009574 15210017 */  bne   $t1, $at, .L800095D4
/* 00A178 80009578 3C0C8016 */   lui   $t4, %hi(gGPCurrentRaceRankByPlayerIdDup) # 0x8016
/* 00A17C 8000957C 01876021 */  addu  $t4, $t4, $a3
/* 00A180 80009580 8D8C4408 */  lw    $t4, %lo(gGPCurrentRaceRankByPlayerIdDup)($t4) # 0x4408($t4)
/* 00A184 80009584 24010007 */  li    $at, 7
/* 00A188 80009588 3C028016 */  lui   $v0, %hi(gLapCountByPlayerId) # $v0, 0x8016
/* 00A18C 8000958C 15810011 */  bne   $t4, $at, .L800095D4
/* 00A190 80009590 24424390 */   addiu $v0, %lo(gLapCountByPlayerId) # addiu $v0, $v0, 0x4390
/* 00A194 80009594 3C038016 */  lui   $v1, %hi(gLapCountByPlayerId + 0x20) # $v1, 0x8016
/* 00A198 80009598 246343B0 */  addiu $v1, %lo(gLapCountByPlayerId + 0x20) # addiu $v1, $v1, 0x43b0
.L8000959C:
/* 00A19C 8000959C 8C4D0000 */  lw    $t5, ($v0)
/* 00A1A0 800095A0 8C4F0004 */  lw    $t7, 4($v0)
/* 00A1A4 800095A4 8C590008 */  lw    $t9, 8($v0)
/* 00A1A8 800095A8 8C4A000C */  lw    $t2, 0xc($v0)
/* 00A1AC 800095AC 24420010 */  addiu $v0, $v0, 0x10
/* 00A1B0 800095B0 25AEFFFF */  addiu $t6, $t5, -1
/* 00A1B4 800095B4 25F8FFFF */  addiu $t8, $t7, -1
/* 00A1B8 800095B8 2729FFFF */  addiu $t1, $t9, -1
/* 00A1BC 800095BC 254BFFFF */  addiu $t3, $t2, -1
/* 00A1C0 800095C0 AC4BFFFC */  sw    $t3, -4($v0)
/* 00A1C4 800095C4 AC49FFF8 */  sw    $t1, -8($v0)
/* 00A1C8 800095C8 AC58FFF4 */  sw    $t8, -0xc($v0)
/* 00A1CC 800095CC 1443FFF3 */  bne   $v0, $v1, .L8000959C
/* 00A1D0 800095D0 AC4EFFF0 */   sw    $t6, -0x10($v0)
.L800095D4:
/* 00A1D4 800095D4 8FAD002C */  lw    $t5, 0x2c($sp)
.L800095D8:
/* 00A1D8 800095D8 240C0001 */  li    $t4, 1
/* 00A1DC 800095DC A5AC0000 */  sh    $t4, ($t5)
/* 00A1E0 800095E0 A7A80034 */  sh    $t0, 0x34($sp)
/* 00A1E4 800095E4 AFA70030 */  sw    $a3, 0x30($sp)
/* 00A1E8 800095E8 0C0023CE */  jal   update_player_completion
/* 00A1EC 800095EC AFA40050 */   sw    $a0, 0x50($sp)
/* 00A1F0 800095F0 0C0046B9 */  jal   reset_cpu_behaviour
/* 00A1F4 800095F4 8FA40050 */   lw    $a0, 0x50($sp)
/* 00A1F8 800095F8 8FA40050 */  lw    $a0, 0x50($sp)
/* 00A1FC 800095FC 3C0F8016 */  lui   $t7, %hi(D_8016348C) # $t7, 0x8016
/* 00A200 80009600 85EF348C */  lh    $t7, %lo(D_8016348C)($t7)
/* 00A204 80009604 3C018016 */  lui   $at, %hi(cpu_ItemStrategy + 0x6) # 0x8016
/* 00A208 80009608 00047100 */  sll   $t6, $a0, 4
/* 00A20C 8000960C 002E0821 */  addu  $at, $at, $t6
/* 00A210 80009610 8FA70030 */  lw    $a3, 0x30($sp)
/* 00A214 80009614 87A80034 */  lh    $t0, 0x34($sp)
/* 00A218 80009618 15E00012 */  bnez  $t7, .L80009664
/* 00A21C 8000961C A42042DE */   sh    $zero, %lo(cpu_ItemStrategy + 0x6)($at) # 0x42de($at)
/* 00A220 80009620 8FB80054 */  lw    $t8, 0x54($sp)
/* 00A224 80009624 8FA50038 */  lw    $a1, 0x38($sp)
/* 00A228 80009628 8FA60044 */  lw    $a2, 0x44($sp)
/* 00A22C 8000962C 97190000 */  lhu   $t9, ($t8)
/* 00A230 80009630 33290800 */  andi  $t1, $t9, 0x800
/* 00A234 80009634 1520000B */  bnez  $t1, .L80009664
/* 00A238 80009638 00000000 */   nop   
/* 00A23C 8000963C AFA40050 */  sw    $a0, 0x50($sp)
/* 00A240 80009640 AFA70030 */  sw    $a3, 0x30($sp)
/* 00A244 80009644 0C002496 */  jal   func_80009258
/* 00A248 80009648 A7A80034 */   sh    $t0, 0x34($sp)
/* 00A24C 8000964C 8FA70030 */  lw    $a3, 0x30($sp)
/* 00A250 80009650 3C018016 */  lui   $at, %hi(gTimePlayerLastTouchedFinishLine)
/* 00A254 80009654 8FA40050 */  lw    $a0, 0x50($sp)
/* 00A258 80009658 00270821 */  addu  $at, $at, $a3
/* 00A25C 8000965C E420F898 */  swc1  $f0, %lo(gTimePlayerLastTouchedFinishLine)($at)
/* 00A260 80009660 87A80034 */  lh    $t0, 0x34($sp)
.L80009664:
/* 00A264 80009664 11000014 */  beqz  $t0, .L800096B8
/* 00A268 80009668 3C018016 */   lui   $at, %hi(gPathStartZ) # $at, 0x8016
/* 00A26C 8000966C C420344C */  lwc1  $f0, %lo(gPathStartZ)($at)
/* 00A270 80009670 C7A60038 */  lwc1  $f6, 0x38($sp)
/* 00A274 80009674 C7A80044 */  lwc1  $f8, 0x44($sp)
/* 00A278 80009678 4600303E */  c.le.s $f6, $f0
/* 00A27C 8000967C 00000000 */  nop   
/* 00A280 80009680 4502000E */  bc1fl .L800096BC
/* 00A284 80009684 C7AA0044 */   lwc1  $f10, 0x44($sp)
/* 00A288 80009688 4608003C */  c.lt.s $f0, $f8
/* 00A28C 8000968C 3C0A8016 */  lui   $t2, %hi(gLapCountByPlayerId) # $t2, 0x8016
/* 00A290 80009690 254A4390 */  addiu $t2, %lo(gLapCountByPlayerId) # addiu $t2, $t2, 0x4390
/* 00A294 80009694 00EA1021 */  addu  $v0, $a3, $t2
/* 00A298 80009698 45020008 */  bc1fl .L800096BC
/* 00A29C 8000969C C7AA0044 */   lwc1  $f10, 0x44($sp)
/* 00A2A0 800096A0 8C4B0000 */  lw    $t3, ($v0)
/* 00A2A4 800096A4 AFA40050 */  sw    $a0, 0x50($sp)
/* 00A2A8 800096A8 256CFFFF */  addiu $t4, $t3, -1
/* 00A2AC 800096AC 0C0023CE */  jal   update_player_completion
/* 00A2B0 800096B0 AC4C0000 */   sw    $t4, ($v0)
/* 00A2B4 800096B4 8FA40050 */  lw    $a0, 0x50($sp)
.L800096B8:
/* 00A2B8 800096B8 C7AA0044 */  lwc1  $f10, 0x44($sp)
.L800096BC:
/* 00A2BC 800096BC 00046880 */  sll   $t5, $a0, 2
/* 00A2C0 800096C0 3C018016 */  lui   $at, %hi(gPreviousPlayerZ)
/* 00A2C4 800096C4 3C0E800E */  lui   $t6, %hi(gCurrentCourseId)
/* 00A2C8 800096C8 85CEC5A0 */  lh    $t6, %lo(gCurrentCourseId)($t6)
/* 00A2CC 800096CC 002D0821 */  addu  $at, $at, $t5
/* 00A2D0 800096D0 E42A3450 */  swc1  $f10, %lo(gPreviousPlayerZ)($at)
/* 00A2D4 800096D4 24010004 */  li    $at, 4
/* 00A2D8 800096D8 15C10013 */  bne   $t6, $at, .L80009728
/* 00A2DC 800096DC 3C0F8016 */   lui   $t7, %hi(gIsPlayerNewPathPoint) # $t7, 0x8016
/* 00A2E0 800096E0 85EF30E2 */  lh    $t7, %lo(gIsPlayerNewPathPoint)($t7)
/* 00A2E4 800096E4 24010001 */  li    $at, 1
/* 00A2E8 800096E8 55E10010 */  bnel  $t7, $at, .L8000972C
/* 00A2EC 800096EC 8FAA0054 */   lw    $t2, 0x54($sp)
/* 00A2F0 800096F0 0C002400 */  jal   yoshi_valley_cpu_path
/* 00A2F4 800096F4 AFA40050 */   sw    $a0, 0x50($sp)
/* 00A2F8 800096F8 8FB80054 */  lw    $t8, 0x54($sp)
/* 00A2FC 800096FC 8FA40050 */  lw    $a0, 0x50($sp)
/* 00A300 80009700 8FA50054 */  lw    $a1, 0x54($sp)
/* 00A304 80009704 97020000 */  lhu   $v0, ($t8)
/* 00A308 80009708 30594000 */  andi  $t9, $v0, 0x4000
/* 00A30C 8000970C 13200003 */  beqz  $t9, .L8000971C
/* 00A310 80009710 30491000 */   andi  $t1, $v0, 0x1000
/* 00A314 80009714 51200005 */  beql  $t1, $zero, .L8000972C
/* 00A318 80009718 8FAA0054 */   lw    $t2, 0x54($sp)
.L8000971C:
/* 00A31C 8000971C 0C00243C */  jal   update_cpu_path_completion
/* 00A320 80009720 AFA40050 */   sw    $a0, 0x50($sp)
/* 00A324 80009724 8FA40050 */  lw    $a0, 0x50($sp)
.L80009728:
/* 00A328 80009728 8FAA0054 */  lw    $t2, 0x54($sp)
.L8000972C:
/* 00A32C 8000972C 3C068016 */  lui   $a2, %hi(gPlayerPathIndex) # 0x8016
/* 00A330 80009730 3C038016 */  lui   $v1, %hi(sSomeNearestPathPoint) # 0x8016
/* 00A334 80009734 95420000 */  lhu   $v0, ($t2)
/* 00A338 80009738 304B4000 */  andi  $t3, $v0, 0x4000
/* 00A33C 8000973C 11600020 */  beqz  $t3, .L800097C0
/* 00A340 80009740 304C1000 */   andi  $t4, $v0, 0x1000
/* 00A344 80009744 1580001E */  bnez  $t4, .L800097C0
/* 00A348 80009748 01402825 */   move  $a1, $t2
/* 00A34C 8000974C 0C001974 */  jal   detect_wrong_player_direction
/* 00A350 80009750 AFA40050 */   sw    $a0, 0x50($sp)
/* 00A354 80009754 3C0D800E */  lui   $t5, %hi(gModeSelection)
/* 00A358 80009758 8DADC53C */  lw    $t5, %lo(gModeSelection)($t5)
/* 00A35C 8000975C 8FA40050 */  lw    $a0, 0x50($sp)
/* 00A360 80009760 3C068016 */  lui   $a2, %hi(gPlayerPathIndex) # $a2, 0x8016
/* 00A364 80009764 15A00013 */  bnez  $t5, .L800097B4
/* 00A368 80009768 3C038016 */   lui   $v1, %hi(sSomeNearestPathPoint) # $v1, 0x8016
/* 00A36C 8000976C 3C0E8019 */  lui   $t6, %hi(gPlayerCount) # $t6, 0x8019
/* 00A370 80009770 81CEEDF3 */  lb    $t6, %lo(gPlayerCount)($t6)
/* 00A374 80009774 24010002 */  li    $at, 2
/* 00A378 80009778 15C1000E */  bne   $t6, $at, .L800097B4
/* 00A37C 8000977C 00000000 */   nop   
/* 00A380 80009780 1480000C */  bnez  $a0, .L800097B4
/* 00A384 80009784 3C0F8016 */   lui   $t7, %hi(gGPCurrentRaceRankByPlayerIdDup) # $t7, 0x8016
/* 00A388 80009788 3C188016 */  lui   $t8, %hi(gGPCurrentRaceRankByPlayerIdDup + 0x4) # $t8, 0x8016
/* 00A38C 8000978C 8F18440C */  lw    $t8, %lo(gGPCurrentRaceRankByPlayerIdDup + 0x4)($t8)
/* 00A390 80009790 8DEF4408 */  lw    $t7, %lo(gGPCurrentRaceRankByPlayerIdDup)($t7)
/* 00A394 80009794 24190001 */  li    $t9, 1
/* 00A398 80009798 01F8082A */  slt   $at, $t7, $t8
/* 00A39C 8000979C 10200003 */  beqz  $at, .L800097AC
/* 00A3A0 800097A0 3C018016 */   lui   $at, %hi(gBestRankedHumanPlayer) # $at, 0x8016
/* 00A3A4 800097A4 10000003 */  b     .L800097B4
/* 00A3A8 800097A8 A4203478 */   sh    $zero, %lo(gBestRankedHumanPlayer)($at)
.L800097AC:
/* 00A3AC 800097AC 3C018016 */  lui   $at, %hi(gBestRankedHumanPlayer) # $at, 0x8016
/* 00A3B0 800097B0 A4393478 */  sh    $t9, %lo(gBestRankedHumanPlayer)($at)
.L800097B4:
/* 00A3B4 800097B4 8CC63448 */  lw    $a2, %lo(gPlayerPathIndex)($a2)
/* 00A3B8 800097B8 10000003 */  b     .L800097C8
/* 00A3BC 800097BC 84632FCE */   lh    $v1, %lo(sSomeNearestPathPoint)($v1)
.L800097C0:
/* 00A3C0 800097C0 8CC63448 */  lw    $a2, %lo(gPlayerPathIndex)($a2) # 0x3448($a2)
/* 00A3C4 800097C4 84632FCE */  lh    $v1, %lo(sSomeNearestPathPoint)($v1)
.L800097C8:
/* 00A3C8 800097C8 0C002E57 */  jal   update_player_position_factor
/* 00A3CC 800097CC 3065FFFF */   andi  $a1, $v1, 0xffff
/* 00A3D0 800097D0 8FBF0024 */  lw    $ra, 0x24($sp)
.L800097D4:
/* 00A3D4 800097D4 27BD0050 */  addiu $sp, $sp, 0x50
/* 00A3D8 800097D8 03E00008 */  jr    $ra
/* 00A3DC 800097DC 00000000 */   nop   
