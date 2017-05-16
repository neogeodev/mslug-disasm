ROM:00054E12 ProcCliffUndamaged:
ROM:00054E12                 jsr     ObjectRelated
ROM:00054E18                 jsr     Animate
ROM:00054E1E                 cmpi.w  #4,$72(a6)
ROM:00054E24                 beq.w   loc_54E5E
ROM:00054E28                 jsr     CheckShot?
ROM:00054E2E                 bcc.w   loc_54E44
ROM:00054E32                 lea     (SoundCodeGunFire).l,a0
ROM:00054E38                 jsr     SoundRelated_0
ROM:00054E3E                 bclr    #3,$13(a6)
ROM:00054E44
ROM:00054E44 loc_54E44:
ROM:00054E44                 cmpi.w  #$D4,$66(a6)
ROM:00054E4A                 bgt.w   loc_54E5E
ROM:00054E4E                 move.w  #$1027,d0
ROM:00054E52                 jsr     (PlaySFX).l
ROM:00054E58                 lea     loc_54E70,a1
ROM:00054E5C                 move.l  a1,(a6)
ROM:00054E5E
ROM:00054E5E loc_54E5E:
ROM:00054E5E
ROM:00054E5E                 jsr     CheckOutOfScreen
ROM:00054E64                 bcc.w   locret_54E6E
ROM:00054E68                 jmp     (SetDying).l
ROM:00054E6E
ROM:00054E6E
ROM:00054E6E locret_54E6E:
ROM:00054E6E                 rts
ROM:00054E70
ROM:00054E70
ROM:00054E70 loc_54E70:
ROM:00054E70                 move.w  $72(a6),d0
ROM:00054E74                 movea.l #off_2990CE,a0
ROM:00054E7A                 lsl.w   #2,d0
ROM:00054E7C                 movea.l (a0,d0.w),a0
ROM:00054E80                 cmpa.l  #$FFFFFFFF,a0
ROM:00054E86                 beq.w   loc_54E90
ROM:00054E8A                 jsr     ChangeAnimation
ROM:00054E90
ROM:00054E90 loc_54E90:
ROM:00054E90                 lea     loc_54E96,a1
ROM:00054E94                 move.l  a1,(a6)
ROM:00054E96
ROM:00054E96 loc_54E96:
ROM:00054E96                 jsr     ObjectRelated
ROM:00054E9C                 jsr     Animate
ROM:00054EA2                 jsr     CheckShot?
ROM:00054EA8                 bcc.w   loc_54EBE
ROM:00054EAC                 lea     (SoundCodeGunFire).l,a0
ROM:00054EB2                 jsr     SoundRelated_0
ROM:00054EB8                 bclr    #3,$13(a6)
ROM:00054EBE
ROM:00054EBE loc_54EBE:
ROM:00054EBE                 cmpi.w  #$6A,$66(a6)
ROM:00054EC4                 bgt.w   loc_54ED8
ROM:00054EC8                 move.w  #$1027,d0
ROM:00054ECC                 jsr     (PlaySFX).l
ROM:00054ED2                 lea     loc_54EEA,a1
ROM:00054ED6                 move.l  a1,(a6)
ROM:00054ED8
ROM:00054ED8 loc_54ED8:
ROM:00054ED8                 jsr     CheckOutOfScreen
ROM:00054EDE                 bcc.w   locret_54EE8
ROM:00054EE2                 jmp     (SetDying).l
ROM:00054EE8
ROM:00054EE8
ROM:00054EE8 locret_54EE8:
ROM:00054EE8                 rts
ROM:00054EEA
ROM:00054EEA
ROM:00054EEA loc_54EEA:
ROM:00054EEA                 move.w  $72(a6),d0
ROM:00054EEE                 movea.l #off_2990DE,a0
ROM:00054EF4                 lsl.w   #2,d0
ROM:00054EF6                 movea.l (a0,d0.w),a0
ROM:00054EFA                 cmpa.l  #$FFFFFFFF,a0
ROM:00054F00                 beq.w   loc_54F0A
ROM:00054F04                 jsr     ChangeAnimation
ROM:00054F0A
ROM:00054F0A loc_54F0A:
ROM:00054F0A                 lea     ProcCliffDamaged,a1
ROM:00054F0E                 move.l  a1,(a6)
ROM:00054F10
