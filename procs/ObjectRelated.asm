ROM:0002783A ObjectRelated:
ROM:0002783A
ROM:0002783A                 movea.l #LifePointsBuffer?,a5
ROM:00027840                 jsr     loc_440E4
ROM:00027846                 movem.w d5,-(sp)
ROM:0002784A                 movem.w d6,-(sp)
ROM:0002784E                 jsr     sub_28108
ROM:00027852                 movem.w (sp)+,d6
ROM:00027856                 movem.w (sp)+,d5
ROM:0002785A                 rts
ROM:0002785A
ROM:0002785A
ROM:0002785C
ROM:0002785C
ROM:0002785C
ROM:0002785C
