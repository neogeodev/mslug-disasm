ROM:00000656 InitTitleScreen:
ROM:00000656
ROM:00000656                 lea     (unk_100080).l,a6
ROM:0000065C
ROM:0000065C
ROM:0000065C loc_65C:
ROM:0000065C                 move.l  a6,(dword_106E84).l
ROM:00000662                 andi.b  #1,$5A(a6)
ROM:00000668                 andi.b  #$17,$69(a6)
ROM:0000066E                 tst.b   $44(a6)
ROM:00000672                 beq.w   loc_684
ROM:00000676                 move.b  $44(a6),d0
ROM:0000067A                 moveq   #0,d1
ROM:0000067C                 subq.b  #1,d0
ROM:0000067E                 addx.b  d1,d0
ROM:00000680                 move.b  d0,$44(a6)
ROM:00000684
ROM:00000684 loc_684:
ROM:00000684                 btst    #1,$12(a6)
ROM:0000068A                 beq.w   loc_694
ROM:0000068E                 addq.w  #1,(word_106E8A).l
ROM:00000694
ROM:00000694 loc_694:
ROM:00000694                 tst.b   $59(a6)
ROM:00000698                 beq.w   loc_6AA
ROM:0000069C                 move.b  $59(a6),d0
ROM:000006A0                 clr.b   d1
ROM:000006A2                 subq.b  #1,d0
ROM:000006A4                 addx.b  d1,d0
ROM:000006A6                 move.b  d0,$59(a6)
ROM:000006AA
ROM:000006AA loc_6AA:
ROM:000006AA                 tst.b   $45(a6)
ROM:000006AE                 beq.w   loc_6C0
ROM:000006B2                 move.b  $45(a6),d0
ROM:000006B6                 moveq   #0,d1
ROM:000006B8                 subq.b  #1,d0
ROM:000006BA                 addx.b  d1,d0
ROM:000006BC                 move.b  d0,$45(a6)
ROM:000006C0
ROM:000006C0 loc_6C0:
ROM:000006C0                 movea.l (a6),a0
ROM:000006C2                 move.l  sp,(dword_106E8E).l
ROM:000006C8                 jsr     (a0)
ROM:000006CA
ROM:000006CA loc_6CA:
ROM:000006CA                 bclr    #6,$13(a6)
ROM:000006D0                 andi.b  #$FA,$5A(a6)
ROM:000006D6                 andi.b  #$68,$69(a6)
ROM:000006DC                 addq.w  #1,(word_106E8C).l
ROM:000006E2
ROM:000006E2 loc_6E2:
ROM:000006E2                 movea.l (dword_106E8E).l,sp
ROM:000006E8                 movea.l 8(a6),a6
ROM:000006EC                 bra.w   loc_65C
ROM:000006EC
ROM:000006F0
ROM:000006F0
ROM:000006F0
ROM:000006F0
