ROM:00052986 ProcClockBreak:
ROM:00052986                 move.w  #$1029,d0
ROM:0005298A                 jsr     (PlaySFX).l
ROM:00052990                 lea     (off_29718A).l,a0
ROM:00052996                 jsr     ChangeAnimation
ROM:0005299C                 lea     loc_529A2,a1
ROM:000529A0                 move.l  a1,(a6)
ROM:000529A2
ROM:000529A2 loc_529A2:
ROM:000529A2                 jsr     ObjectRelated
ROM:000529A8                 jsr     Animate
ROM:000529AE                 bcc.w   loc_529B8
ROM:000529B2                 lea     loc_529CA,a1
ROM:000529B6                 move.l  a1,(a6)
ROM:000529B8
ROM:000529B8 loc_529B8:
ROM:000529B8                 jsr     CheckOutOfScreen
ROM:000529BE                 bcc.w   locret_529C8
ROM:000529C2                 jmp     (SetDying).l
ROM:000529C8
ROM:000529C8
ROM:000529C8 locret_529C8:
ROM:000529C8                 rts
ROM:000529CA
ROM:000529CA
ROM:000529CA loc_529CA:
ROM:000529CA                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:000529D0                 lea     (off_2971EE).l,a0
ROM:000529D6                 jsr     ChangeAnimation
ROM:000529DC                 lea     ProcTrainStationClockDead,a1
ROM:000529E0                 move.l  a1,(a6)
ROM:000529E2
