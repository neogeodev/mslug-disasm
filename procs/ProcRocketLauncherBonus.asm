ROM:0009A9AE ProcRocketLauncherBonus:
ROM:0009A9AE                 jsr     sub_27C8C
ROM:0009A9B4                 jsr     Animate
ROM:0009A9BA                 jsr     sub_9A836
ROM:0009A9BE                 bcc.w   loc_9A9D0
ROM:0009A9C2                 move.b  #3,d1
ROM:0009A9C6                 jsr     SetWeaponD1?
ROM:0009A9CA                 lea     ProcBonusTaken?,a1
ROM:0009A9CE                 move.l  a1,(a6)
ROM:0009A9D0
ROM:0009A9D0 loc_9A9D0:
ROM:0009A9D0                 bra.w   BonusDone
ROM:0009A9D4
ROM:0009A9D4
ROM:0009A9D4 loc_9A9D4:
ROM:0009A9D4                 move.w  #$17D,d1
ROM:0009A9D8                 jsr     (sub_236E).l
ROM:0009A9DE                 move.b  #8,$45(a6)
ROM:0009A9E4                 move.w  #$8000,d0
ROM:0009A9E8                 jsr     sub_28134
ROM:0009A9EE                 andi.w  #$FFE3,$38(a6)
ROM:0009A9F4                 ori.w   #0,$38(a6)
ROM:0009A9FA                 lea     (off_2F67F4).l,a0
ROM:0009AA00                 jsr     ChangeAnimation
ROM:0009AA06                 lea     ProcShotgunBonus,a1
ROM:0009AA0A                 move.l  a1,(a6)
ROM:0009AA0C
