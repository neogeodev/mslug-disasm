ROM:0005E23A PositionRelated2:
ROM:0005E23A
ROM:0005E23A                 sub.w   d2,d0
ROM:0005E23C                 sub.w   d3,d1
ROM:0005E23E                 cmpi.w  #0,d0
ROM:0005E242                 bge.w   loc_5E248
ROM:0005E246                 neg.w   d0
ROM:0005E248
ROM:0005E248 loc_5E248:
ROM:0005E248                 cmpi.w  #0,d1
ROM:0005E24C                 bge.w   loc_5E252
ROM:0005E250                 neg.w   d1
ROM:0005E252
ROM:0005E252 loc_5E252:
ROM:0005E252                 cmp.w   d1,d0
ROM:0005E254                 bgt.w   loc_5E25A
ROM:0005E258                 exg     d0,d1
ROM:0005E25A
ROM:0005E25A loc_5E25A:
ROM:0005E25A                 lsr.w   #1,d1
ROM:0005E25C                 add.w   d1,d0
ROM:0005E25E                 rts
ROM:0005E25E
ROM:0005E25E
ROM:0005E260
ROM:0005E260
ROM:0005E260
ROM:0005E260
