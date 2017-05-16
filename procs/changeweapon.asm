ROM:00032BB2 changeweapon:
ROM:00032BB2                 cmpi.b  #0,d2
ROM:00032BB6                 bne.w   loc_32BC0
ROM:00032BBA                 lsl.w   #2,d1
ROM:00032BBC                 move.w  2(a2,d1.w),d2
ROM:00032BC0
ROM:00032BC0 loc_32BC0:
ROM:00032BC0                 move.w  d2,PlayerStruct.AmmoCount(a1)
ROM:00032BC4
ROM:00032BC4 locret_32BC4:
ROM:00032BC4                 rts
ROM:00032BC4
ROM:00032BC4
ROM:00032BC6
ROM:00032BC6                 cmpi.b  #0,d0
ROM:00032BCA                 bne.w   loc_32BD8
ROM:00032BCE                 lea     (Player1Struct).l,a1
ROM:00032BD4                 bra.w   loc_32BDE
ROM:00032BD8
ROM:00032BD8
ROM:00032BD8 loc_32BD8:
ROM:00032BD8                 lea     (Player2Struct).l,a1
ROM:00032BDE
ROM:00032BDE loc_32BDE:
ROM:00032BDE                 move.b  PlayerStruct.WeaponCode(a1),d1
ROM:00032BE2                 cmpi.b  #0,d1
ROM:00032BE6                 beq.w   havegun
ROM:00032BEA                 andi.w  #$FF,d1
ROM:00032BEE                 lea     WeaponData,a2
ROM:00032BF2                 lsl.w   #2,d1
ROM:00032BF4                 move.w  PlayerStruct.AmmoCount(a1),d0
ROM:00032BF8                 add.w   2(a2,d1.w),d0
ROM:00032BFC                 cmpi.w  #$3E7,d0
ROM:00032C00                 ble.w   loc_32C08
ROM:00032C04                 move.w  #$3E7,d0
ROM:00032C08
ROM:00032C08 loc_32C08:
ROM:00032C08                 move.w  d0,PlayerStruct.AmmoCount(a1)
ROM:00032C0C                 bra.w   *+4
ROM:00032C10
ROM:00032C10
