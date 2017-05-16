ROM:0008501E ProcElevatorMoveDown:
ROM:0008501E                 jsr     PositionRelated
ROM:00085024                 jsr     loc_85EE8
ROM:00085028                 jsr     loc_85F08
ROM:0008502C                 jsr     Animate
ROM:00085032                 jsr     loc_85F44
ROM:00085036                 jsr     loc_85F60
ROM:0008503A                 bcs.w   loc_85044
ROM:0008503E                 lea     $85062,a1
ROM:00085042                 move.l  a1,(a6)
ROM:00085044
ROM:00085044 loc_85044:
ROM:00085044                 movea.l #$FFFFFFFF,a0
ROM:0008504A                 lea     (unk_2E9860).l,a0
ROM:00085050                 jsr     CheckObjectOOB
ROM:00085056                 bcc.w   locret_85060
ROM:0008505A                 jmp     (SetDying).l
ROM:00085060
ROM:00085060
ROM:00085060 locret_85060:
ROM:00085060                 rts
ROM:00085062
ROM:00085062                 move.w  #$1075,d0
ROM:00085066                 jsr     (PlaySFX).l
ROM:0008506C                 lea     (off_2E78A4).l,a0
ROM:00085072                 jsr     ChangeAnimation
ROM:00085078                 move.w  #$A,$72(a6)
ROM:0008507E                 lea     loc_85084,a1
ROM:00085082                 move.l  a1,(a6)
ROM:00085084
ROM:00085084 loc_85084:
ROM:00085084                 jsr     ObjectRelated
ROM:0008508A                 jsr     loc_85F08
ROM:0008508E                 jsr     Animate
ROM:00085094                 jsr     loc_85F44
ROM:00085098                 cmpi.w  #0,$72(a6)
ROM:0008509E                 bgt.w   loc_850A8
ROM:000850A2                 lea     loc_850C6,a1
ROM:000850A6                 move.l  a1,(a6)
ROM:000850A8
ROM:000850A8 loc_850A8:
ROM:000850A8                 movea.l #$FFFFFFFF,a0
ROM:000850AE                 lea     (unk_2E9860).l,a0
ROM:000850B4                 jsr     CheckObjectOOB
ROM:000850BA                 bcc.w   locret_850C4
ROM:000850BE                 jmp     (SetDying).l
ROM:000850C4
ROM:000850C4
ROM:000850C4 locret_850C4:
ROM:000850C4                 rts
ROM:000850C6
ROM:000850C6
ROM:000850C6 loc_850C6:
ROM:000850C6                 lea     (off_2E78A4).l,a0
ROM:000850CC                 jsr     ChangeAnimation
ROM:000850D2                 move.w  #$14,$72(a6)
ROM:000850D8                 lea     loc_850DE,a1
ROM:000850DC                 move.l  a1,(a6)
ROM:000850DE
ROM:000850DE loc_850DE:
ROM:000850DE                 jsr     ObjectRelated
ROM:000850E4                 jsr     Animate
ROM:000850EA                 jsr     loc_85F44
ROM:000850EE                 subq.w  #1,$72(a6)
ROM:000850F2                 bpl.w   loc_8510E
ROM:000850F6                 jsr     loc_85F60
ROM:000850FA                 bcc.w   loc_85108
ROM:000850FE                 lea     loc_84FCA,a1
ROM:00085102                 move.l  a1,(a6)
ROM:00085104                 bra.w   loc_8510E
ROM:00085108
ROM:00085108
ROM:00085108 loc_85108:
ROM:00085108                 lea     loc_84F5E,a1
ROM:0008510C                 move.l  a1,(a6)
ROM:0008510E
ROM:0008510E loc_8510E:
ROM:0008510E
ROM:0008510E                 movea.l #$FFFFFFFF,a0
ROM:00085114                 lea     (unk_2E9860).l,a0
ROM:0008511A                 jsr     CheckObjectOOB
ROM:00085120                 bcc.w   locret_8512A
ROM:00085124                 jmp     (SetDying).l
ROM:0008512A
ROM:0008512A
ROM:0008512A locret_8512A:
ROM:0008512A                 rts
ROM:0008512C
ROM:0008512C                 lea     loc_85134,a1
ROM:00085130                 move.l  a1,(a6)
ROM:00085132                 rts
ROM:00085134
ROM:00085134
ROM:00085134 loc_85134:
ROM:00085134                 lea     ($676BA).l,a1
ROM:0008513A                 jsr     (SpawnObj).l
ROM:00085140                 jsr     InitSamePositions
ROM:00085146                 move.w  #$160,$22(a0)
ROM:0008514C                 movem.l a0,-(sp)
ROM:00085150                 move.w  #0,d0
ROM:00085154                 move.w  #$320,d1
ROM:00085158                 jsr     sub_44022
ROM:0008515E                 movem.l (sp)+,a0
ROM:00085162                 move.w  d1,$24(a0)
ROM:00085166                 move.l  #0,$98(a0)
ROM:0008516E                 move.l  #0,$9C(a0)
ROM:00085176                 move.b  #0,$98(a0)
ROM:0008517C                 move.b  #$10,$99(a0)
ROM:00085182                 move.b  #1,$11(a0)
ROM:00085188                 jmp     (SetDying).l
ROM:0008518E
ROM:0008518E                 rts
ROM:00085190
ROM:00085190                 move.w  #$1C5,d1
ROM:00085194                 jsr     (sub_236E).l
ROM:0008519A                 lea     (off_2C029A).l,a0
ROM:000851A0                 jsr     GetParamDifficulty
ROM:000851A6                 move.w  d0,$66(a6)
ROM:000851AA                 lea     loc_85394,a1
ROM:000851AE                 jsr     (SpawnObj).l
ROM:000851B4                 jsr     sub_5DD22
ROM:000851BA                 move.b  #0,$20(a6)
ROM:000851C0                 move.b  #0,$21(a6)
ROM:000851C6                 move.b  #0,$89(a6)
ROM:000851CC                 lea     loc_851D2,a1
ROM:000851D0                 move.l  a1,(a6)
ROM:000851D2
ROM:000851D2 loc_851D2:
ROM:000851D2                 move.l  (dword_106F5C).l,d0
ROM:000851D8                 swap    d0
ROM:000851DA                 cmpi.w  #$1F0,d0
ROM:000851DE                 bgt.w   loc_851F0
ROM:000851E2                 clr.b   (byte_10E39A).l
ROM:000851E8                 jsr     ObjectRelated
ROM:000851EE                 rts
ROM:000851F0
ROM:000851F0
ROM:000851F0 loc_851F0:
ROM:000851F0                 lea     loc_85608,a1
ROM:000851F4                 jsr     (SpawnObj).l
ROM:000851FA                 lea     (off_2E93FA).l,a0
ROM:00085200                 move.l  a0,$48(a6)
ROM:00085204                 lea     (off_2E78CE).l,a0
ROM:0008520A                 jsr     ChangeAnimation
ROM:00085210                 lea     loc_85216,a1
ROM:00085214                 move.l  a1,(a6)
ROM:00085216
ROM:00085216 loc_85216:
ROM:00085216                 clr.b   (byte_10E39A).l
ROM:0008521C                 jsr     ObjectRelated
ROM:00085222                 move.b  #0,$89(a6)
ROM:00085228                 jsr     CheckShot?
ROM:0008522E                 bcc.w   loc_85268
ROM:00085232                 move.b  #$FF,$89(a6)
ROM:00085238                 lea     (unk_2E78B4).l,a0
ROM:0008523E                 jsr     ChangeAnimation
ROM:00085244                 lea     (SoundCodeGunFire).l,a0
ROM:0008524A                 jsr     sub_5E798
ROM:00085250                 bclr    #3,$13(a6)
ROM:00085256                 lea     (unk_2E994E).l,a1
ROM:0008525C                 jsr     SpawnDebris?
ROM:00085262                 lea     loc_85270,a1
ROM:00085266                 move.l  a1,(a6)
ROM:00085268
ROM:00085268 loc_85268:
ROM:00085268                 jsr     Animate
ROM:0008526E                 rts
ROM:00085270
ROM:00085270
ROM:00085270 loc_85270:
ROM:00085270                 move.w  #$102D,d0
ROM:00085274                 jsr     (PlaySFX).l
ROM:0008527A                 lea     (off_2EA858).l,a2
ROM:00085280                 jsr     InitObjectGFX?
ROM:00085286                 lea     loc_8528C,a1
ROM:0008528A                 move.l  a1,(a6)
ROM:0008528C
ROM:0008528C loc_8528C:
ROM:0008528C                 clr.b   (byte_10E39A).l
ROM:00085292                 jsr     ObjectRelated
ROM:00085298                 move.b  #0,$89(a6)
ROM:0008529E                 jsr     CheckShot?
ROM:000852A4                 bcc.w   loc_852CC
ROM:000852A8                 move.b  #$FF,$89(a6)
ROM:000852AE                 lea     (unk_2E78DE).l,a0
ROM:000852B4                 jsr     ChangeAnimation
ROM:000852BA                 lea     (SoundCodeGunFire).l,a0
ROM:000852C0                 jsr     sub_5E798
ROM:000852C6                 bclr    #3,$13(a6)
ROM:000852CC
ROM:000852CC loc_852CC:
ROM:000852CC                 jsr     CheckIfDead
ROM:000852D2                 bcc.w   loc_85330
ROM:000852D6                 lea     ($FFFFFFFF).w,a0
ROM:000852DA                 move.l  a0,$48(a6)
ROM:000852DE                 move.b  #$FF,$20(a6)
ROM:000852E4                 lea     (off_2EAF02).l,a1
ROM:000852EA                 jsr     sub_43FAC
ROM:000852F0                 lea     (unk_2E9960).l,a1
ROM:000852F6                 jsr     SpawnDebris?
ROM:000852FC                 lea     (unk_2E9972).l,a1
ROM:00085302                 jsr     SpawnDebris?
ROM:00085308                 move.b  #$FF,$74(a6)
ROM:0008530E                 lea     (unk_2E9790).l,a0
ROM:00085314                 move.l  a0,$4C(a6)
ROM:00085318                 jsr     sub_283CA
ROM:0008531E                 jsr     sub_283CA
ROM:00085324                 jsr     loc_283D8
ROM:0008532A                 lea     loc_85338,a1
ROM:0008532E                 move.l  a1,(a6)
ROM:00085330
ROM:00085330 loc_85330:
ROM:00085330                 jsr     Animate
ROM:00085336                 rts
ROM:00085338
ROM:00085338
ROM:00085338 loc_85338:
ROM:00085338                 lea     ($FFFFFFFF).w,a0
ROM:0008533C                 move.l  a0,$4C(a6)
ROM:00085340                 jsr     sub_283CA
ROM:00085346                 move.w  #$1028,d0
ROM:0008534A                 jsr     (PlaySFX).l
ROM:00085350                 jsr     loc_85B7E
ROM:00085354                 move.w  #$74,d0
ROM:00085358                 move.b  #0,$74(a6)
ROM:0008535E                 lea     (dword_EC6C8).l,a1
ROM:00085364                 jsr     sub_4429E
ROM:0008536A                 lea     (off_2EA86C).l,a2
ROM:00085370                 jsr     InitObjectGFX?
ROM:00085376                 lea     loc_8537C,a1
ROM:0008537A                 move.l  a1,(a6)
ROM:0008537C
ROM:0008537C loc_8537C:
ROM:0008537C                 clr.b   (byte_10E39A).l
ROM:00085382                 cmpi.b  #$FF,$21(a6)
ROM:00085388                 bne.w   locret_85392
ROM:0008538C                 jmp     (SetDying).l
ROM:00085392
ROM:00085392
ROM:00085392 locret_85392:
ROM:00085392                 rts
ROM:00085394
ROM:00085394
ROM:00085394 loc_85394:
ROM:00085394                 lea     loc_856AA,a1
ROM:00085398                 jsr     (SpawnObj).l
ROM:0008539E                 movea.l $C(a6),a1
ROM:000853A2                 move.w  $22(a1),$22(a0)
ROM:000853A8                 move.w  $24(a1),$24(a0)
ROM:000853AE                 move.w  #$100,d0
ROM:000853B2                 move.w  #$2F6,d1
ROM:000853B6                 jsr     sub_44022
ROM:000853BC                 move.w  d0,$22(a6)
ROM:000853C0                 move.w  d1,$24(a6)
ROM:000853C4                 move.w  #$1C8,d1
ROM:000853C8                 jsr     (sub_236E).l
ROM:000853CE                 lea     (unk_2E7908).l,a0
ROM:000853D4                 jsr     ChangeAnimation
ROM:000853DA                 move.w  #$100,$38(a6)
ROM:000853E0                 move.l  #unk_2EB0B8,$60(a6)
ROM:000853E8                 lea     loc_853EE,a1
ROM:000853EC                 move.l  a1,(a6)
ROM:000853EE
ROM:000853EE loc_853EE:
ROM:000853EE                 move.l  (dword_106F5C).l,d0
ROM:000853F4                 swap    d0
ROM:000853F6                 cmpi.w  #$1F0,d0
ROM:000853FA                 bgt.w   loc_85412
ROM:000853FE                 jsr     sub_28998
ROM:00085404                 jsr     ObjectRelated
ROM:0008540A                 jsr     Animate
ROM:00085410                 rts
ROM:00085412
ROM:00085412
ROM:00085412 loc_85412:
ROM:00085412                 jsr     ClearObjStuff
ROM:00085418                 bclr    #1,$12(a6)
ROM:0008541E                 lea     ($FFFFFFFF).w,a0
ROM:00085422                 move.l  a0,$4C(a6)
ROM:00085426                 jsr     sub_283CA
ROM:0008542C                 lea     loc_85526,a1
ROM:00085430                 jsr     (SpawnObj).l
ROM:00085436                 lea     loc_8543C,a1
ROM:0008543A                 move.l  a1,(a6)
ROM:0008543C
ROM:0008543C loc_8543C:
ROM:0008543C                 jsr     sub_28998
ROM:00085442                 jsr     PositionRelated
ROM:00085448                 jsr     loc_85D32
ROM:0008544C                 jsr     loc_85EBC
ROM:00085450                 jsr     Animate
ROM:00085456                 jsr     loc_85DA8
ROM:0008545A                 movea.l $C(a6),a0
ROM:0008545E                 cmpi.b  #$FF,$20(a0)
ROM:00085464                 bne.w   locret_85482
ROM:00085468                 lea     ($FFFFFFFF).w,a0
ROM:0008546C                 move.l  a0,$48(a6)
ROM:00085470                 lea     (unk_2E9984).l,a1
ROM:00085476                 jsr     SpawnDebris?
ROM:0008547C                 lea     loc_85484,a1
ROM:00085480                 move.l  a1,(a6)
ROM:00085482
ROM:00085482 locret_85482:
ROM:00085482                 rts
ROM:00085484
ROM:00085484
ROM:00085484 loc_85484:
ROM:00085484                 lea     ($FFFFFFFF).w,a0
ROM:00085488                 move.l  a0,$48(a6)
ROM:0008548C                 move.w  #$1033,d0
ROM:00085490                 jsr     (PlaySFX).l
ROM:00085496                 lea     (unk_2E9996).l,a1
ROM:0008549C                 jsr     SpawnDebris?
ROM:000854A2                 jsr     ClearObjStuff
ROM:000854A8                 move.w  #$FFE0,$2E(a6)
ROM:000854AE                 lea     (off_2E7940).l,a0
ROM:000854B4                 jsr     ChangeAnimation
ROM:000854BA                 lea     loc_854C0,a1
ROM:000854BE                 move.l  a1,(a6)
ROM:000854C0
ROM:000854C0 loc_854C0:
ROM:000854C0                 jsr     PositionRelated
ROM:000854C6                 jsr     Animate
ROM:000854CC                 cmpi.w  #$20,$24(a6)
ROM:000854D2                 bgt.w   locret_854E6
ROM:000854D6                 movea.l $C(a6),a0
ROM:000854DA                 move.b  #$FF,$21(a0)
ROM:000854E0                 jmp     (SetDying).l
ROM:000854E6
ROM:000854E6
ROM:000854E6 locret_854E6:
ROM:000854E6                 rts
ROM:000854E8
ROM:000854E8
ROM:000854E8 loc_854E8:
ROM:000854E8                 move.w  #2,$72(a6)
ROM:000854EE                 lea     loc_854F4,a1
ROM:000854F2                 move.l  a1,(a6)
ROM:000854F4
ROM:000854F4 loc_854F4:
ROM:000854F4                 jsr     ObjectRelated
ROM:000854FA                 lea     (off_2E96EC).l,a0
ROM:00085500                 move.l  a0,$4C(a6)
ROM:00085504                 jsr     sub_283CA
ROM:0008550A                 jsr     sub_283CA
ROM:00085510                 jsr     loc_283D8
ROM:00085516                 subq.w  #1,$72(a6)
ROM:0008551A                 bpl.w   locret_85524
ROM:0008551E                 jmp     (SetDying).l
ROM:00085524
ROM:00085524
ROM:00085524 locret_85524:
ROM:00085524                 rts
ROM:00085526
ROM:00085526
ROM:00085526 loc_85526:
ROM:00085526                 lea     (unk_2E7A10).l,a0
ROM:0008552C                 jsr     ChangeAnimation
ROM:00085532                 lea     loc_85538,a1
ROM:00085536                 move.l  a1,(a6)
ROM:00085538
ROM:00085538 loc_85538:
ROM:00085538                 movea.l $C(a6),a0
ROM:0008553C                 move.w  $22(a0),$22(a6)
ROM:00085542                 move.w  $24(a0),$24(a6)
ROM:00085548                 jsr     Animate
ROM:0008554E                 jsr     CheckShot?
ROM:00085554                 bcc.w   loc_8556A
ROM:00085558                 lea     (SoundCodeGunFire).l,a0
ROM:0008555E                 jsr     sub_5E798
ROM:00085564                 bclr    #3,$13(a6)
ROM:0008556A
ROM:0008556A loc_8556A:
ROM:0008556A                 movea.l $C(a6),a0
ROM:0008556E                 movea.l $C(a0),a0
ROM:00085572                 cmpi.b  #$FF,$21(a0)
ROM:00085578                 bne.w   locret_85582
ROM:0008557C                 jmp     (SetDying).l
ROM:00085582
ROM:00085582
ROM:00085582 locret_85582:
ROM:00085582                 rts
ROM:00085584
ROM:00085584                 move.w  #$180,d0
ROM:00085588                 move.w  #$258,d1
ROM:0008558C                 jsr     sub_44022
ROM:00085592                 move.w  d0,$22(a6)
ROM:00085596                 move.w  d1,$24(a6)
ROM:0008559A                 move.w  #0,$72(a6)
ROM:000855A0                 lea     loc_855A6,a1
ROM:000855A4                 move.l  a1,(a6)
ROM:000855A6
ROM:000855A6 loc_855A6:
ROM:000855A6                 jsr     ObjectRelated
ROM:000855AC                 movea.l $C(a6),a0
ROM:000855B0                 cmpi.b  #$FF,$20(a0)
ROM:000855B6                 bne.w   loc_855C2
ROM:000855BA                 jmp     (SetDying).l
ROM:000855C0
ROM:000855C0                 rts
ROM:000855C2
ROM:000855C2
ROM:000855C2 loc_855C2:
ROM:000855C2                 jsr     (sub_6F0).l
ROM:000855C8                 bcs.w   locret_85606
ROM:000855CC                 cmpi.w  #0,$72(a6)
ROM:000855D2                 ble.w   loc_855DE
ROM:000855D6                 subq.w  #1,$72(a6)
ROM:000855DA                 bra.w   locret_85606
ROM:000855DE
ROM:000855DE
ROM:000855DE loc_855DE:
ROM:000855DE                 lea     (loc_483E2).l,a1
ROM:000855E4                 jsr     (SpawnObj).l
ROM:000855EA                 jsr     sub_5DD22
ROM:000855F0                 move.b  #0,$11(a0)
ROM:000855F6                 lea     (off_2C0420).l,a0
ROM:000855FC                 jsr     GetParamDifficulty
ROM:00085602                 move.w  d0,$72(a6)
ROM:00085606
ROM:00085606 locret_85606:
ROM:00085606
ROM:00085606                 rts
ROM:00085608
ROM:00085608
ROM:00085608 loc_85608:
ROM:00085608                 move.w  #$180,d0
ROM:0008560C                 move.w  #$2FF,d1
ROM:00085610                 jsr     sub_44022
ROM:00085616                 move.w  d0,$22(a6)
ROM:0008561A                 move.w  d1,$24(a6)
ROM:0008561E                 move.w  #0,$72(a6)
ROM:00085624                 lea     loc_8562A,a1
ROM:00085628                 move.l  a1,(a6)
ROM:0008562A
ROM:0008562A loc_8562A:
ROM:0008562A                 jsr     ObjectRelated
ROM:00085630                 movea.l $C(a6),a0
ROM:00085634                 cmpi.b  #$FF,$20(a0)
ROM:0008563A                 bne.w   loc_85646
ROM:0008563E                 jmp     (SetDying).l
ROM:00085644
ROM:00085644                 rts
ROM:00085646
ROM:00085646
ROM:00085646 loc_85646:
ROM:00085646                 jsr     (sub_6F0).l
ROM:0008564C                 bcs.w   locret_856A8
ROM:00085650                 cmpi.w  #0,$72(a6)
ROM:00085656                 ble.w   loc_85662
ROM:0008565A                 subq.w  #1,$72(a6)
ROM:0008565E                 bra.w   locret_856A8
ROM:00085662
ROM:00085662
ROM:00085662 loc_85662:
ROM:00085662                 lea     (loc_483E2).l,a1
ROM:00085668                 jsr     (SpawnObj).l
ROM:0008566E                 jsr     sub_5DD22
ROM:00085674                 move.b  #0,$11(a0)
ROM:0008567A                 move.b  #$F,$98(a0)
ROM:00085680                 move.b  #0,$99(a0)
ROM:00085686                 move.b  #0,$9A(a0)
ROM:0008568C                 move.b  #1,$9B(a0)
ROM:00085692                 move.b  #$1E,$9C(a0)
ROM:00085698                 lea     (off_2C0420).l,a0
ROM:0008569E                 jsr     GetParamDifficulty
ROM:000856A4                 move.w  d0,$72(a6)
ROM:000856A8
ROM:000856A8 locret_856A8:
ROM:000856A8
ROM:000856A8                 rts
ROM:000856AA
ROM:000856AA
ROM:000856AA loc_856AA:
ROM:000856AA                 move.w  #$1D0,d1
ROM:000856AE                 jsr     (sub_236E).l
ROM:000856B4                 move.w  #$1D1,d1
ROM:000856B8                 jsr     (sub_236E).l
ROM:000856BE                 addi.w  #$30,$22(a6)
ROM:000856C4                 addi.w  #$61,$24(a6)
ROM:000856CA                 clr.l   d0
ROM:000856CC                 move.b  d0,$88(a6)
ROM:000856D0                 movea.l #off_2E7BDE,a0
ROM:000856D6                 lsl.w   #2,d0
ROM:000856D8                 movea.l (a0,d0.w),a0
ROM:000856DC                 cmpa.l  #$FFFFFFFF,a0
ROM:000856E2                 beq.w   loc_856EC
ROM:000856E6                 jsr     ChangeAnimation
ROM:000856EC
ROM:000856EC loc_856EC:
ROM:000856EC                 move.w  #0,$38(a6)
ROM:000856F2                 lea     loc_856F8,a1
ROM:000856F6                 move.l  a1,(a6)
ROM:000856F8
ROM:000856F8 loc_856F8:
ROM:000856F8                 jsr     ObjectRelated
ROM:000856FE                 move.w  $16(a6),$14(a6)
ROM:00085704                 movea.l $C(a6),a0
ROM:00085708                 movea.l $C(a0),a0
ROM:0008570C                 cmpi.b  #$FF,$89(a0)
ROM:00085712                 bne.w   loc_8571C
ROM:00085716                 move.w  $18(a6),$14(a6)
ROM:0008571C
ROM:0008571C loc_8571C:
ROM:0008571C                 jsr     loc_85C32
ROM:00085720                 movea.l $C(a6),a0
ROM:00085724                 movea.l $C(a0),a0
ROM:00085728                 cmpi.b  #$FF,$20(a0)
ROM:0008572E                 bne.w   locret_85738
ROM:00085732                 jmp     (SetDying).l
ROM:00085738
ROM:00085738
ROM:00085738 locret_85738:
ROM:00085738                 rts
ROM:0008573A
ROM:0008573A
ROM:0008573A loc_8573A:
ROM:0008573A                 move.w  #$1B3,d1
ROM:0008573E                 jsr     (sub_236E).l
ROM:00085744                 lea     (off_2E7950).l,a0
ROM:0008574A                 jsr     ChangeAnimation
ROM:00085750                 move.w  #0,$38(a6)
ROM:00085756                 jsr     ClearObjStuff
ROM:0008575C                 lea     loc_85762,a1
ROM:00085760                 move.l  a1,(a6)
ROM:00085762
ROM:00085762 loc_85762:
ROM:00085762                 jsr     ObjectRelated
ROM:00085768                 jsr     Animate
ROM:0008576E                 bcc.w   locret_85778
ROM:00085772                 jmp     (SetDying).l
ROM:00085778
ROM:00085778
ROM:00085778 locret_85778:
ROM:00085778                 rts
ROM:0008577A
ROM:0008577A                 clr.b   d0
ROM:0008577C
ROM:0008577C loc_8577C:
ROM:0008577C                 movem.w d0,-(sp)
ROM:00085780                 lea     loc_857B4,a1
ROM:00085784                 jsr     (SpawnObj).l
ROM:0008578A                 jsr     sub_5DD22
ROM:00085790                 movem.w (sp)+,d0
ROM:00085794                 move.b  d0,$21(a0)
ROM:00085798                 addi.w  #$10,$22(a6)
ROM:0008579E                 addq.b  #1,d0
ROM:000857A0                 cmpi.b  #$14,d0
ROM:000857A4                 blt.s   loc_8577C
ROM:000857A6                 lea     loc_857AC,a1
ROM:000857AA                 move.l  a1,(a6)
ROM:000857AC
ROM:000857AC loc_857AC:
ROM:000857AC                 jmp     (SetDying).l
ROM:000857B2
ROM:000857B2                 rts
ROM:000857B4
ROM:000857B4
ROM:000857B4 loc_857B4:
ROM:000857B4                 lea     loc_857BA,a1
ROM:000857B8                 move.l  a1,(a6)
ROM:000857BA
ROM:000857BA loc_857BA:
ROM:000857BA                 jsr     ObjectRelated
ROM:000857C0                 movea.l #$FFFFFFFF,a0
ROM:000857C6                 lea     (unk_2E986A).l,a0
ROM:000857CC                 jsr     CheckObjectOOB
ROM:000857D2                 bcs.w   loc_857EA
ROM:000857D6                 lea     (off_2EB104).l,a0
ROM:000857DC                 jsr     sub_5E086
ROM:000857E2                 bcs.w   locret_857F0
ROM:000857E6                 jsr     loc_85D04
ROM:000857EA
ROM:000857EA loc_857EA:
ROM:000857EA                 jmp     (SetDying).l
ROM:000857F0
ROM:000857F0
ROM:000857F0 locret_857F0:
ROM:000857F0                 rts
ROM:000857F2
ROM:000857F2                 lea     loc_85820,a1
ROM:000857F6                 jsr     (SpawnObj).l
ROM:000857FC                 jsr     sub_5DD22
ROM:00085802                 lea     loc_8582A,a1
ROM:00085806                 jsr     (SpawnObj).l
ROM:0008580C                 jsr     sub_5DD22
ROM:00085812                 lea     loc_85818,a1
ROM:00085816                 move.l  a1,(a6)
ROM:00085818
ROM:00085818 loc_85818:
ROM:00085818                 jmp     (SetDying).l
ROM:0008581E
ROM:0008581E                 rts
ROM:00085820
ROM:00085820
ROM:00085820 loc_85820:
ROM:00085820                 move.b  #0,$20(a6)
ROM:00085826                 bra.w   loc_85830
ROM:0008582A
ROM:0008582A
ROM:0008582A loc_8582A:
ROM:0008582A                 move.b  #1,$20(a6)
ROM:00085830
ROM:00085830 loc_85830:
ROM:00085830                 lea     (unk_2E79FA).l,a0
ROM:00085836                 jsr     ChangeAnimation
ROM:0008583C                 lea     loc_85842,a1
ROM:00085840                 move.l  a1,(a6)
ROM:00085842
ROM:00085842 loc_85842:
ROM:00085842                 jsr     ObjectRelated
ROM:00085848                 jsr     Animate
ROM:0008584E                 movea.l #$FFFFFFFF,a0
ROM:00085854                 lea     (unk_2E986A).l,a0
ROM:0008585A                 jsr     CheckObjectOOB
ROM:00085860                 bcc.w   loc_8586C
ROM:00085864                 jmp     (SetDying).l
ROM:0008586A
ROM:0008586A                 rts
ROM:0008586C
ROM:0008586C
ROM:0008586C loc_8586C:
ROM:0008586C                 jsr     (sub_6F0).l
ROM:00085872                 bcs.w   locret_858CE
ROM:00085876                 lea     (Player1Struct).l,a0
ROM:0008587C                 movea.l a0,a4
ROM:0008587E                 cmpi.b  #0,$20(a6)
ROM:00085884                 beq.w   loc_85890
ROM:00085888                 lea     (Player2Struct).l,a0
ROM:0008588E                 movea.l a0,a4
ROM:00085890
ROM:00085890 loc_85890:
ROM:00085890                 lea     (off_2EB10E).l,a1
ROM:00085896                 jsr     sub_5E260
ROM:0008589C                 bcs.w   locret_858CE
ROM:000858A0                 cmpi.w  #0,$28(a4)
ROM:000858A6                 beq.w   locret_858CE
ROM:000858AA                 movem.l a4,-(sp)
ROM:000858AE                 lea     loc_8573A,a1
ROM:000858B2                 jsr     (SpawnObj).l
ROM:000858B8                 movem.l (sp)+,a4
ROM:000858BC                 move.w  $22(a4),$22(a0)
ROM:000858C2                 move.w  $24(a4),d0
ROM:000858C6                 subi.w  #8,d0
ROM:000858CA                 move.w  d0,$24(a0)
ROM:000858CE
ROM:000858CE locret_858CE:
ROM:000858CE
ROM:000858CE                 rts
ROM:000858D0
ROM:000858D0                 move.w  #$1C9,d1
ROM:000858D4                 jsr     (sub_236E).l
ROM:000858DA                 move.w  #0,$38(a6)
ROM:000858E0                 jsr     ClearObjStuff
ROM:000858E6                 move.b  $99(a6),d0
ROM:000858EA                 andi.b  #1,d0
ROM:000858EE                 move.b  d0,$3A(a6)
ROM:000858F2
ROM:000858F2 loc_858F2:
ROM:000858F2                 clr.l   d0
ROM:000858F4                 move.b  $98(a6),d0
ROM:000858F8                 andi.b  #3,d0
ROM:000858FC                 movea.l #off_2E7B2E,a0
ROM:00085902                 lsl.w   #2,d0
ROM:00085904                 movea.l (a0,d0.w),a0
ROM:00085908                 cmpa.l  #$FFFFFFFF,a0
ROM:0008590E                 beq.w   loc_85918
ROM:00085912                 jsr     ChangeAnimation
ROM:00085918
ROM:00085918 loc_85918:
ROM:00085918                 lea     loc_8591E,a1
ROM:0008591C                 move.l  a1,(a6)
ROM:0008591E
ROM:0008591E loc_8591E:
ROM:0008591E                 jsr     ObjectRelated
ROM:00085924                 jsr     Animate
ROM:0008592A                 lea     (unk_2EB118).l,a0
ROM:00085930                 jsr     sub_5E086
ROM:00085936                 bcs.w   loc_85940
ROM:0008593A                 lea     loc_8595E,a1
ROM:0008593E                 move.l  a1,(a6)
ROM:00085940
ROM:00085940 loc_85940:
ROM:00085940                 movea.l #$FFFFFFFF,a0
ROM:00085946                 lea     (unk_2E9874).l,a0
ROM:0008594C                 jsr     CheckObjectOOB
ROM:00085952                 bcc.w   locret_8595C
ROM:00085956                 jmp     (SetDying).l
ROM:0008595C
ROM:0008595C
ROM:0008595C locret_8595C:
ROM:0008595C                 rts
ROM:0008595E
ROM:0008595E
ROM:0008595E loc_8595E:
ROM:0008595E
ROM:0008595E                 clr.l   d0
ROM:00085960                 move.b  $98(a6),d0
ROM:00085964                 andi.b  #3,d0
ROM:00085968                 movea.l #off_2E7B3E,a0
ROM:0008596E                 lsl.w   #2,d0
ROM:00085970                 movea.l (a0,d0.w),a0
ROM:00085974                 cmpa.l  #$FFFFFFFF,a0
ROM:0008597A                 beq.w   loc_85984
ROM:0008597E                 jsr     ChangeAnimation
ROM:00085984
ROM:00085984 loc_85984:
ROM:00085984                 lea     loc_8598A,a1
ROM:00085988                 move.l  a1,(a6)
ROM:0008598A
ROM:0008598A loc_8598A:
ROM:0008598A                 jsr     ObjectRelated
ROM:00085990                 jsr     Animate
ROM:00085996                 bcc.w   loc_859B6
ROM:0008599A                 lea     loc_8595E,a1
ROM:0008599E                 move.l  a1,(a6)
ROM:000859A0                 lea     (unk_2EB118).l,a0
ROM:000859A6                 jsr     sub_5E086
ROM:000859AC                 bcc.w   loc_859B6
ROM:000859B0                 lea     loc_858F2,a1
ROM:000859B4                 move.l  a1,(a6)
ROM:000859B6
ROM:000859B6 loc_859B6:
ROM:000859B6
ROM:000859B6                 movea.l #$FFFFFFFF,a0
ROM:000859BC                 lea     (unk_2E9874).l,a0
ROM:000859C2                 jsr     CheckObjectOOB
ROM:000859C8                 bcc.w   locret_859D2
ROM:000859CC                 jmp     (SetDying).l
ROM:000859D2
ROM:000859D2
ROM:000859D2 locret_859D2:
ROM:000859D2                 rts
ROM:000859D4
ROM:000859D4                 move.b  #0,$20(a6)
ROM:000859DA                 move.w  #$430,(word_10816A).l
ROM:000859E2                 move.w  #$430,(word_10816E).l
ROM:000859EA                 move.w  #$A0,$22(a6)
ROM:000859F0                 btst    #0,(DebugDIPs+1).l
ROM:000859F8                 beq.w   loc_85A08
ROM:000859FC                 lea     (off_2E7BFE).l,a0
ROM:00085A02                 jsr     ChangeAnimation
ROM:00085A08
ROM:00085A08 loc_85A08:
ROM:00085A08
ROM:00085A08                 clr.l   d0
ROM:00085A0A                 move.b  $20(a6),d0
ROM:00085A0E                 asl.l   #1,d0
ROM:00085A10                 lea     ($EC882).l,a0
ROM:00085A16                 move.w  (a0,d0.w),d1
ROM:00085A1A                 cmpi.w  #$FFFF,d1
ROM:00085A1E                 bne.w   loc_85A2A
ROM:00085A22                 jmp     (SetDying).l
ROM:00085A22
