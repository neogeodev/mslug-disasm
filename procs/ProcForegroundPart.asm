ROM:0004D72E ProcForegroundPart:
ROM:0004D72E                 jsr     ObjectRelated
ROM:0004D734                 jsr     Animate
ROM:0004D73A                 jsr     CheckOutOfScreen
ROM:0004D73E                 bcc.w   locret_4D748
ROM:0004D742                 jmp     (SetDying).l
ROM:0004D748
ROM:0004D748
ROM:0004D748 locret_4D748:
ROM:0004D748                 rts
ROM:0004D74A
ROM:0004D74A                 movea.l $3C(a6),a1
ROM:0004D74E                 jsr     loc_2942A
ROM:0004D754                 move.w  #$41,d1
ROM:0004D758                 jsr     (sub_236E).l
ROM:0004D75E                 move.b  #$FF,$32(a6)
ROM:0004D764                 move.b  #$FF,$33(a6)
ROM:0004D76A                 move.b  #0,$3A(a6)
ROM:0004D770                 lea     (unk_294280).l,a0
ROM:0004D776                 jsr     ChangeAnimation
ROM:0004D77C                 lea     ProcMailboxA,a1
ROM:0004D780                 move.l  a1,(a6)
ROM:0004D782
