ROM:0004F2FC ProcYellowBarrel:
ROM:0004F2FC                 jsr     ObjectRelated
ROM:0004F302                 jsr     Animate
ROM:0004F308                 jsr     CheckShot?
ROM:0004F30E                 bcc.w   loc_4F324
ROM:0004F312                 lea     (SoundCodeGunFire).l,a0
ROM:0004F318                 jsr     SoundRelated_0
ROM:0004F31E                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:0004F324
ROM:0004F324 loc_4F324:
ROM:0004F324                 jsr     CheckIfDead
ROM:0004F32A                 bcc.w   loc_4F334
ROM:0004F32E                 lea     ProcBarrelExplode,a1
ROM:0004F332                 move.l  a1,(a6)
ROM:0004F334
ROM:0004F334 loc_4F334:
ROM:0004F334                 jsr     CheckOutOfScreen
ROM:0004F338                 bcc.w   locret_4F342
ROM:0004F33C                 jmp     (SetDying).l
ROM:0004F342
ROM:0004F342
ROM:0004F342 locret_4F342:
ROM:0004F342                 rts
ROM:0004F344
ROM:0004F344
