ROM:000008D6 RLI:
ROM:000008D6                 move.w  #2,($3C000C).l
ROM:000008DE                 movem.l a0,-(sp)
ROM:000008E2                 movea.l (RLIHandler).l,a0
ROM:000008E8                 jsr     (a0)
ROM:000008EA                 movem.l (sp)+,a0
ROM:000008EE                 rte
ROM:000008F0
ROM:000008F0
ROM:000008F0 locret_8F0:
ROM:000008F0                 rte
ROM:000008F2
ROM:000008F2                 rts
ROM:000008F4
ROM:000008F4                 rte
ROM:000008F6
ROM:000008F6                 tst.b   (byte_10FD80).l
ROM:000008FC                 bmi.w   VBLANK
ROM:00000900                 jmp     $C00438
ROM:00000906
ROM:00000906
