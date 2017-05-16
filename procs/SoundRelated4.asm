ROM:00002222 SoundRelated4:
ROM:00002222
ROM:00002222                 move.w  d0,-(sp)
ROM:00002224                 moveq   #$C,d0
ROM:00002226                 bsr.w   QueueSound
ROM:0000222A                 move.w  (sp)+,d0
ROM:0000222C                 bra.w   sub_219C
ROM:0000222C
ROM:0000222C
ROM:00002230
ROM:00002230
ROM:00002230
ROM:00002230
