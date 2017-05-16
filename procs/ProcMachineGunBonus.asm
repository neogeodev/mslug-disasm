ROM:0009A950 ProcMachineGunBonus:
ROM:0009A950                 jsr     sub_27C8C
ROM:0009A956                 jsr     Animate
ROM:0009A95C                 jsr     sub_9A836
ROM:0009A960                 bcc.w   loc_9A972
ROM:0009A964                 move.b  #4,d1
ROM:0009A968                 jsr     SetWeaponD1?
ROM:0009A96C                 lea     ProcBonusTaken?,a1
ROM:0009A970                 move.l  a1,(a6)
ROM:0009A972
ROM:0009A972 loc_9A972:
ROM:0009A972                 bra.w   BonusDone
ROM:0009A976
ROM:0009A976                 move.w  #$17D,d1
ROM:0009A97A                 jsr     (sub_236E).l
ROM:0009A980                 move.b  #8,$45(a6)
ROM:0009A986                 move.w  #$8000,d0
ROM:0009A98A                 jsr     sub_28134
ROM:0009A990                 andi.w  #$FFE3,$38(a6)
ROM:0009A996                 ori.w   #0,$38(a6)
ROM:0009A99C                 lea     (off_2F67E8).l,a0
ROM:0009A9A2                 jsr     ChangeAnimation
ROM:0009A9A8                 lea     ProcRocketLauncherBonus,a1
ROM:0009A9AC                 move.l  a1,(a6)
ROM:0009A9AE
