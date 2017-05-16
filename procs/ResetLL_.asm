ROM:00000410 ResetLL?:
ROM:00000410                 lea     (unk_100A80).l,a0
ROM:00000416                 move.l  a0,(LLCurrentPtr).l
ROM:0000041C                 move.w  #$A0,d0
ROM:00000420
ROM:00000420 loc_420:
ROM:00000420
ROM:00000420                 movea.l a0,a1
ROM:00000422                 movem.l d0-a6,-(sp)
ROM:00000426                 jsr     InitObjPointers
ROM:0000042C                 jsr     InitObj
ROM:00000432                 movem.l (sp)+,d0-a6
ROM:00000436                 adda.l  #$A0,a0
ROM:0000043C                 move.l  a0,ObjLLItem.LLNextPtr(a1)
ROM:00000440
ROM:00000440 loc_440:
ROM:00000440
ROM:00000440                 subq.w  #1,d0
ROM:00000442                 bne.s   loc_420
ROM:00000444                 move.l  #$FFFFFFFF,ObjLLItem.LLNextPtr(a1)
ROM:0000044C
ROM:0000044C loc_44C:
ROM:0000044C                 lea     (unk_100940).l,a1
ROM:00000452                 lea     (DATA278000).l,a2
ROM:00000458
ROM:00000458 loc_458:
ROM:00000458                 movea.l (a2),a6
ROM:0000045A                 movea.l a6,a0
ROM:0000045C                 movem.l d0-a6,-(sp)
ROM:00000460
ROM:00000460 loc_460:
ROM:00000460                 jsr     InitObjPointers
ROM:00000466                 jsr     InitObj
ROM:0000046C                 movem.l (sp)+,d0-a6
ROM:00000470                 move.b  #0,ObjLLItem.Counter?(a6)
ROM:00000476                 move.b  #0,ObjLLItem.Flags2(a6)
ROM:0000047C                 bset    #0,ObjLLItem.Flags2(a6)
ROM:00000482                 move.l  a6,ObjLLItem.LLSpawnerPtr(a6)
ROM:00000486                 move.l  4(a2),d0
ROM:0000048A                 move.l  d0,(a6)
ROM:0000048C                 move.l  a1,4(a6)
ROM:00000490                 move.l  a6,ObjLLItem.LLNextPtr(a1)
ROM:00000494                 movea.l a6,a1
ROM:00000496                 adda.l  #8,a2
ROM:0000049C                 cmpa.l  #unk_100940,a6
ROM:000004A2                 bne.s   loc_458
ROM:000004A4                 move.l  #unk_100080,ObjLLItem.LLNextPtr(a6)
ROM:000004AC                 rts
ROM:000004AC
ROM:000004AC
ROM:000004AE
ROM:000004AE
ROM:000004AE
ROM:000004AE
