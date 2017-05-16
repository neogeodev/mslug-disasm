ROM:0000085E ReturnToBIOS:
ROM:0000085E
ROM:0000085E                 bsr.w   loc_868
ROM:00000862                 jmp     $C00444
ROM:00000868
ROM:00000868
ROM:00000868 loc_868:
ROM:00000868                 bclr    #7,(byte_10FD80).l
ROM:00000870                 move.b  #0,($3A001F).l
ROM:00000878                 clr.w   ($401FFE).l
ROM:0000087E                 move.b  #0,($3A000F).l
ROM:00000886                 clr.w   ($401FFE).l
ROM:0000088C                 moveq   #0,d1
ROM:0000088E                 move.w  #$E40C,d0
ROM:00000892                 lea     (unk_100080).l,a0
ROM:00000898                 bra.w   loc_89E
ROM:0000089C
ROM:0000089C
ROM:0000089C loc_89C:
ROM:0000089C                 move.b  d1,(a0)+
ROM:0000089E
ROM:0000089E loc_89E:
ROM:0000089E                 dbf     d0,loc_89C
ROM:000008A2                 rts
ROM:000008A4
ROM:000008A4
ROM:000008A4 loc_8A4:
ROM:000008A4                 move.w  #$1234,d0
ROM:000008A8                 move.w  #$A,d1
ROM:000008AC                 trap    #$F
ROM:000008AC                 dc.w    $303C
ROM:000008AC
ROM:000008B0                 dc.l $1234323C
ROM:000008B4
ROM:000008B4                 ori.b   #$4F,a3
ROM:000008B8
ROM:000008B8 loc_8B8:
ROM:000008B8                 move.w  #$1234,d0
ROM:000008BC                 move.w  #$C,d1
ROM:000008C0
ROM:000008C0 loc_8C0:
ROM:000008C0                 trap    #$F
ROM:000008C0                 dc.w    $303C
ROM:000008C0
