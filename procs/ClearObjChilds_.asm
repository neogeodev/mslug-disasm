ROM:000005B6 ClearObjChilds?:
ROM:000005B6
ROM:000005B6                 movem.l a6,-(sp)
ROM:000005BA                 move.b  ObjLLItem.Counter?(a6),d0
ROM:000005BE
ROM:000005BE loc_5BE:
ROM:000005BE                 movea.l ObjLLItem.LLNextPtr(a6),a6
ROM:000005C2                 cmp.b   ObjLLItem.Counter?(a6),d0
ROM:000005C6                 bcc.w   loc_5D4
ROM:000005CA                 move.w  d0,-(sp)
ROM:000005CC                 bsr.w   FreeObject
ROM:000005D0                 move.w  (sp)+,d0
ROM:000005D2                 bra.s   loc_5BE
ROM:000005D4
ROM:000005D4
ROM:000005D4 loc_5D4:
ROM:000005D4                 movem.l (sp)+,a6
ROM:000005D8                 rts
ROM:000005D8
ROM:000005D8
ROM:000005DA
ROM:000005DA
ROM:000005DA
ROM:000005DA
