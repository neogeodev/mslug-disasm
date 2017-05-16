ROM:0009A75A BonusDone:
ROM:0009A75A
ROM:0009A75A                 cmpi.b  #1,$90(a6)
ROM:0009A760                 bne.w   loc_9A76A
ROM:0009A764                 addq.b  #1,(byte_10E48B).l
ROM:0009A76A
ROM:0009A76A loc_9A76A:
ROM:0009A76A
ROM:0009A76A                 tst.b   $9F(a6)
ROM:0009A76E                 beq.w   loc_9A78E
ROM:0009A772                 movea.l #$FFFFFFFF,a0
ROM:0009A778                 lea     unk_9A5F4,a0
ROM:0009A77C                 jsr     CheckObjectOOB?
ROM:0009A782                 bcc.w   locret_9A78C
ROM:0009A786                 jmp     (SetDying).l
ROM:0009A78C
ROM:0009A78C
ROM:0009A78C locret_9A78C:
ROM:0009A78C                 rts
ROM:0009A78E
ROM:0009A78E
ROM:0009A78E loc_9A78E:
ROM:0009A78E                 movea.l #$FFFFFFFF,a0
ROM:0009A794                 lea     unk_9A5F4,a0
ROM:0009A798                 jsr     CheckObjectOOB
ROM:0009A79E                 bcc.w   locret_9A7A8
ROM:0009A7A2                 jmp     (SetDying).l
ROM:0009A7A8
ROM:0009A7A8
ROM:0009A7A8 locret_9A7A8:
ROM:0009A7A8                 rts
ROM:0009A7A8
ROM:0009A7AA
ROM:0009A7AA
ROM:0009A7AA
ROM:0009A7AA
