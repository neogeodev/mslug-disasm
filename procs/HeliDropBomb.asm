ROM:00061910 HeliDropBomb:
ROM:00061910                 lea     ProcHeliBomb,a1
ROM:00061914                 jsr     (SpawnObj).l
ROM:0006191A                 jsr     InitSamePositions
ROM:00061920                 lea     ProcSmokePuff,a1
ROM:00061924                 jsr     (SpawnObj).l
ROM:0006192A                 jsr     InitSamePositions
ROM:00061930                 lea     (BombDropParams).l,a0
ROM:00061936                 jsr     GetParamDifficulty
ROM:0006193C                 move.b  d0,ObjLLItem.SubAttackTimer(a6)
ROM:00061940                 subq.b  #1,ObjLLItem.FireCounter(a6)
ROM:00061944                 rts
ROM:00061946
ROM:00061946
ROM:00061946 loc_61946:
ROM:00061946                 subq.b  #1,ObjLLItem.SubAttackTimer(a6)
ROM:0006194A                 rts
ROM:0006194C
ROM:0006194C
ROM:0006194C loc_6194C:
ROM:0006194C                 subq.w  #1,ObjLLItem.AttackTimer(a6)
ROM:00061950                 rts
ROM:00061952
ROM:00061952
ROM:00061952
ROM:00061952
