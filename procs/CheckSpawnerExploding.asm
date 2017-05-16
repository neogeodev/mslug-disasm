ROM:000007B2 CheckSpawnerExploding:
ROM:000007B2
ROM:000007B2                 movea.l ObjLLItem.LLSpawnerPtr(a6),a0
ROM:000007B6                 cmpi.l  #$52A,(a0)
ROM:000007BC                 beq.w   loc_7C6
ROM:000007C0                 andi    #$EE,ccr
ROM:000007C4                 rts
ROM:000007C6
ROM:000007C6
ROM:000007C6 loc_7C6:
ROM:000007C6                 ori     #$11,ccr
ROM:000007CA                 rts
ROM:000007CA
ROM:000007CA
ROM:000007CC
ROM:000007CC
