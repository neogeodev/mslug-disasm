ROM:0009ACB0 ProcBombBonus:
ROM:0009ACB0                 jsr     sub_27C8C
ROM:0009ACB6                 jsr     Animate
ROM:0009ACBC                 jsr     sub_9A836
ROM:0009ACC0                 bcc.w   loc_9AD50
ROM:0009ACC4                 cmpi.b  #0,d0
ROM:0009ACC8                 bne.w   loc_9ACD6
ROM:0009ACCC                 lea     (Player1Struct).l,a1
ROM:0009ACD2                 bra.w   loc_9ACDC
ROM:0009ACD6
ROM:0009ACD6
ROM:0009ACD6 loc_9ACD6:
ROM:0009ACD6                 lea     (Player2Struct).l,a1
ROM:0009ACDC
ROM:0009ACDC loc_9ACDC:
ROM:0009ACDC                 cmpi.b  #2,PlayerStruct.SlugFlag(a1)
ROM:0009ACE2                 bne.w   notslug
ROM:0009ACE6                 move.b  d0,$68(a6)
ROM:0009ACEA                 move.b  $99(a6),$98(a6)
ROM:0009ACF0                 jsr     loc_2A28E
ROM:0009ACF6                 lea     $9B48A,a1
ROM:0009ACFA                 jsr     (SpawnObj).l
ROM:0009AD00                 jsr     InitSamePositions
ROM:0009AD06                 move.b  $68(a6),$68(a0)
ROM:0009AD0C                 move.b  #1,$98(a0)
ROM:0009AD12                 bra.w   loc_9AD40
ROM:0009AD16
ROM:0009AD16
