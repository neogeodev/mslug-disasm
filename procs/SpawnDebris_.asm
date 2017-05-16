ROM:00077C7E SpawnDebris?:
ROM:00077C7E
ROM:00077C7E                 move.l  a1,-(sp)
ROM:00077C80                 lea     sub_77C98,a1
ROM:00077C84                 jsr     (SpawnObject?).l
ROM:00077C8A                 jsr     InitSamePositions
ROM:00077C90                 movea.l (sp)+,a1
ROM:00077C92                 move.l  a1,$70(a0)
ROM:00077C96                 rts
ROM:00077C96
ROM:00077C96
ROM:00077C98
ROM:00077C98
ROM:00077C98
ROM:00077C98
