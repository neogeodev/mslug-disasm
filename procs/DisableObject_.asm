ROM:0008EFB0 DisableObject?:
ROM:0008EFB0
ROM:0008EFB0                 movea.l #$FFFFFFFF,a0
ROM:0008EFB6                 jsr     CheckObjectOOB
ROM:0008EFBC                 bcc.w   locret_8EFCC
ROM:0008EFC0                 jsr     (ClearObjChilds?).l
ROM:0008EFC6                 jmp     (SetDying).l
ROM:0008EFCC
ROM:0008EFCC
ROM:0008EFCC locret_8EFCC:
ROM:0008EFCC                 rts
ROM:0008EFCC
ROM:0008EFCC
ROM:0008EFCE
ROM:0008EFCE
ROM:0008EFCE loc_8EFCE:
ROM:0008EFCE
ROM:0008EFCE                 lea     (Player1Struct).l,a1
ROM:0008EFD4                 move.w  $22(a6),d1
ROM:0008EFD8                 sub.w   $22(a1),d1
ROM:0008EFD8
ROM:0008EFDC                 dc.l $B2406D00, $1C43F9, $1004E0, $322E0022, $92690022
ROM:0008EFDC                 dc.l $B2406D00
