ROM:00051DE2 LoadSpriteVRAM:
ROM:00051DE2
ROM:00051DE2                 andi.l  #$FFFF,d4
ROM:00051DE8                 andi.l  #$FFFF,d5
ROM:00051DEE                 move.w  2(a1),d6
ROM:00051DF2                 mulu.w  d6,d2
ROM:00051DF4                 add.w   d3,d2
ROM:00051DF6                 add.l   d2,d2
ROM:00051DF8                 add.l   d2,d2
ROM:00051DFA                 movea.l 4(a1),a3
ROM:00051DFE                 lea     (a3,d2.l),a3
ROM:00051E02                 sub.w   d5,d6
ROM:00051E04                 add.w   d6,d6
ROM:00051E06                 add.w   d6,d6
ROM:00051E08
ROM:00051E08 loc_51E08:
ROM:00051E08                 subq.w  #1,d4
ROM:00051E0A                 subq.w  #1,d5
ROM:00051E0C                 add.w   $22(a0),d0
ROM:00051E10                 add.w   $24(a0),d1
ROM:00051E14
ROM:00051E14 loc_51E14:
ROM:00051E14                 movem.w d0-d1/d4-d5,-(sp)
ROM:00051E18                 andi.w  #$1F,d0
ROM:00051E1C                 add.b   $52(a0,d0.w),d1
ROM:00051E20                 andi.w  #$1F,d1
ROM:00051E24                 add.w   $28(a0),d0
ROM:00051E28                 lsl.w   #6,d0
ROM:00051E2A                 addi.w  #$40,d0
ROM:00051E2E                 movea.w d0,a1
ROM:00051E30                 add.w   d1,d1
ROM:00051E32
ROM:00051E32 loc_51E32:
ROM:00051E32                 lea     (a1,d1.w),a2
ROM:00051E36                 move.w  a2,(LSPCVRAMAddr).l
ROM:00051E3C                 move.w  a2,($3C0000).l
ROM:00051E42                 move.w  (a3)+,($3C0002).l
ROM:00051E48                 addq.w  #1,a2
ROM:00051E4A                 move.w  a2,(LSPCVRAMAddr).l
ROM:00051E50                 move.w  a2,($3C0000).l
ROM:00051E56                 move.w  (a3)+,($3C0002).l
ROM:00051E5C                 addq.w  #2,d1
ROM:00051E5E                 andi.w  #$3F,d1
ROM:00051E62                 dbf     d5,loc_51E32
ROM:00051E66                 movem.w (sp)+,d0-d1/d4-d5
ROM:00051E6A                 addq.w  #1,d0
ROM:00051E6C                 adda.w  d6,a3
ROM:00051E6E                 dbf     d4,loc_51E14
ROM:00051E72                 rts
ROM:00051E72
ROM:00051E72
ROM:00051E74
ROM:00051E74
ROM:00051E74
ROM:00051E74 loc_51E74:
ROM:00051E74                 andi.l  #$FFFF,d4
ROM:00051E7A                 andi.l  #$FFFF,d5
ROM:00051E80                 subq.w  #1,d4
ROM:00051E82                 subq.w  #1,d5
ROM:00051E84                 add.w   $22(a0),d0
ROM:00051E88                 add.w   $24(a0),d1
ROM:00051E8C                 clr.w   d7
ROM:00051E8E
ROM:00051E8E loc_51E8E:
ROM:00051E8E                 movem.w d0-d1/d4-d5,-(sp)
ROM:00051E92                 andi.w  #$1F,d0
ROM:00051E96                 add.b   $52(a0,d0.w),d1
ROM:00051E9A                 andi.w  #$1F,d1
ROM:00051E9E                 add.w   $28(a0),d0
ROM:00051EA2                 lsl.w   #6,d0
ROM:00051EA4                 addi.w  #$40,d0
ROM:00051EA8                 add.w   d1,d1
ROM:00051EAA
ROM:00051EAA loc_51EAA:
ROM:00051EAA                 move.w  d0,d6
ROM:00051EAC                 add.w   d1,d6
ROM:00051EAE                 movem.w d6-d7,($3C0000).l
ROM:00051EB6                 addq.w  #2,d1
ROM:00051EB8                 andi.w  #$3F,d1
ROM:00051EBC                 dbf     d5,loc_51EAA
ROM:00051EC0                 movem.w (sp)+,d0-d1/d4-d5
ROM:00051EC4                 addq.w  #1,d0
ROM:00051EC6                 adda.w  d6,a3
ROM:00051EC8                 dbf     d4,loc_51E8E
ROM:00051ECC                 rts
ROM:00051ECC
ROM:00051ECE
ROM:00051ECE
ROM:00051ECE
ROM:00051ECE
