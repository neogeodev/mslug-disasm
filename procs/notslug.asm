ROM:0009AD16 notslug:
ROM:0009AD16                 move.b  d0,$68(a6)
ROM:0009AD1A                 move.b  $98(a6),$98(a6)
ROM:0009AD20                 jsr     loc_32C7E
ROM:0009AD26                 lea     $9B48A,a1
ROM:0009AD2A                 jsr     (SpawnObj).l
ROM:0009AD30                 jsr     InitSamePositions
ROM:0009AD36                 move.b  $68(a6),$68(a0)
ROM:0009AD3C                 clr.b   $98(a0)
ROM:0009AD40
ROM:0009AD40 loc_9AD40:
ROM:0009AD40                 lea     loc_9AE2E,a1
ROM:0009AD44                 move.l  a1,(a6)
ROM:0009AD46                 move.w  #SFXWeaponPickup,d0
ROM:0009AD4A                 jsr     (PlaySFX).l
ROM:0009AD50
ROM:0009AD50 loc_9AD50:
ROM:0009AD50                 bra.w   BonusDone
ROM:0009AD54
ROM:0009AD54                 move.w  #$180,d1
ROM:0009AD58                 jsr     (sub_236E).l
ROM:0009AD5E                 move.w  #$1A9,d1
ROM:0009AD62                 jsr     (sub_236E).l
ROM:0009AD68                 move.b  #8,$45(a6)
ROM:0009AD6E                 move.w  #$8000,d0
ROM:0009AD72                 jsr     sub_28134
ROM:0009AD78                 andi.w  #$FFE3,$38(a6)
ROM:0009AD7E                 ori.w   #0,$38(a6)
ROM:0009AD84                 lea     (unk_2F68AC).l,a0
ROM:0009AD8A                 jsr     ChangeAnimation
ROM:0009AD90                 lea     ProcFuelBonus,a1
ROM:0009AD94                 move.l  a1,(a6)
ROM:0009AD96
