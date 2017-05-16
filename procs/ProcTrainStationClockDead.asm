ROM:000529E2 ProcTrainStationClockDead:
ROM:000529E2                 jsr     ObjectRelated
ROM:000529E8                 jsr     Animate
ROM:000529EE                 jsr     CheckShot?
ROM:000529F4                 bcc.w   loc_52A0E
ROM:000529F8                 move.w  #$1029,d0
ROM:000529FC                 jsr     (PlaySFX).l
ROM:00052A02                 lea     (off_2971EE).l,a0
ROM:00052A08                 jsr     ChangeAnimation
ROM:00052A0E
ROM:00052A0E loc_52A0E:
ROM:00052A0E                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:00052A14                 jsr     CheckOutOfScreen
ROM:00052A1A                 bcc.w   locret_52A24
ROM:00052A1E                 jmp     (SetDying).l
ROM:00052A24
ROM:00052A24
ROM:00052A24 locret_52A24:
ROM:00052A24                 rts
ROM:00052A26
ROM:00052A26                 movea.l $3C(a6),a1
ROM:00052A2A                 jsr     loc_2942A
ROM:00052A30                 move.w  #$32,d1
ROM:00052A34                 jsr     (sub_236E).l
ROM:00052A3A                 move.w  #$20,$70(a6)
ROM:00052A40                 move.b  #$FF,$32(a6)
ROM:00052A46                 move.b  #$FF,$33(a6)
ROM:00052A4C                 move.b  #0,$3A(a6)
ROM:00052A52                 move.w  #$3C,$66(a6)
ROM:00052A58                 lea     (unk_2973B6).l,a0
ROM:00052A5E                 jsr     ChangeAnimation
ROM:00052A64                 lea     ProcHangingFlag,a1
ROM:00052A68                 move.l  a1,(a6)
ROM:00052A6A
