ROM:0000226A ProcessSound:
ROM:0000226A                 tst.b   (ReqCoinSound).l
ROM:00002270                 beq.w   loc_2286
ROM:00002274                 clr.b   (ReqCoinSound).l
ROM:0000227A
ROM:0000227A loc_227A:
ROM:0000227A
ROM:0000227A                 move.b  #$F,($320000).l
ROM:00002282                 bra.w   locret_22BC
ROM:00002286
ROM:00002286
ROM:00002286 loc_2286:
ROM:00002286                 move.b  ($320000).l,d0
ROM:0000228C                 move.b  d0,(Z80ReplyCode).l
ROM:00002292                 move.w  (SoundFIFOGet).l,d1
ROM:00002298                 cmp.w   (SoundFIFOGet+2).l,d1
ROM:0000229E                 beq.w   locret_22BC
ROM:000022A2                 lea     (SoundCmdFIFO).l,a0
ROM:000022A8                 move.b  (a0,d1.w),($320000).l
ROM:000022B0                 addq.w  #1,d1
ROM:000022B2                 andi.w  #$1F,d1
ROM:000022B6                 move.w  d1,(SoundFIFOGet).l
ROM:000022BC
ROM:000022BC locret_22BC:
ROM:000022BC
ROM:000022BC                 rts
ROM:000022BC
ROM:000022BC
ROM:000022BE
ROM:000022BE
