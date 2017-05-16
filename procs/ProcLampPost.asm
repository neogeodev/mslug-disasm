ROM:00052D2E ProcLampPost:
ROM:00052D2E                 jsr     ObjectRelated
ROM:00052D34                 jsr     Animate
ROM:00052D3A                 jsr     CheckShot?
ROM:00052D40                 bcc.w   loc_52D74
ROM:00052D44                 lea     (SoundCodeGunFire).l,a0
ROM:00052D4A                 jsr     SoundRelated_0
ROM:00052D50                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:00052D56                 lea     ($77E10).l,a1
ROM:00052D5C                 jsr     (SpawnObj).l
ROM:00052D62                 jsr     sub_5DD22
ROM:00052D68                 move.w  ObjLLItem.field_54(a6),ObjLLItem.XPos(a0)
ROM:00052D6E                 move.w  $56(a6),ObjLLItem.YPos(a0)
ROM:00052D74
ROM:00052D74 loc_52D74:
ROM:00052D74                 jsr     CheckIfDead
ROM:00052D7A                 bcc.w   loc_52DBC
ROM:00052D7E                 bclr    #0,ObjLLItem.Flags1(a6)
ROM:00052D84                 move.w  #$1076,d0
ROM:00052D88                 jsr     (PlaySFX).l
ROM:00052D8E                 lea     (unk_297FE4).l,a1
ROM:00052D94                 jsr     SpawnDebris?
ROM:00052D9A                 lea     (unk_29874A).l,a0
ROM:00052DA0                 move.l  a0,$4C(a6)
ROM:00052DA4                 jsr     sub_283CA
ROM:00052DAA                 jsr     sub_283CA
ROM:00052DB0                 jsr     loc_283D8
ROM:00052DB6                 lea     loc_52DCE,a1
ROM:00052DBA                 move.l  a1,(a6)
ROM:00052DBC
ROM:00052DBC loc_52DBC:
ROM:00052DBC                 jsr     CheckOutOfScreen
ROM:00052DC2                 bcc.w   locret_52DCC
ROM:00052DC6                 jmp     (SetDying).l
ROM:00052DCC
ROM:00052DCC
ROM:00052DCC locret_52DCC:
ROM:00052DCC                 rts
ROM:00052DCE
ROM:00052DCE
ROM:00052DCE loc_52DCE:
ROM:00052DCE                 move.l  #$500,d0
ROM:00052DD4                 jsr     sub_51A28
ROM:00052DDA                 lea     ($FFFFFFFF).w,a0
ROM:00052DDE                 move.l  a0,$4C(a6)
ROM:00052DE2                 jsr     sub_283CA
ROM:00052DE8                 lea     ($FFFFFFFF).w,a0
ROM:00052DEC                 move.l  a0,$48(a6)
ROM:00052DF0                 lea     (off_29753C).l,a0
ROM:00052DF6                 jsr     ChangeAnimation
ROM:00052DFC                 lea     ProcBrokenLampPost,a1
ROM:00052E00                 move.l  a1,(a6)
ROM:00052E02
