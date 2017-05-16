ROM:00061452 HeliBombB:
ROM:00061452
ROM:00061452                 move.w  #$1022,d0
ROM:00061456                 jsr     (PlaySFX).l
ROM:0006145C                 lea     ($77F6A).l,a1
ROM:00061462                 jsr     (SpawnObj).l
ROM:00061468                 jsr     InitSamePositions
ROM:0006146E                 lea     loc_61474,a1
ROM:00061472                 move.l  a1,(a6)
ROM:00061474
ROM:00061474 loc_61474:
ROM:00061474                 jsr     Animate
ROM:0006147A                 jmp     (SetDying).l
ROM:00061480
ROM:00061480                 rts
ROM:00061482
ROM:00061482
ROM:00061482
ROM:00061482
