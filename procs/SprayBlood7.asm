ROM:0005D140 SprayBlood7:
ROM:0005D140
ROM:0005D140                 move.b  #1,d1
ROM:0005D144                 move.w  #2,d0
ROM:0005D148                 bra.w   loc_5D170
ROM:0005D14C
ROM:0005D14C
ROM:0005D14C loc_5D14C:
ROM:0005D14C
ROM:0005D14C                 move.b  #2,d1
ROM:0005D150                 move.w  #2,d0
ROM:0005D154                 bra.w   loc_5D170
ROM:0005D158
ROM:0005D158                 move.b  #8,d1
ROM:0005D15C                 move.w  #2,d0
ROM:0005D160                 bra.w   loc_5D170
ROM:0005D164
ROM:0005D164                 move.b  #4,d1
ROM:0005D168                 move.w  #2,d0
ROM:0005D16C                 bra.w   *+4
ROM:0005D170
ROM:0005D170
ROM:0005D170 loc_5D170:
ROM:0005D170
ROM:0005D170                 btst    #7,(DebugDIPs).l
ROM:0005D178                 bne.w   loc_5D190
ROM:0005D17C                 lea     ($1001C0).l,a4
ROM:0005D182                 tst.b   byte_100204-SoftDIPs?(a4)
ROM:0005D186                 beq.w   loc_5D190
ROM:0005D18A                 andi    #$EE,ccr
ROM:0005D18E                 rts
ROM:0005D190
ROM:0005D190
ROM:0005D190 loc_5D190:
ROM:0005D190
ROM:0005D190                 lea     loc_5CC08,a2
ROM:0005D194                 cmpi.b  #1,$6D(a6)
ROM:0005D19A                 bne.w   loc_5D1A8
ROM:0005D19E                 lea     ($100300).l,a1
ROM:0005D1A4                 movea.l dword_100372-off_100300(a1),a2
ROM:0005D1A8
ROM:0005D1A8 loc_5D1A8:
ROM:0005D1A8                 cmpi.b  #2,$6D(a6)
ROM:0005D1AE                 bne.w   loc_5D1BC
ROM:0005D1B2                 lea     ($1003A0).l,a1
ROM:0005D1B8                 movea.l dword_100412-dword_1003A0(a1),a2
ROM:0005D1BC
ROM:0005D1BC loc_5D1BC:
ROM:0005D1BC                 jsr     sub_5D674
ROM:0005D1C0
ROM:0005D1C0 loc_5D1C0:
ROM:0005D1C0
ROM:0005D1C0                 move.b  (a2,d0.w),d0
ROM:0005D1C4                 andi.b  #$F,d0
ROM:0005D1C8                 eor.b   d1,d0
ROM:0005D1CA                 beq.w   loc_5D1D4
ROM:0005D1CE                 andi    #$EE,ccr
ROM:0005D1D2                 rts
ROM:0005D1D4
ROM:0005D1D4
ROM:0005D1D4 loc_5D1D4:
ROM:0005D1D4                 ori     #$11,ccr
ROM:0005D1D8                 rts
ROM:0005D1D8
ROM:0005D1D8
ROM:0005D1DA
ROM:0005D1DA                 jsr     sub_5CE4A
ROM:0005D1DE                 bcc.w   loc_5D204
ROM:0005D1E2                 move.b  #$20,d1
ROM:0005D1E6                 ori.b   #$40,d1
ROM:0005D1EA                 move.w  #2,d0
ROM:0005D1EE                 lea     (unk_10E206).l,a2
ROM:0005D1F4                 bra.w   *+4
ROM:0005D1F8
ROM:0005D1F8
ROM:0005D1F8 loc_5D1F8:
ROM:0005D1F8                 move.b  (a2,d0.w),d0
ROM:0005D1FC                 and.b   d1,d0
ROM:0005D1FE                 cmp.b   d1,d0
ROM:0005D200                 beq.w   loc_5D20A
ROM:0005D204
ROM:0005D204 loc_5D204:
ROM:0005D204
ROM:0005D204                 andi    #$EE,ccr
ROM:0005D208                 rts
ROM:0005D20A
ROM:0005D20A
ROM:0005D20A loc_5D20A:
ROM:0005D20A                 ori     #$11,ccr
ROM:0005D20E                 rts
ROM:0005D210
ROM:0005D210                 jsr     sub_5CE4A
ROM:0005D214                 bcc.s   loc_5D204
ROM:0005D216                 move.b  #$40,d1
ROM:0005D21A                 move.w  #2,d0
ROM:0005D21E                 lea     (unk_10E206).l,a2
ROM:0005D224                 bra.w   *+4
ROM:0005D228
ROM:0005D228
ROM:0005D228 loc_5D228:
ROM:0005D228                 move.b  (a2,d0.w),d0
ROM:0005D22C                 and.b   d1,d0
ROM:0005D22E                 cmp.b   d1,d0
ROM:0005D230                 beq.w   loc_5D23A
ROM:0005D234                 andi    #$EE,ccr
ROM:0005D238                 rts
ROM:0005D23A
ROM:0005D23A
ROM:0005D23A loc_5D23A:
ROM:0005D23A                 ori     #$11,ccr
ROM:0005D23E                 rts
ROM:0005D240
ROM:0005D240                 jsr     sub_5CE4A
ROM:0005D244                 bcs.w   loc_5D24C
ROM:0005D248                 bra.w   loc_5D2EE
ROM:0005D24C
ROM:0005D24C
ROM:0005D24C loc_5D24C:
ROM:0005D24C                 move.b  #8,d1
ROM:0005D250                 move.w  #0,d0
ROM:0005D254                 bra.w   loc_5D2DE
ROM:0005D258
ROM:0005D258                 jsr     sub_5CD06
ROM:0005D25C                 bcs.w   loc_5D264
ROM:0005D260                 bra.w   loc_5D2EE
ROM:0005D264
ROM:0005D264
ROM:0005D264 loc_5D264:
ROM:0005D264                 move.b  #1,d1
ROM:0005D268                 move.w  #0,d0
ROM:0005D26C                 bra.w   loc_5D2DE
ROM:0005D270
ROM:0005D270                 jsr     sub_5CD06
ROM:0005D274                 bcs.w   loc_5D27C
ROM:0005D278                 bra.w   loc_5D2EE
ROM:0005D27C
ROM:0005D27C
ROM:0005D27C loc_5D27C:
ROM:0005D27C                 move.b  #4,d1
ROM:0005D280                 move.w  #0,d0
ROM:0005D284                 bra.w   loc_5D2DE
ROM:0005D288
ROM:0005D288
ROM:0005D288
ROM:0005D288
