ROM:00040318 ProcPOWGiveUnderpants:
ROM:00040318                 bsr.w   sub_3FECE
ROM:0004031C                 jsr     Animate
ROM:00040322                 bcc.w   loc_4032C
ROM:00040326                 lea     loc_4032E,a1
ROM:0004032A                 move.l  a1,(a6)
ROM:0004032C
ROM:0004032C loc_4032C:
ROM:0004032C                 bra.s   loc_402F0
ROM:0004032E
ROM:0004032E
ROM:0004032E loc_4032E:
ROM:0004032E
ROM:0004032E                 lea     off_3F8F4,a0
ROM:00040332                 jsr     ChangeAnimation
ROM:00040338                 clr.w   $28(a6)
ROM:0004033C                 lea     ProcPOWSalute,a1
ROM:00040340                 move.l  a1,(a6)
ROM:00040342
