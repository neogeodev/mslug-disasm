ROM:000006FE SpawnObject?:
ROM:000006FE
ROM:000006FE                 movea.l (LLCurrentPtr).l,a0
ROM:00000704                 cmpa.l  #$FFFFFFFF,a0
ROM:0000070A                 beq.w   loc_76A
ROM:0000070E                 move.l  ObjLLItem.LLNextPtr(a0),(LLCurrentPtr).l
ROM:00000716                 movem.l d0-a6,-(sp)
ROM:0000071A                 jsr     InitObjPointers
ROM:00000720                 jsr     InitObj
ROM:00000726                 movem.l (sp)+,d0-a6
ROM:0000072A                 move.l  a1,(a0)
ROM:0000072C                 move.l  a6,ObjLLItem.LLSpawnerPtr(a0)
ROM:00000730                 move.b  ObjLLItem.Counter?(a6),d0
ROM:00000734                 addq.b  #1,d0
ROM:00000736                 move.b  d0,ObjLLItem.Counter?(a0)
ROM:0000073A                 movea.l a6,a1
ROM:0000073C
ROM:0000073C loc_73C:
ROM:0000073C                 movea.l ObjLLItem.LLNextPtr(a1),a1
ROM:00000740                 cmp.b   ObjLLItem.Counter?(a1),d0
ROM:00000744                 bls.s   loc_73C
ROM:00000746                 movem.l a2,-(sp)
ROM:0000074A                 movea.l ObjLLItem.field_4(a1),a2
ROM:0000074E                 move.l  a0,ObjLLItem.LLNextPtr(a2)
ROM:00000752                 move.l  a2,4(a0)
ROM:00000756                 move.l  a1,ObjLLItem.LLNextPtr(a0)
ROM:0000075A                 move.l  a0,4(a1)
ROM:0000075E                 movem.l (sp)+,a2
ROM:00000762                 jsr     InitObj
ROM:00000768                 rts
ROM:0000076A
ROM:0000076A
ROM:0000076A loc_76A:
ROM:0000076A                 lea     (LLStart).l,a0
ROM:00000770                 rts
ROM:00000770
ROM:00000770
ROM:00000772
ROM:00000772
ROM:00000772 loc_772:
ROM:00000772
ROM:00000772                 lsl.w   #2,d0
ROM:00000774                 cmpa.l  #$FFFFFFFF,a1
ROM:0000077A                 beq.w   loc_794+2
ROM:0000077E
ROM:0000077E loc_77E:
ROM:0000077E                 andi.l  #$FFFF,d0
ROM:00000784                 adda.l  d0,a0
ROM:00000786                 cmpa.l  a0,a1
ROM:00000788                 bgt.w   loc_794+2
ROM:0000078C                 nop
ROM:0000078E                 nop
ROM:00000790                 cmpa.l  a0,a1
ROM:00000792                 nop
ROM:00000794
ROM:00000794 loc_794:
ROM:00000794
ROM:00000794                 trap    #$F
ROM:00000794                 dc.w    $2270
ROM:00000798                 ori.b   #$FC,d0
ROM:00000798
ROM:0000079C                 dc.l $FFFFFFFF
ROM:000007A0
ROM:000007A0                 beq.w   locret_7B0
ROM:000007A4                 cmpa.l  #$FFFFFFFF,a1
ROM:000007AA                 beq.w   locret_7B0
ROM:000007AE                 move.l  a1,(a6)
ROM:000007B0
ROM:000007B0 locret_7B0:
ROM:000007B0
ROM:000007B0                 rts
ROM:000007B2
ROM:000007B2
ROM:000007B2
ROM:000007B2
