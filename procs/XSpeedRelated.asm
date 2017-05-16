ROM:0005DCA4 XSpeedRelated:
ROM:0005DCA4
ROM:0005DCA4                 btst    #0,ObjLLItem.field_3A(a6)
ROM:0005DCAA                 beq.w   loc_5DCB0
ROM:0005DCAE                 neg.w   d0
ROM:0005DCB0
ROM:0005DCB0 loc_5DCB0:
ROM:0005DCB0                 move.w  d0,ObjLLItem.XSpeed(a6)
ROM:0005DCB4                 rts
ROM:0005DCB4
ROM:0005DCB4
ROM:0005DCB6
ROM:0005DCB6                 move.w  d0,$36(a6)
ROM:0005DCBA                 btst    #0,$3A(a6)
ROM:0005DCC0                 beq.w   loc_5DCC8
ROM:0005DCC4                 neg.w   $28(a6)
ROM:0005DCC8
ROM:0005DCC8 loc_5DCC8:
ROM:0005DCC8                 move.w  d0,$28(a6)
ROM:0005DCCC                 rts
ROM:0005DCCE
ROM:0005DCCE
ROM:0005DCCE
ROM:0005DCCE
