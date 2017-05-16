ROM:000020E2 InitStuff:
ROM:000020E2                 move.b  d0,($300001).l
ROM:000020E8                 jsr     loc_1379A
ROM:000020EE                 move.b  d0,($300001).l
ROM:000020F4                 jsr     loc_13D12
ROM:000020FA                 move.b  d0,($300001).l
ROM:00002100                 jsr     sub_5A824
ROM:00002106                 move.b  d0,($300001).l
ROM:0000210C                 jsr     (ResetLL?).l
ROM:00002112                 move.b  d0,($300001).l
ROM:00002118                 jsr     loc_5CC0C+2
ROM:0000211E                 jsr     (loc_FFE).l
ROM:00002124                 rts
ROM:00002126
ROM:00002126
ROM:00002126
ROM:00002126
