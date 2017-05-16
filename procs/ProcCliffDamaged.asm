ROM:00054F10 ProcCliffDamaged:
ROM:00054F10                 jsr     ObjectRelated
ROM:00054F16                 jsr     Animate
ROM:00054F1C                 jsr     CheckShot?
ROM:00054F22                 bcc.w   loc_54F38
ROM:00054F26                 lea     (SoundCodeGunFire).l,a0
ROM:00054F2C                 jsr     SoundRelated_0
ROM:00054F32                 bclr    #3,$13(a6)
ROM:00054F38
ROM:00054F38 loc_54F38:
ROM:00054F38                 jsr     CheckIfDead
ROM:00054F3E                 bcc.w   loc_54F58
ROM:00054F42                 bclr    #0,$13(a6)
ROM:00054F48                 move.w  #$1035,d0
ROM:00054F4C                 jsr     (PlaySFX).l
ROM:00054F52                 lea     loc_54F6A,a1
ROM:00054F56                 move.l  a1,(a6)
ROM:00054F58
ROM:00054F58 loc_54F58:
ROM:00054F58                 jsr     CheckOutOfScreen
ROM:00054F5E                 bcc.w   locret_54F68
ROM:00054F62                 jmp     (SetDying).l
ROM:00054F68
ROM:00054F68
ROM:00054F68 locret_54F68:
ROM:00054F68                 rts
ROM:00054F6A
ROM:00054F6A
ROM:00054F6A loc_54F6A:
ROM:00054F6A                 move.l  #$4000,d0
ROM:00054F70                 jsr     sub_51A28
ROM:00054F76                 move.w  $72(a6),d0
ROM:00054F7A                 movea.l #off_2990EE,a0
ROM:00054F80                 lsl.w   #2,d0
ROM:00054F82                 movea.l (a0,d0.w),a0
ROM:00054F86                 cmpa.l  #$FFFFFFFF,a0
ROM:00054F8C                 beq.w   loc_54F96
ROM:00054F90                 jsr     ChangeAnimation
ROM:00054F96
ROM:00054F96 loc_54F96:
ROM:00054F96                 lea     loc_54F9C,a1
ROM:00054F9A                 move.l  a1,(a6)
ROM:00054F9C
ROM:00054F9C loc_54F9C:
ROM:00054F9C                 jsr     ObjectRelated
ROM:00054FA2                 jsr     Animate
ROM:00054FA8                 jsr     CheckOutOfScreen
ROM:00054FAE                 bcc.w   locret_54FB8
ROM:00054FB2                 jmp     (SetDying).l
ROM:00054FB8
ROM:00054FB8
ROM:00054FB8 locret_54FB8:
ROM:00054FB8                 rts
ROM:00054FBA
ROM:00054FBA
ROM:00054FBA loc_54FBA:
ROM:00054FBA                 move.w  #$48,d1
ROM:00054FBE                 move.w  #$79,d2
ROM:00054FC2                 move.w  #2,d3
ROM:00054FC6                 move.w  #1,d4
ROM:00054FCA                 jsr     (sub_2C26).l
ROM:00054FD0                 move.w  #$40,$72(a6)
ROM:00054FD6                 lea     loc_54FDC,a1
ROM:00054FDA                 move.l  a1,(a6)
ROM:00054FDC
ROM:00054FDC loc_54FDC:
ROM:00054FDC                 subq.w  #1,$72(a6)
ROM:00054FE0                 bne.w   loc_54FEA
ROM:00054FE4                 lea     loc_55002,a1
ROM:00054FE8                 move.l  a1,(a6)
ROM:00054FEA
ROM:00054FEA loc_54FEA:
ROM:00054FEA                 move.l  (dword_106F5C).l,d0
ROM:00054FF0                 swap    d0
ROM:00054FF2                 cmpi.w  #$300,d0
ROM:00054FF6                 blt.w   locret_55000
ROM:00054FFA                 jmp     (SetDying).l
ROM:00055000
ROM:00055000
ROM:00055000 locret_55000:
ROM:00055000                 rts
ROM:00055002
ROM:00055002
ROM:00055002 loc_55002:
ROM:00055002                 move.w  #$48,d1
ROM:00055006                 move.w  #$78,d2
ROM:0005500A                 move.w  #1,d3
ROM:0005500E                 move.w  #1,d4
ROM:00055012                 jsr     (sub_2C26).l
ROM:00055018                 move.w  #$20,$72(a6)
ROM:0005501E                 lea     loc_55024,a1
ROM:00055022                 move.l  a1,(a6)
ROM:00055024
ROM:00055024 loc_55024:
ROM:00055024                 subq.w  #1,$72(a6)
ROM:00055028                 bne.w   loc_55032
ROM:0005502C                 lea     loc_54FBA,a1
ROM:00055030                 move.l  a1,(a6)
ROM:00055032
ROM:00055032 loc_55032:
ROM:00055032                 move.l  (dword_106F5C).l,d0
ROM:00055038                 swap    d0
ROM:0005503A                 cmpi.w  #$300,d0
ROM:0005503E                 blt.w   locret_55048
ROM:00055042                 jmp     (SetDying).l
ROM:00055048
ROM:00055048
ROM:00055048 locret_55048:
ROM:00055048                 rts
ROM:0005504A
ROM:0005504A                 movea.l $3C(a6),a1
ROM:0005504E                 jsr     loc_2942A
ROM:00055054                 move.w  #$E,d1
ROM:00055058                 jsr     (sub_236E).l
ROM:0005505E                 bset    #6,$12(a6)
ROM:00055064                 move.w  #$F000,$38(a6)
ROM:0005506A                 move.w  #$60,$70(a6)
ROM:00055070                 move.l  #unk_29B3C0,$60(a6)
ROM:00055078                 lea     loc_5507E,a1
ROM:0005507C                 move.l  a1,(a6)
ROM:0005507E
ROM:0005507E loc_5507E:
ROM:0005507E                 jsr     sub_28998
ROM:00055084                 jsr     ObjectRelated
ROM:0005508A                 jsr     CheckOutOfScreen
ROM:00055090                 bcc.w   locret_5509A
ROM:00055094                 jmp     (SetDying).l
ROM:0005509A
ROM:0005509A
ROM:0005509A locret_5509A:
ROM:0005509A                 rts
ROM:0005509C
ROM:0005509C                 cmpi.b  #0,$74(a6)
ROM:000550A2                 bne.w   locret_55146
ROM:000550A6                 move.b  (byte_1081B1).l,d0
ROM:000550AC                 cmpi.b  #0,d0
ROM:000550B0                 beq.w   loc_550C4
ROM:000550B4                 jsr     sub_551D0
ROM:000550B8                 move.b  (byte_1081B1).l,d0
ROM:000550BE                 move.b  d0,$74(a6)
ROM:000550C2                 rts
ROM:000550C4
ROM:000550C4
ROM:000550C4 loc_550C4:
ROM:000550C4                 movea.l $C(a6),a0
ROM:000550C8                 cmpi.b  #$7F,$80(a0)
ROM:000550CE                 beq.w   locret_550E6
ROM:000550D2                 cmpi.b  #$FF,$80(a0)
ROM:000550D8                 bne.w   loc_550E8
ROM:000550DC                 jsr     sub_551D0
ROM:000550E0                 move.b  #$7F,$80(a0)
ROM:000550E6
ROM:000550E6 locret_550E6:
ROM:000550E6                 rts
ROM:000550E8
ROM:000550E8
ROM:000550E8 loc_550E8:
ROM:000550E8                 movea.l $C(a6),a0
ROM:000550EC                 cmpi.b  #$FF,$21(a0)
ROM:000550F2                 beq.w   locret_55146
ROM:000550F6                 addq.w  #1,$72(a6)
ROM:000550FA                 movea.l $C(a6),a0
ROM:000550FE                 cmpi.b  #1,$21(a0)
ROM:00055104                 bne.w   loc_5510E
ROM:00055108                 jsr     sub_55214
ROM:0005510C                 rts
ROM:0005510E
ROM:0005510E
ROM:0005510E loc_5510E:
ROM:0005510E                 movea.l $C(a6),a0
ROM:00055112                 cmpi.b  #2,$21(a0)
ROM:00055118                 bne.w   loc_55122
ROM:0005511C                 jsr     sub_55148
ROM:00055120                 rts
ROM:00055122
ROM:00055122
ROM:00055122 loc_55122:
ROM:00055122                 move.w  $72(a6),d0
ROM:00055126                 andi.w  #3,d0
ROM:0005512A                 bne.w   locret_55146
ROM:0005512E                 move.w  $72(a6),d0
ROM:00055132                 btst    #2,d0
ROM:00055136                 bne.w   loc_55142
ROM:0005513A                 jsr     sub_5518C
ROM:0005513E                 bra.w   locret_55146
ROM:00055142
ROM:00055142
ROM:00055142 loc_55142:
ROM:00055142                 jsr     sub_55148
ROM:00055146
ROM:00055146 locret_55146:
ROM:00055146
ROM:00055146                 rts
ROM:00055148
ROM:00055148
ROM:00055148
ROM:00055148
