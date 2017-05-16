ROM:000022C8 SoundRelated2:
ROM:000022C8
ROM:000022C8
ROM:000022C8                 moveq   #6,d0
ROM:000022CA                 bra.w   QueueSound
ROM:000022CA
ROM:000022CA
ROM:000022CE
ROM:000022CE                 moveq   #5,d0
ROM:000022D0                 bra.w   QueueSound
ROM:000022D4
ROM:000022D4                 addi.b  #$20,d0
ROM:000022D8                 scs     d2
ROM:000022DA                 or.b    d2,d0
ROM:000022DC                 subi.b  #$20,d1
ROM:000022E0                 scc     d2
ROM:000022E2                 and.b   d2,d1
ROM:000022E4                 addi.b  #$20,d1
ROM:000022E8                 move.b  d1,-(sp)
ROM:000022EA                 move.b  d0,-(sp)
ROM:000022EC                 move.b  #7,d0
ROM:000022F0                 bsr.w   QueueSound
ROM:000022F4                 move.b  (sp)+,d0
ROM:000022F6                 bsr.w   QueueSound
ROM:000022FA                 move.b  #8,d0
ROM:000022FE                 bsr.w   QueueSound
ROM:00002302                 move.b  (sp)+,d0
ROM:00002304                 bra.w   QueueSound
ROM:00002308
ROM:00002308
ROM:00002308
ROM:00002308
