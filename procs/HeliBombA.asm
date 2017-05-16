ROM:000613C4 HeliBombA:
ROM:000613C4                 jsr     sub_27D50
ROM:000613CA                 bcc.w   loc_613D4
ROM:000613CE                 lea     HeliBombB,a1
ROM:000613D2                 move.l  a1,(a6)
ROM:000613D4
ROM:000613D4 loc_613D4:
ROM:000613D4                 jsr     Animate
ROM:000613DA                 movea.l ObjLLItem.LLSpawnerPtr(a6),a0
ROM:000613DE                 cmpi.b  #$FF,ObjLLItem.field_20(a0)
ROM:000613E4                 bne.w   loc_613EE
ROM:000613E8                 lea     HeliBombB,a1
ROM:000613EC                 move.l  a1,(a6)
ROM:000613EE
ROM:000613EE loc_613EE:
ROM:000613EE                 jsr     CheckShot?
ROM:000613F4                 bcc.w   loc_61408
ROM:000613F8                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:000613FE                 move.w  #$108D,d0
ROM:00061402                 jsr     (PlaySFX).l
ROM:00061408
ROM:00061408 loc_61408:
ROM:00061408                 jsr     CheckIfDead
ROM:0006140E                 bcs.w   loc_61422
ROM:00061412                 jsr     loc_283D8
ROM:00061418                 btst    #1,ObjLLItem.Flags1(a6)
ROM:0006141E                 beq.w   loc_61428
ROM:00061422
ROM:00061422 loc_61422:
ROM:00061422                 lea     HeliBombB,a1
ROM:00061426                 move.l  a1,(a6)
ROM:00061428
ROM:00061428 loc_61428:
ROM:00061428                 clr.w   d0
ROM:0006142A                 sub.w   ObjLLItem.XSpeed(a6),d0
ROM:0006142E                 asr.w   #4,d0
ROM:00061430                 move.w  d0,ObjLLItem.SpeedRelated(a6)
ROM:00061434                 movea.l #$FFFFFFFF,a0
ROM:0006143A                 lea     (unk_2C33AA).l,a0
ROM:00061440                 jsr     CheckObjectOOB?
ROM:00061446                 bcc.w   locret_61450
ROM:0006144A                 jmp     (SetDying).l
ROM:00061450
ROM:00061450
ROM:00061450 locret_61450:
ROM:00061450                 rts
ROM:00061452
ROM:00061452
