ROM:00060DCC ProcToiletsExplode:
ROM:00060DCC                 jsr     ObjectRelated
ROM:00060DD2                 jsr     Animate
ROM:00060DD8                 jsr     sub_60DF0
ROM:00060DDC                 bcc.w   locret_60DE6
ROM:00060DE0                 lea     loc_60DE8,a1
ROM:00060DE4                 move.l  a1,(a6)
ROM:00060DE6
ROM:00060DE6 locret_60DE6:
ROM:00060DE6                 rts
ROM:00060DE8
ROM:00060DE8
ROM:00060DE8 loc_60DE8:
ROM:00060DE8
ROM:00060DE8                 jmp     (SetDying).l
ROM:00060DEE
ROM:00060DEE                 rts
ROM:00060DF0
ROM:00060DF0
ROM:00060DF0
ROM:00060DF0
