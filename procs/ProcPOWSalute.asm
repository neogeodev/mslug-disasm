ROM:00040342 ProcPOWSalute:
ROM:00040342                 jsr     sub_3FECE
ROM:00040346                 jsr     Animate
ROM:0004034C                 bcc.w   loc_40356
ROM:00040350                 lea     loc_40358,a1
ROM:00040354                 move.l  a1,(a6)
ROM:00040356
ROM:00040356 loc_40356:
ROM:00040356                 bra.s   loc_402F0
ROM:00040358
ROM:00040358
ROM:00040358 loc_40358:
ROM:00040358                 lea     off_3F89E,a0
ROM:0004035C                 jsr     ChangeAnimation
ROM:00040362                 bclr    #0,$3A(a6)
ROM:00040368                 move.w  #$FC00,$28(a6)
ROM:0004036E                 lea     ProcPOWRunAway,a1
ROM:00040372                 move.l  a1,(a6)
ROM:00040374
