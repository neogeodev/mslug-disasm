ROM:0004D7EE ProcMailboxB:
ROM:0004D7EE                 jsr     ObjectRelated
ROM:0004D7F4                 jsr     Animate
ROM:0004D7FA                 bcc.w   loc_4D80A
ROM:0004D7FE                 bclr    #3,$13(a6)
ROM:0004D804                 lea     ProcMailboxA,a1
ROM:0004D808                 move.l  a1,(a6)
ROM:0004D80A
ROM:0004D80A loc_4D80A:
ROM:0004D80A                 jsr     CheckOutOfScreen
ROM:0004D80E                 bcc.w   locret_4D818
ROM:0004D812                 jmp     (SetDying).l
ROM:0004D818
ROM:0004D818
ROM:0004D818 locret_4D818:
ROM:0004D818                 rts
ROM:0004D81A
ROM:0004D81A
