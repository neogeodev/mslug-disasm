ROM:0004FA70 CheckOutOfScreen:
ROM:0004FA70
ROM:0004FA70                 move.w  $70(a6),d0
ROM:0004FA74                 neg.w   d0
ROM:0004FA76                 cmp.w   $22(a6),d0
ROM:0004FA7A                 ble.w   loc_4FA84
ROM:0004FA7E                 ori     #1,ccr
ROM:0004FA82                 rts
ROM:0004FA84
ROM:0004FA84
ROM:0004FA84 loc_4FA84:
ROM:0004FA84                 andi    #$FE,ccr
ROM:0004FA88                 rts
ROM:0004FA88
ROM:0004FA88
ROM:0004FA8A
ROM:0004FA8A
ROM:0004FA8A
ROM:0004FA8A
