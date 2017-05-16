ROM:00028758 CheckIfDead:
ROM:00028758
ROM:00028758                 btst    #0,ObjLLItem.Flags1(a6)
ROM:0002875E                 bne.w   loc_28768
ROM:00028762                 andi    #$EE,ccr
ROM:00028766                 rts
ROM:00028768
ROM:00028768
ROM:00028768 loc_28768:
ROM:00028768                 ori     #$11,ccr
ROM:0002876C                 rts
ROM:0002876C
ROM:0002876C
ROM:0002876E
ROM:0002876E                 move.w  (a0),d0
ROM:00028770                 move.w  2(a0),d1
ROM:00028774                 btst    #0,$3A(a6)
ROM:0002877A                 beq.w   loc_28784
ROM:0002877E                 neg.w   d0
ROM:00028780                 neg.w   d1
ROM:00028782                 exg     d0,d1
ROM:00028784
ROM:00028784 loc_28784:
ROM:00028784                 cmp.w   d1,d0
ROM:00028786                 blt.w   loc_28792+2
ROM:0002878A                 nop
ROM:0002878C                 nop
ROM:0002878E                 cmp.w   d1,d0
ROM:00028790                 nop
ROM:00028792
ROM:00028792 loc_28792:
ROM:00028792                 trap    #$F
ROM:00028792                 dc.w    $3412
ROM:00028796                 move.w  2(a2),d3
ROM:0002879A                 btst    #0,$3A(a1)
ROM:000287A0                 beq.w   loc_287AA
ROM:000287A4                 neg.w   d2
ROM:000287A6                 neg.w   d3
ROM:000287A8                 exg     d2,d3
ROM:000287AA
ROM:000287AA loc_287AA:
ROM:000287AA                 cmp.w   d3,d2
ROM:000287AC                 blt.w   loc_287B8+2
ROM:000287B0                 nop
ROM:000287B2                 nop
ROM:000287B4                 cmp.w   d3,d2
ROM:000287B6                 nop
ROM:000287B8
ROM:000287B8 loc_287B8:
ROM:000287B8                 trap    #$F
ROM:000287B8                 dc.w    $D06E
ROM:000287BC                 ori.b   #$6E,-(a2)
ROM:000287C0                 ori.b   #$69,-(a2)
ROM:000287C4                 ori.b   #$69,-(a2)
ROM:000287C8                 ori.b   #$41,-(a2)
ROM:000287CC                 bgt.w   loc_287D6
ROM:000287D0                 cmp.w   d3,d0
ROM:000287D2                 ble.w   loc_287DC
ROM:000287D6
ROM:000287D6 loc_287D6:
ROM:000287D6                 andi    #$EE,ccr
ROM:000287DA                 rts
ROM:000287DC
ROM:000287DC
ROM:000287DC loc_287DC:
ROM:000287DC                 cmp.w   d2,d0
ROM:000287DE                 bcc.w   loc_287E4
ROM:000287E2                 move.w  d2,d0
ROM:000287E4
ROM:000287E4 loc_287E4:
ROM:000287E4                 cmp.w   d3,d1
ROM:000287E6                 bcs.w   loc_287EC
ROM:000287EA                 move.w  d3,d1
ROM:000287EC
ROM:000287EC loc_287EC:
ROM:000287EC                 add.w   d0,d1
ROM:000287EE                 asr.w   #1,d1
ROM:000287F0                 move.w  d1,d7
ROM:000287F2                 move.w  4(a0),d0
ROM:000287F6                 move.w  6(a0),d1
ROM:000287F6
