ROM:0005DD5C CheckObjectOOB:
ROM:0005DD5C
ROM:0005DD5C                 cmpa.l  #$FFFFFFFF,a0
ROM:0005DD62                 bne.w   loc_5DD6A
ROM:0005DD66                 lea     BoundingBox?,a0
ROM:0005DD6A
ROM:0005DD6A loc_5DD6A:
ROM:0005DD6A                 btst    #7,ObjLLItem.Flags1(a6)
ROM:0005DD70                 beq.w   loc_5DDBE
ROM:0005DD74                 move.w  #0,d0
ROM:0005DD78                 move.w  #$140,d1
ROM:0005DD7C                 move.w  #$100,d2
ROM:0005DD80                 move.w  #$1F0,d3
ROM:0005DD84                 add.w   (a0),d0
ROM:0005DD86                 add.w   2(a0),d1
ROM:0005DD8A                 sub.w   6(a0),d2
ROM:0005DD8E                 sub.w   4(a0),d3
ROM:0005DD92                 cmp.w   ObjLLItem.XPos(a6),d0
ROM:0005DD96                 bgt.w   loc_5DDB8
ROM:0005DD9A                 cmp.w   ObjLLItem.XPos(a6),d1
ROM:0005DD9E                 blt.w   loc_5DDB8
ROM:0005DDA2                 cmp.w   ObjLLItem.YPos(a6),d2
ROM:0005DDA6                 bgt.w   loc_5DDB8
ROM:0005DDAA                 cmp.w   ObjLLItem.YPos(a6),d3
ROM:0005DDAE                 blt.w   loc_5DDB8
ROM:0005DDB2                 andi    #$FE,ccr
ROM:0005DDB6                 rts
ROM:0005DDB8
ROM:0005DDB8
ROM:0005DDB8 loc_5DDB8:
ROM:0005DDB8
ROM:0005DDB8                 ori     #1,ccr
ROM:0005DDBC                 rts
ROM:0005DDBE
ROM:0005DDBE
ROM:0005DDBE loc_5DDBE:
ROM:0005DDBE                 cmpi.w  #$140,ObjLLItem.XPos(a6)
ROM:0005DDC4                 bge.w   loc_5DDF2
ROM:0005DDC8                 cmpi.w  #0,ObjLLItem.XPos(a6)
ROM:0005DDCE                 ble.w   loc_5DDF2
ROM:0005DDD2                 cmpi.w  #$1F0,ObjLLItem.YPos(a6)
ROM:0005DDD8                 bge.w   loc_5DDF2
ROM:0005DDDC                 cmpi.w  #$100,ObjLLItem.YPos(a6)
ROM:0005DDE2                 ble.w   loc_5DDF2
ROM:0005DDE6
ROM:0005DDE6 loc_5DDE6:
ROM:0005DDE6
ROM:0005DDE6                 bset    #7,$13(a6)
ROM:0005DDEC                 andi    #$FE,ccr
ROM:0005DDF0                 rts
ROM:0005DDF2
ROM:0005DDF2
ROM:0005DDF2 loc_5DDF2:
ROM:0005DDF2
ROM:0005DDF2                 cmpi.w  #$FF80,ObjLLItem.XPos(a6)
ROM:0005DDF8                 ble.s   loc_5DDE6
ROM:0005DDFA                 cmpi.w  #$200,ObjLLItem.XPos(a6)
ROM:0005DE00                 bge.s   loc_5DDE6
ROM:0005DE02                 cmpi.w  #0,ObjLLItem.YPos(a6)
ROM:0005DE08                 ble.s   loc_5DDE6
ROM:0005DE0A                 cmpi.w  #$280,ObjLLItem.YPos(a6)
ROM:0005DE10                 bge.s   loc_5DDE6
ROM:0005DE12                 andi    #$FE,ccr
ROM:0005DE16                 rts
ROM:0005DE16
ROM:0005DE16
ROM:0005DE16
