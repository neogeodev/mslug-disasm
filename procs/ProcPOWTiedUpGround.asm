ROM:0003FE7E ProcPOWTiedUpGround:
ROM:0003FE7E                 jsr     sub_3FECE
ROM:0003FE82                 jsr     Animate
ROM:0003FE88                 jsr     CheckShot?
ROM:0003FE8E                 bcc.w   loc_3FE98
ROM:0003FE92                 lea     ProcFreedPOW2?,a1
ROM:0003FE96                 move.l  a1,(a6)
ROM:0003FE98
ROM:0003FE98 loc_3FE98:
ROM:0003FE98                 jmp     loc_3EFCE
ROM:0003FE9C
ROM:0003FE9C
