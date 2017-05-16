ROM:00032B6A AmmoUpdate:
ROM:00032B6A                 andi.w  #$FF,d2
ROM:00032B6E                 cmpi.b  #0,d0
ROM:00032B72                 bne.w   loc_32B80
ROM:00032B76                 lea     (Player1Struct).l,a1
ROM:00032B7C                 bra.w   loc_32B86
ROM:00032B80
ROM:00032B80
ROM:00032B80 loc_32B80:
ROM:00032B80                 lea     (Player2Struct).l,a1
ROM:00032B86
ROM:00032B86 loc_32B86:
ROM:00032B86                 andi.w  #$FF,d1
ROM:00032B8A                 lea     WeaponData,a2
ROM:00032B8E                 cmp.b   PlayerStruct.WeaponCode(a1),d1
ROM:00032B92                 bne.w   changeweapon
ROM:00032B96                 cmpi.b  #0,d2
ROM:00032B9A                 beq.w   loc_32BA4
ROM:00032B9E                 lsl.w   #2,d1
ROM:00032BA0                 move.w  2(a2,d1.w),d2
ROM:00032BA4
ROM:00032BA4 loc_32BA4:
ROM:00032BA4                 move.w  PlayerStruct.AmmoCount(a1),d0
ROM:00032BA8                 add.w   d2,d0
ROM:00032BAA                 move.w  d0,PlayerStruct.AmmoCount(a1)
ROM:00032BAE                 bra.w   locret_32BC4
ROM:00032BB2
ROM:00032BB2
