ROM:00040374 ProcPOWRunAway:
ROM:00040374                 jsr     sub_3FECE
ROM:00040378                 jsr     Animate
ROM:0004037E                 btst    #5,$5A(a6)
ROM:00040384                 beq.w   loc_4038E
ROM:00040388                 lea     loc_40392,a1
ROM:0004038C                 move.l  a1,(a6)
ROM:0004038E
ROM:0004038E loc_4038E:
ROM:0004038E                 bra.w   loc_402F0
ROM:00040392
ROM:00040392
ROM:00040392 loc_40392:
ROM:00040392                 move.b  #$1E,$78(a6)
ROM:00040398                 lea     loc_4039E,a1
ROM:0004039C                 move.l  a1,(a6)
ROM:0004039E
ROM:0004039E loc_4039E:
ROM:0004039E                 jsr     sub_3FECE
ROM:000403A2                 subq.b  #1,$78(a6)
ROM:000403A6                 btst    #0,$78(a6)
ROM:000403AC                 beq.w   loc_403B6
ROM:000403B0                 jsr     Animate
ROM:000403B6
ROM:000403B6 loc_403B6:
ROM:000403B6                 tst.b   $78(a6)
ROM:000403BA                 bne.w   loc_403C4
ROM:000403BE                 jmp     (SetDying).l
ROM:000403C4
ROM:000403C4
ROM:000403C4 loc_403C4:
ROM:000403C4                 bra.w   loc_402F0
ROM:000403C8
ROM:000403C8                 movea.l 8(a6),a1
ROM:000403CC                 move.b  $10(a6),d0
ROM:000403D0                 cmp.b   $10(a1),d0
ROM:000403D4                 bcs.w   loc_403DE
ROM:000403D8                 andi    #$EE,ccr
ROM:000403DC                 rts
ROM:000403DE
ROM:000403DE
ROM:000403DE loc_403DE:
ROM:000403DE                 ori     #$11,ccr
ROM:000403E2                 rts
ROM:000403E4
ROM:000403E4                 move.w  #$9A,d1
ROM:000403E8                 jsr     (sub_236E).l
ROM:000403EE                 move.w  #$13,$1C(a6)
ROM:000403F4                 jsr     sub_138FE
ROM:000403FA                 clr.b   $7C(a6)
ROM:000403FE                 move.w  #$4000,d0
ROM:00040402                 jsr     sub_28134
ROM:00040408                 andi.w  #$FFE3,$38(a6)
ROM:0004040E                 ori.w   #$14,$38(a6)
ROM:00040414                 lea     (off_2BB7B6).l,a0
ROM:0004041A                 jsr     GetParamDifficulty
ROM:00040420                 move.w  d0,$66(a6)
ROM:00040424                 lea     ($723D2).l,a1
ROM:0004042A                 jsr     (SpawnObj).l
ROM:00040430                 jsr     InitSamePositions
ROM:00040436                 clr.w   $98(a0)
ROM:0004043A                 jsr     sub_41FB4
ROM:0004043E                 move.b  #$80,$80(a6)
ROM:00040444                 move.b  #$80,$81(a6)
ROM:0004044A                 move.b  #$80,$82(a6)
ROM:00040450                 move.b  #$80,$83(a6)
ROM:00040456                 move.b  #$80,$84(a6)
ROM:0004045C                 move.b  #$80,$85(a6)
ROM:00040462                 move.b  #$80,$86(a6)
ROM:00040468                 move.b  #$80,$87(a6)
ROM:0004046E                 lea     (off_2863E8).l,a0
ROM:00040474                 jsr     ChangeAnimation
ROM:0004047A                 move.w  #$3C,$70(a6)
ROM:00040480                 lea     loc_40486,a1
ROM:00040484                 move.l  a1,(a6)
ROM:00040486
ROM:00040486 loc_40486:
ROM:00040486                 subq.w  #1,$70(a6)
ROM:0004048A                 cmpi.w  #0,$70(a6)
ROM:00040490                 bgt.w   locret_4049A
ROM:00040494                 lea     loc_4049C,a1
ROM:00040498                 move.l  a1,(a6)
ROM:0004049A
ROM:0004049A locret_4049A:
ROM:0004049A                 rts
ROM:0004049C
ROM:0004049C
ROM:0004049C loc_4049C:
ROM:0004049C                 move.w  #$10A2,d0
ROM:000404A0                 jsr     (PlaySFX).l
ROM:000404A6                 move.w  #$C000,$34(a6)
ROM:000404AC                 move.w  #$200,$36(a6)
ROM:000404B2                 move.w  #$160,$22(a6)
ROM:000404B8                 move.w  #$160,$24(a6)
ROM:000404BE                 move.w  #$F0,$8A(a6)
ROM:000404C4                 move.w  #$180,$8C(a6)
ROM:000404CA                 lea     loc_404D0,a1
ROM:000404CE                 move.l  a1,(a6)
ROM:000404D0
ROM:000404D0 loc_404D0:
ROM:000404D0                 move.w  #$14,d5
ROM:000404D4                 jsr     sub_41CE0
ROM:000404D8                 bcc.w   loc_404E2
ROM:000404DC                 lea     loc_404EE,a1
ROM:000404E0                 move.l  a1,(a6)
ROM:000404E2
ROM:000404E2 loc_404E2:
ROM:000404E2                 jsr     PositionRelated
ROM:000404E8                 jsr     sub_41E02
ROM:000404EC                 rts
ROM:000404EE
ROM:000404EE
ROM:000404EE loc_404EE:
ROM:000404EE                 move.w  #$200,$36(a6)
ROM:000404F4                 lea     loc_404FA,a1
ROM:000404F8                 move.l  a1,(a6)
ROM:000404FA
ROM:000404FA loc_404FA:
ROM:000404FA                 move.w  #$FFE0,d1
ROM:000404FE                 clr.w   d0
ROM:00040500                 jsr     loc_41D6C
ROM:00040504                 bcc.w   loc_4050E
ROM:00040508                 lea     loc_4052C,a1
ROM:0004050C                 move.l  a1,(a6)
ROM:0004050E
ROM:0004050E loc_4050E:
ROM:0004050E                 move.w  #8,d5
ROM:00040512                 jsr     sub_41CE0
ROM:00040516                 bcc.w   loc_40520
ROM:0004051A                 lea     loc_4052C,a1
ROM:0004051E                 move.l  a1,(a6)
ROM:00040520
ROM:00040520 loc_40520:
ROM:00040520                 jsr     PositionRelated
ROM:00040526                 jsr     sub_41E02
ROM:0004052A                 rts
ROM:0004052C
ROM:0004052C
ROM:0004052C loc_4052C:
ROM:0004052C
ROM:0004052C                 move.w  #$100,$36(a6)
ROM:00040532                 clr.b   $21(a6)
ROM:00040536                 clr.w   $76(a6)
ROM:0004053A                 move.w  #$2D,$70(a6)
ROM:00040540                 lea     loc_40546,a1
ROM:00040544                 move.l  a1,(a6)
ROM:00040546
ROM:00040546 loc_40546:
ROM:00040546                 cmpi.w  #$110,$22(a6)
ROM:0004054C                 ble.w   loc_4056C
ROM:00040550                 move.w  #1,d0
ROM:00040554                 jsr     sub_41CE0
ROM:00040558                 bcc.w   loc_40562
ROM:0004055C                 eori.w  #$10,$8C(a6)
ROM:00040562
ROM:00040562 loc_40562:
ROM:00040562                 jsr     PositionRelated
ROM:00040568                 bra.w   loc_40572
ROM:0004056C
ROM:0004056C
ROM:0004056C loc_4056C:
ROM:0004056C                 jsr     ObjectRelated
ROM:00040572
ROM:00040572 loc_40572:
ROM:00040572                 jsr     sub_41DDC
ROM:00040576                 subq.w  #1,$70(a6)
ROM:0004057A                 cmpi.w  #0,$70(a6)
ROM:00040580                 bne.w   loc_40590
ROM:00040584                 move.b  #2,$81(a6)
ROM:0004058A                 move.b  #8,$84(a6)
ROM:00040590
ROM:00040590 loc_40590:
ROM:00040590                 btst    #4,$21(a6)
ROM:00040596                 beq.w   loc_405AE
ROM:0004059A                 move.b  #$82,$84(a6)
ROM:000405A0                 move.l  #off_285D16,$48(a6)
ROM:000405A8                 lea     loc_405B2,a1
ROM:000405AC                 move.l  a1,(a6)
ROM:000405AE
ROM:000405AE loc_405AE:
ROM:000405AE                 bra.w   loc_40B68
ROM:000405B2
ROM:000405B2
ROM:000405B2 loc_405B2:
ROM:000405B2
ROM:000405B2                 lea     (off_2BB8BA).l,a0
ROM:000405B8                 cmpi.b  #$FF,$7C(a6)
ROM:000405BE                 bne.w   loc_405C8
ROM:000405C2                 lea     (off_2BB93C).l,a0
ROM:000405C8
ROM:000405C8 loc_405C8:
ROM:000405C8                 jsr     GetParamDifficulty
ROM:000405CE                 move.w  d0,$70(a6)
ROM:000405D2                 jsr     sub_41C52
ROM:000405D6                 clr.b   $21(a6)
ROM:000405DA                 lea     loc_405E0,a1
ROM:000405DE                 move.l  a1,(a6)
ROM:000405E0
ROM:000405E0 loc_405E0:
ROM:000405E0                 move.w  #8,d5
ROM:000405E4                 jsr     sub_41CE0
ROM:000405E8                 bcc.w   loc_405F0
ROM:000405EC                 jsr     sub_41C52
ROM:000405F0
ROM:000405F0 loc_405F0:
ROM:000405F0                 jsr     PositionRelated
ROM:000405F6                 jsr     sub_41DDC
ROM:000405FA                 subq.w  #1,$70(a6)
ROM:000405FE                 cmpi.w  #0,$70(a6)
ROM:00040604                 bgt.w   loc_40622
ROM:00040608                 cmpi.w  #$110,$22(a6)
ROM:0004060E                 bgt.w   loc_40622
ROM:00040612                 tst.b   $92(a6)
ROM:00040616                 bne.w   loc_40622
ROM:0004061A                 jsr     sub_41E70
ROM:0004061E                 jsr     sub_41E4E
ROM:00040622
ROM:00040622 loc_40622:
ROM:00040622
ROM:00040622                 lea     (off_2BB838).l,a0
ROM:00040628                 jsr     GetParamDifficulty
ROM:0004062E                 cmp.w   $66(a6),d0
ROM:00040632                 blt.w   loc_4063C
ROM:00040636                 move.b  #$FF,$7C(a6)
ROM:0004063C
ROM:0004063C loc_4063C:
ROM:0004063C                 bra.w   loc_40B68
ROM:00040640
ROM:00040640                 lea     (off_2BB9BE).l,a0
ROM:00040646                 cmpi.b  #$FF,$7C(a6)
ROM:0004064C                 bne.w   loc_40656
ROM:00040650                 lea     (off_2BBA40).l,a0
ROM:00040656
ROM:00040656 loc_40656:
ROM:00040656                 jsr     GetParamDifficulty
ROM:0004065C                 move.w  d0,$74(a6)
ROM:00040660                 move.w  #$C000,$76(a6)
ROM:00040666                 jsr     sub_41C9C
ROM:0004066A                 clr.w   $36(a6)
ROM:0004066E                 clr.b   $21(a6)
ROM:00040672                 move.b  #$85,$84(a6)
ROM:00040678                 lea     loc_4067E,a1
ROM:0004067C                 move.l  a1,(a6)
ROM:0004067E
ROM:0004067E loc_4067E:
ROM:0004067E                 move.w  $74(a6),d0
ROM:00040682                 move.w  d0,d1
ROM:00040684                 lsr.w   #5,d1
ROM:00040686                 jsr     loc_41D6C
ROM:0004068A                 jsr     sub_41C1A
ROM:0004068E                 move.w  #$20,d5
ROM:00040692                 jsr     sub_41CE0
ROM:00040696                 bcc.w   loc_406A0
ROM:0004069A                 lea     loc_406B4,a1
ROM:0004069E                 move.l  a1,(a6)
ROM:000406A0
ROM:000406A0 loc_406A0:
ROM:000406A0                 jsr     PositionRelated
ROM:000406A6                 jsr     Animate
ROM:000406AC                 clr.w   $8E(a6)
ROM:000406B0                 bra.w   loc_40B68
ROM:000406B4
ROM:000406B4
ROM:000406B4 loc_406B4:
ROM:000406B4                 lea     loc_406BA,a1
ROM:000406B8                 move.l  a1,(a6)
ROM:000406BA
ROM:000406BA loc_406BA:
ROM:000406BA                 move.w  $74(a6),d0
ROM:000406BE                 move.w  d0,d1
ROM:000406C0                 lsr.w   #5,d1
ROM:000406C2                 neg.w   d1
ROM:000406C4                 clr.w   d0
ROM:000406C6                 jsr     loc_41D6C
ROM:000406CA                 jsr     sub_41C1A
ROM:000406CE                 move.w  #4,d5
ROM:000406D2                 jsr     sub_41CE0
ROM:000406D6                 bcc.w   loc_406EA
ROM:000406DA                 btst    #4,$21(a6)
ROM:000406E0                 beq.w   loc_406EA
ROM:000406E4                 lea     loc_406FE,a1
ROM:000406E8                 move.l  a1,(a6)
ROM:000406EA
ROM:000406EA loc_406EA:
ROM:000406EA
ROM:000406EA                 jsr     PositionRelated
ROM:000406F0                 jsr     Animate
ROM:000406F6                 clr.w   $8E(a6)
ROM:000406FA                 bra.w   loc_40B68
ROM:000406FE
ROM:000406FE
ROM:000406FE loc_406FE:
ROM:000406FE                 lea     (off_2BBAC2).l,a0
ROM:00040704                 cmpi.b  #$FF,$7C(a6)
ROM:0004070A                 bne.w   loc_40714
ROM:0004070E                 lea     (off_2BBB44).l,a0
ROM:00040714
ROM:00040714 loc_40714:
ROM:00040714                 jsr     GetParamDifficulty
ROM:0004071A                 move.w  d0,$70(a6)
ROM:0004071E                 lea     (off_2BBDCE).l,a0
ROM:00040724                 cmpi.b  #$FF,$7C(a6)
ROM:0004072A                 bne.w   loc_40734
ROM:0004072E                 lea     (off_2BBE50).l,a0
ROM:00040734
ROM:00040734 loc_40734:
ROM:00040734                 jsr     GetParamDifficulty
ROM:0004073A                 move.w  d0,$72(a6)
ROM:0004073E                 lea     (off_2BBCCA).l,a0
ROM:00040744                 cmpi.b  #$FF,$7C(a6)
ROM:0004074A                 bne.w   loc_40754
ROM:0004074E                 lea     (off_2BBD4C).l,a0
ROM:00040754
ROM:00040754 loc_40754:
ROM:00040754                 jsr     GetParamDifficulty
ROM:0004075A                 move.b  d0,$7B(a6)
ROM:0004075E                 bset    #4,$21(a6)
ROM:00040764                 bra.w   loc_4077C
ROM:00040768
ROM:00040768
ROM:00040768 loc_40768:
ROM:00040768                 clr.b   $21(a6)
ROM:0004076C                 subq.b  #1,$7B(a6)
ROM:00040770                 move.b  #$86,$84(a6)
ROM:00040776                 move.w  $72(a6),$70(a6)
ROM:0004077C
ROM:0004077C loc_4077C:
ROM:0004077C                 lea     loc_40782,a1
ROM:00040780                 move.l  a1,(a6)
ROM:00040782
ROM:00040782 loc_40782:
ROM:00040782                 subq.w  #1,$70(a6)
ROM:00040786                 cmpi.w  #0,$70(a6)
ROM:0004078C                 bgt.w   loc_407A8
ROM:00040790                 btst    #4,$21(a6)
ROM:00040796                 beq.w   loc_407A8
ROM:0004079A                 cmpi.b  #0,$7B(a6)
ROM:000407A0                 bgt.s   loc_40768
ROM:000407A2                 lea     loc_407B6,a1
ROM:000407A6                 move.l  a1,(a6)
ROM:000407A8
ROM:000407A8 loc_407A8:
ROM:000407A8
ROM:000407A8                 jsr     ObjectRelated
ROM:000407AE                 jsr     sub_41E02
ROM:000407B2                 bra.w   loc_40B68
ROM:000407B6
ROM:000407B6
ROM:000407B6 loc_407B6:
ROM:000407B6                 move.w  #$C000,$76(a6)
ROM:000407BC                 move.w  #$100,$8A(a6)
ROM:000407C2                 move.w  #$190,$8C(a6)
ROM:000407C8                 move.b  #$84,$84(a6)
ROM:000407CE                 lea     loc_407D4,a1
ROM:000407D2                 move.l  a1,(a6)
ROM:000407D4
ROM:000407D4 loc_407D4:
ROM:000407D4                 move.w  #$200,d0
ROM:000407D8                 move.w  #$20,d1
ROM:000407DC                 jsr     loc_41D6C
ROM:000407E0                 jsr     sub_41C1A
ROM:000407E4                 move.w  #8,d5
ROM:000407E8                 jsr     sub_41CE0
ROM:000407EC                 bcc.w   loc_407F6
ROM:000407F0                 lea     loc_405B2,a1
ROM:000407F4                 move.l  a1,(a6)
ROM:000407F6
ROM:000407F6 loc_407F6:
ROM:000407F6                 jsr     PositionRelated
ROM:000407FC                 jsr     Animate
ROM:00040802                 clr.w   $8E(a6)
ROM:00040806                 bra.w   loc_40B68
ROM:0004080A
ROM:0004080A                 move.b  #4,$82(a6)
ROM:00040810                 move.b  #9,$85(a6)
ROM:00040816                 clr.b   $21(a6)
ROM:0004081A                 lea     loc_40820,a1
ROM:0004081E                 move.l  a1,(a6)
ROM:00040820
ROM:00040820 loc_40820:
ROM:00040820                 btst    #2,$21(a6)
ROM:00040826                 beq.w   loc_40830
ROM:0004082A                 lea     loc_4083E,a1
ROM:0004082E                 move.l  a1,(a6)
ROM:00040830
ROM:00040830 loc_40830:
ROM:00040830                 jsr     ObjectRelated
ROM:00040836                 jsr     sub_41E02
ROM:0004083A                 bra.w   loc_40B68
ROM:0004083E
ROM:0004083E
ROM:0004083E loc_4083E:
ROM:0004083E                 move.w  #$C000,$76(a6)
ROM:00040844                 move.w  #$120,$8A(a6)
ROM:0004084A                 move.w  #$200,$8C(a6)
ROM:00040850                 lea     loc_40856,a1
ROM:00040854                 move.l  a1,(a6)
ROM:00040856
ROM:00040856 loc_40856:
ROM:00040856                 move.w  #$200,d0
ROM:0004085A                 move.w  #$20,d1
ROM:0004085E                 jsr     loc_41D6C
ROM:00040862                 move.w  #$10,d5
ROM:00040866                 jsr     sub_41CE0
ROM:0004086A                 bcc.w   loc_40874
ROM:0004086E                 lea     loc_40886,a1
ROM:00040872                 move.l  a1,(a6)
ROM:00040874
ROM:00040874 loc_40874:
ROM:00040874                 jsr     PositionRelated
ROM:0004087A                 clr.w   $8E(a6)
ROM:0004087E                 jsr     sub_41E02
ROM:00040882                 bra.w   loc_40BC4
ROM:00040886
ROM:00040886
ROM:00040886 loc_40886:
ROM:00040886                 lea     (off_2BBED2).l,a0
ROM:0004088C                 cmpi.b  #$FF,$7C(a6)
ROM:00040892                 bne.w   loc_4089C
ROM:00040896                 lea     (off_2BBF54).l,a0
ROM:0004089C
ROM:0004089C loc_4089C:
ROM:0004089C                 jsr     GetParamDifficulty
ROM:000408A2                 lea     (off_2BBFD6).l,a0
ROM:000408A8                 lsl.w   #2,d0
ROM:000408AA                 move.w  (a0,d0.w),$90(a6)
ROM:000408B0                 addq.w  #2,d0
ROM:000408B2                 move.w  (a0,d0.w),d1
ROM:000408B6                 move.w  d1,$36(a6)
ROM:000408BA                 neg.w   d1
ROM:000408BC                 move.w  d1,$28(a6)
ROM:000408C0                 clr.w   $70(a6)
ROM:000408C4                 bset    #5,$21(a6)
ROM:000408CA                 lea     loc_408D0,a1
ROM:000408CE                 move.l  a1,(a6)
ROM:000408D0
ROM:000408D0 loc_408D0:
ROM:000408D0                 subq.w  #1,$70(a6)
ROM:000408D4                 cmpi.w  #0,$70(a6)
ROM:000408DA                 bgt.w   loc_40908
ROM:000408DE                 btst    #5,$21(a6)
ROM:000408E4                 beq.w   loc_40908
ROM:000408E8                 move.w  $90(a6),$70(a6)
ROM:000408EE                 cmpi.w  #$12,$70(a6)
ROM:000408F4                 ble.w   loc_40902
ROM:000408F8                 move.b  #$D,$85(a6)
ROM:000408FE                 beq.w   loc_40908
ROM:00040902
ROM:00040902 loc_40902:
ROM:00040902                 move.b  #$E,$85(a6)
ROM:00040908
ROM:00040908 loc_40908:
ROM:00040908
ROM:00040908                 jsr     PositionRelated
ROM:0004090E                 jsr     sub_41E02
ROM:00040912                 cmpi.w  #$FFE2,$22(a6)
ROM:00040918                 bgt.w   loc_40922
ROM:0004091C                 lea     loc_40926,a1
ROM:00040920                 move.l  a1,(a6)
ROM:00040922
ROM:00040922 loc_40922:
ROM:00040922                 bra.w   loc_40BC4
ROM:00040926
ROM:00040926
ROM:00040926 loc_40926:
ROM:00040926                 move.b  #$80,$82(a6)
ROM:0004092C                 move.w  #$160,$22(a6)
ROM:00040932                 move.w  #$160,$8A(a6)
ROM:00040938                 move.w  $24(a6),$8C(a6)
ROM:0004093E                 move.w  #$3C,$70(a6)
ROM:00040944                 lea     loc_4094A,a1
ROM:00040948                 move.l  a1,(a6)
ROM:0004094A
ROM:0004094A loc_4094A:
ROM:0004094A                 cmpi.w  #$1E,$70(a6)
ROM:00040950                 bgt.w   loc_4095E
ROM:00040954                 jsr     sub_41C52
ROM:00040958                 lea     loc_4095E,a1
ROM:0004095C                 move.l  a1,(a6)
ROM:0004095E
ROM:0004095E loc_4095E:
ROM:0004095E
ROM:0004095E                 move.w  #8,d5
ROM:00040962                 jsr     sub_41CE0
ROM:00040966                 move.b  #$80,$85(a6)
ROM:0004096C                 jsr     PositionRelated
ROM:00040972                 jsr     sub_41DDC
ROM:00040976                 subq.w  #1,$70(a6)
ROM:0004097A                 cmpi.w  #0,$70(a6)
ROM:00040980                 bgt.w   loc_409A4
ROM:00040984                 lea     (off_2BCA3E).l,a0
ROM:0004098A                 cmpi.b  #$FF,$7C(a6)
ROM:00040990                 bne.w   loc_4099A
ROM:00040994                 lea     (off_2BCAC0).l,a0
ROM:0004099A
ROM:0004099A loc_4099A:
ROM:0004099A                 jsr     GetParamDifficulty
ROM:000409A0                 jsr     sub_41E4E
ROM:000409A4
ROM:000409A4 loc_409A4:
ROM:000409A4                 bra.w   loc_40BC4
ROM:000409A8
ROM:000409A8                 jsr     sub_5E1EA
ROM:000409AE                 move.l  a0,$9C(a6)
ROM:000409B2                 move.b  #$84,$84(a6)
ROM:000409B8                 lea     loc_409BE,a1
ROM:000409BC                 move.l  a1,(a6)
ROM:000409BE
ROM:000409BE loc_409BE:
ROM:000409BE                 jsr     ObjectRelated
ROM:000409C4                 movea.l $9C(a6),a0
ROM:000409C8                 move.w  $22(a6),d0
ROM:000409CC                 subi.w  #$20,d0
ROM:000409D0                 cmp.w   $22(a0),d0
ROM:000409D4                 bgt.w   loc_409E4
ROM:000409D8                 addq.w  #1,$22(a6)
ROM:000409DC                 jsr     sub_41DDC
ROM:000409E0                 bra.w   loc_40B68
ROM:000409E4
ROM:000409E4
ROM:000409E4 loc_409E4:
ROM:000409E4                 jsr     sub_41DDC
ROM:000409E8                 cmpi.b  #1,$7D(a6)
ROM:000409EE                 bne.w   loc_409F8
ROM:000409F2                 lea     unk_409FC,a1
ROM:000409F6                 move.l  a1,(a6)
ROM:000409F8
ROM:000409F8 loc_409F8:
ROM:000409F8                 bra.w   loc_40B68
ROM:000409F8
