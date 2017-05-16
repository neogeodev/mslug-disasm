ROM:000137C6 PaletteRelated:
ROM:000137C6                 tst.b   (byte_10A2CE).l
ROM:000137CC                 beq.w   loc_1382A
ROM:000137D0                 move.b  #1,($3A000F).l
ROM:000137D8                 lea     (unk_10A2D4).l,a0
ROM:000137DE                 movea.l #$400000,a1
ROM:000137E4                 moveq   #$20,d1
ROM:000137E6                 move.w  #$C3,d0
ROM:000137EA
ROM:000137EA loc_137EA:
ROM:000137EA                 tst.w   (a0)
ROM:000137EC                 bne.w   loc_13866
ROM:000137F0                 adda.l  d1,a0
ROM:000137F2                 adda.l  d1,a1
ROM:000137F4
ROM:000137F4 loc_137F4:
ROM:000137F4                 dbf     d0,loc_137EA
ROM:000137F8                 lea     (unk_10A2D4).l,a0
ROM:000137FE                 tst.w   byte_1FE0(a0)
ROM:00013802                 beq.w   loc_1382A
ROM:00013806                 adda.l  #$1FE0,a0
ROM:0001380C                 movea.l #$400000,a1
ROM:00013812                 adda.l  #$1FE2,a1
ROM:00013818                 clr.w   (a0)+
ROM:0001381A                 move.w  (a0)+,(a1)+
ROM:0001381C                 move.l  (a0)+,(a1)+
ROM:0001381E                 move.l  (a0)+,(a1)+
ROM:00013820                 move.l  (a0)+,(a1)+
ROM:00013822                 move.l  (a0)+,(a1)+
ROM:00013824                 move.l  (a0)+,(a1)+
ROM:00013826                 move.l  (a0)+,(a1)+
ROM:00013828                 move.l  (a0)+,(a1)+
ROM:0001382A
ROM:0001382A loc_1382A:
ROM:0001382A
ROM:0001382A                 tst.b   (byte_10A2D1).l
ROM:00013830                 bne.w   loc_13856
ROM:00013834                 tst.b   (byte_10A2D0).l
ROM:0001383A                 beq.w   loc_1384C
ROM:0001383E                 subq.b  #1,(byte_10A2D0).l
ROM:00013844                 move.b  #1,(byte_10A2D1).l
ROM:0001384C
ROM:0001384C loc_1384C:
ROM:0001384C                 move.b  #1,($3A000F).l
ROM:00013854                 rts
ROM:00013856
ROM:00013856
ROM:00013856 loc_13856:
ROM:00013856                 move.b  #1,($3A001F).l
ROM:0001385E                 subq.b  #1,(byte_10A2D1).l
ROM:00013864                 rts
ROM:00013866
ROM:00013866
ROM:00013866 loc_13866:
ROM:00013866                 clr.w   (a0)+
ROM:00013868                 addq.w  #2,a1
ROM:0001386A                 move.w  (a0)+,(a1)+
ROM:0001386C                 move.l  (a0)+,(a1)+
ROM:0001386E                 move.l  (a0)+,(a1)+
ROM:00013870                 move.l  (a0)+,(a1)+
ROM:00013872                 move.l  (a0)+,(a1)+
ROM:00013874                 move.l  (a0)+,(a1)+
ROM:00013876                 move.l  (a0)+,(a1)+
ROM:00013878                 move.l  (a0)+,(a1)+
ROM:0001387A                 bra.w   loc_137F4
ROM:0001387A
ROM:0001387A
ROM:0001387E
ROM:0001387E                 move.b  #1,($3A001F).l
ROM:00013886                 movea.l #$400000,a0
ROM:0001388C                 move.b  (byte_10A2D2).l,d0
ROM:00013892                 andi.l  #$FF,d0
ROM:00013898                 add.l   d0,d0
ROM:0001389A                 lsl.l   #8,d0
ROM:0001389C                 adda.l  d0,a0
ROM:0001389E                 move.l  #$7FFF,d2
ROM:000138A4                 move.l  #$7FFF7FFF,d1
ROM:000138AA                 move.w  #$F,d0
ROM:000138AE
ROM:000138AE loc_138AE:
ROM:000138AE                 move.l  d2,(a0)+
ROM:000138B0                 move.l  d1,(a0)+
ROM:000138B2                 move.l  d1,(a0)+
ROM:000138B4                 move.l  d1,(a0)+
ROM:000138B6                 move.l  d1,(a0)+
ROM:000138B8                 move.l  d1,(a0)+
ROM:000138BA                 move.l  d1,(a0)+
ROM:000138BC                 move.l  d1,(a0)+
ROM:000138BE                 dbf     d0,loc_138AE
ROM:000138C2                 move.b  #1,($3A000F).l
ROM:000138CA                 addq.b  #1,(byte_10A2D2).l
ROM:000138D0                 cmpi.b  #$10,(byte_10A2D2).l
ROM:000138D8                 blt.w   locret_138E4
ROM:000138DC                 move.b  #$FF,(byte_10A2D2).l
ROM:000138E4
ROM:000138E4 locret_138E4:
ROM:000138E4                 rts
ROM:000138E6
ROM:000138E6
ROM:000138E6 loc_138E6:
ROM:000138E6                 cmpi.b  #$FF,(byte_10A2D2).l
ROM:000138EE                 beq.w   loc_138F8
ROM:000138F2                 andi    #$EE,ccr
ROM:000138F6                 rts
ROM:000138F8
ROM:000138F8
ROM:000138F8 loc_138F8:
ROM:000138F8                 ori     #$11,ccr
ROM:000138FC                 rts
ROM:000138FE
ROM:000138FE
ROM:000138FE
ROM:000138FE
