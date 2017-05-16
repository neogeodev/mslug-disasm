ROM:0008E592 ProcLevel1BirdB:
ROM:0008E592                 jsr     ObjectRelated
ROM:0008E598                 jsr     ApplySpeed
ROM:0008E59C                 jsr     Animate
ROM:0008E5A2                 cmpi.w  #$160,ObjLLItem.YPos(a6)
ROM:0008E5A8                 bge.w   loc_8E5B4
ROM:0008E5AC                 lea     loc_8E4FE,a1
ROM:0008E5B0                 move.l  a1,(a6)
ROM:0008E5B2                 rts
ROM:0008E5B4
ROM:0008E5B4
ROM:0008E5B4 loc_8E5B4:
ROM:0008E5B4                 subq.w  #1,$70(a6)
ROM:0008E5B8                 cmpi.w  #0,$70(a6)
ROM:0008E5BE                 bhi.w   loc_8E5C8
ROM:0008E5C2                 lea     loc_8E4FE,a1
ROM:0008E5C6                 move.l  a1,(a6)
ROM:0008E5C8
ROM:0008E5C8 loc_8E5C8:
ROM:0008E5C8                 jsr     DisableObject?
ROM:0008E5CC                 rts
ROM:0008E5CE
ROM:0008E5CE                 jsr     sub_8F108
ROM:0008E5D2                 jsr     dword_8F000+2
ROM:0008E5D6                 jsr     dword_8F000+$10
ROM:0008E5DA                 move.w  #$FD00,ObjLLItem.YSpeed(a6)
ROM:0008E5E0                 move.w  #$10,ObjLLItem.Weight(a6)
ROM:0008E5E6                 move.w  #$124,d1
ROM:0008E5EA                 jsr     (sub_236E).l
ROM:0008E5F0                 lea     (off_2F4072).l,a0
ROM:0008E5F6                 jsr     ChangeAnimation
ROM:0008E5FC                 jsr     PositionRelated
ROM:0008E602                 jsr     Animate
ROM:0008E608                 move.w  #$F,d0
ROM:0008E60C                 jsr     sub_5EA1C
ROM:0008E612                 addi.w  #$C,d0
ROM:0008E616                 move.w  d0,$70(a6)
ROM:0008E61A                 lea     loc_8E622,a1
ROM:0008E61E                 move.l  a1,(a6)
ROM:0008E620                 rts
ROM:0008E622
ROM:0008E622
ROM:0008E622 loc_8E622:
ROM:0008E622                 subq.w  #1,$70(a6)
ROM:0008E626                 cmpi.w  #0,$70(a6)
ROM:0008E62C                 bgt.w   loc_8E636
ROM:0008E630                 lea     loc_8E65C,a1
ROM:0008E634                 move.l  a1,(a6)
ROM:0008E636
ROM:0008E636 loc_8E636:
ROM:0008E636                 cmpi.w  #$40,ObjLLItem.YSpeed(a6)
ROM:0008E63C                 blt.w   loc_8E646
ROM:0008E640                 lea     loc_8E65C,a1
ROM:0008E644                 move.l  a1,(a6)
ROM:0008E646
ROM:0008E646 loc_8E646:
ROM:0008E646                 jsr     ApplySpeed
ROM:0008E64A                 jsr     ObjectRelated
ROM:0008E650                 jsr     DisableObject?
ROM:0008E654                 jsr     Animate
ROM:0008E65A                 rts
ROM:0008E65C
ROM:0008E65C
ROM:0008E65C loc_8E65C:
ROM:0008E65C
ROM:0008E65C                 move.w  #$3F,d0
ROM:0008E660                 jsr     sub_5EA1C
ROM:0008E666                 addi.w  #$40,d0
ROM:0008E66A                 neg.w   d0
ROM:0008E66C                 move.w  d0,ObjLLItem.YSpeed(a6)
ROM:0008E670                 move.w  #4,ObjLLItem.Weight(a6)
ROM:0008E676                 move.w  #$B,$70(a6)
ROM:0008E67C                 lea     (off_2F407E).l,a0
ROM:0008E682                 jsr     ChangeAnimation
ROM:0008E688                 lea     loc_8E68E,a1
ROM:0008E68C                 move.l  a1,(a6)
ROM:0008E68E
ROM:0008E68E loc_8E68E:
ROM:0008E68E                 subq.w  #1,$70(a6)
ROM:0008E692                 cmpi.w  #0,$70(a6)
ROM:0008E698                 bgt.w   loc_8E6A2
ROM:0008E69C                 lea     loc_8E6B8,a1
ROM:0008E6A0                 move.l  a1,(a6)
ROM:0008E6A2
ROM:0008E6A2 loc_8E6A2:
ROM:0008E6A2                 jsr     ApplySpeed
ROM:0008E6A6                 jsr     ObjectRelated
ROM:0008E6AC                 jsr     DisableObject?
ROM:0008E6B0                 jsr     Animate
ROM:0008E6B6                 rts
ROM:0008E6B8
ROM:0008E6B8
ROM:0008E6B8 loc_8E6B8:
ROM:0008E6B8                 lea     (off_2F408A).l,a0
ROM:0008E6BE                 jsr     ChangeAnimation
ROM:0008E6C4                 lea     loc_8E6CA,a1
ROM:0008E6C8                 move.l  a1,(a6)
ROM:0008E6CA
ROM:0008E6CA loc_8E6CA:
ROM:0008E6CA                 jsr     loc_8D2F8
ROM:0008E6CE                 jsr     ObjectRelated
ROM:0008E6D4                 jsr     DisableObject?
ROM:0008E6D8                 jsr     Animate
ROM:0008E6DE                 rts
ROM:0008E6E0
ROM:0008E6E0                 jsr     sub_8F108
ROM:0008E6E4                 jsr     dword_8F000+2
ROM:0008E6E8                 jsr     dword_8F000+$10
ROM:0008E6EC                 move.w  #$128,d1
ROM:0008E6F0                 jsr     (sub_236E).l
ROM:0008E6F6                 lea     (off_2F4096).l,a0
ROM:0008E6FC                 jsr     ChangeAnimation
ROM:0008E702                 jsr     PositionRelated
ROM:0008E708                 jsr     Animate
ROM:0008E70E                 lea     loc_8E716,a1
ROM:0008E712                 move.l  a1,(a6)
ROM:0008E714                 rts
ROM:0008E716
ROM:0008E716
ROM:0008E716 loc_8E716:
ROM:0008E716                 jsr     dword_8D2A4+$C
ROM:0008E71A                 jsr     ObjectRelated
ROM:0008E720                 jsr     sub_8D184
ROM:0008E724                 bcc.w   loc_8E730
ROM:0008E728                 jmp     (SetDying).l
ROM:0008E72E
ROM:0008E72E                 rts
ROM:0008E730
ROM:0008E730
ROM:0008E730 loc_8E730:
ROM:0008E730                 jsr     Animate
ROM:0008E736                 rts
ROM:0008E738
ROM:0008E738                 move.b  #3,$9A(a6)
ROM:0008E73E                 clr.w   $5C(a6)
ROM:0008E742                 bra.w   loc_8E750
ROM:0008E746
ROM:0008E746                 jsr     sub_8F108
ROM:0008E74A                 move.w  #1,$5C(a6)
ROM:0008E750
ROM:0008E750 loc_8E750:
ROM:0008E750                 jsr     dword_8F000+2
ROM:0008E754                 move.w  #$125,d1
ROM:0008E758                 jsr     (sub_236E).l
ROM:0008E75E                 lea     (unk_2F41F2).l,a0
ROM:0008E764                 jsr     ChangeAnimation
ROM:0008E76A                 lea     (off_2F414A).l,a0
ROM:0008E770                 move.l  a0,$48(a6)
ROM:0008E774                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:0008E77A                 move.w  #$64,$66(a6)
ROM:0008E780
ROM:0008E780 loc_8E780:
ROM:0008E780                 subq.b  #1,$9A(a6)
ROM:0008E784                 cmpi.b  #0,$9A(a6)
ROM:0008E78A                 blt.w   loc_8E7A0
ROM:0008E78E                 lea     $8EB56,a1
ROM:0008E792                 jsr     (SpawnObj).l
ROM:0008E798                 jsr     InitSamePositions
ROM:0008E79E                 bra.s   loc_8E780
ROM:0008E7A0
ROM:0008E7A0
ROM:0008E7A0 loc_8E7A0:
ROM:0008E7A0                 lea     loc_8E7A6,a1
ROM:0008E7A4                 move.l  a1,(a6)
ROM:0008E7A6
ROM:0008E7A6 loc_8E7A6:
ROM:0008E7A6                 jsr     ObjectRelated
ROM:0008E7AC                 jsr     Animate
ROM:0008E7B2                 jsr     CheckShot?
ROM:0008E7B8                 bcc.w   loc_8E7C2
ROM:0008E7BC                 lea     loc_8E7DE,a1
ROM:0008E7C0                 move.l  a1,(a6)
ROM:0008E7C2
ROM:0008E7C2 loc_8E7C2:
ROM:0008E7C2                 jsr     sub_8D184
ROM:0008E7C6                 bcc.w   loc_8E7D8
ROM:0008E7CA                 jsr     (ClearObjChilds?).l
ROM:0008E7D0                 jmp     (SetDying).l
ROM:0008E7D6
ROM:0008E7D6                 rts
ROM:0008E7D8
ROM:0008E7D8
ROM:0008E7D8 loc_8E7D8:
ROM:0008E7D8                 jsr     loc_8EA50
ROM:0008E7DC                 rts
ROM:0008E7DE
ROM:0008E7DE
ROM:0008E7DE loc_8E7DE:
ROM:0008E7DE                 lea     (unk_2F4202).l,a0
ROM:0008E7E4                 jsr     ChangeAnimation
ROM:0008E7EA                 lea     loc_8E7F0,a1
ROM:0008E7EE                 move.l  a1,(a6)
ROM:0008E7F0
ROM:0008E7F0 loc_8E7F0:
ROM:0008E7F0                 jsr     ObjectRelated
ROM:0008E7F6                 jsr     Animate
ROM:0008E7FC                 bcc.w   loc_8E806
ROM:0008E800                 lea     loc_8E822,a1
ROM:0008E804                 move.l  a1,(a6)
ROM:0008E806
ROM:0008E806 loc_8E806:
ROM:0008E806                 jsr     sub_8D184
ROM:0008E80A                 bcc.w   loc_8E81C
ROM:0008E80E                 jsr     (ClearObjChilds?).l
ROM:0008E814                 jmp     (SetDying).l
ROM:0008E81A
ROM:0008E81A                 rts
ROM:0008E81C
ROM:0008E81C
ROM:0008E81C loc_8E81C:
ROM:0008E81C                 jsr     loc_8EA50
ROM:0008E820                 rts
ROM:0008E822
ROM:0008E822
ROM:0008E822 loc_8E822:
ROM:0008E822                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:0008E828                 move.w  #$64,$66(a6)
ROM:0008E82E                 lea     loc_8E834,a1
ROM:0008E832                 move.l  a1,(a6)
ROM:0008E834
ROM:0008E834 loc_8E834:
ROM:0008E834                 jsr     ObjectRelated
ROM:0008E83A                 jsr     Animate
ROM:0008E840                 jsr     CheckShot?
ROM:0008E846                 bcc.w   loc_8E850
ROM:0008E84A                 lea     loc_8E86C,a1
ROM:0008E84E                 move.l  a1,(a6)
ROM:0008E850
ROM:0008E850 loc_8E850:
ROM:0008E850                 jsr     sub_8D184
ROM:0008E854                 bcc.w   loc_8E866
ROM:0008E858                 jsr     (ClearObjChilds?).l
ROM:0008E85E                 jmp     (SetDying).l
ROM:0008E864
ROM:0008E864                 rts
ROM:0008E866
ROM:0008E866
ROM:0008E866 loc_8E866:
ROM:0008E866                 jsr     loc_8EA50
ROM:0008E86A                 rts
ROM:0008E86C
ROM:0008E86C
ROM:0008E86C loc_8E86C:
ROM:0008E86C                 lea     (unk_2F4284).l,a0
ROM:0008E872                 jsr     ChangeAnimation
ROM:0008E878                 lea     loc_8E87E,a1
ROM:0008E87C                 move.l  a1,(a6)
ROM:0008E87E
ROM:0008E87E loc_8E87E:
ROM:0008E87E                 jsr     ObjectRelated
ROM:0008E884                 jsr     Animate
ROM:0008E88A                 bcc.w   loc_8E894
ROM:0008E88E                 lea     loc_8E8B0,a1
ROM:0008E892                 move.l  a1,(a6)
ROM:0008E894
ROM:0008E894 loc_8E894:
ROM:0008E894                 jsr     sub_8D184
ROM:0008E898                 bcc.w   loc_8E8AA
ROM:0008E89C                 jsr     (ClearObjChilds?).l
ROM:0008E8A2                 jmp     (SetDying).l
ROM:0008E8A8
ROM:0008E8A8                 rts
ROM:0008E8AA
ROM:0008E8AA
ROM:0008E8AA loc_8E8AA:
ROM:0008E8AA                 jsr     loc_8EA50
ROM:0008E8AE                 rts
ROM:0008E8B0
ROM:0008E8B0
ROM:0008E8B0 loc_8E8B0:
ROM:0008E8B0                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:0008E8B6                 move.w  #$64,$66(a6)
ROM:0008E8BC                 lea     ProcHangingFishA,a1
ROM:0008E8C0                 move.l  a1,(a6)
ROM:0008E8C2
