ROM:00061344 ProcHeliBomb:
ROM:00061344                 move.w  #$109B,d0
ROM:00061348                 jsr     (PlaySFX).l
ROM:0006134E                 move.w  #$187,d1
ROM:00061352                 jsr     (sub_236E).l
ROM:00061358                 lea     (off_2C2DF8).l,a0
ROM:0006135E                 jsr     ChangeAnimation
ROM:00061364                 jsr     ClearObjStuff
ROM:0006136A                 lea     (off_2BDF94).l,a0
ROM:00061370                 jsr     GetParamDifficulty
ROM:00061376                 move.w  d0,d0
ROM:00061378                 neg.w   d0
ROM:0006137A                 move.w  d0,ObjLLItem.Weight(a6)
ROM:0006137E                 movea.l ObjLLItem.LLSpawnerPtr(a6),a0
ROM:00061382                 move.w  ObjLLItem.XSpeed(a0),ObjLLItem.XSpeed(a6)
ROM:00061388                 move.w  ObjLLItem.XPos(a0),ObjLLItem.XPos(a6)
ROM:0006138E                 move.w  ObjLLItem.YPos(a0),ObjLLItem.YPos(a6)
ROM:00061394                 subi.w  #$10,ObjLLItem.YPos(a6)
ROM:0006139A                 subq.w  #1,ObjLLItem.Priority(a6)
ROM:0006139E                 move.w  #$3C,ObjLLItem.FrameTimer?(a6)
ROM:000613A4                 lea     (off_2C334C).l,a0
ROM:000613AA                 move.l  a0,$48(a6)
ROM:000613AE                 lea     (off_2C322E).l,a0
ROM:000613B4                 move.l  a0,$4C(a6)
ROM:000613B8                 jsr     sub_283CA
ROM:000613BE                 lea     HeliBombA,a1
ROM:000613C2                 move.l  a1,(a6)
ROM:000613C4
