ROM:0009AA0C ProcShotgunBonus:
ROM:0009AA0C                 jsr     sub_27C8C
ROM:0009AA12                 jsr     Animate
ROM:0009AA18                 jsr     sub_9A836
ROM:0009AA1C                 bcc.w   loc_9AA2E
ROM:0009AA20                 move.b  #1,d1
ROM:0009AA24                 jsr     SetWeaponD1?
ROM:0009AA28                 lea     ProcBonusTaken?,a1
ROM:0009AA2C                 move.l  a1,(a6)
ROM:0009AA2E
ROM:0009AA2E loc_9AA2E:
ROM:0009AA2E                 bra.w   BonusDone
ROM:0009AA32
ROM:0009AA32                 move.w  #$17D,d1
ROM:0009AA36                 jsr     (sub_236E).l
ROM:0009AA3C                 move.b  #8,$45(a6)
ROM:0009AA42                 move.w  #$8000,d0
ROM:0009AA46                 jsr     sub_28134
ROM:0009AA4C                 andi.w  #$FFE3,$38(a6)
ROM:0009AA52                 ori.w   #0,$38(a6)
ROM:0009AA58                 lea     (off_2F6800).l,a0
ROM:0009AA5E                 jsr     ChangeAnimation
ROM:0009AA64                 lea     ProcFlameShotBonus,a1
ROM:0009AA68                 move.l  a1,(a6)
ROM:0009AA6A
