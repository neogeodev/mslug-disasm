ROM:0003FE9C ProcFreedPOW2?:
ROM:0003FE9C                 lea     unk_3F0CC,a0
ROM:0003FEA0                 jsr     ChangeAnimation
ROM:0003FEA6                 lea     loc_3FEAC,a1
ROM:0003FEAA                 move.l  a1,(a6)
ROM:0003FEAC
ROM:0003FEAC loc_3FEAC:
ROM:0003FEAC                 jsr     sub_28364
ROM:0003FEB2                 jsr     Animate
ROM:0003FEB8                 bcc.w   loc_3FEC2
ROM:0003FEBC                 lea     loc_3FF14,a1
ROM:0003FEC0                 move.l  a1,(a6)
ROM:0003FEC2
ROM:0003FEC2 loc_3FEC2:
ROM:0003FEC2                 jmp     loc_3EFCE
ROM:0003FEC6
ROM:0003FEC6
ROM:0003FEC6 loc_3FEC6:
ROM:0003FEC6
ROM:0003FEC6                 bsr.w   sub_3F9B8
ROM:0003FECA                 bra.w   loc_3FF14
ROM:0003FECE
ROM:0003FECE
ROM:0003FECE
ROM:0003FECE
