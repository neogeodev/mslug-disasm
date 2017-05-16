ROM:0008E93E ProcHangingFishC:
ROM:0008E93E                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:0008E944                 move.w  #100,ObjLLItem.FrameTimer?(a6)
ROM:0008E94A                 lea     loc_8E950,a1
ROM:0008E94E                 move.l  a1,(a6)
ROM:0008E950
ROM:0008E950 loc_8E950:
ROM:0008E950                 jsr     ObjectRelated
ROM:0008E956                 jsr     Animate
ROM:0008E95C                 jsr     CheckShot?
ROM:0008E962                 bcc.w   loc_8E96C
ROM:0008E966                 lea     ProcHangingFishD,a1
ROM:0008E96A                 move.l  a1,(a6)
ROM:0008E96C
ROM:0008E96C loc_8E96C:
ROM:0008E96C                 jsr     sub_8D184
ROM:0008E970                 bcc.w   loc_8E982
ROM:0008E974                 jsr     (ClearObjChilds?).l
ROM:0008E97A                 jmp     (SetDying).l
ROM:0008E980
ROM:0008E980                 rts
ROM:0008E982
ROM:0008E982
ROM:0008E982 loc_8E982:
ROM:0008E982                 jsr     loc_8EA50
ROM:0008E986                 rts
ROM:0008E988
ROM:0008E988
