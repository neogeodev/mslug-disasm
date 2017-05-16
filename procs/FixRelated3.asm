ROM:0005DA56 FixRelated3:
ROM:0005DA56
ROM:0005DA56                 movem.l d3-d5,-(sp)
ROM:0005DA5A                 subq.w  #1,d1
ROM:0005DA5C                 subq.w  #1,d2
ROM:0005DA5E                 move.w  d0,d4
ROM:0005DA60
ROM:0005DA60 loc_5DA60:
ROM:0005DA60                 move.l  a1,d3
ROM:0005DA62                 move.w  d1,d5
ROM:0005DA64                 move.w  d4,-(sp)
ROM:0005DA66
ROM:0005DA66 loc_5DA66:
ROM:0005DA66                 cmpi.w  #$74FF,d3
ROM:0005DA6A                 bgt.w   loc_5DA7E
ROM:0005DA6E                 cmpi.w  #$7000,d3
ROM:0005DA72                 blt.w   loc_5DA7E
ROM:0005DA76                 movem.w d3-d4,($3C0000).l
ROM:0005DA7E
ROM:0005DA7E loc_5DA7E:
ROM:0005DA7E
ROM:0005DA7E                 addq.w  #1,d4
ROM:0005DA80                 addi.w  #$20,d3
ROM:0005DA84                 dbf     d5,loc_5DA66
ROM:0005DA88                 move.w  (sp)+,d4
ROM:0005DA8A                 addi.w  #$10,d4
ROM:0005DA8E                 adda.w  #1,a1
ROM:0005DA92                 dbf     d2,loc_5DA60
ROM:0005DA96                 movem.l (sp)+,d3-d5
ROM:0005DA9A                 rts
ROM:0005DA9A
ROM:0005DA9A
ROM:0005DA9C
ROM:0005DA9C
ROM:0005DA9C
ROM:0005DA9C
ROM:0005DA9C
