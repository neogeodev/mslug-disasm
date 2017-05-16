ROM:0008D34E ApplySpeed:
ROM:0008D34E
ROM:0008D34E                 tst.w   ObjLLItem.XSpeed(a6)
ROM:0008D352                 beq.w   loc_8D378
ROM:0008D356                 move.w  ObjLLItem.XPos(a6),d0
ROM:0008D35A                 swap    d0
ROM:0008D35C                 move.w  ObjLLItem.XPosFine(a6),d0
ROM:0008D360                 clr.b   d0
ROM:0008D362                 move.w  ObjLLItem.XSpeed(a6),d1
ROM:0008D366                 ext.l   d1
ROM:0008D368                 asl.l   #8,d1
ROM:0008D36A                 add.l   d1,d0
ROM:0008D36C                 asr.w   #8,d0
ROM:0008D36E                 move.b  d0,ObjLLItem.XPosFine(a6)
ROM:0008D372                 swap    d0
ROM:0008D374                 move.w  d0,ObjLLItem.XPos(a6)
ROM:0008D378
ROM:0008D378 loc_8D378:
ROM:0008D378                 tst.w   ObjLLItem.YSpeed(a6)
ROM:0008D37C                 beq.w   loc_8D3A2
ROM:0008D380                 move.w  ObjLLItem.YPos(a6),d0
ROM:0008D384                 swap    d0
ROM:0008D386                 move.b  ObjLLItem.YPosFine(a6),d0
ROM:0008D38A                 asl.w   #8,d0
ROM:0008D38C                 move.w  ObjLLItem.YSpeed(a6),d1
ROM:0008D390                 ext.l   d1
ROM:0008D392                 asl.l   #8,d1
ROM:0008D394                 add.l   d1,d0
ROM:0008D396                 asr.w   #8,d0
ROM:0008D398                 move.b  d0,ObjLLItem.YPosFine(a6)
ROM:0008D39C                 swap    d0
ROM:0008D39E                 move.w  d0,ObjLLItem.YPos(a6)
ROM:0008D3A2
ROM:0008D3A2 loc_8D3A2:
ROM:0008D3A2                 move.w  ObjLLItem.SpeedRelated(a6),d0
ROM:0008D3A6                 add.w   d0,ObjLLItem.XSpeed(a6)
ROM:0008D3AA                 move.w  ObjLLItem.Weight(a6),d0
ROM:0008D3AE                 add.w   d0,ObjLLItem.YSpeed(a6)
ROM:0008D3B2                 rts
ROM:0008D3B2
ROM:0008D3B2
ROM:0008D3B4
ROM:0008D3B4
ROM:0008D3B4 loc_8D3B4:
ROM:0008D3B4
ROM:0008D3B4                 move.w  #$8000,$38(a6)
ROM:0008D3BA                 move.w  #$E,d1
ROM:0008D3BE                 jsr     (sub_236E).l
ROM:0008D3C4                 lea     (off_2F460C).l,a0
ROM:0008D3CA                 jsr     ChangeAnimation
ROM:0008D3D0                 move.b  #1,$3A(a6)
ROM:0008D3D6                 move.w  #$120,$22(a6)
ROM:0008D3DC                 move.w  #$190,$24(a6)
ROM:0008D3E2                 clr.w   $26(a6)
ROM:0008D3E6                 jsr     sub_5E7C0
ROM:0008D3EC                 lea     loc_8D3F2,a1
ROM:0008D3F0                 move.l  a1,(a6)
ROM:0008D3F2
ROM:0008D3F2 loc_8D3F2:
ROM:0008D3F2                 jsr     ObjectRelated
ROM:0008D3F8                 jsr     Animate
ROM:0008D3FE                 cmpi.w  #$100,$22(a6)
ROM:0008D404                 bgt.w   locret_8D41A
ROM:0008D408                 lea     (off_2F4628).l,a0
ROM:0008D40E                 jsr     ChangeAnimation
ROM:0008D414                 lea     loc_8D41C,a1
ROM:0008D418                 move.l  a1,(a6)
ROM:0008D41A
ROM:0008D41A locret_8D41A:
ROM:0008D41A                 rts
ROM:0008D41C
ROM:0008D41C
ROM:0008D41C loc_8D41C:
ROM:0008D41C                 jsr     ObjectRelated
ROM:0008D422                 jsr     Animate
ROM:0008D428                 bcc.w   locret_8D44E
ROM:0008D42C                 lea     loc_8D474,a1
ROM:0008D430                 jsr     (SpawnObj).l
ROM:0008D436                 jsr     InitSamePositions
ROM:0008D43C                 lea     (off_2F46CA).l,a0
ROM:0008D442                 jsr     ChangeAnimation
ROM:0008D448                 lea     loc_8D450,a1
ROM:0008D44C                 move.l  a1,(a6)
ROM:0008D44E
ROM:0008D44E locret_8D44E:
ROM:0008D44E                 rts
ROM:0008D450
ROM:0008D450
ROM:0008D450 loc_8D450:
ROM:0008D450                 jsr     ObjectRelated
ROM:0008D456                 jsr     Animate
ROM:0008D45C                 movea.l #$FFFFFFFF,a0
ROM:0008D462                 jsr     CheckObjectOOB
ROM:0008D468                 bcc.w   locret_8D472
ROM:0008D46C                 lea     locret_8D472,a1
ROM:0008D470                 move.l  a1,(a6)
ROM:0008D472
ROM:0008D472 locret_8D472:
ROM:0008D472
ROM:0008D472                 rts
ROM:0008D474
ROM:0008D474
ROM:0008D474 loc_8D474:
ROM:0008D474                 clr.b   $3A(a6)
ROM:0008D478                 move.w  #$F000,$38(a6)
ROM:0008D47E                 move.w  #$F5,d1
ROM:0008D482                 jsr     (sub_236E).l
ROM:0008D488                 lea     (off_2F3904).l,a0
ROM:0008D48E                 jsr     ChangeAnimation
ROM:0008D494                 addi.w  #4,$22(a6)
ROM:0008D49A                 addi.w  #$20,$24(a6)
ROM:0008D4A0                 move.b  #$FF,$32(a6)
ROM:0008D4A6                 move.b  #$FF,$33(a6)
ROM:0008D4AC                 move.b  #0,$5C(a6)
ROM:0008D4B2                 move.w  #$200,$28(a6)
ROM:0008D4B8                 move.w  #4,$70(a6)
ROM:0008D4BE                 lea     loc_8D4C6,a1
ROM:0008D4C2                 move.l  a1,(a6)
ROM:0008D4C4                 rts
ROM:0008D4C6
ROM:0008D4C6
ROM:0008D4C6 loc_8D4C6:
ROM:0008D4C6                 jsr     dword_8D2A4+$C
ROM:0008D4CA                 jsr     Animate
ROM:0008D4D0                 subq.w  #1,$70(a6)
ROM:0008D4D4                 cmpi.w  #0,$70(a6)
ROM:0008D4DA                 bgt.w   locret_8D4FC
ROM:0008D4DE                 move.b  #$38,$32(a6)
ROM:0008D4E4                 move.b  #$38,$33(a6)
ROM:0008D4EA                 lea     (off_2F38F8).l,a0
ROM:0008D4F0                 jsr     ChangeAnimation
ROM:0008D4F6                 lea     loc_8D4FE,a1
ROM:0008D4FA                 move.l  a1,(a6)
ROM:0008D4FC
ROM:0008D4FC locret_8D4FC:
ROM:0008D4FC                 rts
ROM:0008D4FE
ROM:0008D4FE
ROM:0008D4FE loc_8D4FE:
ROM:0008D4FE                 addq.b  #2,$32(a6)
ROM:0008D502                 addq.b  #2,$33(a6)
ROM:0008D506                 cmpi.b  #$7F,$32(a6)
ROM:0008D50C                 bcs.w   loc_8D51C
ROM:0008D510                 move.b  #$7F,$32(a6)
ROM:0008D516                 move.b  #$7F,$33(a6)
ROM:0008D51C
ROM:0008D51C loc_8D51C:
ROM:0008D51C                 jsr     dword_8D2A4+$C
ROM:0008D520                 jsr     Animate
ROM:0008D526                 cmpi.w  #$A0,$22(a6)
ROM:0008D52C                 blt.w   locret_8D536
ROM:0008D530                 lea     loc_8D5A8,a1
ROM:0008D534                 move.l  a1,(a6)
ROM:0008D536
ROM:0008D536 locret_8D536:
ROM:0008D536                 rts
ROM:0008D538
ROM:0008D538
ROM:0008D538 loc_8D538:
ROM:0008D538                 lea     (off_2F377E).l,a0
ROM:0008D53E                 jsr     ChangeAnimation
ROM:0008D544                 lea     loc_8D54A,a1
ROM:0008D548                 move.l  a1,(a6)
ROM:0008D54A
ROM:0008D54A loc_8D54A:
ROM:0008D54A                 jsr     Animate
ROM:0008D550                 bcc.w   locret_8D55A
ROM:0008D554                 lea     loc_8D55C,a1
ROM:0008D558                 move.l  a1,(a6)
ROM:0008D55A
ROM:0008D55A locret_8D55A:
ROM:0008D55A                 rts
ROM:0008D55C
ROM:0008D55C
ROM:0008D55C loc_8D55C:
ROM:0008D55C                 subq.b  #2,$32(a6)
ROM:0008D560                 subq.b  #2,$33(a6)
ROM:0008D564                 cmpi.b  #$7F,$32(a6)
ROM:0008D56A                 bhi.w   loc_8D574
ROM:0008D56E                 lea     loc_8D580,a1
ROM:0008D572                 move.l  a1,(a6)
ROM:0008D574
ROM:0008D574 loc_8D574:
ROM:0008D574                 jsr     sub_8D804
ROM:0008D578                 jsr     Animate
ROM:0008D57E                 rts
ROM:0008D580
ROM:0008D580
ROM:0008D580 loc_8D580:
ROM:0008D580                 lea     (off_2F37DA).l,a0
ROM:0008D586                 jsr     ChangeAnimation
ROM:0008D58C                 lea     loc_8D592,a1
ROM:0008D590                 move.l  a1,(a6)
ROM:0008D592
ROM:0008D592 loc_8D592:
ROM:0008D592                 jsr     Animate
ROM:0008D598                 bcc.w   loc_8D5A2
ROM:0008D59C                 lea     loc_8D5A8,a1
ROM:0008D5A0                 move.l  a1,(a6)
ROM:0008D5A2
ROM:0008D5A2 loc_8D5A2:
ROM:0008D5A2                 jsr     sub_8D804
ROM:0008D5A6                 rts
ROM:0008D5A8
ROM:0008D5A8
ROM:0008D5A8 loc_8D5A8:
ROM:0008D5A8
ROM:0008D5A8                 addq.b  #2,$32(a6)
ROM:0008D5AC                 addq.b  #2,$33(a6)
ROM:0008D5B0                 cmpi.b  #$D0,$32(a6)
ROM:0008D5B6                 bcs.w   loc_8D5C0
ROM:0008D5BA                 lea     loc_8D538,a1
ROM:0008D5BE                 move.l  a1,(a6)
ROM:0008D5C0
ROM:0008D5C0 loc_8D5C0:
ROM:0008D5C0                 jsr     Animate
ROM:0008D5C6                 jsr     sub_8D804
ROM:0008D5CA                 rts
ROM:0008D5CA
