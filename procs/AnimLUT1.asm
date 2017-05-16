ROM:000319DC AnimLUT1:       dc.l stru_29DCA4
ROM:000319E0                 dc.l off_29DD84
ROM:000319E4                 dc.l off_29DE68
ROM:000319E8                 dc.l off_29DF4C
ROM:000319EC                 dc.l off_29E030
ROM:000319F0
ROM:000319F0
ROM:000319F0 loc_319F0:
ROM:000319F0                 movea.l $C(a6),a0
ROM:000319F4                 btst    #2,$8D(a0)
ROM:000319FA                 beq.w   loc_31A56
ROM:000319FE                 movea.l $70(a0),a1
ROM:00031A02                 movea.l (a1),a1
ROM:00031A04                 move.w  8(a1),d1
ROM:00031A08                 move.w  $A(a1),d2
ROM:00031A0C                 add.w   d1,$22(a6)
ROM:00031A10                 add.w   d2,$24(a6)
ROM:00031A14                 move.w  $80(a0),d0
ROM:00031A18                 cmpi.w  #$20,d0
ROM:00031A1C                 ble.w   loc_31A24
ROM:00031A20                 move.w  #$40,d0
ROM:00031A24
ROM:00031A24 loc_31A24:
ROM:00031A24                 cmpi.w  #$FFE0,d0
ROM:00031A28                 bge.w   loc_31A30
ROM:00031A2C                 move.w  #$FFE0,d0
ROM:00031A30
ROM:00031A30 loc_31A30:
ROM:00031A30                 andi.w  #$FF,d0
ROM:00031A34                 move.w  #$10,d1
ROM:00031A38                 jsr     sub_13C0E
ROM:00031A3E                 add.w   d1,$22(a6)
ROM:00031A42                 add.w   d2,$24(a6)
ROM:00031A46                 lea     (off_29E440).l,a0
ROM:00031A4C                 jsr     ChangeAnimation
ROM:00031A52                 bra.w   loc_31A86
ROM:00031A56
ROM:00031A56
ROM:00031A56 loc_31A56:
ROM:00031A56                 movea.l $C(a6),a1
ROM:00031A5A                 move.w  $94(a1),$34(a6)
ROM:00031A60                 move.w  $94(a1),$64(a6)
ROM:00031A66                 move.w  $94(a1),d0
ROM:00031A6A                 movea.l #AnimLUT1,a0
ROM:00031A70                 lsl.w   #2,d0
ROM:00031A72                 movea.l (a0,d0.w),a0
ROM:00031A76                 cmpa.l  #$FFFFFFFF,a0
ROM:00031A7C                 beq.w   loc_31A86
ROM:00031A80                 jsr     ChangeAnimation
ROM:00031A86
ROM:00031A86 loc_31A86:
ROM:00031A86
ROM:00031A86                 move.w  #8,d1
ROM:00031A8A                 jsr     (sub_236E).l
ROM:00031A90                 subi.w  #4,$22(a6)
ROM:00031A96                 lea     loc_31A9C,a1
ROM:00031A9A                 move.l  a1,(a6)
ROM:00031A9C
ROM:00031A9C loc_31A9C:
ROM:00031A9C
ROM:00031A9C                 jsr     ObjectRelated
ROM:00031AA2                 jsr     Animate
ROM:00031AA8                 bcc.w   locret_31AB8
ROM:00031AAC                 jsr     (ClearObjChilds?).l
ROM:00031AB2                 jmp     (SetDying).l
ROM:00031AB8
ROM:00031AB8
ROM:00031AB8 locret_31AB8:
ROM:00031AB8                 rts
ROM:00031ABA
ROM:00031ABA                 ori.b   #$1C,0(a1)
ROM:00031AC0                 ori.b   #$29,a0
ROM:00031AC0
