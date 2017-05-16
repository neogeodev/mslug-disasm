ROM:00000960 PALNTSCCheck:
ROM:00000960                 moveq   #0,d0
ROM:00000962                 move.w  ($3C0006).l,d1
ROM:00000968                 btst    #3,d1
ROM:0000096C                 beq.w   loc_972
ROM:00000970                 moveq   #1,d0
ROM:00000972
ROM:00000972 loc_972:
ROM:00000972                 move.b  d0,(PALNTSCFlag).l
ROM:00000978                 rts
ROM:0000097A
ROM:0000097A
ROM:0000097A loc_97A:
ROM:0000097A
ROM:0000097A                 jsr     (InitStuff).l
ROM:00000980                 jsr     ClearRLIHandler
ROM:00000984                 jsr     $C004C2
ROM:0000098A                 jsr     (ResetSound?).l
ROM:00000990                 clr.w   (LSPCModeVar).l
ROM:00000996                 tst.b   (BIOS_MVS_FLAG).l
ROM:0000099C                 beq.w   locret_9A6
ROM:000009A0                 jsr     sub_99AFC
ROM:000009A6
ROM:000009A6 locret_9A6:
ROM:000009A6                 rts
ROM:000009A8
ROM:000009A8
ROM:000009A8
ROM:000009A8
