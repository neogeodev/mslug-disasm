ROM:00051ED6 Clear32SprYPos:
ROM:00051ED6
ROM:00051ED6                 bclr    #0,$C(a0)
ROM:00051EDC                 moveq   #$1F,d1
ROM:00051EDE                 move.w  $28(a0),d0
ROM:00051EE2                 addi.w  #-$7DFF,d0
ROM:00051EE6
ROM:00051EE6 loc_51EE6:
ROM:00051EE6                 move.w  d0,(LSPCVRAMAddr).l
ROM:00051EEC                 move.w  d0,($3C0000).l
ROM:00051EF2                 move.w  #0,($3C0002).l
ROM:00051EFA                 addq.w  #1,d0
ROM:00051EFC                 dbf     d1,loc_51EE6
ROM:00051F00                 rts
ROM:00051F00
ROM:00051F00
ROM:00051F02
ROM:00051F02
ROM:00051F02
ROM:00051F02
