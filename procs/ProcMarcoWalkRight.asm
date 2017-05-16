ROM:00035276 ProcMarcoWalkRight:
ROM:00035276                 jsr     sub_32FF2
ROM:0003527A                 jsr     sub_32D32
ROM:0003527E                 bcc.w   loc_35288
ROM:00035282                 lea     loc_345B8,a1
ROM:00035286                 move.l  a1,(a6)
ROM:00035288
ROM:00035288 loc_35288:
ROM:00035288                 move.w  #$300,$28(a6)
ROM:0003528E                 jsr     sub_27A92
ROM:00035294                 jsr     sub_32AA8
ROM:00035298                 bcc.w   loc_35308
ROM:0003529C                 move.w  #0,$7C(a6)
ROM:000352A2                 move.w  #$FFFF,$7E(a6)
ROM:000352A8                 bclr    #2,$8C(a6)
ROM:000352AE                 bclr    #1,$8C(a6)
ROM:000352B4                 bclr    #3,$8C(a6)
ROM:000352BA                 cmpi.b  #$13,$70(a6)
ROM:000352C0                 bcs.w   loc_352E4
ROM:000352C4                 cmpi.b  #$24,$70(a6)
ROM:000352CA                 bcc.w   loc_352E4
ROM:000352CE                 move.b  #$12,$70(a6)
ROM:000352D4                 lea     ($279926).l,a0
ROM:000352DA                 move.l  off_279922-unk_279926(a0),$74(a6)
ROM:000352E0                 bra.w   loc_35308
ROM:000352E4
ROM:000352E4
ROM:000352E4 loc_352E4:
ROM:000352E4
ROM:000352E4                 move.b  #$12,$70(a6)
ROM:000352EA                 lea     ($279926).l,a0
ROM:000352F0                 move.l  off_279922-unk_279926(a0),$74(a6)
ROM:000352F6                 move.b  #$FF,$21(a6)
ROM:000352FC                 lea     (unk_279926).l,a0
ROM:00035302                 jsr     ChangeAnimation
ROM:00035308
ROM:00035308 loc_35308:
ROM:00035308
ROM:00035308                 cmpi.b  #$12,$70(a6)
ROM:0003530E                 bne.w   loc_353C4
ROM:00035312                 cmpi.b  #4,$78(a6)
ROM:00035318                 bne.w   loc_35372
ROM:0003531C                 cmpi.w  #1,$72(a6)
ROM:0003531C
