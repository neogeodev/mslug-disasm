ROM:0003FD22 ProcHangingPOW:
ROM:0003FD22                 jsr     PositionRelated
ROM:0003FD28                 jsr     Animate
ROM:0003FD2E                 jsr     CheckShot?
ROM:0003FD34                 bcc.w   loc_3FD3E
ROM:0003FD38                 lea     ProcFreedPOW?,a1
ROM:0003FD3C                 move.l  a1,(a6)
ROM:0003FD3E
ROM:0003FD3E loc_3FD3E:
ROM:0003FD3E                 jmp     loc_3EFCE
ROM:0003FD42
ROM:0003FD42
