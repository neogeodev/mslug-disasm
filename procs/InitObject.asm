ROM:000004C6 InitObject:
ROM:000004C6                 movem.l d0-a6,-(sp)
ROM:000004CA                 jsr     InitObjPointers
ROM:000004D0                 jsr     InitObj
ROM:000004D6                 movem.l (sp)+,d0-a6
ROM:000004DA                 move.l  a1,(a0)
ROM:000004DC                 move.l  a6,ObjLLItem.LLSpawnerPtr(a0)
ROM:000004E0                 move.b  ObjLLItem.Counter?(a6),d0
ROM:000004E4                 addq.b  #1,d0
ROM:000004E6                 move.b  d0,ObjLLItem.Counter?(a0)
ROM:000004EA                 movea.l ObjLLItem.LLNextPtr(a6),a1
ROM:000004EE
ROM:000004EE loc_4EE:
ROM:000004EE                 move.l  a0,ObjLLItem.LLNextPtr(a6)
ROM:000004F2                 move.l  a6,4(a0)
ROM:000004F6                 move.l  a1,ObjLLItem.LLNextPtr(a0)
ROM:000004FA                 move.l  a0,4(a1)
ROM:000004FE                 jsr     InitObj
ROM:00000504                 rts
ROM:00000504
ROM:00000504
ROM:00000506
ROM:00000506
ROM:00000506
