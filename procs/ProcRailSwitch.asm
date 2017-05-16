ROM:000539B2 ProcRailSwitch:
ROM:000539B2                 jsr     ObjectRelated
ROM:000539B8                 jsr     Animate
ROM:000539BE                 move.w  #$7FFF,ObjLLItem.FrameTimer?(a6)
ROM:000539C4                 jsr     CheckShot?
ROM:000539CA                 bcc.w   loc_539D8
ROM:000539CE                 jsr     FlipRailSwitch
ROM:000539D2                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:000539D8
ROM:000539D8 loc_539D8:
ROM:000539D8                 jsr     CheckOutOfScreen
ROM:000539DE                 bcc.w   locret_539EE
ROM:000539E2                 jsr     (ClearObjChilds?).l
ROM:000539E8                 jmp     (SetDying).l
ROM:000539EE
ROM:000539EE
ROM:000539EE locret_539EE:
ROM:000539EE                 rts
ROM:000539F0
ROM:000539F0                 move.w  #$1AF,d1
ROM:000539F4                 jsr     (sub_236E).l
ROM:000539FA                 jsr     ClearObjStuff
ROM:00053A00
ROM:00053A00 loc_53A00:
ROM:00053A00                 move.w  #$F000,$38(a6)
ROM:00053A06                 lea     (off_2977D0).l,a0
ROM:00053A0C                 jsr     ChangeAnimation
ROM:00053A12                 lea     ProcTrainSignals,a1
ROM:00053A16                 move.l  a1,(a6)
ROM:00053A18
