ROM:00000518 SetDying:
ROM:00000518
ROM:00000518                 jsr     ProcessObj?List
ROM:0000051E                 bclr    #1,ObjLLItem.Flags2(a6)
ROM:00000524                 lea     ProcExploding,a1
ROM:00000528                 move.l  a1,(a6)
ROM:0000052A
