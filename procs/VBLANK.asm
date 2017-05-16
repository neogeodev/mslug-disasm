ROM:00000906 VBLANK:
ROM:00000906                 movem.l d0-a6,-(sp)
ROM:0000090A                 jsr     (loc_1E5E).l
ROM:00000910                 jsr     PALNTSCCheck
ROM:00000914                 move.w  ($3C0004).l,d0
ROM:0000091A                 movem.w d0,-(sp)
ROM:0000091E                 move.w  (LSPCModeVar).l,d0
ROM:00000924                 andi.w  #$FFEF,d0
ROM:00000928                 move.w  d0,($3C0006).l
ROM:0000092E                 jsr     $C004CE
ROM:00000934                 movem.w (sp)+,d0
ROM:00000938                 movem.w d0,($3C0004).l
ROM:00000940                 jsr     $C0044A
ROM:00000946                 move.w  (LSPCModeVar).l,($3C0006).l
ROM:00000950                 move.w  (LSPCVRAMAddr).l,($3C0000).l
ROM:0000095A                 movem.l (sp)+,d0-a6
ROM:0000095E                 rte
ROM:00000960
ROM:00000960
