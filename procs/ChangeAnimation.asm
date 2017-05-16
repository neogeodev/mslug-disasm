ROM:00028CD4 ChangeAnimation:
ROM:00028CD4
ROM:00028CD4                 move.l  a0,$3C(a6)
ROM:00028CD8                 move.l  a0,ObjLLItem.AnimPtrB(a6)
ROM:00028CDC                 clr.b   $3B(a6)
ROM:00028CE0                 clr.b   ObjLLItem.AnimDelta(a6)
ROM:00028CE4                 clr.b   ObjLLItem.DestructionLevel?(a6)
ROM:00028CE8                 bset    #5,$69(a6)
ROM:00028CEE                 rts
ROM:00028CEE
ROM:00028CEE
ROM:00028CEE
