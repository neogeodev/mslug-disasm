ROM:00032C10 havegun:
ROM:00032C10
ROM:00032C10                 rts
ROM:00032C12
ROM:00032C12
ROM:00032C12 loc_32C12:
ROM:00032C12                 cmpi.b  #0,d0
ROM:00032C16                 bne.w   loc_32C24
ROM:00032C1A                 lea     (Player1Struct).l,a1
ROM:00032C20                 bra.w   loc_32C2A
ROM:00032C24
ROM:00032C24
ROM:00032C24 loc_32C24:
ROM:00032C24                 lea     (Player2Struct).l,a1
ROM:00032C2A
ROM:00032C2A loc_32C2A:
ROM:00032C2A                 move.b  PlayerStruct.WeaponCode(a1),d1
ROM:00032C2E                 cmpi.b  #4,d1
ROM:00032C32                 bne.w   loc_32C3E
ROM:00032C36                 move.b  $99(a6),d2
ROM:00032C3A                 bra.w   loc_32C42
ROM:00032C3E
ROM:00032C3E
ROM:00032C3E loc_32C3E:
ROM:00032C3E                 move.b  $98(a6),d2
ROM:00032C42
ROM:00032C42 loc_32C42:
ROM:00032C42                 cmpi.b  #$FF,d2
ROM:00032C46                 beq.w   locret_32C7C
ROM:00032C4A                 cmpi.b  #0,d1
ROM:00032C4E                 beq.w   loc_32C76
ROM:00032C52                 move.w  PlayerStruct.AmmoCount(a1),d0
ROM:00032C56                 moveq   #0,d1
ROM:00032C58                 move.b  d2,d1
ROM:00032C5A                 add.w   d1,d0
ROM:00032C5C                 cmpi.w  #$3E7,d0
ROM:00032C60                 ble.w   loc_32C68
ROM:00032C64                 move.w  #$3E7,d0
ROM:00032C68
ROM:00032C68 loc_32C68:
ROM:00032C68                 move.w  d0,PlayerStruct.AmmoCount(a1)
ROM:00032C6C                 jsr     sub_9B9BA
ROM:00032C72                 bra.w   locret_32C7C
ROM:00032C76
ROM:00032C76
ROM:00032C76 loc_32C76:
ROM:00032C76                 jsr     sub_9B9F6
ROM:00032C7C
ROM:00032C7C locret_32C7C:
ROM:00032C7C
ROM:00032C7C                 rts
ROM:00032C7E
ROM:00032C7E
ROM:00032C7E loc_32C7E:
ROM:00032C7E                 cmpi.b  #0,d0
ROM:00032C82                 bne.w   loc_32C90
ROM:00032C86                 lea     (Player1Struct).l,a1
ROM:00032C8C                 bra.w   loc_32C96
ROM:00032C90
ROM:00032C90
ROM:00032C90 loc_32C90:
ROM:00032C90                 lea     (Player2Struct).l,a1
ROM:00032C96
ROM:00032C96 loc_32C96:
ROM:00032C96                 cmpi.b  #$FF,$98(a6)
ROM:00032C9C                 beq.w   locret_32CB8
ROM:00032CA0                 move.b  PlayerStruct.BombCount(a1),d0
ROM:00032CA4                 add.b   $98(a6),d0
ROM:00032CA8                 cmpi.w  #$63,d0
ROM:00032CAC                 ble.w   loc_32CB4
ROM:00032CB0                 move.w  #$63,d0
ROM:00032CB4
ROM:00032CB4 loc_32CB4:
ROM:00032CB4                 move.b  d0,PlayerStruct.BombCount(a1)
ROM:00032CB8
ROM:00032CB8 locret_32CB8:
ROM:00032CB8                 rts
ROM:00032CBA
ROM:00032CBA
ROM:00032CBA loc_32CBA:
ROM:00032CBA                 move.b  #5,$87(a1)
ROM:00032CC0                 bset    #4,$8C(a1)
ROM:00032CC6                 rts
ROM:00032CC8
ROM:00032CC8
ROM:00032CC8
ROM:00032CC8
