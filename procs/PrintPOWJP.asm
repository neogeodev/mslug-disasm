ROM:0003E7C0 PrintPOWJP:
ROM:0003E7C0                 cmpa.l  #0,a1
ROM:0003E7C6                 bne.w   loc_3E7CC
ROM:0003E7CA                 rts
ROM:0003E7CC
ROM:0003E7CC
ROM:0003E7CC loc_3E7CC:
ROM:0003E7CC                 lea     (POWJPData1).l,a2
ROM:0003E7D2                 clr.l   d1
ROM:0003E7D4                 move.b  d2,d1
ROM:0003E7D6                 lsl.w   #1,d1
ROM:0003E7D8                 add.w   (a2,d1.w),d0
ROM:0003E7DC                 cmpi.b  #1,$68(a6)
ROM:0003E7E2                 bne.w   loc_3E7EA
ROM:0003E7E6                 addi.w  #$220,d0
ROM:0003E7EA
ROM:0003E7EA loc_3E7EA:
ROM:0003E7EA
ROM:0003E7EA                 clr.w   d1
ROM:0003E7EC                 move.b  (a1)+,d1
ROM:0003E7EE                 cmpi.b  #$80,d1
ROM:0003E7F2                 bcc.w   loc_3E7FE
ROM:0003E7F6                 ori.w   #$2300,d1
ROM:0003E7FA                 bra.w   loc_3E806
ROM:0003E7FE
ROM:0003E7FE
ROM:0003E7FE loc_3E7FE:
ROM:0003E7FE                 subi.w  #$80,d1
ROM:0003E802                 ori.w   #$2A00,d1
ROM:0003E806
ROM:0003E806 loc_3E806:
ROM:0003E806                 movem.w d0-d1,($3C0000).l
ROM:0003E80E                 addi.w  #$20,d0
ROM:0003E812                 subq.b  #1,d2
ROM:0003E814                 cmpi.b  #0,d2
ROM:0003E818                 bgt.s   loc_3E7EA
ROM:0003E81A                 move.w  #$2320,d1
ROM:0003E81E                 movem.w d0-d1,($3C0000).l
ROM:0003E826                 addi.w  #$20,d0
ROM:0003E82A                 movea.w d0,a1
ROM:0003E82C                 lea     (POWJPData2).l,a2
ROM:0003E832                 clr.w   d4
ROM:0003E834                 move.b  d3,d4
ROM:0003E836                 lsl.w   #1,d4
ROM:0003E838                 move.w  (a2,d4.w),d0
ROM:0003E83C                 move.w  #4,d1
ROM:0003E840                 move.w  #1,d2
ROM:0003E844                 jsr     FixRelated3
ROM:0003E84A                 rts
ROM:0003E84C
ROM:0003E84C
ROM:0003E84C
ROM:0003E84C
