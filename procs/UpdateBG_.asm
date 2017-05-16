ROM:00051C82 UpdateBG?:
ROM:00051C82                 movea.l $E(a0),a1
ROM:00051C86                 move.w  4(a0),d0
ROM:00051C8A                 move.w  8(a0),d1
ROM:00051C8E                 add.w   $16(a0),d0
ROM:00051C92                 asr.w   #4,d0
ROM:00051C94                 add.w   $18(a0),d1
ROM:00051C98                 asr.w   #4,d1
ROM:00051C9A                 cmp.w   $1E(a0),d0
ROM:00051C9E                 beq.w   loc_51CF0
ROM:00051CA2                 move.w  d0,$1E(a0)
ROM:00051CA6                 move.w  (a0),d2
ROM:00051CA8                 bmi.w   loc_51CB2
ROM:00051CAC                 add.w   $1A(a0),d0
ROM:00051CB0                 subq.w  #1,d0
ROM:00051CB2
ROM:00051CB2 loc_51CB2:
ROM:00051CB2                 move.w  d0,d2
ROM:00051CB4                 move.w  d1,d3
ROM:00051CB6                 moveq   #1,d4
ROM:00051CB8                 move.w  $1C(a0),d5
ROM:00051CBC                 bsr.w   sub_51D84
ROM:00051CC0                 bcc.w   loc_51CF0
ROM:00051CC4                 movem.w d0-d6,-(sp)
ROM:00051CC8                 bsr.w   sub_51BA8
ROM:00051CCC                 move.w  d0,d7
ROM:00051CCE                 add.w   $22(a0),d7
ROM:00051CD2                 andi.w  #$1F,d7
ROM:00051CD6                 move.b  $26(a0),$52(a0,d7.w)
ROM:00051CDC                 move.b  $27(a0),$32(a0,d7.w)
ROM:00051CE2                 bsr.w   LoadSpriteVRAM
ROM:00051CE6                 movem.w (sp)+,d0-d6
ROM:00051CEA                 ori     #1,ccr
ROM:00051CEE                 rts
ROM:00051CF0
ROM:00051CF0
ROM:00051CF0 loc_51CF0:
ROM:00051CF0
ROM:00051CF0                 andi    #$FE,ccr
ROM:00051CF4                 rts
ROM:00051CF4
ROM:00051CF4
ROM:00051CF6
ROM:00051CF6
ROM:00051CF6
ROM:00051CF6
