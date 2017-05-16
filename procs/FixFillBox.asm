ROM:0005DA9C FixFillBox:
ROM:0005DA9C
ROM:0005DA9C                 movem.l d3-d5,-(sp)
ROM:0005DAA0                 subq.w  #1,d1
ROM:0005DAA2                 subq.w  #1,d2
ROM:0005DAA4                 move.w  d0,d4
ROM:0005DAA6
ROM:0005DAA6 loc_5DAA6:
ROM:0005DAA6                 move.l  a1,d3
ROM:0005DAA8                 move.w  d1,d5
ROM:0005DAAA
ROM:0005DAAA loc_5DAAA:
ROM:0005DAAA                 cmpi.w  #$74FF,d3
ROM:0005DAAE                 bgt.w   loc_5DAC2
ROM:0005DAB2                 cmpi.w  #$7000,d3
ROM:0005DAB6                 blt.w   loc_5DAC2
ROM:0005DABA                 movem.w d3-d4,($3C0000).l
ROM:0005DAC2
ROM:0005DAC2 loc_5DAC2:
ROM:0005DAC2
ROM:0005DAC2                 addi.w  #$20,d3
ROM:0005DAC6                 dbf     d5,loc_5DAAA
ROM:0005DACA                 adda.w  #1,a1
ROM:0005DACE                 dbf     d2,loc_5DAA6
ROM:0005DAD2                 movem.l (sp)+,d3-d5
ROM:0005DAD6                 rts
ROM:0005DAD6
ROM:0005DAD6
ROM:0005DAD8
ROM:0005DAD8
ROM:0005DAD8
ROM:0005DAD8
ROM:0005DAD8
