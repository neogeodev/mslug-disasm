ROM:000004AE SpawnObj:
ROM:000004AE
ROM:000004AE
ROM:000004AE
ROM:000004AE
ROM:000004AE                 movea.l (LLCurrentPtr).l,a0
ROM:000004B4                 cmpa.l  #$FFFFFFFF,a0
ROM:000004BA                 beq.w   loopstart
ROM:000004BE                 move.l  ObjLLItem.LLNextPtr(a0),(LLCurrentPtr).l
ROM:000004BE
ROM:000004BE
ROM:000004C6
ROM:000004C6
ROM:000004C6
ROM:000004C6
