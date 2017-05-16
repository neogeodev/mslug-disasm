ROM:000714B6 ProcShoeSteady:
ROM:000714B6                 jsr     sub_28998
ROM:000714BC                 jsr     loc_72C44
ROM:000714C0                 jsr     ObjectRelated
ROM:000714C6                 jsr     Animate
ROM:000714CC                 subq.w  #1,$70(a6)
ROM:000714D0                 cmpi.w  #0,$70(a6)
ROM:000714D6                 bne.w   loc_714E0
ROM:000714DA                 lea     loc_714E4,a1
ROM:000714DE                 move.l  a1,(a6)
ROM:000714E0
ROM:000714E0 loc_714E0:
ROM:000714E0                 bra.w   loc_71664
ROM:000714E4
ROM:000714E4
ROM:000714E4 loc_714E4:
ROM:000714E4
ROM:000714E4                 lea     (unk_2D93EE).l,a0
ROM:000714EA                 jsr     ChangeAnimation
ROM:000714F0                 lea     loc_714F6,a1
ROM:000714F4                 move.l  a1,(a6)
ROM:000714F6
ROM:000714F6 loc_714F6:
ROM:000714F6                 jsr     sub_28998
ROM:000714FC                 jsr     loc_72C44
ROM:00071500                 jsr     ObjectRelated
ROM:00071506                 jsr     Animate
ROM:0007150C                 bcc.w   loc_71516
ROM:00071510                 lea     loc_713AC,a1
ROM:00071514                 move.l  a1,(a6)
ROM:00071516
ROM:00071516 loc_71516:
ROM:00071516                 jsr     sub_283CA
ROM:0007151C                 jsr     loc_283D8
ROM:00071522                 bra.w   loc_71664
ROM:00071526
ROM:00071526                 bclr    #3,$13(a6)
ROM:0007152C                 lea     (unk_2D9428).l,a0
ROM:00071532                 jsr     ChangeAnimation
ROM:00071538                 bra.w   loc_7154E
ROM:0007153C
ROM:0007153C                 bclr    #3,$13(a6)
ROM:00071542                 lea     (unk_2D9462).l,a0
ROM:00071548                 jsr     ChangeAnimation
ROM:0007154E
ROM:0007154E loc_7154E:
ROM:0007154E                 move.w  #$1071,d0
ROM:00071552                 jsr     (SoundRelated4).l
ROM:00071558                 lea     loc_7155E,a1
ROM:0007155C                 move.l  a1,(a6)
ROM:0007155E
ROM:0007155E loc_7155E:
ROM:0007155E                 jsr     sub_28998
ROM:00071564                 jsr     loc_72C44
ROM:00071568                 jsr     ObjectRelated
ROM:0007156E                 jsr     Animate
ROM:00071574                 bcc.w   loc_7157E
ROM:00071578                 lea     loc_714E4,a1
ROM:0007157C                 move.l  a1,(a6)
ROM:0007157E
ROM:0007157E loc_7157E:
ROM:0007157E                 bra.w   loc_71664
ROM:00071582
ROM:00071582
ROM:00071582 loc_71582:
ROM:00071582                 move.w  #$1033,d0
ROM:00071586                 jsr     (PlaySFX).l
ROM:0007158C                 bclr    #1,$12(a6)
ROM:00071592                 lea     (unk_2D94F0).l,a0
ROM:00071598                 jsr     ChangeAnimation
ROM:0007159E                 move.b  #5,$84(a6)
ROM:000715A4                 move.b  #5,$85(a6)
ROM:000715AA                 move.b  #5,$86(a6)
ROM:000715B0                 move.b  #5,$87(a6)
ROM:000715B6                 move.b  #5,$83(a6)
ROM:000715BC                 lea     loc_715C2,a1
ROM:000715C0                 move.l  a1,(a6)
ROM:000715C2
ROM:000715C2 loc_715C2:
ROM:000715C2                 jsr     ObjectRelated
ROM:000715C8                 jsr     Animate
ROM:000715CE                 bcc.w   loc_715D8
ROM:000715D2                 lea     loc_715FA,a1
ROM:000715D6                 move.l  a1,(a6)
ROM:000715D8
ROM:000715D8 loc_715D8:
ROM:000715D8                 jsr     loc_727C4
ROM:000715DC                 movea.l #$FFFFFFFF,a0
ROM:000715E2                 lea     (unk_2D90BC).l,a0
ROM:000715E8                 jsr     CheckObjectOOB
ROM:000715EE                 bcc.w   locret_715F8
ROM:000715F2                 lea     loc_716B6,a1
ROM:000715F6                 move.l  a1,(a6)
ROM:000715F8
ROM:000715F8 locret_715F8:
ROM:000715F8                 rts
ROM:000715FA
ROM:000715FA
ROM:000715FA loc_715FA:
ROM:000715FA                 bclr    #1,$12(a6)
ROM:00071600                 move.w  #$102F,d0
ROM:00071604                 jsr     (PlaySFX).l
ROM:0007160A                 lea     ($77FD6).l,a1
ROM:00071610                 jsr     (SpawnObj).l
ROM:00071616                 jsr     InitSamePositions
ROM:0007161C                 addi.w  #-$38,$22(a0)
ROM:00071622                 lea     ($77FD6).l,a1
ROM:00071628                 jsr     (SpawnObj).l
ROM:0007162E                 jsr     InitSamePositions
ROM:00071634                 addi.w  #0,$22(a0)
ROM:0007163A                 lea     ($77FD6).l,a1
ROM:00071640                 jsr     (SpawnObj).l
ROM:00071646                 jsr     InitSamePositions
ROM:0007164C                 addi.w  #$38,$22(a0)
ROM:00071652                 jsr     loc_72DB8
ROM:00071656                 jsr     Animate
ROM:0007165C                 jmp     (SetDying).l
ROM:00071662
ROM:00071662                 rts
ROM:00071664
ROM:00071664
ROM:00071664 loc_71664:
ROM:00071664
ROM:00071664                 jsr     loc_7279A
ROM:00071668                 jsr     loc_727EA
ROM:0007166C                 jsr     CheckShot?
ROM:00071672                 bcc.w   loc_71688
ROM:00071676                 lea     (SoundCodeGunFire).l,a0
ROM:0007167C                 jsr     SoundRelated_0
ROM:00071682                 bclr    #3,$13(a6)
ROM:00071688
ROM:00071688 loc_71688:
ROM:00071688                 jsr     CheckIfDead
ROM:0007168E                 bcc.w   loc_71698
ROM:00071692                 lea     loc_71582,a1
ROM:00071696                 move.l  a1,(a6)
ROM:00071698
ROM:00071698 loc_71698:
ROM:00071698                 movea.l #$FFFFFFFF,a0
ROM:0007169E                 lea     (unk_2D90BC).l,a0
ROM:000716A4                 jsr     CheckObjectOOB
ROM:000716AA                 bcc.w   locret_716B4
ROM:000716AE                 lea     loc_716B6,a1
ROM:000716B2                 move.l  a1,(a6)
ROM:000716B4
ROM:000716B4 locret_716B4:
ROM:000716B4                 rts
ROM:000716B6
ROM:000716B6
ROM:000716B6 loc_716B6:
ROM:000716B6
ROM:000716B6                 bclr    #1,$12(a6)
ROM:000716BC                 move.b  #5,$84(a6)
ROM:000716C2                 move.b  #5,$85(a6)
ROM:000716C8                 move.b  #5,$86(a6)
ROM:000716CE                 move.b  #5,$87(a6)
ROM:000716D4                 move.b  #5,$83(a6)
ROM:000716DA                 lea     loc_716E2,a1
ROM:000716DE                 move.l  a1,(a6)
ROM:000716E0                 rts
ROM:000716E2
ROM:000716E2
ROM:000716E2 loc_716E2:
ROM:000716E2                 jmp     (SetDying).l
ROM:000716E8
ROM:000716E8                 rts
ROM:000716EA
ROM:000716EA
ROM:000716EA loc_716EA:
ROM:000716EA                 jmp     (SetDying).l
ROM:000716F0
ROM:000716F0                 rts
ROM:000716F2
ROM:000716F2
ROM:000716F2 loc_716F2:
ROM:000716F2
ROM:000716F2                 jsr     (ClearObjChilds?).l
ROM:000716F8                 jmp     (SetDying).l
ROM:000716FE
ROM:000716FE                 rts
ROM:00071700
ROM:00071700
ROM:00071700 loc_71700:
ROM:00071700
ROM:00071700                 movea.l $C(a6),a0
ROM:00071704                 move.b  $77(a0),$77(a6)
ROM:0007170A                 jsr     loc_72B96
ROM:0007170E                 move.w  $88(a6),d0
ROM:00071712                 cmpi.w  #5,d0
ROM:00071716                 bcs.w   loc_71724+2
ROM:0007171A                 nop
ROM:0007171C                 nop
ROM:0007171E                 cmpi.w  #5,d0
ROM:00071722                 nop
ROM:00071724
ROM:00071724 loc_71724:
ROM:00071724                 trap    #$F
ROM:00071724                 dc.w    $207C
ROM:00071728                 ori.b   #$A6,-$1AB8(a5)
ROM:0007172E                 movea.l (a0,d0.w),a0
ROM:00071732                 cmpa.l  #$FFFFFFFF,a0
ROM:00071738                 beq.w   loc_71742
ROM:0007173C                 jsr     ChangeAnimation
ROM:00071742
ROM:00071742 loc_71742:
ROM:00071742
ROM:00071742                 lea     loc_71748,a1
ROM:00071746                 move.l  a1,(a6)
ROM:00071748
ROM:00071748 loc_71748:
ROM:00071748                 movea.l $C(a6),a0
ROM:0007174C                 move.b  $20(a0),$20(a6)
ROM:00071752                 jsr     loc_72BCE
ROM:00071756                 jsr     loc_72BDE
ROM:0007175A                 lea     (unk_2D9272).l,a0
ROM:00071760                 jsr     loc_72C08
ROM:00071764                 bcc.w   loc_7176A
ROM:00071768                 jmp     (a0)
ROM:0007176A
ROM:0007176A
ROM:0007176A loc_7176A:
ROM:0007176A                 movea.l $C(a6),a0
ROM:0007176E                 btst    #7,$5A(a0)
ROM:00071774                 beq.w   loc_7177E
ROM:00071778                 bset    #0,$5A(a6)
ROM:0007177E
ROM:0007177E loc_7177E:
ROM:0007177E                 jsr     Animate
ROM:00071784                 rts
ROM:00071786
ROM:00071786                 move.w  $88(a6),d0
ROM:0007178A                 cmpi.w  #5,d0
ROM:0007178E                 bcs.w   loc_7179C+2
ROM:00071792                 nop
ROM:00071794                 nop
ROM:00071796                 cmpi.w  #5,d0
ROM:0007179A                 nop
ROM:0007179C
ROM:0007179C loc_7179C:
ROM:0007179C                 trap    #$F
ROM:0007179C                 dc.w    $207C
ROM:000717A0                 ori.b   #$BA,-$1AB8(a5)
ROM:000717A6                 movea.l (a0,d0.w),a0
ROM:000717AA                 cmpa.l  #$FFFFFFFF,a0
ROM:000717B0                 beq.w   loc_717BA
ROM:000717B4                 jsr     ChangeAnimation
ROM:000717BA
ROM:000717BA loc_717BA:
ROM:000717BA                 bra.w   loc_71742
ROM:000717BE
ROM:000717BE                 move.w  $88(a6),d0
ROM:000717C2                 cmpi.w  #5,d0
ROM:000717C6                 bcs.w   loc_717D4+2
ROM:000717CA                 nop
ROM:000717CC                 nop
ROM:000717CE                 cmpi.w  #5,d0
ROM:000717D2                 nop
ROM:000717D4
ROM:000717D4 loc_717D4:
ROM:000717D4                 trap    #$F
ROM:000717D4                 dc.w    $207C
ROM:000717D8                 ori.b   #$CE,-$1AB8(a5)
ROM:000717DE                 movea.l (a0,d0.w),a0
ROM:000717E2                 cmpa.l  #$FFFFFFFF,a0
ROM:000717E8                 beq.w   loc_717F2
ROM:000717EC                 jsr     ChangeAnimation
ROM:000717F2
ROM:000717F2 loc_717F2:
ROM:000717F2                 bra.w   loc_71742
ROM:000717F6
ROM:000717F6                 move.w  $88(a6),d0
ROM:000717FA                 cmpi.w  #5,d0
ROM:000717FE                 bcs.w   loc_7180C+2
ROM:00071802                 nop
ROM:00071804                 nop
ROM:00071806                 cmpi.w  #5,d0
ROM:0007180A                 nop
ROM:0007180C
ROM:0007180C loc_7180C:
ROM:0007180C                 trap    #$F
ROM:0007180C                 dc.w    $207C
ROM:00071810                 ori.b   #$E2,-$1AB8(a5)
ROM:00071816                 movea.l (a0,d0.w),a0
ROM:0007181A                 cmpa.l  #$FFFFFFFF,a0
ROM:00071820                 beq.w   loc_7182A
ROM:00071824                 jsr     ChangeAnimation
ROM:0007182A
ROM:0007182A loc_7182A:
ROM:0007182A                 bra.w   loc_71742
ROM:0007182E
ROM:0007182E                 move.w  $88(a6),d0
ROM:00071832                 cmpi.w  #5,d0
ROM:00071836                 bcs.w   loc_71844+2
ROM:0007183A                 nop
ROM:0007183C                 nop
ROM:0007183E                 cmpi.w  #5,d0
ROM:00071842                 nop
ROM:00071844
ROM:00071844 loc_71844:
ROM:00071844                 trap    #$F
ROM:00071844                 dc.w    $207C
ROM:00071848                 ori.b   #$F6,-$1AB8(a5)
ROM:0007184E                 movea.l (a0,d0.w),a0
ROM:00071852                 cmpa.l  #$FFFFFFFF,a0
ROM:00071858                 beq.w   loc_71862
ROM:0007185C                 jsr     ChangeAnimation
ROM:00071862
ROM:00071862 loc_71862:
ROM:00071862                 bra.w   loc_71742
ROM:00071866
ROM:00071866                 lea     loc_716EA,a1
ROM:0007186A                 move.l  a1,(a6)
ROM:0007186C                 rts
ROM:0007186E
ROM:0007186E
ROM:0007186E loc_7186E:
ROM:0007186E
ROM:0007186E                 move.w  #0,$84(a6)
ROM:00071874                 move.w  #$84,$86(a6)
ROM:0007187A                 move.l  #unk_2D9138,$80(a6)
ROM:00071882                 move.w  #0,$88(a6)
ROM:00071888                 lea     (off_2D9508).l,a0
ROM:0007188E                 jsr     ChangeAnimation
ROM:00071894                 bra.w   loc_71700
ROM:00071898
ROM:00071898
ROM:00071898 loc_71898:
ROM:00071898
ROM:00071898                 move.w  #$FFFF,$84(a6)
ROM:0007189E                 move.w  #$85,$86(a6)
ROM:000718A4                 move.l  #unk_2D9138,$80(a6)
ROM:000718AC                 move.w  #1,$88(a6)
ROM:000718B2                 lea     (off_2D961C).l,a0
ROM:000718B8                 jsr     ChangeAnimation
ROM:000718BE                 bra.w   loc_71700
ROM:000718C2
ROM:000718C2
ROM:000718C2 loc_718C2:
ROM:000718C2
ROM:000718C2                 move.w  #$FFFF,$84(a6)
ROM:000718C8                 move.w  #$86,$86(a6)
ROM:000718CE                 move.l  #unk_2D9168,$80(a6)
ROM:000718D6                 move.w  #2,$88(a6)
ROM:000718DC                 lea     (off_2D9714).l,a0
ROM:000718E2                 jsr     ChangeAnimation
ROM:000718E8                 bra.w   loc_71700
ROM:000718EC
ROM:000718EC
ROM:000718EC loc_718EC:
ROM:000718EC                 move.w  #$FFFF,$84(a6)
ROM:000718F2                 move.w  #$87,$86(a6)
ROM:000718F8                 move.l  #unk_2D9198,$80(a6)
ROM:00071900                 move.w  #3,$88(a6)
ROM:00071906                 lea     (off_2D9828).l,a0
ROM:0007190C                 jsr     ChangeAnimation
ROM:00071912                 bra.w   loc_71700
ROM:00071916
ROM:00071916
ROM:00071916 loc_71916:
ROM:00071916                 move.w  #$FFFF,$84(a6)
ROM:0007191C                 move.w  #$87,$86(a6)
ROM:00071922                 move.l  #unk_2D9198,$80(a6)
ROM:0007192A                 move.w  #4,$88(a6)
ROM:00071930                 lea     (off_2D990A).l,a0
ROM:00071936                 jsr     ChangeAnimation
ROM:0007193C                 bra.w   loc_71700
ROM:00071940
ROM:00071940
ROM:00071940 loc_71940:
ROM:00071940
ROM:00071940                 move.w  #0,$84(a6)
ROM:00071946                 move.w  #$83,$86(a6)
ROM:0007194C                 move.l  #off_2D91C8,$80(a6)
ROM:00071954                 move.w  #5,$88(a6)
ROM:0007195A                 jsr     GetRand2?
ROM:00071960                 andi.w  #$3F,d0
ROM:00071964                 addi.w  #$1E,d0
ROM:00071968                 move.w  d0,$72(a6)
ROM:0007196C                 move.w  #$38,d1
ROM:00071970                 jsr     (sub_236E).l
ROM:00071976
ROM:00071976 loc_71976:
ROM:00071976
ROM:00071976                 move.b  #1,$8A(a6)
ROM:0007197C                 move.w  #1,$66(a6)
ROM:00071982                 bclr    #3,$13(a6)
ROM:00071988                 bclr    #0,$13(a6)
ROM:0007198E                 lea     (unk_2DA2D0).l,a0
ROM:00071994                 jsr     ChangeAnimation
ROM:0007199A                 jsr     Animate
ROM:000719A0                 lea     loc_719A6,a1
ROM:000719A4                 move.l  a1,(a6)
ROM:000719A6
ROM:000719A6 loc_719A6:
ROM:000719A6                 movea.l $C(a6),a0
ROM:000719AA                 move.b  $20(a0),$20(a6)
ROM:000719B0                 jsr     loc_72B5A
ROM:000719B4                 bcc.w   loc_719BE
ROM:000719B8                 lea     loc_71A7A,a1
ROM:000719BC                 move.l  a1,(a6)
ROM:000719BE
ROM:000719BE loc_719BE:
ROM:000719BE                 movea.l $C(a6),a1
ROM:000719C2                 move.w  $86(a6),d1
ROM:000719C6                 cmpi.b  #5,(a1,d1.w)
ROM:000719CC                 bne.w   loc_719D6
ROM:000719D0                 lea     loc_71B9A,a1
ROM:000719D4                 move.l  a1,(a6)
ROM:000719D6
ROM:000719D6 loc_719D6:
ROM:000719D6                 lea     (unk_2D928E).l,a0
ROM:000719DC                 jsr     loc_72C08
ROM:000719E0                 bcc.w   locret_719E6
ROM:000719E4                 jmp     (a0)
ROM:000719E6
ROM:000719E6
ROM:000719E6 locret_719E6:
ROM:000719E6                 rts
ROM:000719E8
ROM:000719E8
ROM:000719E8 loc_719E8:
ROM:000719E8
ROM:000719E8                 move.w  #1,$66(a6)
ROM:000719EE                 bclr    #3,$13(a6)
ROM:000719F4                 bclr    #0,$13(a6)
ROM:000719FA                 lea     loc_71A00,a1
ROM:000719FE                 move.l  a1,(a6)
ROM:00071A00
ROM:00071A00 loc_71A00:
ROM:00071A00                 jsr     loc_72BCE
ROM:00071A04                 jsr     loc_72BDE
ROM:00071A08                 jsr     Animate
ROM:00071A0E                 bcc.w   loc_71A18
ROM:00071A12                 lea     loc_71976,a1
ROM:00071A16                 move.l  a1,(a6)
ROM:00071A18
ROM:00071A18 loc_71A18:
ROM:00071A18                 jsr     CheckShot?
ROM:00071A1E                 bcc.w   loc_71A2E
ROM:00071A22                 jsr     sub_519BE
ROM:00071A28                 lea     loc_71A90,a1
ROM:00071A2C                 move.l  a1,(a6)
ROM:00071A2E
ROM:00071A2E loc_71A2E:
ROM:00071A2E                 movea.l $C(a6),a1
ROM:00071A32                 move.w  $86(a6),d1
ROM:00071A36                 move.b  (a1,d1.w),d0
ROM:00071A3A                 clr.b   (a1,d1.w)
ROM:00071A3E                 cmpi.b  #5,d0
ROM:00071A42                 bne.w   locret_71A4C
ROM:00071A46                 lea     loc_71B9A,a1
ROM:00071A4A                 move.l  a1,(a6)
ROM:00071A4C
ROM:00071A4C locret_71A4C:
ROM:00071A4C                 rts
ROM:00071A4E
ROM:00071A4E                 move.b  #2,$8A(a6)
ROM:00071A54                 lea     (off_2DA2E2).l,a0
ROM:00071A5A                 jsr     ChangeAnimation
ROM:00071A60                 bra.w   loc_719E8
ROM:00071A64
ROM:00071A64                 move.b  #3,$8A(a6)
ROM:00071A6A                 lea     (off_2DA380).l,a0
ROM:00071A70                 jsr     ChangeAnimation
ROM:00071A76                 bra.w   loc_719E8
ROM:00071A7A
ROM:00071A7A
ROM:00071A7A loc_71A7A:
ROM:00071A7A                 move.b  #4,$8A(a6)
ROM:00071A80                 lea     (off_2DA41E).l,a0
ROM:00071A86                 jsr     ChangeAnimation
ROM:00071A8C                 bra.w   loc_719E8
ROM:00071A90
ROM:00071A90
ROM:00071A90 loc_71A90:
ROM:00071A90                 cmpi.b  #4,$8A(a6)
ROM:00071A96                 bne.w   loc_71AAA
ROM:00071A9A                 lea     $7229C,a1
ROM:00071A9E                 jsr     (SpawnObj).l
ROM:00071AA4                 jsr     InitSamePositions
ROM:00071AAA
ROM:00071AAA loc_71AAA:
ROM:00071AAA                 move.b  #5,$8A(a6)
ROM:00071AB0                 move.w  #$1041,d0
ROM:00071AB4                 jsr     (PlaySFX).l
ROM:00071ABA                 lea     (unk_2C41EA).l,a0
ROM:00071AC0                 jsr     ChangeAnimation
ROM:00071AC6                 lea     loc_71ACC,a1
ROM:00071ACA                 move.l  a1,(a6)
ROM:00071ACC
ROM:00071ACC loc_71ACC:
ROM:00071ACC                 jsr     loc_72BCE
ROM:00071AD0                 jsr     loc_72BDE
ROM:00071AD4                 jsr     Animate
ROM:00071ADA                 bcc.w   loc_71AE4
ROM:00071ADE                 lea     loc_71B04,a1
ROM:00071AE2                 move.l  a1,(a6)
ROM:00071AE4
ROM:00071AE4 loc_71AE4:
ROM:00071AE4                 movea.l $C(a6),a1
ROM:00071AE8                 move.w  $86(a6),d1
ROM:00071AEC                 move.b  (a1,d1.w),d0
ROM:00071AF0                 clr.b   (a1,d1.w)
ROM:00071AF4                 cmpi.b  #5,d0
ROM:00071AF8                 bne.w   locret_71B02
ROM:00071AFC                 lea     loc_71B9A,a1
ROM:00071B00                 move.l  a1,(a6)
ROM:00071B02
ROM:00071B02 locret_71B02:
ROM:00071B02                 rts
ROM:00071B04
ROM:00071B04
ROM:00071B04 loc_71B04:
ROM:00071B04                 move.b  #$3C,$70(a6)
ROM:00071B0A                 lea     loc_71B10,a1
ROM:00071B0E                 move.l  a1,(a6)
ROM:00071B10
ROM:00071B10 loc_71B10:
ROM:00071B10                 jsr     loc_72BCE
ROM:00071B14                 jsr     loc_72BDE
ROM:00071B18                 subq.b  #1,$70(a6)
ROM:00071B1C                 bne.w   loc_71B26
ROM:00071B20                 lea     loc_71B56,a1
ROM:00071B24                 move.l  a1,(a6)
ROM:00071B26
ROM:00071B26 loc_71B26:
ROM:00071B26                 btst    #0,$70(a6)
ROM:00071B2C                 bne.w   loc_71B36
ROM:00071B30                 jsr     Animate
ROM:00071B36
ROM:00071B36 loc_71B36:
ROM:00071B36                 movea.l $C(a6),a1
ROM:00071B3A                 move.w  $86(a6),d1
ROM:00071B3E                 move.b  (a1,d1.w),d0
ROM:00071B42                 clr.b   (a1,d1.w)
ROM:00071B46                 cmpi.b  #5,d0
ROM:00071B4A                 bne.w   locret_71B54
ROM:00071B4E                 lea     loc_71B9A,a1
ROM:00071B52                 move.l  a1,(a6)
ROM:00071B54
ROM:00071B54 locret_71B54:
ROM:00071B54                 rts
ROM:00071B56
ROM:00071B56
ROM:00071B56 loc_71B56:
ROM:00071B56                 lea     (off_2BADB6).l,a0
ROM:00071B5C                 jsr     GetParamDifficulty
ROM:00071B62                 move.w  d0,$70(a6)
ROM:00071B66                 lea     loc_71B6C,a1
ROM:00071B6A                 move.l  a1,(a6)
ROM:00071B6C
ROM:00071B6C loc_71B6C:
ROM:00071B6C                 subq.w  #1,$70(a6)
ROM:00071B70                 bgt.w   loc_71B7A
ROM:00071B74                 lea     loc_71976,a1
ROM:00071B78                 move.l  a1,(a6)
ROM:00071B7A
ROM:00071B7A loc_71B7A:
ROM:00071B7A                 movea.l $C(a6),a1
ROM:00071B7E                 move.w  $86(a6),d1
ROM:00071B82                 move.b  (a1,d1.w),d0
ROM:00071B86                 clr.b   (a1,d1.w)
ROM:00071B8A                 cmpi.b  #5,d0
ROM:00071B8E                 bne.w   locret_71B98
ROM:00071B92                 lea     loc_716F2,a1
ROM:00071B96                 move.l  a1,(a6)
ROM:00071B98
ROM:00071B98 locret_71B98:
ROM:00071B98                 rts
ROM:00071B9A
ROM:00071B9A
ROM:00071B9A loc_71B9A:
ROM:00071B9A
ROM:00071B9A                 cmpi.b  #4,$8A(a6)
ROM:00071BA0                 bne.w   loc_71BB4
ROM:00071BA4                 lea     $7229C,a1
ROM:00071BA8                 jsr     (SpawnObj).l
ROM:00071BAE                 jsr     InitSamePositions
ROM:00071BB4
ROM:00071BB4 loc_71BB4:
ROM:00071BB4                 jsr     loc_72BCE
ROM:00071BB8                 jsr     loc_72BDE
ROM:00071BBC                 jsr     Animate
ROM:00071BC2                 move.w  #$D000,d0
ROM:00071BC6                 jsr     sub_28134
ROM:00071BCC                 andi.w  #$FFE3,$38(a6)
ROM:00071BD2                 ori.w   #$14,$38(a6)
ROM:00071BD8                 jsr     sub_4A0D4
ROM:00071BDE                 jsr     sub_4A166
ROM:00071BE4                 rts
ROM:00071BE6
ROM:00071BE6
ROM:00071BE6 loc_71BE6:
ROM:00071BE6                 lea     (off_2D9CBE).l,a0
ROM:00071BEC                 jsr     ChangeAnimation
ROM:00071BF2                 bra.w   loc_71C02
ROM:00071BF6
ROM:00071BF6
ROM:00071BF6 loc_71BF6:
ROM:00071BF6                 lea     (off_2D9D66).l,a0
ROM:00071BFC                 jsr     ChangeAnimation
ROM:00071C02
ROM:00071C02 loc_71C02:
ROM:00071C02                 movea.l $C(a6),a0
ROM:00071C06                 tst.b   $77(a0)
ROM:00071C0A                 beq.w   loc_71C16
ROM:00071C0E                 move.w  #$5D,d1
ROM:00071C12                 bra.w   loc_71C1A
ROM:00071C16
ROM:00071C16
ROM:00071C16 loc_71C16:
ROM:00071C16                 move.w  #$1E6,d1
ROM:00071C1A
ROM:00071C1A loc_71C1A:
ROM:00071C1A                 jsr     (sub_236E).l
ROM:00071C20                 bset    #4,$6B(a6)
ROM:00071C26                 move.w  #0,$84(a6)
ROM:00071C2C                 lea     loc_71C32,a1
ROM:00071C30                 move.l  a1,(a6)
ROM:00071C32
ROM:00071C32 loc_71C32:
ROM:00071C32                 jsr     loc_72BCE
ROM:00071C36                 move.w  $9A(a6),d0
ROM:00071C3A                 add.w   d0,$22(a6)
ROM:00071C3E                 move.w  $9C(a6),d0
ROM:00071C42                 add.w   d0,$24(a6)
ROM:00071C46                 jsr     Animate
ROM:00071C4C                 bcc.w   loc_71C56
ROM:00071C50                 lea     loc_71C84,a1
ROM:00071C54                 move.l  a1,(a6)
ROM:00071C56
ROM:00071C56 loc_71C56:
ROM:00071C56                 jsr     sub_5E45A
ROM:00071C5C                 bcc.w   loc_71C66
ROM:00071C60                 lea     loc_71DBA,a1
ROM:00071C64                 move.l  a1,(a6)
ROM:00071C66
ROM:00071C66 loc_71C66:
ROM:00071C66                 movea.l #$FFFFFFFF,a0
ROM:00071C6C                 lea     (unk_2D90C4).l,a0
ROM:00071C72                 jsr     CheckObjectOOB?
ROM:00071C78                 bcc.w   locret_71C82
ROM:00071C7C                 lea     loc_716F2,a1
ROM:00071C80                 move.l  a1,(a6)
ROM:00071C82
ROM:00071C82 locret_71C82:
ROM:00071C82                 rts
ROM:00071C84
ROM:00071C84
ROM:00071C84 loc_71C84:
ROM:00071C84                 lea     (unk_2BAE38).l,a0
ROM:00071C8A                 cmpi.b  #1,$20(a6)
ROM:00071C90                 bne.w   loc_71C9A
ROM:00071C94                 lea     (unk_2BAE98).l,a0
ROM:00071C9A
ROM:00071C9A loc_71C9A:
ROM:00071C9A                 move.b  #0,$3A(a6)
ROM:00071CA0                 move.b  $98(a6),d0
ROM:00071CA4                 andi.w  #$F,d0
ROM:00071CA8                 move.w  d0,d1
ROM:00071CAA                 add.w   d0,d0
ROM:00071CAC                 add.w   d1,d0
ROM:00071CAE                 add.w   d0,d0
ROM:00071CB0                 move.w  2(a0,d0.w),$2E(a6)
ROM:00071CB6                 move.w  4(a0,d0.w),$2A(a6)
ROM:00071CBC                 move.w  (a0,d0.w),d0
ROM:00071CC0                 jsr     sub_72782
ROM:00071CC4                 move.w  d0,$28(a6)
ROM:00071CC8                 jsr     sub_5E5E0
ROM:00071CCE                 bcc.w   loc_71CD6
ROM:00071CD2                 neg.w   $28(a6)
ROM:00071CD6
ROM:00071CD6 loc_71CD6:
ROM:00071CD6                 move.w  #$32,$66(a6)
ROM:00071CDC                 move.l  #off_2D8A84,$48(a6)
ROM:00071CE4                 lea     (unk_2D9E36).l,a0
ROM:00071CEA                 jsr     ChangeAnimation
ROM:00071CF0                 lea     loc_71CF6,a1
ROM:00071CF4                 move.l  a1,(a6)
ROM:00071CF6
ROM:00071CF6 loc_71CF6:
ROM:00071CF6                 cmpi.w  #0,$2A(a6)
ROM:00071CFC                 bgt.w   loc_71D0C
ROM:00071D00                 move.w  #$D000,$38(a6)
ROM:00071D06                 lea     loc_71D0C,a1
ROM:00071D0A                 move.l  a1,(a6)
ROM:00071D0C
ROM:00071D0C loc_71D0C:
ROM:00071D0C
ROM:00071D0C                 jsr     sub_27D50
ROM:00071D12                 bcc.w   loc_71D1C
ROM:00071D16                 lea     loc_71DBA,a1
ROM:00071D1A                 move.l  a1,(a6)
ROM:00071D1C
ROM:00071D1C loc_71D1C:
ROM:00071D1C                 cmpi.w  #0,$2A(a6)
ROM:00071D22                 blt.w   loc_71D30
ROM:00071D26                 movea.l $C(a6),a0
ROM:00071D2A                 move.w  $38(a0),$38(a6)
ROM:00071D30
ROM:00071D30 loc_71D30:
ROM:00071D30                 move.w  $28(a6),d0
ROM:00071D34                 move.w  $2A(a6),d1
ROM:00071D38                 asr.w   #4,d0
ROM:00071D3A                 asr.w   #4,d1
ROM:00071D3C                 jsr     sub_5E018
ROM:00071D42                 lsr.w   #3,d0
ROM:00071D44                 move.w  d0,$34(a6)
ROM:00071D48                 jsr     Animate
ROM:00071D4E                 jsr     loc_283D8
ROM:00071D54                 btst    #1,$13(a6)
ROM:00071D5A                 beq.w   loc_71D64
ROM:00071D5E                 lea     $72364,a1
ROM:00071D62                 move.l  a1,(a6)
ROM:00071D64
ROM:00071D64 loc_71D64:
ROM:00071D64                 jsr     CheckShot?
ROM:00071D6A                 lea     (SoundCodeGunFire).l,a0
ROM:00071D70                 jsr     SoundRelated_0
ROM:00071D76                 bclr    #3,$13(a6)
ROM:00071D7C                 jsr     CheckIfDead
ROM:00071D82                 bcc.w   loc_71D8C
ROM:00071D86                 lea     loc_71DBA,a1
ROM:00071D8A                 move.l  a1,(a6)
ROM:00071D8C
ROM:00071D8C loc_71D8C:
ROM:00071D8C                 jsr     sub_5E45A
ROM:00071D92                 bcc.w   loc_71D9C
ROM:00071D96                 lea     loc_71DBA,a1
ROM:00071D9A                 move.l  a1,(a6)
ROM:00071D9C
ROM:00071D9C loc_71D9C:
ROM:00071D9C                 movea.l #$FFFFFFFF,a0
ROM:00071DA2                 lea     (unk_2D90C4).l,a0
ROM:00071DA8                 jsr     CheckObjectOOB?
ROM:00071DAE                 bcc.w   locret_71DB8
ROM:00071DB2                 lea     loc_716F2,a1
ROM:00071DB6                 move.l  a1,(a6)
ROM:00071DB8
ROM:00071DB8 locret_71DB8:
ROM:00071DB8                 rts
ROM:00071DBA
ROM:00071DBA
ROM:00071DBA loc_71DBA:
ROM:00071DBA
ROM:00071DBA                 move.w  #$1022,d0
ROM:00071DBE                 jsr     (PlaySFX).l
ROM:00071DC4                 bra.w   loc_72364
ROM:00071DC8
ROM:00071DC8
ROM:00071DC8 loc_71DC8:
ROM:00071DC8
ROM:00071DC8                 movea.l $C(a6),a0
ROM:00071DCC                 tst.b   $77(a0)
ROM:00071DD0                 beq.w   loc_71DDC
ROM:00071DD4                 move.w  #$5D,d1
ROM:00071DD8                 bra.w   loc_71DE0
ROM:00071DDC
ROM:00071DDC
ROM:00071DDC loc_71DDC:
ROM:00071DDC                 move.w  #$1E6,d1
ROM:00071DE0
ROM:00071DE0 loc_71DE0:
ROM:00071DE0                 jsr     (sub_236E).l
ROM:00071DE6                 move.w  #0,$84(a6)
ROM:00071DEC                 lea     (off_2D9BB8).l,a0
ROM:00071DF2                 jsr     ChangeAnimation
ROM:00071DF8
ROM:00071DF8 loc_71DF8:
ROM:00071DF8                 lea     loc_71DFE,a1
ROM:00071DFC                 move.l  a1,(a6)
ROM:00071DFE
ROM:00071DFE loc_71DFE:
ROM:00071DFE                 jsr     loc_72BCE
ROM:00071E02                 move.w  $9A(a6),d0
ROM:00071E06                 add.w   d0,$22(a6)
ROM:00071E0A                 move.w  $9C(a6),d0
ROM:00071E0E                 add.w   d0,$24(a6)
ROM:00071E12                 jsr     Animate
ROM:00071E18                 bcc.w   loc_71E22
ROM:00071E1C                 lea     loc_716F2,a1
ROM:00071E20                 move.l  a1,(a6)
ROM:00071E22
ROM:00071E22 loc_71E22:
ROM:00071E22                 jsr     sub_5E45A
ROM:00071E28                 bcc.w   loc_71E32
ROM:00071E2C                 lea     loc_716F2,a1
ROM:00071E30                 move.l  a1,(a6)
ROM:00071E32
ROM:00071E32 loc_71E32:
ROM:00071E32                 movea.l #$FFFFFFFF,a0
ROM:00071E38                 lea     (unk_2D90C4).l,a0
ROM:00071E3E                 jsr     CheckObjectOOB?
ROM:00071E44                 bcc.w   locret_71E4E
ROM:00071E48                 lea     loc_716F2,a1
ROM:00071E4C                 move.l  a1,(a6)
ROM:00071E4E
ROM:00071E4E locret_71E4E:
ROM:00071E4E                 rts
ROM:00071E50
ROM:00071E50
ROM:00071E50 loc_71E50:
ROM:00071E50                 move.w  #8,d1
ROM:00071E54                 jsr     (sub_236E).l
ROM:00071E5A                 lea     (off_2C4022).l,a0
ROM:00071E60                 jsr     ChangeAnimation
ROM:00071E66                 eori.b  #1,$3A(a6)
ROM:00071E6C                 move.w  #$4000,d0
ROM:00071E70                 jsr     sub_28134
ROM:00071E76                 andi.w  #$FFE3,$38(a6)
ROM:00071E7C                 ori.w   #$1C,$38(a6)
ROM:00071E82                 lea     loc_71E88,a1
ROM:00071E86                 move.l  a1,(a6)
ROM:00071E88
ROM:00071E88 loc_71E88:
ROM:00071E88                 jsr     ObjectRelated
ROM:00071E8E                 jsr     Animate
ROM:00071E94                 bcc.w   loc_71E9E
ROM:00071E98                 lea     loc_716F2,a1
ROM:00071E9C                 move.l  a1,(a6)
ROM:00071E9E
ROM:00071E9E loc_71E9E:
ROM:00071E9E                 movea.l #$FFFFFFFF,a0
ROM:00071EA4                 jsr     CheckObjectOOB?
ROM:00071EAA                 bcc.w   locret_71EB4
ROM:00071EAE                 lea     loc_716F2,a1
ROM:00071EB2                 move.l  a1,(a6)
ROM:00071EB4
ROM:00071EB4 locret_71EB4:
ROM:00071EB4                 rts
ROM:00071EB6
ROM:00071EB6
ROM:00071EB6 loc_71EB6:
ROM:00071EB6                 move.w  #$5E,d1
ROM:00071EBA                 jsr     (sub_236E).l
ROM:00071EC0                 lea     (off_2D997A).l,a0
ROM:00071EC6                 jsr     ChangeAnimation
ROM:00071ECC                 move.w  #$FFEA,d0
ROM:00071ED0                 jsr     sub_72782
ROM:00071ED4                 move.w  d0,$9A(a6)
ROM:00071ED8                 move.w  #$28,$9C(a6)
ROM:00071EDE                 clr.w   $84(a6)
ROM:00071EE2                 bra.w   loc_71DF8
ROM:00071EE6
ROM:00071EE6
ROM:00071EE6 loc_71EE6:
ROM:00071EE6                 move.w  #1,$84(a6)
ROM:00071EEC                 move.w  #$1CF,d1
ROM:00071EF0                 jsr     (sub_236E).l
ROM:00071EF6                 lea     (unk_2D9A1C).l,a0
ROM:00071EFC                 jsr     ChangeAnimation
ROM:00071F02                 lea     loc_71F08,a1
ROM:00071F06                 move.l  a1,(a6)
ROM:00071F08
ROM:00071F08 loc_71F08:
ROM:00071F08                 jsr     loc_72BCE
ROM:00071F0C                 move.w  #$FFB0,d0
ROM:00071F10                 jsr     sub_72782
ROM:00071F14                 add.w   d0,$22(a6)
ROM:00071F18                 addi.w  #$38,$24(a6)
ROM:00071F1E                 jsr     Animate
ROM:00071F24                 bcc.w   loc_71F2E
ROM:00071F28                 lea     loc_71F72,a1
ROM:00071F2C                 move.l  a1,(a6)
ROM:00071F2E
ROM:00071F2E loc_71F2E:
ROM:00071F2E                 jsr     loc_283D8
ROM:00071F34                 btst    #1,$13(a6)
ROM:00071F3A                 beq.w   loc_71F44
ROM:00071F3E                 lea     loc_7233A,a1
ROM:00071F42                 move.l  a1,(a6)
ROM:00071F44
ROM:00071F44 loc_71F44:
ROM:00071F44                 jsr     sub_5E45A
ROM:00071F4A                 bcc.w   loc_71F54
ROM:00071F4E                 lea     loc_7233A,a1
ROM:00071F52                 move.l  a1,(a6)
ROM:00071F54
ROM:00071F54 loc_71F54:
ROM:00071F54                 movea.l #$FFFFFFFF,a0
ROM:00071F5A                 lea     (unk_2D90BC).l,a0
ROM:00071F60                 jsr     CheckObjectOOB?
ROM:00071F66                 bcc.w   locret_71F70
ROM:00071F6A                 lea     loc_716F2,a1
ROM:00071F6E                 move.l  a1,(a6)
ROM:00071F70
ROM:00071F70 locret_71F70:
ROM:00071F70                 rts
ROM:00071F72
ROM:00071F72
ROM:00071F72 loc_71F72:
ROM:00071F72                 bset    #4,$6B(a6)
ROM:00071F78                 lea     (off_2BAA28).l,a0
ROM:00071F7E                 jsr     GetParamDifficulty
ROM:00071F84                 neg.w   d0
ROM:00071F86                 jsr     sub_72782
ROM:00071F8A                 move.w  d0,$28(a6)
ROM:00071F8E                 move.w  #$D000,d0
ROM:00071F92                 jsr     sub_28134
ROM:00071F98                 andi.w  #$FFE3,$38(a6)
ROM:00071F9E                 ori.w   #$1C,$38(a6)
ROM:00071FA4                 move.w  #$1CF,d1
ROM:00071FA8                 jsr     (sub_236E).l
ROM:00071FAE                 lea     (unk_2D9A9C).l,a0
ROM:00071FB4                 jsr     ChangeAnimation
ROM:00071FBA                 lea     loc_71FC0,a1
ROM:00071FBE                 move.l  a1,(a6)
ROM:00071FC0
ROM:00071FC0 loc_71FC0:
ROM:00071FC0                 jsr     PositionRelated
ROM:00071FC6                 bcc.w   loc_71FD0
ROM:00071FCA                 lea     loc_7231E,a1
ROM:00071FCE                 move.l  a1,(a6)
ROM:00071FD0
ROM:00071FD0 loc_71FD0:
ROM:00071FD0                 jsr     Animate
ROM:00071FD6                 jsr     loc_283D8
ROM:00071FDC                 btst    #1,$13(a6)
ROM:00071FE2                 beq.w   loc_71FEC
ROM:00071FE6                 lea     loc_7231E,a1
ROM:00071FEA                 move.l  a1,(a6)
ROM:00071FEC
ROM:00071FEC loc_71FEC:
ROM:00071FEC                 jsr     sub_5E45A
ROM:00071FF2                 bcc.w   loc_71FFC
ROM:00071FF6                 lea     loc_7231E,a1
ROM:00071FFA                 move.l  a1,(a6)
ROM:00071FFC
ROM:00071FFC loc_71FFC:
ROM:00071FFC                 movea.l #$FFFFFFFF,a0
ROM:00072002                 lea     (unk_2D90BC).l,a0
ROM:00072008                 jsr     CheckObjectOOB?
ROM:0007200E                 bcc.w   locret_72018
ROM:00072012                 lea     loc_716F2,a1
ROM:00072016                 move.l  a1,(a6)
ROM:00072018
ROM:00072018 locret_72018:
ROM:00072018                 rts
ROM:0007201A
ROM:0007201A
ROM:0007201A loc_7201A:
ROM:0007201A                 move.w  #1,$84(a6)
ROM:00072020                 move.w  #$1CF,d1
ROM:00072024                 jsr     (sub_236E).l
ROM:0007202A                 lea     (unk_2D9AEA).l,a0
ROM:00072030                 jsr     ChangeAnimation
ROM:00072036                 lea     loc_7203C,a1
ROM:0007203A                 move.l  a1,(a6)
ROM:0007203C
ROM:0007203C loc_7203C:
ROM:0007203C                 jsr     loc_72BCE
ROM:00072040                 move.w  #$FFC4,d0
ROM:00072044                 jsr     sub_72782
ROM:00072048                 add.w   d0,$22(a6)
ROM:0007204C                 addi.w  #$28,$24(a6)
ROM:00072052                 jsr     Animate
ROM:00072058                 bcc.w   loc_72062
ROM:0007205C                 lea     loc_720A6,a1
ROM:00072060                 move.l  a1,(a6)
ROM:00072062
ROM:00072062 loc_72062:
ROM:00072062                 jsr     loc_283D8
ROM:00072068                 btst    #1,$13(a6)
ROM:0007206E                 beq.w   loc_72078
ROM:00072072                 lea     loc_7233A,a1
ROM:00072076                 move.l  a1,(a6)
ROM:00072078
ROM:00072078 loc_72078:
ROM:00072078                 jsr     sub_5E45A
ROM:0007207E                 bcc.w   loc_72088
ROM:00072082                 lea     loc_7233A,a1
ROM:00072086                 move.l  a1,(a6)
ROM:00072088
ROM:00072088 loc_72088:
ROM:00072088                 movea.l #$FFFFFFFF,a0
ROM:0007208E                 lea     (unk_2D90BC).l,a0
ROM:00072094                 jsr     CheckObjectOOB?
ROM:0007209A                 bcc.w   locret_720A4
ROM:0007209E                 lea     loc_716F2,a1
ROM:000720A2                 move.l  a1,(a6)
ROM:000720A4
ROM:000720A4 locret_720A4:
ROM:000720A4                 rts
ROM:000720A6
ROM:000720A6
ROM:000720A6 loc_720A6:
ROM:000720A6                 bset    #4,$6B(a6)
ROM:000720AC                 lea     (off_2BAAAA).l,a0
ROM:000720B2                 jsr     GetParamDifficulty
ROM:000720B8                 neg.w   d0
ROM:000720BA                 jsr     sub_72782
ROM:000720BE                 move.w  d0,$28(a6)
ROM:000720C2                 move.w  #$D000,d0
ROM:000720C6                 jsr     sub_28134
ROM:000720CC                 andi.w  #$FFE3,$38(a6)
ROM:000720D2                 ori.w   #$1C,$38(a6)
ROM:000720D8                 lea     (unk_2D9B6A).l,a0
ROM:000720DE                 jsr     ChangeAnimation
ROM:000720E4                 lea     loc_720EA,a1
ROM:000720E8                 move.l  a1,(a6)
ROM:000720EA
ROM:000720EA loc_720EA:
ROM:000720EA                 jsr     PositionRelated
ROM:000720F0                 bcc.w   loc_720FA
ROM:000720F4                 lea     loc_72326,a1
ROM:000720F8                 move.l  a1,(a6)
ROM:000720FA
ROM:000720FA loc_720FA:
ROM:000720FA                 jsr     Animate
ROM:00072100                 jsr     loc_283D8
ROM:00072106                 btst    #1,$13(a6)
ROM:0007210C                 beq.w   loc_72116
ROM:00072110                 lea     loc_72326,a1
ROM:00072114                 move.l  a1,(a6)
ROM:00072116
ROM:00072116 loc_72116:
ROM:00072116                 jsr     sub_5E45A
ROM:0007211C                 bcc.w   loc_72126
ROM:00072120                 lea     loc_72326,a1
ROM:00072124                 move.l  a1,(a6)
ROM:00072126
ROM:00072126 loc_72126:
ROM:00072126                 movea.l #$FFFFFFFF,a0
ROM:0007212C                 lea     (unk_2D90BC).l,a0
ROM:00072132                 jsr     CheckObjectOOB?
ROM:00072138                 bcc.w   locret_72142
ROM:0007213C                 lea     loc_716F2,a1
ROM:00072140                 move.l  a1,(a6)
ROM:00072142
ROM:00072142 locret_72142:
ROM:00072142                 rts
ROM:00072144
ROM:00072144
ROM:00072144 loc_72144:
ROM:00072144                 move.w  #$39,d1
ROM:00072148                 jsr     (sub_236E).l
ROM:0007214E                 move.w  #$D000,d0
ROM:00072152                 jsr     sub_28134
ROM:00072158                 andi.w  #$FFE3,$38(a6)
ROM:0007215E                 ori.w   #$14,$38(a6)
ROM:00072164                 lea     (unk_2DA526).l,a0
ROM:0007216A                 jsr     ChangeAnimation
ROM:00072170                 lea     loc_72176,a1
ROM:00072174                 move.l  a1,(a6)
ROM:00072176
ROM:00072176 loc_72176:
ROM:00072176                 movea.l $C(a6),a0
ROM:0007217A                 cmpi.b  #5,$8A(a0)
ROM:00072180                 beq.w   loc_7233A
ROM:00072184                 move.w  $22(a0),d0
ROM:00072188                 add.w   $90(a6),d0
ROM:0007218C                 move.w  d0,$22(a6)
ROM:00072190                 move.w  $24(a0),d0
ROM:00072194                 add.w   $92(a6),d0
ROM:00072198                 move.w  d0,$24(a6)
ROM:0007219C                 jsr     Animate
ROM:000721A2                 bcc.w   loc_721AC
ROM:000721A6                 lea     loc_721EA,a1
ROM:000721AA                 move.l  a1,(a6)
ROM:000721AC
ROM:000721AC loc_721AC:
ROM:000721AC                 jsr     loc_283D8
ROM:000721B2                 btst    #1,$13(a6)
ROM:000721B8                 beq.w   loc_721C2
ROM:000721BC                 lea     loc_7233A,a1
ROM:000721C0                 move.l  a1,(a6)
ROM:000721C2
ROM:000721C2 loc_721C2:
ROM:000721C2                 jsr     sub_5E45A
ROM:000721C8                 bcc.w   loc_721D2
ROM:000721CC                 lea     loc_7233A,a1
ROM:000721D0                 move.l  a1,(a6)
ROM:000721D2
ROM:000721D2 loc_721D2:
ROM:000721D2                 movea.l #$FFFFFFFF,a0
ROM:000721D8                 jsr     CheckObjectOOB?
ROM:000721DE                 bcc.w   locret_721E8
ROM:000721E2                 lea     loc_716F2,a1
ROM:000721E6                 move.l  a1,(a6)
ROM:000721E8
ROM:000721E8 locret_721E8:
ROM:000721E8                 rts
ROM:000721EA
ROM:000721EA
ROM:000721EA loc_721EA:
ROM:000721EA                 lea     (off_2BACB2).l,a0
ROM:000721F0                 jsr     GetParamDifficulty
ROM:000721F6                 jsr     sub_72782
ROM:000721FA                 move.w  d0,$28(a6)
ROM:000721FE                 lea     (off_2BAD34).l,a0
ROM:00072204                 jsr     GetParamDifficulty
ROM:0007220A                 jsr     sub_72782
ROM:0007220E                 move.w  d0,$2C(a6)
ROM:00072212                 lea     (unk_2DA58A).l,a0
ROM:00072218                 jsr     ChangeAnimation
ROM:0007221E                 lea     loc_72224,a1
ROM:00072222                 move.l  a1,(a6)
ROM:00072224
ROM:00072224 loc_72224:
ROM:00072224                 jsr     PositionRelated
ROM:0007222A                 bcc.w   loc_72234
ROM:0007222E                 lea     loc_7233A,a1
ROM:00072232                 move.l  a1,(a6)
ROM:00072234
ROM:00072234 loc_72234:
ROM:00072234                 jsr     Animate
ROM:0007223A                 jsr     loc_283D8
ROM:00072240                 btst    #1,$13(a6)
ROM:00072246                 beq.w   loc_72250
ROM:0007224A                 lea     loc_7233A,a1
ROM:0007224E                 move.l  a1,(a6)
ROM:00072250
ROM:00072250 loc_72250:
ROM:00072250                 jsr     sub_5E45A
ROM:00072256                 bcc.w   loc_72260
ROM:0007225A                 lea     loc_7233A,a1
ROM:0007225E                 move.l  a1,(a6)
ROM:00072260
ROM:00072260 loc_72260:
ROM:00072260                 movea.l #$FFFFFFFF,a0
ROM:00072266                 jsr     CheckObjectOOB?
ROM:0007226C                 bcc.w   locret_72276
ROM:00072270                 lea     loc_716F2,a1
ROM:00072274                 move.l  a1,(a6)
ROM:00072276
ROM:00072276 locret_72276:
ROM:00072276                 rts
ROM:00072278
ROM:00072278                 move.w  #$FFBC,d0
ROM:0007227C                 jsr     XSpeedRelated
ROM:00072282                 move.w  d0,$28(a6)
ROM:00072286                 move.w  #$32A,$2A(a6)
ROM:0007228C                 move.w  #$FFCA,$2E(a6)
ROM:00072292                 move.w  #0,$2C(a6)
ROM:00072298                 bra.w   loc_722BC
ROM:0007229C
ROM:0007229C                 move.w  #$111,d0
ROM:000722A0                 jsr     XSpeedRelated
ROM:000722A6                 move.w  d0,$28(a6)
ROM:000722AA                 move.w  #$87F,$2A(a6)
ROM:000722B0                 move.w  #$FF6F,$2E(a6)
ROM:000722B6                 move.w  #0,$2C(a6)
ROM:000722BC
ROM:000722BC loc_722BC:
ROM:000722BC                 move.w  #$38,d1
ROM:000722C0                 jsr     (sub_236E).l
ROM:000722C6                 lea     (unk_29CA36).l,a0
ROM:000722CC                 jsr     ChangeAnimation
ROM:000722D2                 lea     loc_722D8,a1
ROM:000722D6                 move.l  a1,(a6)
ROM:000722D8
ROM:000722D8 loc_722D8:
ROM:000722D8                 jsr     sub_27BC8
ROM:000722DE                 bcc.w   loc_722E8
ROM:000722E2                 lea     loc_716F2,a1
ROM:000722E6                 move.l  a1,(a6)
ROM:000722E8
ROM:000722E8 loc_722E8:
ROM:000722E8                 jsr     Animate
ROM:000722EE                 movea.l #$FFFFFFFF,a0
ROM:000722F4                 jsr     CheckObjectOOB?
ROM:000722FA                 bcc.w   locret_72304
ROM:000722FE                 lea     loc_716F2,a1
ROM:00072302                 move.l  a1,(a6)
ROM:00072304
ROM:00072304 locret_72304:
ROM:00072304                 rts
ROM:00072306
ROM:00072306                 jsr     GetRand2?
ROM:0007230C                 andi.w  #3,d0
ROM:00072310                 lsl.w   #2,d0
ROM:00072312                 lea     (off_2D9322).l,a0
ROM:00072318                 movea.l (a0,d0.w),a1
ROM:0007231C                 jmp     (a1)
ROM:0007231E
ROM:0007231E
ROM:0007231E loc_7231E:
ROM:0007231E
ROM:0007231E                 move.w  #$FFD8,d0
ROM:00072322                 bra.w   loc_7232A
ROM:00072326
ROM:00072326
ROM:00072326 loc_72326:
ROM:00072326
ROM:00072326                 move.w  #$FFD0,d0
ROM:0007232A
ROM:0007232A loc_7232A:
ROM:0007232A                 btst    #0,$3A(a6)
ROM:00072330                 beq.w   loc_72336
ROM:00072334                 neg.w   d0
ROM:00072336
ROM:00072336 loc_72336:
ROM:00072336                 add.w   d0,$22(a6)
ROM:0007233A
ROM:0007233A loc_7233A:
ROM:0007233A
ROM:0007233A                 jsr     ProcessObj?List
ROM:00072340                 move.w  #$4000,d0
ROM:00072344                 jsr     sub_28134
ROM:0007234A                 andi.w  #$FFE3,$38(a6)
ROM:00072350                 ori.w   #0,$38(a6)
ROM:00072356                 move.l  #$FFFFFFFF,$48(a6)
ROM:0007235E                 jmp     loc_77F6A
ROM:00072364
ROM:00072364
ROM:00072364 loc_72364:
ROM:00072364                 move.w  #$4000,d0
ROM:00072368                 jsr     sub_28134
ROM:0007236E                 andi.w  #$FFE3,$38(a6)
ROM:00072374                 ori.w   #0,$38(a6)
ROM:0007237A                 move.l  #$FFFFFFFF,$48(a6)
ROM:00072382                 jmp     loc_77FD6
ROM:00072388
ROM:00072388
ROM:00072388 loc_72388:
ROM:00072388
ROM:00072388                 move.w  #$C000,d0
ROM:0007238C                 jsr     sub_28134
ROM:00072392                 andi.w  #$FFE3,$38(a6)
ROM:00072398                 ori.w   #$14,$38(a6)
ROM:0007239E                 move.w  #$148,d1
ROM:000723A2                 jsr     (sub_236E).l
ROM:000723A8                 lea     (off_2C3F0A).l,a0
ROM:000723AE                 jsr     ChangeAnimation
ROM:000723B4                 lea     loc_723BA,a1
ROM:000723B8                 move.l  a1,(a6)
ROM:000723BA
ROM:000723BA loc_723BA:
ROM:000723BA                 jsr     ObjectRelated
ROM:000723C0                 jsr     Animate
ROM:000723C6                 bcc.w   locret_723D0
ROM:000723CA                 lea     loc_716F2,a1
ROM:000723CE                 move.l  a1,(a6)
ROM:000723D0
ROM:000723D0 locret_723D0:
ROM:000723D0                 rts
ROM:000723D2
ROM:000723D2
ROM:000723D2 loc_723D2:
ROM:000723D2
ROM:000723D2                 clr.b   $9A(a6)
ROM:000723D6                 bra.w   loc_723E0
ROM:000723DA
ROM:000723DA
ROM:000723DA loc_723DA:
ROM:000723DA                 move.b  #1,$9A(a6)
ROM:000723E0
ROM:000723E0 loc_723E0:
ROM:000723E0                 movea.l $C(a6),a0
ROM:000723E4                 move.w  $66(a0),d0
ROM:000723E8                 lsr.w   #1,d0
ROM:000723EA                 move.w  d0,$66(a6)
ROM:000723EE                 lea     (unk_2DA750).l,a0
ROM:000723F4                 jsr     ChangeAnimation
ROM:000723FA                 jsr     Animate
ROM:00072400                 lea     loc_72406,a1
ROM:00072404                 move.l  a1,(a6)
ROM:00072406
ROM:00072406 loc_72406:
ROM:00072406                 jsr     sub_724DC
ROM:0007240A                 bgt.w   loc_72414
ROM:0007240E                 lea     loc_72436,a1
ROM:00072412                 move.l  a1,(a6)
ROM:00072414
ROM:00072414 loc_72414:
ROM:00072414                 btst    #0,$13(a6)
ROM:0007241A                 beq.w   loc_72424
ROM:0007241E                 lea     loc_724D4,a1
ROM:00072422                 move.l  a1,(a6)
ROM:00072424
ROM:00072424 loc_72424:
ROM:00072424                 jsr     sub_5E45A
ROM:0007242A                 bcc.w   locret_72434
ROM:0007242E                 lea     loc_724D4,a1
ROM:00072432                 move.l  a1,(a6)
ROM:00072434
ROM:00072434 locret_72434:
ROM:00072434                 rts
ROM:00072436
ROM:00072436
ROM:00072436 loc_72436:
ROM:00072436                 move.w  $66(a6),d0
ROM:0007243A                 lsr.w   #1,d0
ROM:0007243C                 move.w  d0,$66(a6)
ROM:00072440                 lea     loc_72446,a1
ROM:00072444                 move.l  a1,(a6)
ROM:00072446
ROM:00072446 loc_72446:
ROM:00072446                 jsr     sub_724DC
ROM:0007244A                 bgt.w   loc_72454
ROM:0007244E                 lea     loc_7248A,a1
ROM:00072452                 move.l  a1,(a6)
ROM:00072454
ROM:00072454 loc_72454:
ROM:00072454                 addq.b  #1,$70(a6)
ROM:00072458                 move.b  $70(a6),d0
ROM:0007245C                 andi.b  #7,d0
ROM:00072460                 bne.w   loc_72468
ROM:00072464                 jsr     loc_72554
ROM:00072468
ROM:00072468 loc_72468:
ROM:00072468                 btst    #0,$13(a6)
ROM:0007246E                 beq.w   loc_72478
ROM:00072472                 lea     loc_724D4,a1
ROM:00072476                 move.l  a1,(a6)
ROM:00072478
ROM:00072478 loc_72478:
ROM:00072478                 jsr     sub_5E45A
ROM:0007247E                 bcc.w   locret_72488
ROM:00072482                 lea     loc_724D4,a1
ROM:00072486                 move.l  a1,(a6)
ROM:00072488
ROM:00072488 locret_72488:
ROM:00072488                 rts
ROM:0007248A
ROM:0007248A
ROM:0007248A loc_7248A:
ROM:0007248A                 jsr     sub_724DC
ROM:0007248E                 addq.b  #1,$70(a6)
ROM:00072492                 move.b  $70(a6),d0
ROM:00072496                 andi.b  #$F,d0
ROM:0007249A                 bne.w   loc_724A6
ROM:0007249E                 jsr     sub_72540
ROM:000724A2                 bra.w   loc_724B2
ROM:000724A6
ROM:000724A6
ROM:000724A6 loc_724A6:
ROM:000724A6                 andi.b  #3,d0
ROM:000724AA                 bne.w   loc_724B2
ROM:000724AE                 jsr     loc_72554
ROM:000724B2
ROM:000724B2 loc_724B2:
ROM:000724B2
ROM:000724B2                 btst    #0,$13(a6)
ROM:000724B8                 beq.w   loc_724C2
ROM:000724BC                 lea     loc_724D4,a1
ROM:000724C0                 move.l  a1,(a6)
ROM:000724C2
ROM:000724C2 loc_724C2:
ROM:000724C2                 jsr     sub_5E45A
ROM:000724C8                 bcc.w   locret_724D2
ROM:000724CC                 lea     loc_724D4,a1
ROM:000724D0                 move.l  a1,(a6)
ROM:000724D2
ROM:000724D2 locret_724D2:
ROM:000724D2                 rts
ROM:000724D4
ROM:000724D4
ROM:000724D4 loc_724D4:
ROM:000724D4
ROM:000724D4                 jmp     (SetDying).l
ROM:000724DA
ROM:000724DA                 rts
ROM:000724DC
ROM:000724DC
ROM:000724DC
ROM:000724DC
