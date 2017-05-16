ROM:00002308 SoundRelated3:
ROM:00002308
ROM:00002308                 move.b  d0,-(sp)
ROM:0000230A                 move.b  #$A,d0
ROM:0000230E                 bra.w   loc_2318
ROM:00002312
ROM:00002312                 move.b  d0,-(sp)
ROM:00002314                 move.b  #$B,d0
ROM:00002318
ROM:00002318 loc_2318:
ROM:00002318                 bsr.w   QueueSound
ROM:0000231C                 move.b  (sp)+,d0
ROM:0000231E                 addi.b  #$20,d0
ROM:00002322                 scs     d1
ROM:00002324                 or.w    d1,d0
ROM:00002326                 bra.w   QueueSound
ROM:00002326
ROM:00002326
ROM:0000232A
ROM:0000232A                 move.b  d0,-(sp)
ROM:0000232C                 move.b  d1,-(sp)
ROM:0000232E                 move.b  #9,d0
ROM:00002332                 bsr.w   QueueSound
ROM:00002336                 move.b  (sp)+,d0
ROM:00002338                 addi.b  #$20,d0
ROM:0000233C                 scs     d1
ROM:0000233E                 or.w    d1,d0
ROM:00002340                 bsr.w   QueueSound
ROM:00002344                 move.b  #0,d0
ROM:00002348                 bsr.w   QueueSound
ROM:0000234C                 move.b  (sp)+,d0
ROM:0000234E                 bra.w   QueueSound
ROM:00002352
ROM:00002352
ROM:00002352
ROM:00002352
