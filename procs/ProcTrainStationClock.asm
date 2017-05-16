ROM:00052946 ProcTrainStationClock:
ROM:00052946                 jsr     ObjectRelated
ROM:0005294C                 jsr     Animate
ROM:00052952                 jsr     CheckShot?
ROM:00052958                 bcc.w   loc_52974
ROM:0005295C                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:00052962                 move.l  #$500,d0
ROM:00052968                 jsr     sub_51A28
ROM:0005296E                 lea     ProcClockBreak,a1
ROM:00052972                 move.l  a1,(a6)
ROM:00052974
ROM:00052974 loc_52974:
ROM:00052974                 jsr     CheckOutOfScreen
ROM:0005297A                 bcc.w   locret_52984
ROM:0005297E                 jmp     (SetDying).l
ROM:00052984
ROM:00052984
ROM:00052984 locret_52984:
ROM:00052984                 rts
ROM:00052986
ROM:00052986
