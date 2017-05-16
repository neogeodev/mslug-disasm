ROM:00084F86 ProcElevatorMoveUp:
ROM:00084F86                 jsr     PositionRelated
ROM:00084F8C                 jsr     loc_85EE8
ROM:00084F90                 jsr     loc_85F08
ROM:00084F94                 jsr     Animate
ROM:00084F9A                 jsr     loc_85F44
ROM:00084F9E                 jsr     loc_85F60
ROM:00084FA2                 bcc.w   loc_84FAC
ROM:00084FA6                 lea     $85062,a1
ROM:00084FAA                 move.l  a1,(a6)
ROM:00084FAC
ROM:00084FAC loc_84FAC:
ROM:00084FAC                 movea.l #$FFFFFFFF,a0
ROM:00084FB2                 lea     (unk_2E9860).l,a0
ROM:00084FB8                 jsr     CheckObjectOOB
ROM:00084FBE                 bcc.w   locret_84FC8
ROM:00084FC2                 jmp     (SetDying).l
ROM:00084FC8
ROM:00084FC8
ROM:00084FC8 locret_84FC8:
ROM:00084FC8                 rts
ROM:00084FCA
ROM:00084FCA
ROM:00084FCA loc_84FCA:
ROM:00084FCA
ROM:00084FCA                 move.w  #$1074,d0
ROM:00084FCE                 jsr     (PlaySFX).l
ROM:00084FD4                 lea     (off_2E7866).l,a0
ROM:00084FDA                 jsr     ChangeAnimation
ROM:00084FE0                 clr.w   d0
ROM:00084FE2                 move.b  $9A(a6),d0
ROM:00084FE6                 asl.w   #3,d0
ROM:00084FE8                 neg.w   d0
ROM:00084FEA                 move.w  d0,$2A(a6)
ROM:00084FEE                 move.l  (dword_106F5C).l,d0
ROM:00084FF4                 swap    d0
ROM:00084FF6                 cmpi.w  #$108,d0
ROM:00084FFA                 bgt.w   loc_85018
ROM:00084FFE                 jsr     (sub_6F0).l
ROM:00085004                 bcs.w   loc_85018
ROM:00085008                 lea     $8512C,a1
ROM:0008500C                 jsr     (SpawnObj).l
ROM:00085012                 jsr     InitSamePositions
ROM:00085018
ROM:00085018 loc_85018:
ROM:00085018
ROM:00085018                 lea     ProcElevatorMoveDown,a1
ROM:0008501C                 move.l  a1,(a6)
ROM:0008501E
