ROM:000612E6 ProcSmokePuff:
ROM:000612E6                 move.w  #$189,d1
ROM:000612EA                 jsr     (sub_236E).l
ROM:000612F0                 jsr     FollowSpawner
ROM:000612F6                 subq.w  #1,$38(a6)
ROM:000612FA                 movea.l ObjLLItem.LLSpawnerPtr(a6),a0
ROM:000612FE                 move.b  ObjLLItem.field_3A(a0),ObjLLItem.field_3A(a6)
ROM:00061304                 lea     (off_2C2D86).l,a0
ROM:0006130A                 jsr     ChangeAnimation
ROM:00061310                 lea     loc_61316,a1
ROM:00061314                 move.l  a1,(a6)
ROM:00061316
ROM:00061316 loc_61316:
ROM:00061316                 jsr     ObjectRelated
ROM:0006131C                 jsr     Animate
ROM:00061322                 bcs.w   loc_6133C
ROM:00061326                 movea.l #$FFFFFFFF,a0
ROM:0006132C                 lea     (unk_2C33AA).l,a0
ROM:00061332                 jsr     CheckObjectOOB?
ROM:00061338                 bcc.w   locret_61342
ROM:0006133C
ROM:0006133C loc_6133C:
ROM:0006133C                 jmp     (SetDying).l
ROM:00061342
ROM:00061342
ROM:00061342 locret_61342:
ROM:00061342                 rts
ROM:00061344
ROM:00061344
