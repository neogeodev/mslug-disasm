ROM:00035590 ProcMarcoWalkLeft:
ROM:00035590                 jsr     sub_32FF2
ROM:00035594                 jsr     sub_32D32
ROM:00035598                 bcc.w   loc_355A2
ROM:0003559C                 lea     loc_345B8,a1
ROM:000355A0                 move.l  a1,(a6)
ROM:000355A2
ROM:000355A2 loc_355A2:
ROM:000355A2                 move.w  #$FD00,$28(a6)
ROM:000355A8                 jsr     sub_27A92
ROM:000355AE                 jsr     sub_32AA8
ROM:000355B2                 bcc.w   loc_35622
ROM:000355B6                 move.w  #0,$7C(a6)
ROM:000355BC                 move.w  #$FFFF,$7E(a6)
ROM:000355C2                 bclr    #2,$8C(a6)
ROM:000355C8                 bclr    #1,$8C(a6)
ROM:000355CE                 bclr    #3,$8C(a6)
ROM:000355D4                 cmpi.b  #$13,$70(a6)
ROM:000355DA                 bcs.w   loc_355FE
ROM:000355DE                 cmpi.b  #$24,$70(a6)
ROM:000355E4                 bcc.w   loc_355FE
ROM:000355E8                 move.b  #$12,$70(a6)
ROM:000355EE                 lea     ($279926).l,a0
ROM:000355F4                 move.l  off_279922-unk_279926(a0),$74(a6)
ROM:000355FA                 bra.w   loc_35622
ROM:000355FE
ROM:000355FE
ROM:000355FE loc_355FE:
ROM:000355FE
ROM:000355FE                 move.b  #$12,$70(a6)
ROM:00035604                 lea     ($279926).l,a0
ROM:0003560A                 move.l  off_279922-unk_279926(a0),$74(a6)
ROM:00035610                 move.b  #$FF,$21(a6)
ROM:00035616                 lea     (unk_279926).l,a0
ROM:0003561C                 jsr     ChangeAnimation
ROM:00035622
ROM:00035622 loc_35622:
ROM:00035622
ROM:00035622                 cmpi.b  #$12,$70(a6)
ROM:00035628                 bne.w   loc_356DE
ROM:0003562C                 cmpi.b  #4,$78(a6)
ROM:00035632                 bne.w   loc_3568C
ROM:00035636                 cmpi.w  #1,$72(a6)
ROM:0003563C                 beq.w   loc_35688
ROM:00035640                 move.w  #1,$72(a6)
ROM:00035646                 jsr     sub_2ABCC
ROM:0003564C                 bcs.w   loc_35666
ROM:00035650                 move.b  #$12,$70(a6)
ROM:00035656                 lea     ($27991C).l,a0
ROM:0003565C                 move.l  off_279918-unk_27991C(a0),$74(a6)
ROM:00035662                 bra.w   loc_35678
ROM:00035666
ROM:00035666
ROM:00035666 loc_35666:
ROM:00035666                 move.b  #$12,$70(a6)
ROM:0003566C                 lea     ($27991C).l,a0
ROM:00035672                 move.l  off_279918-unk_27991C(a0),$74(a6)
ROM:00035678
ROM:00035678 loc_35678:
ROM:00035678                 cmpi.b  #$14,$79(a6)
ROM:0003567E                 bne.w   loc_35688
ROM:00035682                 bset    #5,$69(a6)
ROM:00035688
ROM:00035688 loc_35688:
ROM:00035688
ROM:00035688                 bra.w   loc_356DE
ROM:0003568C
ROM:0003568C
ROM:0003568C loc_3568C:
ROM:0003568C                 cmpi.w  #0,$72(a6)
ROM:00035692                 beq.w   loc_356DE
ROM:00035696                 move.w  #0,$72(a6)
ROM:0003569C                 jsr     sub_2ABCC
ROM:000356A2                 bcs.w   loc_356BC
ROM:000356A6                 move.b  #$12,$70(a6)
ROM:000356AC                 lea     ($279926).l,a0
ROM:000356B2                 move.l  off_279922-unk_279926(a0),$74(a6)
ROM:000356B8                 bra.w   loc_356CE
ROM:000356BC
ROM:000356BC
ROM:000356BC loc_356BC:
ROM:000356BC                 move.b  #$12,$70(a6)
ROM:000356C2                 lea     ($279926).l,a0
ROM:000356C8                 move.l  off_279922-unk_279926(a0),$74(a6)
ROM:000356CE
ROM:000356CE loc_356CE:
ROM:000356CE                 cmpi.b  #$41,$79(a6)
ROM:000356D4                 bne.w   loc_356DE
ROM:000356D8                 bset    #5,$69(a6)
ROM:000356DE
ROM:000356DE loc_356DE:
ROM:000356DE
ROM:000356DE                 btst    #2,$8C(a6)
ROM:000356E4                 beq.w   loc_3571C
ROM:000356E8                 jsr     sub_32E42
ROM:000356EC                 bcs.w   loc_356F6
ROM:000356F0                 lea     loc_34704,a1
ROM:000356F4                 move.l  a1,(a6)
ROM:000356F6
ROM:000356F6 loc_356F6:
ROM:000356F6                 jsr     sub_32E3C
ROM:000356FA                 bcc.w   loc_35718
ROM:000356FE                 btst    #2,$8C(a6)
ROM:00035704                 beq.w   loc_35712
ROM:00035708                 eori.b  #1,$3A(a6)
ROM:0003570E                 bra.w   loc_35718
ROM:00035712
ROM:00035712
ROM:00035712 loc_35712:
ROM:00035712                 lea     $35ABA,a1
ROM:00035716                 move.l  a1,(a6)
ROM:00035718
ROM:00035718 loc_35718:
ROM:00035718
ROM:00035718                 bra.w   loc_357A6
ROM:0003571C
ROM:0003571C
ROM:0003571C loc_3571C:
ROM:0003571C                 jsr     sub_32E42
ROM:00035720                 bcs.w   loc_3572A
ROM:00035724                 lea     loc_34046,a1
ROM:00035728                 move.l  a1,(a6)
ROM:0003572A
ROM:0003572A loc_3572A:
ROM:0003572A                 jsr     sub_32E3C
ROM:0003572E                 bcc.w   loc_3574C
ROM:00035732                 btst    #2,$8C(a6)
ROM:00035738                 beq.w   loc_35746
ROM:0003573C                 eori.b  #1,$3A(a6)
ROM:00035742                 bra.w   loc_3574C
ROM:00035746
ROM:00035746
ROM:00035746 loc_35746:
ROM:00035746                 lea     $35ABA,a1
ROM:0003574A                 move.l  a1,(a6)
ROM:0003574C
ROM:0003574C loc_3574C:
ROM:0003574C
ROM:0003574C                 jsr     sub_330D0
ROM:00035750                 bcc.w   loc_357A6
ROM:00035754                 cmpi.b  #$FF,d1
ROM:00035758                 bne.w   loc_35766
ROM:0003575C                 lea     loc_35D34,a1
ROM:00035760                 move.l  a1,(a6)
ROM:00035762                 bra.w   loc_357A6
ROM:00035766
ROM:00035766
ROM:00035766 loc_35766:
ROM:00035766                 cmpi.b  #3,d1
ROM:0003576A                 bne.w   loc_35778
ROM:0003576E                 lea     unk_360BC,a1
ROM:00035772                 move.l  a1,(a6)
ROM:00035774                 bra.w   loc_357A6
ROM:00035778
ROM:00035778
ROM:00035778 loc_35778:
ROM:00035778                 cmpi.b  #4,d1
ROM:0003577C                 bne.w   loc_3578A
ROM:00035780                 lea     unk_3873C,a1
ROM:00035784                 move.l  a1,(a6)
ROM:00035786                 bra.w   loc_357A6
ROM:0003578A
ROM:0003578A
ROM:0003578A loc_3578A:
ROM:0003578A                 cmpi.b  #1,d1
ROM:0003578E                 bne.w   loc_3579C
ROM:00035792                 lea     loc_357E6,a1
ROM:00035796                 move.l  a1,(a6)
ROM:00035798                 bra.w   loc_357A6
ROM:0003579C
ROM:0003579C
ROM:0003579C loc_3579C:
ROM:0003579C                 lea     loc_357D2,a1
ROM:000357A0                 move.l  a1,(a6)
ROM:000357A2                 bra.w   *+4
ROM:000357A6
ROM:000357A6
ROM:000357A6 loc_357A6:
ROM:000357A6
ROM:000357A6                 bra.w   loc_3548C
ROM:000357AA
ROM:000357AA
ROM:000357AA loc_357AA:
ROM:000357AA                 move.w  #1,$7C(a6)
ROM:000357B0                 move.w  #3,$7E(a6)
ROM:000357B6                 jsr     sub_357FA
ROM:000357BA                 bra.w   loc_35250
ROM:000357BE
ROM:000357BE
ROM:000357BE loc_357BE:
ROM:000357BE                 move.w  #0,$7C(a6)
ROM:000357C4                 move.w  #4,$7E(a6)
ROM:000357CA                 jsr     sub_3595A
ROM:000357CE                 bra.w   loc_35250
ROM:000357D2
ROM:000357D2
ROM:000357D2 loc_357D2:
ROM:000357D2                 move.w  #1,$7C(a6)
ROM:000357D8                 move.w  #3,$7E(a6)
ROM:000357DE                 jsr     sub_357FA
ROM:000357E2                 bra.w   loc_3556A
ROM:000357E6
ROM:000357E6
ROM:000357E6 loc_357E6:
ROM:000357E6                 move.w  #0,$7C(a6)
ROM:000357EC                 move.w  #4,$7E(a6)
ROM:000357F2                 jsr     sub_3595A
ROM:000357F6                 bra.w   loc_3556A
ROM:000357FA
ROM:000357FA
ROM:000357FA
ROM:000357FA
