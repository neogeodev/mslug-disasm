ROM:0009B0A8 ProcScoreBonus:
ROM:0009B0A8
ROM:0009B0A8                 jsr     loc_9B8C0
ROM:0009B0AC                 jsr     Animate
ROM:0009B0B2                 subq.w  #1,$70(a6)
ROM:0009B0B6                 cmpi.w  #0,$70(a6)
ROM:0009B0BC                 bgt.w   loc_9B0C6
ROM:0009B0C0                 lea     loc_9B0D8,a1
ROM:0009B0C4                 move.l  a1,(a6)
ROM:0009B0C6
ROM:0009B0C6 loc_9B0C6:
ROM:0009B0C6
ROM:0009B0C6                 jsr     loc_9B920
ROM:0009B0CA                 bcc.w   loc_9B0D4
ROM:0009B0CE                 lea     $9B474,a1
ROM:0009B0D2                 move.l  a1,(a6)
ROM:0009B0D4
ROM:0009B0D4 loc_9B0D4:
ROM:0009B0D4                 bra.w   BonusDone
ROM:0009B0D8
ROM:0009B0D8
ROM:0009B0D8 loc_9B0D8:
ROM:0009B0D8
ROM:0009B0D8                 move.b  #$1E,$70(a6)
ROM:0009B0DE
ROM:0009B0DE loc_9B0DE:
ROM:0009B0DE                 move.w  #$8000,d0
ROM:0009B0E2                 jsr     sub_28134
ROM:0009B0E8                 andi.w  #$FFE3,$38(a6)
ROM:0009B0EE                 ori.w   #0,$38(a6)
ROM:0009B0F4                 lea     loc_9B0FA,a1
ROM:0009B0F8                 move.l  a1,(a6)
ROM:0009B0FA
ROM:0009B0FA loc_9B0FA:
ROM:0009B0FA                 jsr     loc_9B8C0
ROM:0009B0FE                 btst    #0,$70(a6)
ROM:0009B104                 beq.w   loc_9B10E
ROM:0009B108                 jsr     Animate
ROM:0009B10E
ROM:0009B10E loc_9B10E:
ROM:0009B10E                 subq.b  #1,$70(a6)
ROM:0009B112                 bcc.w   loc_9B11C
ROM:0009B116                 lea     $9B474,a1
ROM:0009B11A                 move.l  a1,(a6)
ROM:0009B11C
ROM:0009B11C loc_9B11C:
ROM:0009B11C                 bra.s   loc_9B0C6
ROM:0009B11E
ROM:0009B11E                 clr.b   $9C(a6)
ROM:0009B122                 cmpi.b  #$FF,$9A(a6)
ROM:0009B128                 beq.w   loc_9B132
ROM:0009B12C                 eori.b  #1,$3A(a6)
ROM:0009B132
ROM:0009B132 loc_9B132:
ROM:0009B132                 move.b  $99(a6),d0
ROM:0009B136                 andi.w  #$FF,d0
ROM:0009B13A                 lsl.w   #1,d0
ROM:0009B13C                 tst.w   d0
ROM:0009B13E                 bne.w   loc_9B146
ROM:0009B142                 move.w  #$7FFF,d0
ROM:0009B146
ROM:0009B146 loc_9B146:
ROM:0009B146                 move.w  d0,$70(a6)
ROM:0009B14A                 clr.w   $72(a6)
ROM:0009B14E                 move.w  #$1AC,d1
ROM:0009B152                 jsr     (sub_236E).l
ROM:0009B158                 move.w  #$8000,d0
ROM:0009B15C                 jsr     sub_28134
ROM:0009B162                 andi.w  #$FFE3,$38(a6)
ROM:0009B168                 ori.w   #0,$38(a6)
ROM:0009B16E                 lea     (off_2F6A1A).l,a0
ROM:0009B174                 jsr     ChangeAnimation
ROM:0009B17A                 lea     loc_9B180,a1
ROM:0009B17E                 move.l  a1,(a6)
ROM:0009B180
ROM:0009B180 loc_9B180:
ROM:0009B180                 jsr     loc_9B8C0
ROM:0009B184                 jsr     Animate
ROM:0009B18A                 bcc.w   loc_9B1A6
ROM:0009B18E                 lea     (unk_2F6AA8).l,a0
ROM:0009B194                 jsr     ChangeAnimation
ROM:0009B19A                 move.b  #$14,$70(a6)
ROM:0009B1A0                 lea     loc_9B0DE,a1
ROM:0009B1A4                 move.l  a1,(a6)
ROM:0009B1A6
ROM:0009B1A6 loc_9B1A6:
ROM:0009B1A6                 subq.w  #1,$70(a6)
ROM:0009B1AA                 cmpi.w  #0,$70(a6)
ROM:0009B1B0                 bgt.w   loc_9B1C6
ROM:0009B1B4                 lea     (unk_2F6A5C).l,a0
ROM:0009B1BA                 jsr     ChangeAnimation
ROM:0009B1C0                 move.w  #$7FFF,$70(a6)
ROM:0009B1C6
ROM:0009B1C6 loc_9B1C6:
ROM:0009B1C6                 bra.w   loc_9B0C6
ROM:0009B1CA
ROM:0009B1CA                 clr.b   $9C(a6)
ROM:0009B1CE                 cmpi.b  #$FF,$9A(a6)
ROM:0009B1D4                 beq.w   loc_9B1DE
ROM:0009B1D8                 eori.b  #1,$3A(a6)
ROM:0009B1DE
ROM:0009B1DE loc_9B1DE:
ROM:0009B1DE                 jsr     loc_9BB3C
ROM:0009B1E2                 cmpi.w  #$46,d0
ROM:0009B1E6                 bgt.w   loc_9B1EE
ROM:0009B1EA                 move.w  #$46,d0
ROM:0009B1EE
ROM:0009B1EE loc_9B1EE:
ROM:0009B1EE                 subi.w  #$46,d0
ROM:0009B1F2                 move.w  d0,$70(a6)
ROM:0009B1F6                 clr.w   $72(a6)
ROM:0009B1FA                 move.w  #$1C6,d1
ROM:0009B1FE                 jsr     (sub_236E).l
ROM:0009B204                 move.w  #$8000,d0
ROM:0009B208                 jsr     sub_28134
ROM:0009B20E                 andi.w  #$FFE3,$38(a6)
ROM:0009B214                 ori.w   #0,$38(a6)
ROM:0009B21A                 lea     (off_2F6F06).l,a0
ROM:0009B220                 jsr     ChangeAnimation
ROM:0009B226                 lea     loc_9B22C,a1
ROM:0009B22A                 move.l  a1,(a6)
ROM:0009B22C
ROM:0009B22C loc_9B22C:
ROM:0009B22C                 jsr     loc_9B8C0
ROM:0009B230                 jsr     Animate
ROM:0009B236                 subq.w  #1,$70(a6)
ROM:0009B23A                 cmpi.w  #0,$70(a6)
ROM:0009B240                 bgt.w   loc_9B24A
ROM:0009B244                 lea     loc_9B24E,a1
ROM:0009B248                 move.l  a1,(a6)
ROM:0009B24A
ROM:0009B24A loc_9B24A:
ROM:0009B24A                 bra.w   loc_9B0C6
ROM:0009B24E
ROM:0009B24E
ROM:0009B24E loc_9B24E:
ROM:0009B24E                 lea     (off_2F6F34).l,a0
ROM:0009B254                 jsr     ChangeAnimation
ROM:0009B25A                 move.w  #$8000,d0
ROM:0009B25E                 jsr     sub_28134
ROM:0009B264                 andi.w  #$FFE3,$38(a6)
ROM:0009B26A                 ori.w   #0,$38(a6)
ROM:0009B270                 lea     loc_9B276,a1
ROM:0009B274                 move.l  a1,(a6)
ROM:0009B276
ROM:0009B276 loc_9B276:
ROM:0009B276                 jsr     loc_9B8C0
ROM:0009B27A                 jsr     Animate
ROM:0009B280                 bcc.w   loc_9B28A
ROM:0009B284                 lea     $9B474,a1
ROM:0009B288                 move.l  a1,(a6)
ROM:0009B28A
ROM:0009B28A loc_9B28A:
ROM:0009B28A                 bra.w   loc_9B0C6
ROM:0009B28E
ROM:0009B28E
ROM:0009B28E loc_9B28E:
ROM:0009B28E                 move.w  #$1AC,d1
ROM:0009B292                 jsr     (sub_236E).l
ROM:0009B298                 jsr     GetRand2?
ROM:0009B29E                 andi.b  #1,d0
ROM:0009B2A2                 move.b  d0,$3A(a6)
ROM:0009B2A6                 jsr     GetRand2?
ROM:0009B2AC                 andi.w  #3,d0
ROM:0009B2B0                 move.w  d0,d1
ROM:0009B2B2                 add.w   d0,d0
ROM:0009B2B4                 add.w   d1,d0
ROM:0009B2B6                 add.w   d0,d0
ROM:0009B2B8                 move.w  d0,$5C(a6)
ROM:0009B2BC                 movea.l #unk_2F7A40,a0
ROM:0009B2C2                 move.w  (a0,d0.w),d1
ROM:0009B2C6                 move.w  2(a0,d0.w),d2
ROM:0009B2CA                 move.w  4(a0,d0.w),d3
ROM:0009B2CE                 btst    #0,$3A(a6)
ROM:0009B2D4                 bne.w   loc_9B2DA
ROM:0009B2D8                 neg.w   d1
ROM:0009B2DA
ROM:0009B2DA loc_9B2DA:
ROM:0009B2DA                 move.w  d1,$28(a6)
ROM:0009B2DE                 move.w  d2,$2E(a6)
ROM:0009B2E2                 move.w  d3,$2A(a6)
ROM:0009B2E6                 move.b  #1,$9C(a6)
ROM:0009B2EC                 move.b  #$A,$99(a6)
ROM:0009B2F2                 jsr     loc_9BB3C
ROM:0009B2F6                 move.w  d0,$70(a6)
ROM:0009B2FA                 move.b  #8,$45(a6)
ROM:0009B300                 move.w  #$8000,d0
ROM:0009B304                 jsr     sub_28134
ROM:0009B30A                 andi.w  #$FFE3,$38(a6)
ROM:0009B310                 ori.w   #0,$38(a6)
ROM:0009B316                 lea     (off_2F7002).l,a0
ROM:0009B31C                 jsr     ChangeAnimation
ROM:0009B322                 lea     loc_9B328,a1
ROM:0009B326                 move.l  a1,(a6)
ROM:0009B328
ROM:0009B328 loc_9B328:
ROM:0009B328                 jsr     sub_27D50
ROM:0009B32E                 bcc.w   loc_9B338
ROM:0009B332                 lea     $9B356,a1
ROM:0009B336                 move.l  a1,(a6)
ROM:0009B338
ROM:0009B338 loc_9B338:
ROM:0009B338                 jsr     Animate
ROM:0009B33E                 subq.w  #1,$70(a6)
ROM:0009B342                 cmpi.w  #0,$70(a6)
ROM:0009B348                 bgt.w   loc_9B352
ROM:0009B34C                 lea     loc_9B0D8,a1
ROM:0009B350                 move.l  a1,(a6)
ROM:0009B352
ROM:0009B352 loc_9B352:
ROM:0009B352                 bra.w   BonusDone
ROM:0009B356
ROM:0009B356                 movea.l #unk_2F7A58,a0
ROM:0009B35C                 move.w  $5C(a6),d0
ROM:0009B360                 move.w  (a0,d0.w),d1
ROM:0009B364                 move.w  2(a0,d0.w),d2
ROM:0009B368                 move.w  4(a0,d0.w),d3
ROM:0009B36C                 btst    #0,$3A(a6)
ROM:0009B372                 bne.w   loc_9B378
ROM:0009B376                 neg.w   d1
ROM:0009B378
ROM:0009B378 loc_9B378:
ROM:0009B378                 move.w  d1,$28(a6)
ROM:0009B37C                 move.w  d2,$2E(a6)
ROM:0009B380                 move.w  d3,$2A(a6)
ROM:0009B384                 lea     loc_9B38A,a1
ROM:0009B388                 move.l  a1,(a6)
ROM:0009B38A
ROM:0009B38A loc_9B38A:
ROM:0009B38A                 jsr     sub_27D50
ROM:0009B390                 bcc.w   loc_9B39A
ROM:0009B394                 lea     ProcScoreBonus,a1
ROM:0009B398                 move.l  a1,(a6)
ROM:0009B39A
ROM:0009B39A loc_9B39A:
ROM:0009B39A                 jsr     Animate
ROM:0009B3A0                 subq.w  #1,$70(a6)
ROM:0009B3A4                 cmpi.w  #0,$70(a6)
ROM:0009B3AA                 bgt.w   loc_9B3B4
ROM:0009B3AE                 lea     loc_9B0D8,a1
ROM:0009B3B2                 move.l  a1,(a6)
ROM:0009B3B4
ROM:0009B3B4 loc_9B3B4:
ROM:0009B3B4                 jsr     loc_9B920
ROM:0009B3B8                 bcc.w   loc_9B3C2
ROM:0009B3BC                 lea     $9B474,a1
ROM:0009B3C0                 move.l  a1,(a6)
ROM:0009B3C2
ROM:0009B3C2 loc_9B3C2:
ROM:0009B3C2                 bra.w   BonusDone
ROM:0009B3C6
ROM:0009B3C6                 move.w  #$1AB,d1
ROM:0009B3CA                 jsr     (sub_236E).l
ROM:0009B3D0                 move.l  #loc_9A672,$60(a6)
ROM:0009B3D8                 move.w  #$8000,d0
ROM:0009B3DC                 jsr     sub_28134
ROM:0009B3E2                 andi.w  #$FFE3,$38(a6)
ROM:0009B3E8                 ori.w   #0,$38(a6)
ROM:0009B3EE                 lea     (unk_2F772A).l,a0
ROM:0009B3F4                 jsr     ChangeAnimation
ROM:0009B3FA                 lea     ProcBonusCrate,a1
ROM:0009B3FE                 move.l  a1,(a6)
ROM:0009B400
