glabel func_8097F0AC
/* 01A3C 8097F0AC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 01A40 8097F0B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A44 8097F0B4 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 01A48 8097F0B8 94A31D74 */  lhu     $v1, 0x1D74($a1)           ## 00001D74
/* 01A4C 8097F0BC 2401008C */  addiu   $at, $zero, 0x008C         ## $at = 0000008C
/* 01A50 8097F0C0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01A54 8097F0C4 10610005 */  beq     $v1, $at, .L8097F0DC       
/* 01A58 8097F0C8 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 01A5C 8097F0CC 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 01A60 8097F0D0 24010013 */  addiu   $at, $zero, 0x0013         ## $at = 00000013
/* 01A64 8097F0D4 85F81456 */  lh      $t8, 0x1456($t7)           ## 80161456
/* 01A68 8097F0D8 17010017 */  bne     $t8, $at, .L8097F138       
.L8097F0DC:
/* 01A6C 8097F0DC 3C014382 */  lui     $at, 0x4382                ## $at = 43820000
/* 01A70 8097F0E0 44813000 */  mtc1    $at, $f6                   ## $f6 = 260.00
/* 01A74 8097F0E4 C4E40024 */  lwc1    $f4, 0x0024($a3)           ## 00000024
/* 01A78 8097F0E8 3C0143AA */  lui     $at, 0x43AA                ## $at = 43AA0000
/* 01A7C 8097F0EC 44818000 */  mtc1    $at, $f16                  ## $f16 = 340.00
/* 01A80 8097F0F0 46062200 */  add.s   $f8, $f4, $f6              
/* 01A84 8097F0F4 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 01A88 8097F0F8 44813000 */  mtc1    $at, $f6                   ## $f6 = 45.00
/* 01A8C 8097F0FC 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 01A90 8097F100 E7A80038 */  swc1    $f8, 0x0038($sp)           
/* 01A94 8097F104 C4EA0028 */  lwc1    $f10, 0x0028($a3)          ## 00000028
/* 01A98 8097F108 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFE8
/* 01A9C 8097F10C 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 01AA0 8097F110 46105480 */  add.s   $f18, $f10, $f16           
/* 01AA4 8097F114 E7B2003C */  swc1    $f18, 0x003C($sp)          
/* 01AA8 8097F118 C4E4002C */  lwc1    $f4, 0x002C($a3)           ## 0000002C
/* 01AAC 8097F11C AFA70050 */  sw      $a3, 0x0050($sp)           
/* 01AB0 8097F120 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 01AB4 8097F124 46062200 */  add.s   $f8, $f4, $f6              
/* 01AB8 8097F128 0C25F671 */  jal     func_8097D9C4              
/* 01ABC 8097F12C E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 01AC0 8097F130 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 01AC4 8097F134 8FA70050 */  lw      $a3, 0x0050($sp)           
.L8097F138:
/* 01AC8 8097F138 240100B0 */  addiu   $at, $zero, 0x00B0         ## $at = 000000B0
/* 01ACC 8097F13C 14610013 */  bne     $v1, $at, .L8097F18C       
/* 01AD0 8097F140 3C014382 */  lui     $at, 0x4382                ## $at = 43820000
/* 01AD4 8097F144 44818000 */  mtc1    $at, $f16                  ## $f16 = 260.00
/* 01AD8 8097F148 C4EA0024 */  lwc1    $f10, 0x0024($a3)          ## 00000024
/* 01ADC 8097F14C 3C014452 */  lui     $at, 0x4452                ## $at = 44520000
/* 01AE0 8097F150 44813000 */  mtc1    $at, $f6                   ## $f6 = 840.00
/* 01AE4 8097F154 46105480 */  add.s   $f18, $f10, $f16           
/* 01AE8 8097F158 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 01AEC 8097F15C 44818000 */  mtc1    $at, $f16                  ## $f16 = 45.00
/* 01AF0 8097F160 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 01AF4 8097F164 E7B20024 */  swc1    $f18, 0x0024($sp)          
/* 01AF8 8097F168 C4E40028 */  lwc1    $f4, 0x0028($a3)           ## 00000028
/* 01AFC 8097F16C 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFD4
/* 01B00 8097F170 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 01B04 8097F174 46062200 */  add.s   $f8, $f4, $f6              
/* 01B08 8097F178 E7A80028 */  swc1    $f8, 0x0028($sp)           
/* 01B0C 8097F17C C4EA002C */  lwc1    $f10, 0x002C($a3)          ## 0000002C
/* 01B10 8097F180 46105480 */  add.s   $f18, $f10, $f16           
/* 01B14 8097F184 0C25F671 */  jal     func_8097D9C4              
/* 01B18 8097F188 E7B2002C */  swc1    $f18, 0x002C($sp)          
.L8097F18C:
/* 01B1C 8097F18C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B20 8097F190 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 01B24 8097F194 03E00008 */  jr      $ra                        
/* 01B28 8097F198 00000000 */  nop
