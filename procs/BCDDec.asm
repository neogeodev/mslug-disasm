ROM:00024F86 BCDDec:
ROM:00024F86
ROM:00024F86                 move.l  d1,-(sp)
ROM:00024F88                 move.b  d0,d1
ROM:00024F8A                 andi.b  #$F,d0
ROM:00024F8E                 andi.b  #$F0,d1
ROM:00024F92                 subq.b  #1,d0
ROM:00024F94                 bpl.w   loc_24FA0
ROM:00024F98                 move.b  #9,d0
ROM:00024F9C                 subi.b  #$10,d1
ROM:00024FA0
ROM:00024FA0 loc_24FA0:
ROM:00024FA0                 or.b    d1,d0
ROM:00024FA2                 move.l  (sp)+,d1
ROM:00024FA4                 rts
ROM:00024FA4
