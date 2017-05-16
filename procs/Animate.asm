ROM:00028D70 Animate:
ROM:00028D70
ROM:00028D70                 movea.l ObjLLItem.AnimPtrB(a6),a1
ROM:00028D74                 cmpa.l  #$FFFFFFFF,a1
ROM:00028D7A                 beq.w   locret_28D8C
ROM:00028D7E                 movea.l ObjLLItem.AnimDefPtr(a6),a1
ROM:00028D82                 cmpa.l  #$FFFFFFFF,a1
ROM:00028D88                 bne.w   loc_28D8E
ROM:00028D8C
ROM:00028D8C locret_28D8C:
ROM:00028D8C                 rts
ROM:00028D8E
ROM:00028D8E
ROM:00028D8E loc_28D8E:
ROM:00028D8E                 movea.l ObjLLItem.AnimDefPtr(a6),a1
ROM:00028D92                 cmpa.l  ObjLLItem.AnimPtrB(a6),a1
ROM:00028D96                 beq.w   loc_28DA8
ROM:00028D9A                 move.b  $3B(a6),d1
ROM:00028D9E                 addq.b  #1,d1
ROM:00028DA0                 beq.w   loc_28DA8
ROM:00028DA4                 move.b  d1,$3B(a6)
ROM:00028DA8
ROM:00028DA8 loc_28DA8:
ROM:00028DA8
ROM:00028DA8                 moveq   #0,d2
ROM:00028DAA                 move.b  AnimDefStruct(a1),d2
ROM:00028DAC                 cmpi.b  #$20,d2
ROM:00028DB0                 bcs.w   loc_28DC0
ROM:00028DB4                 nop
ROM:00028DB6                 nop
ROM:00028DB8                 cmpi.b  #$20,d2
ROM:00028DBC                 nop
ROM:00028DBE                 trap    #$F
ROM:00028DC0
ROM:00028DC0 loc_28DC0:
ROM:00028DC0                 andi.l  #$FF,d2
ROM:00028DC6                 lsl.l   #2,d2
ROM:00028DC8                 movea.l #AnimTypeHandlers,a2
ROM:00028DCE                 movea.l (a2,d2.w),a3
ROM:00028DD2                 jmp     (a3)
ROM:00028DD2
ROM:00028DD2
ROM:00028DD4
ROM:00028DD4
ROM:00028DD4 loc_28DD4:
ROM:00028DD4                 move.b  ObjLLItem.AnimDelta(a6),d2
ROM:00028DD8                 bne.w   loc_28DE4
ROM:00028DDC                 move.b  AnimDefStruct.field_1(a1),d2
ROM:00028DE0                 move.b  d2,ObjLLItem.AnimDelta(a6)
ROM:00028DE4
ROM:00028DE4 loc_28DE4:
ROM:00028DE4                 adda.l  #2,a1
ROM:00028DEA                 move.l  a1,ObjLLItem.AnimDefPtr(a6)
ROM:00028DEE                 jmp     loc_28DA8
ROM:00028DF2
ROM:00028DF2
ROM:00028DF2 loc_28DF2:
ROM:00028DF2                 movea.l AnimDefStruct.field_2(a1),a1
ROM:00028DF6                 move.l  a1,ObjLLItem.AnimDefPtr(a6)
ROM:00028DFA                 jmp     loc_28DA8
ROM:00028DFE
ROM:00028DFE
ROM:00028DFE loc_28DFE:
ROM:00028DFE
ROM:00028DFE
ROM:00028DFE                 move.l  a1,ObjLLItem.AnimPtrB(a6)
ROM:00028E02
ROM:00028E02 loc_28E02:
ROM:00028E02
ROM:00028E02                 move.b  AnimDefStruct.field_1(a1),d1
ROM:00028E06                 move.b  ObjLLItem.field_3A(a6),d2
ROM:00028E0A                 eor.b   d1,d2
ROM:00028E0C                 btst    #3,AnimDefStruct.field_1(a1)
ROM:00028E12                 beq.w   loc_28E22
ROM:00028E16                 move.w  ObjLLItem.XPos(a6),d0
ROM:00028E1A                 move.w  ObjLLItem.YPos(a6),d1
ROM:00028E1E                 bra.w   loc_28E46
ROM:00028E22
ROM:00028E22
ROM:00028E22 loc_28E22:
ROM:00028E22                 move.w  AnimDefStruct.field_8(a1),d0
ROM:00028E26                 btst    #0,d2
ROM:00028E2A                 beq.w   loc_28E30
ROM:00028E2E                 neg.w   d0
ROM:00028E30
ROM:00028E30 loc_28E30:
ROM:00028E30                 add.w   ObjLLItem.XPos(a6),d0
ROM:00028E34                 move.w  AnimDefStruct.field_A(a1),d1
ROM:00028E38                 btst    #1,d2
ROM:00028E3C                 beq.w   loc_28E42
ROM:00028E40                 neg.w   d1
ROM:00028E42
ROM:00028E42 loc_28E42:
ROM:00028E42                 add.w   ObjLLItem.YPos(a6),d1
ROM:00028E46
ROM:00028E46 loc_28E46:
ROM:00028E46                 swap    d0
ROM:00028E48                 subi.w  #1,d1
ROM:00028E4C                 move.w  d1,d0
ROM:00028E4E                 move.b  $59(a6),d1
ROM:00028E52                 andi.b  #1,d1
ROM:00028E56                 beq.w   loc_28E9C
ROM:00028E5A                 btst    #6,$6B(a6)
ROM:00028E60                 beq.w   loc_28E6E
ROM:00028E64                 bset    #7,$5A(a6)
ROM:00028E6A                 bra.w   loc_28E9C
ROM:00028E6E
ROM:00028E6E
ROM:00028E6E loc_28E6E:
ROM:00028E6E                 btst    #0,$6B(a6)
ROM:00028E74                 beq.w   loc_28E82
ROM:00028E78                 bset    #7,$5A(a6)
ROM:00028E7E                 bra.w   loc_28E9C
ROM:00028E82
ROM:00028E82
ROM:00028E82 loc_28E82:
ROM:00028E82                 btst    #1,(DebugDIPs+1).l
ROM:00028E8A                 bne.w   loc_28E96
ROM:00028E8E                 jmp     loc_28FCA
ROM:00028E92
ROM:00028E92                 bra.w   loc_28E9C
ROM:00028E96
ROM:00028E96
ROM:00028E96 loc_28E96:
ROM:00028E96                 bset    #7,$5A(a6)
ROM:00028E9C
ROM:00028E9C loc_28E9C:
ROM:00028E9C
ROM:00028E9C                 btst    #5,ObjLLItem.Flags2(a6)
ROM:00028EA2                 beq.w   loc_28EC6
ROM:00028EA6                 bclr    #5,ObjLLItem.Flags2(a6)
ROM:00028EAC                 move.b  ObjLLItem.Flags2(a6),d1
ROM:00028EB0                 andi.b  #$10,d1
ROM:00028EB4                 ror.b   #4,d1
ROM:00028EB6                 move.b  AnimDefStruct.field_1(a1),d2
ROM:00028EBA                 andi.b  #$10,d2
ROM:00028EBE                 ror.b   #4,d2
ROM:00028EC0                 eor.b   d2,d1
ROM:00028EC2                 bne.w   loc_28FCA
ROM:00028EC6
ROM:00028EC6 loc_28EC6:
ROM:00028EC6                 btst    #2,AnimDefStruct.field_1(a1)
ROM:00028ECC                 beq.w   loc_28EDA
ROM:00028ED0                 btst    #3,ObjLLItem.Flags2(a6)
ROM:00028ED6                 bne.w   loc_28FCA
ROM:00028EDA
ROM:00028EDA loc_28EDA:
ROM:00028EDA                 move.w  ObjLLItem.Priority(a6),d1
ROM:00028EDE                 cmpi.w  #$FFFF,AnimDefStruct.field_6(a1)
ROM:00028EE4                 beq.w   loc_28EEC
ROM:00028EE8                 move.w  AnimDefStruct.field_6(a1),d1
ROM:00028EEC
ROM:00028EEC loc_28EEC:
ROM:00028EEC                 move.w  ObjLLItem.field_14(a6),d2
ROM:00028EF0                 btst    #7,$5A(a6)
ROM:00028EF6                 bne.w   loc_28F04
ROM:00028EFA                 btst    #0,$5A(a6)
ROM:00028F00                 beq.w   loc_28F22
ROM:00028F04
ROM:00028F04 loc_28F04:
ROM:00028F04                 btst    #0,ObjLLItem.Flags1(a6)
ROM:00028F0A                 bne.w   loc_28F22
ROM:00028F0E                 cmpi.w  #$FFFF,ObjLLItem.field_1C(a6)
ROM:00028F14                 beq.w   loc_28F22
ROM:00028F18                 move.w  ObjLLItem.field_1C(a6),d2
ROM:00028F1C                 bset    #7,$5A(a6)
ROM:00028F22
ROM:00028F22 loc_28F22:
ROM:00028F22
ROM:00028F22                 btst    #4,(DebugDIPs+1).l
ROM:00028F2A                 beq.w   loc_28F3E
ROM:00028F2E                 btst    #0,$6B(a6)
ROM:00028F34                 beq.w   loc_28F3E
ROM:00028F38                 jsr     loc_2F84A
ROM:00028F3E
ROM:00028F3E loc_28F3E:
ROM:00028F3E
ROM:00028F3E                 move.b  ObjLLItem.field_3A(a6),d5
ROM:00028F42                 move.b  ObjLLItem.Flags2(a6),d4
ROM:00028F46                 andi.b  #4,d4
ROM:00028F4A                 or.b    d4,d5
ROM:00028F4C                 move.b  AnimDefStruct.field_1(a1),d4
ROM:00028F50                 andi.b  #3,d4
ROM:00028F54                 eor.b   d4,d5
ROM:00028F56                 move.b  $33(a6),d3
ROM:00028F5A                 move.b  ObjLLItem.field_32(a6),d4
ROM:00028F5E                 movea.l AnimDefStruct.field_2(a1),a0
ROM:00028F62                 movem.l d0,-(sp)
ROM:00028F66                 movem.l d1,-(sp)
ROM:00028F6A                 move.w  d0,d1
ROM:00028F6C                 swap    d0
ROM:00028F6E                 cmpi.w  #$FF00,d0
ROM:00028F72                 bgt.w   loc_28F7A
ROM:00028F76                 bra.w   loc_28FA2
ROM:00028F7A
ROM:00028F7A
ROM:00028F7A loc_28F7A:
ROM:00028F7A                 cmpi.w  #$200,d0
ROM:00028F7E                 blt.w   loc_28F86
ROM:00028F82                 bra.w   loc_28FA2
ROM:00028F86
ROM:00028F86
ROM:00028F86 loc_28F86:
ROM:00028F86                 cmpi.w  #0,d1
ROM:00028F8A                 bgt.w   loc_28F92
ROM:00028F8E                 bra.w   loc_28FA2
ROM:00028F92
ROM:00028F92
ROM:00028F92 loc_28F92:
ROM:00028F92                 cmpi.w  #$300,d1
ROM:00028F96                 blt.w   loc_28F9E
ROM:00028F9A                 bra.w   loc_28FA2
ROM:00028F9E
ROM:00028F9E
ROM:00028F9E loc_28F9E:
ROM:00028F9E                 bra.w   loc_28FA8
ROM:00028FA2
ROM:00028FA2
ROM:00028FA2 loc_28FA2:
ROM:00028FA2
ROM:00028FA2                 movea.l #$FFFFFFFF,a0
ROM:00028FA8
ROM:00028FA8 loc_28FA8:
ROM:00028FA8                 movem.l (sp)+,d1
ROM:00028FAC                 movem.l (sp)+,d0
ROM:00028FB0                 btst    #6,$12(a6)
ROM:00028FB6                 bne.w   loc_28FC4
ROM:00028FBA                 jsr     sub_5A9E2
ROM:00028FC0                 bra.w   loc_28FCA
ROM:00028FC4
ROM:00028FC4
ROM:00028FC4 loc_28FC4:
ROM:00028FC4                 jsr     sub_5A9D6
ROM:00028FCA
ROM:00028FCA loc_28FCA:
ROM:00028FCA
ROM:00028FCA                 move.b  1(a1),d0
ROM:00028FCE                 adda.l  #8,a1
ROM:00028FD4                 btst    #3,d0
ROM:00028FD8                 bne.w   loc_28FE2
ROM:00028FDC                 adda.l  #4,a1
ROM:00028FE2
ROM:00028FE2 loc_28FE2:
ROM:00028FE2                 cmpi.b  #$18,(a1)
ROM:00028FE6                 bne.w   loc_28FEE
ROM:00028FEA                 jmp     loc_2934C
ROM:00028FEE
ROM:00028FEE
ROM:00028FEE loc_28FEE:
ROM:00028FEE                 cmpi.b  #2,(a1)
ROM:00028FF2                 bne.w   loc_28FFA
ROM:00028FF6                 jmp     loc_28E02
ROM:00028FFA
ROM:00028FFA
ROM:00028FFA loc_28FFA:
ROM:00028FFA                 tst.b   ObjLLItem.AnimDelta(a6)
ROM:00028FFE
ROM:00028FFE loc_28FFE:
ROM:00028FFE                 beq.w   loc_29026
ROM:00029002                 tst.b   ObjLLItem.field_44(a6)
ROM:00029006                 bne.w   loc_29020
ROM:0002900A                 subi.b  #1,ObjLLItem.AnimDelta(a6)
ROM:00029010                 bne.w   loc_29020
ROM:00029014                 cmpi.b  #$16,(a1)
ROM:00029018                 beq.w   loc_29026
ROM:0002901C                 move.l  a1,ObjLLItem.AnimDefPtr(a6)
ROM:00029020
ROM:00029020 loc_29020:
ROM:00029020
ROM:00029020                 andi    #$EE,ccr
ROM:00029024                 rts
ROM:00029026
ROM:00029026
ROM:00029026 loc_29026:
ROM:00029026
ROM:00029026                 ori     #$11,ccr
ROM:0002902A                 rts
ROM:0002902C
ROM:0002902C
ROM:0002902C loc_2902C:
ROM:0002902C                 tst.b   $47(a6)
ROM:00029030                 bne.w   loc_2903E
ROM:00029034                 move.b  1(a1),d1
ROM:00029038                 addq.b  #1,d1
ROM:0002903A                 move.b  d1,$47(a6)
ROM:0002903E
ROM:0002903E loc_2903E:
ROM:0002903E                 move.b  $47(a6),d1
ROM:00029042                 clr.b   d0
ROM:00029044                 subi.b  #1,d1
ROM:00029048                 addx.b  d0,d1
ROM:0002904A                 move.b  d1,$47(a6)
ROM:0002904E                 tst.b   d1
ROM:00029050                 beq.w   loc_29060
ROM:00029054                 movea.l 2(a1),a1
ROM:00029058                 move.l  a1,ObjLLItem.AnimDefPtr(a6)
ROM:0002905C                 jmp     loc_28DA8
ROM:00029060
ROM:00029060
ROM:00029060 loc_29060:
ROM:00029060                 adda.l  #6,a1
ROM:00029066                 move.l  a1,$3C(a6)
ROM:0002906A                 jmp     loc_28DA8
ROM:0002906E
ROM:0002906E
ROM:0002906E loc_2906E:
ROM:0002906E                 move.w  2(a1),d0
ROM:00029072                 jsr     (PlaySFX).l
ROM:00029078                 adda.l  #4,a1
ROM:0002907E                 move.l  a1,$3C(a6)
ROM:00029082                 jmp     loc_28DA8
ROM:00029086
ROM:00029086
ROM:00029086 loc_29086:
ROM:00029086                 move.w  2(a1),d0
ROM:0002908A                 jsr     (SoundRelated4).l
ROM:00029090                 adda.l  #4,a1
ROM:00029096                 move.l  a1,$3C(a6)
ROM:0002909A                 jmp     loc_28DA8
ROM:0002909E
ROM:0002909E
ROM:0002909E loc_2909E:
ROM:0002909E                 move.w  2(a1),d1
ROM:000290A2                 cmpi.w  #$A0,d1
ROM:000290A6                 blt.w   loc_290B4+2
ROM:000290AA                 nop
ROM:000290AC                 nop
ROM:000290AE                 cmpi.w  #$A0,d1
ROM:000290B2                 nop
ROM:000290B4
ROM:000290B4 loc_290B4:
ROM:000290B4                 trap    #$F
ROM:000290B4                 dc.w    $1DA9
ROM:000290B8                 ori.b   #0,d1
ROM:000290BC                 adda.l  #4,a1
ROM:000290C2                 move.l  a1,$3C(a6)
ROM:000290C6                 jmp     loc_28DA8
ROM:000290CA
ROM:000290CA
ROM:000290CA loc_290CA:
ROM:000290CA                 move.w  4(a1),d1
ROM:000290CE                 cmpi.w  #$A0,d1
ROM:000290D2                 blt.w   loc_290E0+2
ROM:000290D6                 nop
ROM:000290D8                 nop
ROM:000290DA                 cmpi.w  #$A0,d1
ROM:000290DE                 nop
ROM:000290E0
ROM:000290E0 loc_290E0:
ROM:000290E0                 trap    #$F
ROM:000290E0                 dc.w    $3DA9
ROM:000290E4                 ori.b   #0,d2
ROM:000290E8                 adda.l  #6,a1
ROM:000290EE                 move.l  a1,$3C(a6)
ROM:000290F2                 jmp     loc_28DA8
ROM:000290F6
ROM:000290F6
ROM:000290F6 loc_290F6:
ROM:000290F6                 move.w  6(a1),d1
ROM:000290FA                 cmpi.w  #$A0,d1
ROM:000290FE                 blt.w   loc_2910C+2
ROM:00029102                 nop
ROM:00029104                 nop
ROM:00029106                 cmpi.w  #$A0,d1
ROM:0002910A                 nop
ROM:0002910C
ROM:0002910C loc_2910C:
ROM:0002910C                 trap    #$F
ROM:0002910C                 dc.w    $2DA9
ROM:00029110                 ori.b   #0,d2
ROM:00029114                 adda.l  #8,a1
ROM:0002911A                 move.l  a1,$3C(a6)
ROM:0002911E                 jmp     loc_28DA8
ROM:00029122
ROM:00029122
ROM:00029122 loc_29122:
ROM:00029122                 movem.l a1,-(sp)
ROM:00029126                 movea.l 2(a1),a1
ROM:0002912A                 jsr     (a1)
ROM:0002912C                 movem.l (sp)+,a1
ROM:00029130                 adda.l  #6,a1
ROM:00029136                 move.l  a1,$3C(a6)
ROM:0002913A                 jmp     loc_28DA8
ROM:0002913E
ROM:0002913E
ROM:0002913E loc_2913E:
ROM:0002913E                 move.l  2(a1),$48(a6)
ROM:00029144                 adda.l  #6,a1
ROM:0002914A                 move.l  a1,$3C(a6)
ROM:0002914E                 jmp     loc_28DA8
ROM:00029152
ROM:00029152
ROM:00029152 loc_29152:
ROM:00029152                 move.l  2(a1),$4C(a6)
ROM:00029158                 adda.l  #6,a1
ROM:0002915E                 move.l  a1,$3C(a6)
ROM:00029162                 jmp     loc_28DA8
ROM:00029166
ROM:00029166
ROM:00029166 loc_29166:
ROM:00029166                 move.l  2(a1),$60(a6)
ROM:0002916C                 adda.l  #6,a1
ROM:00029172                 move.l  a1,$3C(a6)
ROM:00029176                 jmp     loc_28DA8
ROM:0002917A
ROM:0002917A
ROM:0002917A loc_2917A:
ROM:0002917A                 move.b  1(a1),d0
ROM:0002917E                 andi.w  #$FF,d0
ROM:00029182                 move.w  (a6,d0.w),ObjLLItem.field_14(a6)
ROM:00029188                 adda.l  #2,a1
ROM:0002918E                 move.l  a1,$3C(a6)
ROM:00029192                 jmp     loc_28DA8
ROM:00029196
ROM:00029196
ROM:00029196 loc_29196:
ROM:00029196                 move.w  2(a1),d1
ROM:0002919A                 cmpi.w  #$A0,d1
ROM:0002919E                 blt.w   loc_291AC+2
ROM:000291A2                 nop
ROM:000291A4                 nop
ROM:000291A6                 cmpi.w  #$A0,d1
ROM:000291AA                 nop
ROM:000291AC
ROM:000291AC loc_291AC:
ROM:000291AC                 trap    #$F
ROM:000291AC                 dc.w    $1029
ROM:000291B0                 ori.b   #$36,d1
ROM:000291B4                 move.b  d0,d0
ROM:000291B6                 adda.l  #4,a1
ROM:000291BC                 move.l  a1,$3C(a6)
ROM:000291C0                 jmp     loc_28DA8
ROM:000291C4
ROM:000291C4
ROM:000291C4 loc_291C4:
ROM:000291C4                 move.w  4(a1),d1
ROM:000291C8                 cmpi.w  #$A0,d1
ROM:000291CC                 blt.w   loc_291DC
ROM:000291D0                 nop
ROM:000291D2                 nop
ROM:000291D4                 cmpi.w  #$A0,d1
ROM:000291D8                 nop
ROM:000291DA                 trap    #$F
ROM:000291DC
ROM:000291DC loc_291DC:
ROM:000291DC                 move.w  2(a1),d0
ROM:000291E0                 and.w   d0,(a6,d1.w)
ROM:000291E4                 adda.l  #6,a1
ROM:000291EA                 move.l  a1,$3C(a6)
ROM:000291EE                 jmp     loc_28DA8
ROM:000291F2
ROM:000291F2
ROM:000291F2 loc_291F2:
ROM:000291F2                 move.w  6(a1),d1
ROM:000291F6                 cmpi.w  #$A0,d1
ROM:000291FA                 blt.w   loc_29208+2
ROM:000291FE                 nop
ROM:00029200                 nop
ROM:00029202                 cmpi.w  #$A0,d1
ROM:00029206                 nop
ROM:00029208
ROM:00029208 loc_29208:
ROM:00029208                 trap    #$F
ROM:00029208                 dc.w    $2029
ROM:0002920C                 ori.b   #$B6,d2
ROM:00029210                 move.b  d0,d0
ROM:00029212                 adda.l  #8,a1
ROM:00029218                 move.l  a1,$3C(a6)
ROM:0002921C                 jmp     loc_28DA8
ROM:00029220
ROM:00029220
ROM:00029220 loc_29220:
ROM:00029220                 move.w  2(a1),d1
ROM:00029224                 cmpi.w  #$A0,d1
ROM:00029228                 blt.w   loc_29236+2
ROM:0002922C                 nop
ROM:0002922E                 nop
ROM:00029230                 cmpi.w  #$A0,d1
ROM:00029234                 nop
ROM:00029236
ROM:00029236 loc_29236:
ROM:00029236                 trap    #$F
ROM:00029236                 dc.w    $1029
ROM:0002923A                 ori.b   #$36,d1
ROM:0002923E                 move.b  d0,d0
ROM:00029240                 adda.l  #4,a1
ROM:00029246                 move.l  a1,$3C(a6)
ROM:0002924A                 jmp     loc_28DA8
ROM:0002924E
ROM:0002924E
ROM:0002924E loc_2924E:
ROM:0002924E                 move.w  4(a1),d1
ROM:00029252                 cmpi.w  #$A0,d1
ROM:00029256                 blt.w   loc_29264+2
ROM:0002925A                 nop
ROM:0002925C                 nop
ROM:0002925E                 cmpi.w  #$A0,d1
ROM:00029262                 nop
ROM:00029264
ROM:00029264 loc_29264:
ROM:00029264                 trap    #$F
ROM:00029264                 dc.w    $3029
ROM:00029268                 ori.b   #$76,d2
ROM:0002926C                 move.b  d0,d0
ROM:0002926E                 adda.l  #6,a1
ROM:00029274                 move.l  a1,$3C(a6)
ROM:00029278                 jmp     loc_28DA8
ROM:0002927C
ROM:0002927C
ROM:0002927C loc_2927C:
ROM:0002927C                 move.w  6(a1),d1
ROM:00029280                 cmpi.w  #$A0,d1
ROM:00029284                 blt.w   loc_29292+2
ROM:00029288                 nop
ROM:0002928A                 nop
ROM:0002928C                 cmpi.w  #$A0,d1
ROM:00029290                 nop
ROM:00029292
ROM:00029292 loc_29292:
ROM:00029292                 trap    #$F
ROM:00029292                 dc.w    $2029
ROM:00029296                 ori.b   #$B6,d2
ROM:0002929A                 move.b  d0,d0
ROM:0002929C                 adda.l  #8,a1
ROM:000292A2                 move.l  a1,$3C(a6)
ROM:000292A6                 jmp     loc_28DA8
ROM:000292AA
ROM:000292AA
ROM:000292AA loc_292AA:
ROM:000292AA                 move.w  2(a1),d1
ROM:000292AE                 cmpi.w  #$A0,d1
ROM:000292B2                 blt.w   loc_292C0+2
ROM:000292B6                 nop
ROM:000292B8                 nop
ROM:000292BA                 cmpi.w  #$A0,d1
ROM:000292BE                 nop
ROM:000292C0
ROM:000292C0 loc_292C0:
ROM:000292C0                 trap    #$F
ROM:000292C0                 dc.w    $1029
ROM:000292C4                 ori.b   #$36,d1
ROM:000292C8                 move.b  d0,d0
ROM:000292CA                 adda.l  #4,a1
ROM:000292D0                 move.l  a1,$3C(a6)
ROM:000292D4                 jmp     loc_28DA8
ROM:000292D8
ROM:000292D8
ROM:000292D8 loc_292D8:
ROM:000292D8                 move.w  4(a1),d1
ROM:000292DC                 cmpi.w  #$A0,d1
ROM:000292E0                 blt.w   loc_292EE+2
ROM:000292E4                 nop
ROM:000292E6                 nop
ROM:000292E8                 cmpi.w  #$A0,d1
ROM:000292EC                 nop
ROM:000292EE
ROM:000292EE loc_292EE:
ROM:000292EE                 trap    #$F
ROM:000292EE                 dc.w    $3029
ROM:000292F2                 ori.b   #$76,d2
ROM:000292F6                 move.b  d0,d0
ROM:000292F8                 adda.l  #6,a1
ROM:000292FE                 move.l  a1,$3C(a6)
ROM:00029302                 jmp     loc_28DA8
ROM:00029306
ROM:00029306
ROM:00029306 loc_29306:
ROM:00029306                 move.w  6(a1),d1
ROM:0002930A                 cmpi.w  #$A0,d1
ROM:0002930E                 blt.w   loc_2931C+2
ROM:00029312                 nop
ROM:00029314                 nop
ROM:00029316                 cmpi.w  #$A0,d1
ROM:0002931A                 nop
ROM:0002931C
ROM:0002931C loc_2931C:
ROM:0002931C                 trap    #$F
ROM:0002931C                 dc.w    $2029
ROM:00029320                 ori.b   #$B6,d2
ROM:00029324                 move.b  d0,d0
ROM:00029326                 adda.l  #8,a1
ROM:0002932C                 move.l  a1,$3C(a6)
ROM:00029330                 jmp     loc_28DA8
ROM:00029334
ROM:00029334
ROM:00029334 loc_29334:
ROM:00029334                 movea.l $40(a6),a1
ROM:00029338                 jmp     loc_28DFE
ROM:0002933C
ROM:0002933C
ROM:0002933C loc_2933C:
ROM:0002933C                 bset    #5,ObjLLItem.Flags2(a6)
ROM:00029342                 adda.l  #2,a1
ROM:00029348                 jmp     loc_28DFE
ROM:0002934C
ROM:0002934C
ROM:0002934C loc_2934C:
ROM:0002934C
ROM:0002934C
ROM:0002934C                 bset    #5,ObjLLItem.Flags2(a6)
ROM:00029352                 adda.l  #2,a1
ROM:00029358                 jmp     loc_28E02
ROM:0002935C
ROM:0002935C
ROM:0002935C loc_2935C:
ROM:0002935C                 move.l  a1,$70(a6)
ROM:00029360                 addi.l  #2,$70(a6)
ROM:00029368                 adda.l  #$A,a1
ROM:0002936E                 move.l  a1,$3C(a6)
ROM:00029372                 jmp     loc_28DA8
ROM:00029376
ROM:00029376
ROM:00029376 loc_29376:
ROM:00029376                 move.b  ObjLLItem.AnimDelta(a6),d2
ROM:0002937A                 bne.w   loc_2939A
ROM:0002937E                 move.b  1(a1),d0
ROM:00029382                 andi.w  #$FF,d0
ROM:00029386                 movea.l (a6,d0.w),a0
ROM:0002938A                 move.b  $3B(a6),d0
ROM:0002938E                 andi.w  #$FF,d0
ROM:00029392                 move.b  (a0,d0.w),d2
ROM:00029396                 move.b  d2,ObjLLItem.AnimDelta(a6)
ROM:0002939A
ROM:0002939A loc_2939A:
ROM:0002939A                 adda.l  #2,a1
ROM:000293A0                 move.l  a1,$3C(a6)
ROM:000293A4                 jmp     loc_28DA8
ROM:000293A8
ROM:000293A8
ROM:000293A8 loc_293A8:
ROM:000293A8                 clr.w   d0
ROM:000293AA                 move.b  1(a1),d0
ROM:000293AE                 move.w  (a6,d0.w),d1
ROM:000293B2                 mulu.w  #$12,d1
ROM:000293B6                 adda.l  #2,a1
ROM:000293BC                 adda.l  d1,a1
ROM:000293BE                 move.l  a1,$3C(a6)
ROM:000293C2                 jmp     loc_28DA8
ROM:000293C6
ROM:000293C6
ROM:000293C6 loc_293C6:
ROM:000293C6                 clr.w   d0
ROM:000293C8                 move.b  1(a1),d0
ROM:000293CC                 move.w  (a6,d0.w),d1
ROM:000293D0                 mulu.w  #$1C,d1
ROM:000293D4                 adda.l  #2,a1
ROM:000293DA                 adda.l  d1,a1
ROM:000293DC                 move.l  a1,$3C(a6)
ROM:000293E0                 jmp     loc_28DA8
ROM:000293E4
ROM:000293E4
ROM:000293E4 loc_293E4:
ROM:000293E4                 ori.b   #$4E,d0
ROM:000293E8                 ori.b   #$4E,d0
ROM:000293EC
ROM:000293EC loc_293EC:
ROM:000293EC                 move.b  1(a1),d0
ROM:000293F0                 andi.w  #$F,d0
ROM:000293F4                 asl.w   #2,d0
ROM:000293F6                 move.l  loc_293E4(pc,d0.w),d1
ROM:000293FA                 suba.l  d1,a1
ROM:000293FC                 move.l  a1,$3C(a6)
ROM:00029400                 jmp     loc_28E02
ROM:00029404
ROM:00029404                 move.b  $45(a6),d0
ROM:00029408                 move.b  #0,d1
ROM:0002940C                 subi.b  #1,d0
ROM:00029410                 addx.b  d1,d0
ROM:00029412                 move.b  d0,$45(a6)
ROM:00029416                 move.b  $44(a6),d0
ROM:0002941A                 move.b  #0,d1
ROM:0002941E                 subi.b  #1,d0
ROM:00029422                 addx.b  d1,d0
ROM:00029424                 move.b  d0,$44(a6)
ROM:00029428                 rts
ROM:0002942A
ROM:0002942A
ROM:0002942A loc_2942A:
ROM:0002942A
ROM:0002942A                 move.w  2(a1),d0
ROM:0002942E                 cmpi.b  #$B,(byte_106ECE).l
ROM:00029436                 beq.w   loc_29446
ROM:0002943A                 cmpi.b  #$C,(byte_106ECE).l
ROM:00029442                 bne.w   loc_2944A
ROM:00029446
ROM:00029446 loc_29446:
ROM:00029446                 andi.w  #$FFF,d0
ROM:0002944A
ROM:0002944A loc_2944A:
ROM:0002944A                 move.w  4(a1),d1
ROM:0002944E                 jsr     sub_440D0
ROM:00029454                 move.w  d0,ObjLLItem.XPos(a6)
ROM:00029458                 move.w  d1,ObjLLItem.YPos(a6)
ROM:0002945C                 move.w  $C(a1),ObjLLItem.Priority(a6)
ROM:00029462                 move.w  $A(a1),$70(a6)
ROM:00029468                 move.b  1(a1),d0
ROM:0002946C                 or.b    d0,ObjLLItem.Flags2(a6)
ROM:00029470                 tst.b   (a1)
ROM:00029472                 bne.w   locret_294AE
ROM:00029476                 move.w  $E(a1),d1
ROM:0002947A                 cmpi.w  #$FFFF,d1
ROM:0002947E                 bne.w   loc_2948C+2
ROM:00029482                 nop
ROM:00029484                 nop
ROM:00029486                 cmpi.w  #$FFFF,d1
ROM:0002948A                 nop
ROM:0002948C
ROM:0002948C loc_2948C:
ROM:0002948C                 trap    #$F
ROM:0002948C                 dc.w    $48E7
ROM:00029490                 ori.w   #$4EB9,d0
ROM:00029494                 ori.b   #$6E,d0
ROM:00029498                 movem.l (sp)+,a1
ROM:0002949C                 movea.l $10(a1),a0
ROM:000294A0                 cmpa.l  #$FFFFFFFF,a0
ROM:000294A6                 beq.w   locret_294AE
ROM:000294AA                 jsr     ChangeAnimation
ROM:000294AE
ROM:000294AE locret_294AE:
ROM:000294AE
ROM:000294AE                 rts
ROM:000294B0
ROM:000294B0
ROM:000294B0 loc_294B0:
ROM:000294B0                 move.l  a1,ObjLLItem.AnimPtrB(a6)
ROM:000294B4
ROM:000294B4 loc_294B4:
ROM:000294B4                 move.w  ObjLLItem.XPos(a6),d0
ROM:000294B8                 move.w  ObjLLItem.YPos(a6),d1
ROM:000294BC                 bra.w   loc_294C8
ROM:000294C0
ROM:000294C0                 move.w  ObjLLItem.XPos(a6),d0
ROM:000294C4                 move.w  ObjLLItem.YPos(a6),d1
ROM:000294C8
ROM:000294C8 loc_294C8:
ROM:000294C8                 swap    d0
ROM:000294CA                 subi.w  #1,d1
ROM:000294CE                 move.w  d1,d0
ROM:000294D0                 move.w  ObjLLItem.Priority(a6),d1
ROM:000294D4                 move.w  $14(a6),d2
ROM:000294D8                 move.b  $3A(a6),d5
ROM:000294DC                 move.b  ObjLLItem.Flags2(a6),d4
ROM:000294E0                 andi.b  #4,d4
ROM:000294E4                 or.b    d4,d5
ROM:000294E6                 move.b  $33(a6),d3
ROM:000294EA                 move.b  $32(a6),d4
ROM:000294EE                 movea.l 2(a1),a0
ROM:000294F2                 btst    #6,ObjLLItem.Flags2(a6)
ROM:000294F8                 bne.w   loc_29506
ROM:000294FC                 jsr     sub_5A9E2
ROM:00029502                 bra.w   loc_2950C
ROM:00029506
ROM:00029506
ROM:00029506 loc_29506:
ROM:00029506                 jsr     sub_5A9D6
ROM:0002950C
ROM:0002950C loc_2950C:
ROM:0002950C                 move.b  1(a1),d0
ROM:00029510                 adda.l  #8,a1
ROM:00029516                 btst    #3,d0
ROM:0002951A                 bne.w   loc_29524
ROM:0002951E                 adda.l  #4,a1
ROM:00029524
ROM:00029524 loc_29524:
ROM:00029524                 cmpi.b  #$18,(a1)
ROM:00029528                 bne.w   loc_29530
ROM:0002952C                 jmp     loc_2934C
ROM:00029530
ROM:00029530
ROM:00029530 loc_29530:
ROM:00029530                 cmpi.b  #2,(a1)
ROM:00029534                 bne.w   loc_2953C
ROM:00029538                 jmp     loc_294B4
ROM:0002953C
ROM:0002953C
ROM:0002953C loc_2953C:
ROM:0002953C                 tst.b   ObjLLItem.AnimDelta(a6)
ROM:00029540                 beq.w   loc_29560
ROM:00029544                 subi.b  #1,ObjLLItem.AnimDelta(a6)
ROM:0002954A                 bne.w   loc_2955A
ROM:0002954E                 cmpi.b  #$16,(a1)
ROM:00029552                 beq.w   loc_29560
ROM:00029556                 move.l  a1,ObjLLItem.AnimDefPtr(a6)
ROM:0002955A
ROM:0002955A loc_2955A:
ROM:0002955A                 andi    #$EE,ccr
ROM:0002955E                 rts
ROM:00029560
ROM:00029560
ROM:00029560 loc_29560:
ROM:00029560
ROM:00029560                 ori     #$11,ccr
ROM:00029564                 rts
ROM:00029566
ROM:00029566                 movea.l ObjLLItem.LLNextPtr(a6),a1
ROM:0002956A                 move.b  ObjLLItem.Counter?(a6),d0
ROM:0002956E                 cmp.b   ObjLLItem.Counter?(a1),d0
ROM:00029572                 bcs.w   loc_2957C
ROM:00029576                 andi    #$EE,ccr
ROM:0002957A                 rts
ROM:0002957C
ROM:0002957C
ROM:0002957C loc_2957C:
ROM:0002957C                 ori     #$11,ccr
ROM:00029580                 rts
ROM:00029582
ROM:00029582                 jsr     sub_2A46C
ROM:00029586                 rts
ROM:00029588
ROM:00029588
ROM:00029588 loc_29588:
ROM:00029588                 move.b  #$FF,(byte_106F4A).l
ROM:00029590                 jmp     (SetDying).l
ROM:00029596
ROM:00029596                 rts
ROM:00029598
ROM:00029598                 clr.b   (byte_106F4A).l
ROM:0002959E                 jmp     (SetDying).l
ROM:000295A4
ROM:000295A4                 rts
ROM:000295A6
ROM:000295A6
ROM:000295A6
ROM:000295A6
