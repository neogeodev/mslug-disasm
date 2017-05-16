ROM:0008E988 ProcHangingFishD:
ROM:0008E988                 lea     ($FFFFFFFF).w,a0
ROM:0008E98C                 move.l  a0,$48(a6)
ROM:0008E990                 lea     (unk_2F4388).l,a0
ROM:0008E996                 jsr     ChangeAnimation
ROM:0008E99C                 lea     loc_8E9A2,a1
ROM:0008E9A0                 move.l  a1,(a6)
ROM:0008E9A2
ROM:0008E9A2 loc_8E9A2:
ROM:0008E9A2                 jsr     ObjectRelated
ROM:0008E9A8                 jsr     Animate
ROM:0008E9AE                 bcc.w   loc_8E9B8
ROM:0008E9B2                 lea     ProcHangingFishE,a1
ROM:0008E9B6                 move.l  a1,(a6)
ROM:0008E9B8
ROM:0008E9B8 loc_8E9B8:
ROM:0008E9B8                 jsr     sub_8D184
ROM:0008E9BC                 bcc.w   loc_8E9CE
ROM:0008E9C0                 jsr     (ClearObjChilds?).l
ROM:0008E9C6                 jmp     (SetDying).l
ROM:0008E9CC
ROM:0008E9CC                 rts
ROM:0008E9CE
ROM:0008E9CE
ROM:0008E9CE loc_8E9CE:
ROM:0008E9CE                 jsr     loc_8EA50
ROM:0008E9D2                 rts
ROM:0008E9D4
ROM:0008E9D4
