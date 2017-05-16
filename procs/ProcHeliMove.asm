ROM:00060F0A ProcHeliMove:
ROM:00060F0A                 jsr     sub_6179E
ROM:00060F0E                 jsr     sub_6164C
ROM:00060F12                 jsr     sub_61580
ROM:00060F16                 jsr     Set?FromXSpeed
ROM:00060F1A                 jsr     sub_614B6
ROM:00060F1E                 jsr     Animate
ROM:00060F24                 jsr     CheckIfDead
ROM:00060F2A                 bcc.w   loc_60F44
ROM:00060F2E                 lea     loc_6100C,a1
ROM:00060F32                 move.l  a1,(a6)
ROM:00060F34                 cmpi.b  #$FF,$9A(a6)
ROM:00060F3A                 bne.w   loc_60F44
ROM:00060F3E                 lea     loc_610F4,a1
ROM:00060F42                 move.l  a1,(a6)
ROM:00060F44
ROM:00060F44 loc_60F44:
ROM:00060F44
ROM:00060F44                 jsr     DoBombDrop
ROM:00060F48                 jsr     loc_6174A
ROM:00060F4C                 bcc.w   loc_60F56
ROM:00060F50                 lea     loc_60F88,a1
ROM:00060F54                 move.l  a1,(a6)
ROM:00060F56
ROM:00060F56 loc_60F56:
ROM:00060F56                 jsr     loc_6197C
ROM:00060F5A                 bcc.w   loc_60F64
ROM:00060F5E                 lea     $61204,a1
ROM:00060F62                 move.l  a1,(a6)
ROM:00060F64
ROM:00060F64 loc_60F64:
ROM:00060F64                 movea.l #$FFFFFFFF,a0
ROM:00060F6A                 lea     (unk_2C33A0).l,a0
ROM:00060F70                 jsr     CheckObjectOOB
ROM:00060F76                 bcc.w   locret_60F86
ROM:00060F7A                 move.b  #$FF,ObjLLItem.field_20(a6)
ROM:00060F80                 jmp     (SetDying).l
ROM:00060F86
ROM:00060F86
ROM:00060F86 locret_60F86:
ROM:00060F86                 rts
ROM:00060F88
ROM:00060F88
ROM:00060F88 loc_60F88:
ROM:00060F88                 lea     ProcHeliSteady,a1
ROM:00060F8C                 move.l  a1,(a6)
ROM:00060F8E
