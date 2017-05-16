ROM:0008E52A ProcLevel1BirdA:
ROM:0008E52A                 jsr     ObjectRelated
ROM:0008E530                 jsr     ApplySpeed
ROM:0008E534                 jsr     Animate
ROM:0008E53A                 cmpi.w  #$1D0,ObjLLItem.YPos(a6)
ROM:0008E540                 blt.w   loc_8E54C
ROM:0008E544                 lea     loc_8E566,a1
ROM:0008E548                 move.l  a1,(a6)
ROM:0008E54A                 rts
ROM:0008E54C
ROM:0008E54C
ROM:0008E54C loc_8E54C:
ROM:0008E54C                 subq.w  #1,$70(a6)
ROM:0008E550                 cmpi.w  #0,$70(a6)
ROM:0008E556                 bhi.w   loc_8E560
ROM:0008E55A                 lea     loc_8E566,a1
ROM:0008E55E                 move.l  a1,(a6)
ROM:0008E560
ROM:0008E560 loc_8E560:
ROM:0008E560                 jsr     DisableObject?
ROM:0008E564                 rts
ROM:0008E566
ROM:0008E566
ROM:0008E566 loc_8E566:
ROM:0008E566
ROM:0008E566                 move.w  #$FFFC,ObjLLItem.Weight(a6)
ROM:0008E56C                 move.w  #6,$70(a6)
ROM:0008E572                 move.w  #7,d0
ROM:0008E576                 jsr     sub_5EA1C
ROM:0008E57C                 add.w   d0,$70(a6)
ROM:0008E580                 lea     (off_2F4036).l,a0
ROM:0008E586                 jsr     ChangeAnimation
ROM:0008E58C                 lea     ProcLevel1BirdB,a1
ROM:0008E590                 move.l  a1,(a6)
ROM:0008E592
