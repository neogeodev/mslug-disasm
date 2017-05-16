ROM:0008E8C2 ProcHangingFishA:
ROM:0008E8C2                 jsr     ObjectRelated
ROM:0008E8C8                 jsr     Animate
ROM:0008E8CE                 jsr     CheckShot?
ROM:0008E8D4                 bcc.w   loc_8E8DE
ROM:0008E8D8                 lea     ProcHangingFishB,a1
ROM:0008E8DC                 move.l  a1,(a6)
ROM:0008E8DE
ROM:0008E8DE loc_8E8DE:
ROM:0008E8DE                 jsr     sub_8D184
ROM:0008E8E2                 bcc.w   loc_8E8F4
ROM:0008E8E6                 jsr     (ClearObjChilds?).l
ROM:0008E8EC                 jmp     (SetDying).l
ROM:0008E8F2
ROM:0008E8F2                 rts
ROM:0008E8F4
ROM:0008E8F4
ROM:0008E8F4 loc_8E8F4:
ROM:0008E8F4                 jsr     loc_8EA50
ROM:0008E8F8                 rts
ROM:0008E8FA
ROM:0008E8FA
