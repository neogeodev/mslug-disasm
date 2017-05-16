ROM:0009AD96 ProcFuelBonus:
ROM:0009AD96                 jsr     sub_27C8C
ROM:0009AD9C                 jsr     Animate
ROM:0009ADA2                 jsr     sub_9A836
ROM:0009ADA6                 bcc.w   loc_9AE22
ROM:0009ADAA                 cmpi.b  #0,d0
ROM:0009ADAE                 bne.w   loc_9ADBC
ROM:0009ADB2                 lea     (Player1Struct).l,a1
ROM:0009ADB8                 bra.w   loc_9ADC2
ROM:0009ADBC
ROM:0009ADBC
ROM:0009ADBC loc_9ADBC:
ROM:0009ADBC                 lea     (Player2Struct).l,a1
ROM:0009ADC2
ROM:0009ADC2 loc_9ADC2:
ROM:0009ADC2                 move.b  d0,$68(a6)
ROM:0009ADC6                 cmpi.b  #2,PlayerStruct.SlugFlag(a1)
ROM:0009ADCC                 bne.w   loc_9AE0E
ROM:0009ADD0                 move.b  d0,$68(a6)
ROM:0009ADD4                 move.b  $98(a6),d0
ROM:0009ADD8                 andi.w  #$FF,d0
ROM:0009ADDC                 jsr     loc_2A2BA
ROM:0009ADE2                 bcc.w   loc_9ADEE
ROM:0009ADE6                 jsr     loc_9BA34
ROM:0009ADEA                 bra.w   loc_9AE0A
ROM:0009ADEE
ROM:0009ADEE
ROM:0009ADEE loc_9ADEE:
ROM:0009ADEE                 lea     $9B48A,a1
ROM:0009ADF2                 jsr     (SpawnObj).l
ROM:0009ADF8                 jsr     InitSamePositions
ROM:0009ADFE                 move.b  $68(a6),$68(a0)
ROM:0009AE04                 move.b  #3,$98(a0)
ROM:0009AE0A
ROM:0009AE0A loc_9AE0A:
ROM:0009AE0A                 bra.w   loc_9AE12
ROM:0009AE0E
ROM:0009AE0E
ROM:0009AE0E loc_9AE0E:
ROM:0009AE0E                 jsr     loc_9BA34
ROM:0009AE12
ROM:0009AE12 loc_9AE12:
ROM:0009AE12                 lea     loc_9AE3E,a1
ROM:0009AE16                 move.l  a1,(a6)
ROM:0009AE18                 move.w  #SFXWeaponPickup,d0
ROM:0009AE1C                 jsr     (PlaySFX).l
ROM:0009AE22
ROM:0009AE22 loc_9AE22:
ROM:0009AE22                 bra.w   BonusDone
ROM:0009AE26
ROM:0009AE26
