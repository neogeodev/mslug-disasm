ROM:000618B0 DoBombDrop:
ROM:000618B0
ROM:000618B0                 cmpi.w  #0,ObjLLItem.AttackTimer(a6)
ROM:000618B6                 bgt.w   loc_6194C
ROM:000618BA                 cmpi.b  #$FF,ObjLLItem.FireCounter(a6)
ROM:000618C0                 bne.w   loc_618E4
ROM:000618C4                 lea     (BombDropParams).l,a0
ROM:000618CA                 jsr     GetParamDifficulty
ROM:000618D0                 move.b  d0,ObjLLItem.SubAttackTimer(a6)
ROM:000618D4                 lea     (off_2BDF12).l,a0
ROM:000618DA                 jsr     GetParamDifficulty
ROM:000618E0                 move.b  d0,ObjLLItem.FireCounter(a6)
ROM:000618E4
ROM:000618E4 loc_618E4:
ROM:000618E4                 cmpi.b  #0,ObjLLItem.SubAttackTimer(a6)
ROM:000618EA                 bgt.w   loc_61946
ROM:000618EE                 cmpi.b  #0,ObjLLItem.FireCounter(a6)
ROM:000618F4                 bne.w   HeliDropBomb
ROM:000618F8                 move.b  #$FF,ObjLLItem.FireCounter(a6)
ROM:000618FE                 lea     (off_2BDD8C).l,a0
ROM:00061904                 jsr     GetParamDifficulty
ROM:0006190A                 move.w  d0,$78(a6)
ROM:0006190E                 rts
ROM:00061910
ROM:00061910
