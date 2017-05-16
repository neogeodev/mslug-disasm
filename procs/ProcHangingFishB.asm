ROM:0008E8FA ProcHangingFishB:
ROM:0008E8FA                 lea     (unk_2F4306).l,a0
ROM:0008E900                 jsr     ChangeAnimation
ROM:0008E906                 lea     loc_8E90C,a1
ROM:0008E90A                 move.l  a1,(a6)
ROM:0008E90C
ROM:0008E90C loc_8E90C:
ROM:0008E90C                 jsr     ObjectRelated
ROM:0008E912                 jsr     Animate
ROM:0008E918                 bcc.w   loc_8E922
ROM:0008E91C                 lea     ProcHangingFishC,a1
ROM:0008E920                 move.l  a1,(a6)
ROM:0008E922
ROM:0008E922 loc_8E922:
ROM:0008E922                 jsr     sub_8D184
ROM:0008E926                 bcc.w   loc_8E938
ROM:0008E92A                 jsr     (ClearObjChilds?).l
ROM:0008E930                 jmp     (SetDying).l
ROM:0008E936
ROM:0008E936                 rts
ROM:0008E938
ROM:0008E938
ROM:0008E938 loc_8E938:
ROM:0008E938                 jsr     loc_8EA50
ROM:0008E93C                 rts
ROM:0008E93E
ROM:0008E93E
