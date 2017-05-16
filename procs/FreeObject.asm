ROM:00000546 FreeObject:
ROM:00000546
ROM:00000546                 move.b  ObjLLItem.Flags2(a6),d0
ROM:0000054A                 btst    #0,d0
ROM:0000054E                 bne.w   loc_588
ROM:00000552                 jsr     ProcessObj?List
ROM:00000558                 movea.l ObjLLItem.field_4(a6),a1
ROM:0000055C                 movea.l ObjLLItem.LLNextPtr(a6),a2
ROM:00000560                 move.l  a2,ObjLLItem.LLNextPtr(a1)
ROM:00000564
ROM:00000564 loc_564:
ROM:00000564                 move.l  a1,ObjLLItem.field_4(a2)
ROM:00000568                 move.l  #$FFFFFFFF,(a6)
ROM:0000056E                 move.l  #$FFFFFFFF,$48(a6)
ROM:00000576                 move.l  (LLCurrentPtr).l,ObjLLItem.LLNextPtr(a6)
ROM:0000057E
ROM:0000057E loc_57E:
ROM:0000057E                 move.l  a6,(LLCurrentPtr).l
ROM:00000584                 movea.l a1,a6
ROM:00000586                 rts
ROM:00000588
ROM:00000588
ROM:00000588 loc_588:
ROM:00000588                 jsr     ProcessObj?List
ROM:0000058E                 movea.l 4(a6),a1
ROM:00000592                 movea.l ObjLLItem.LLNextPtr(a6),a2
ROM:00000596                 move.l  a2,ObjLLItem.LLNextPtr(a1)
ROM:0000059A                 move.l  a1,4(a2)
ROM:0000059E                 move.l  #ProcRts,(a6)
ROM:000005A4                 move.l  #$FFFFFFFF,$48(a6)
ROM:000005AC                 bset    #0,ObjLLItem.Flags2(a6)
ROM:000005B2                 movea.l a1,a6
ROM:000005B4                 rts
ROM:000005B4
ROM:000005B4
ROM:000005B6
ROM:000005B6
ROM:000005B6
ROM:000005B6
