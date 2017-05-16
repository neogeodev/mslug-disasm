ROM:000537EA ProcFlagBits:
ROM:000537EA
ROM:000537EA                 move.w  #$29,d1
ROM:000537EE                 jsr     (sub_236E).l
ROM:000537F4                 movea.l ObjLLItem.LLSpawnerPtr(a6),a0
ROM:000537F8                 move.w  $54(a0),ObjLLItem.XPos(a6)
ROM:000537FE                 move.w  $56(a0),ObjLLItem.YPos(a6)
ROM:00053804
ROM:00053804 loc_53804:
ROM:00053804                 jsr     ClearObjStuff
ROM:0005380A                 move.w  #$FFF0,ObjLLItem.Weight(a6)
ROM:00053810                 move.w  #$F,d0
ROM:00053814                 jsr     sub_5EA1C
ROM:0005381A                 btst    #0,d0
ROM:0005381E                 beq.w   loc_53824
ROM:00053822                 neg.w   d0
ROM:00053824
ROM:00053824 loc_53824:
ROM:00053824                 move.w  d0,$28(a6)
ROM:00053828
ROM:00053828 loc_53828:
ROM:00053828                 move.w  #$28,$72(a6)
ROM:0005382E                 lea     (off_2DE4B0).l,a0
ROM:00053834                 jsr     ChangeAnimation
ROM:0005383A                 lea     loc_53840,a1
ROM:0005383E                 move.l  a1,(a6)
ROM:00053840
ROM:00053840 loc_53840:
ROM:00053840                 jsr     PositionRelated
ROM:00053846                 cmpi.w  #$A,$72(a6)
ROM:0005384C                 bne.w   loc_5385A
ROM:00053850                 move.b  #$14,d0
ROM:00053854                 jsr     sub_5E722
ROM:0005385A
ROM:0005385A loc_5385A:
ROM:0005385A                 jsr     Animate
ROM:00053860                 movea.l #$FFFFFFFF,a0
ROM:00053866                 lea     (unk_298736).l,a0
ROM:0005386C                 jsr     CheckObjectOOB?
ROM:00053872                 bcs.w   loc_5387E
ROM:00053876                 subq.w  #1,$72(a6)
ROM:0005387A                 bne.w   locret_53884
ROM:0005387E
ROM:0005387E loc_5387E:
ROM:0005387E                 jmp     (SetDying).l
ROM:00053884
ROM:00053884
ROM:00053884 locret_53884:
ROM:00053884                 rts
ROM:00053886
ROM:00053886
ROM:00053886 loc_53886:
ROM:00053886                 move.w  #$AD,d1
ROM:0005388A                 jsr     (sub_236E).l
ROM:00053890                 bra.w   loc_5389E
ROM:00053894
ROM:00053894
ROM:00053894 loc_53894:
ROM:00053894                 move.w  #$9E,d1
ROM:00053898                 jsr     (sub_236E).l
ROM:0005389E
ROM:0005389E loc_5389E:
ROM:0005389E                 jsr     ClearObjStuff
ROM:000538A4                 movea.l $C(a6),a0
ROM:000538A8                 move.w  $54(a0),$22(a6)
ROM:000538AE                 move.w  $56(a0),$24(a6)
ROM:000538B4                 move.w  #$C00,$2A(a6)
ROM:000538BA                 move.w  #$100,d0
ROM:000538BE                 move.b  (LevelSubTimer?).l,d1
ROM:000538C4                 btst    #0,d1
ROM:000538C8                 beq.w   loc_538CE
ROM:000538CC                 neg.w   d0
ROM:000538CE
ROM:000538CE loc_538CE:
ROM:000538CE                 move.w  d0,$28(a6)
ROM:000538D2                 cmpi.b  #4,$58(a0)
ROM:000538D8                 beq.w   loc_538F4
ROM:000538DC                 movea.l $50(a0),a0
ROM:000538E0                 move.w  $28(a0),d0
ROM:000538E4                 move.w  $2A(a0),d1
ROM:000538E8                 asl.w   #1,d0
ROM:000538EA                 asl.w   #1,d1
ROM:000538EC                 move.w  d0,$28(a6)
ROM:000538F0                 move.w  d1,$2A(a6)
ROM:000538F4
ROM:000538F4 loc_538F4:
ROM:000538F4                 move.w  #$1FF,d0
ROM:000538F8                 jsr     sub_5EA1C
ROM:000538FE                 ori.w   #$100,d0
ROM:00053902                 andi.w  #$1FF,d0
ROM:00053906                 sub.w   d0,$2E(a6)
ROM:0005390A                 jsr     loc_53E9C
ROM:0005390E                 lea     loc_53914,a1
ROM:00053912                 move.l  a1,(a6)
ROM:00053914
ROM:00053914 loc_53914:
ROM:00053914                 jsr     sub_27D50
ROM:0005391A                 bcc.w   loc_53946
ROM:0005391E                 move.w  $2A(a6),d0
ROM:00053922                 neg.w   d0
ROM:00053924                 asr.w   #1,d0
ROM:00053926                 move.w  d0,$2A(a6)
ROM:0005392A                 lea     ($77E10).l,a1
ROM:00053930                 jsr     (SpawnObj).l
ROM:00053936                 jsr     sub_5DD22
ROM:0005393C                 cmpi.w  #$100,$2A(a6)
ROM:00053942                 blt.w   loc_5395C
ROM:00053946
ROM:00053946 loc_53946:
ROM:00053946                 jsr     Animate
ROM:0005394C                 movea.l #$FFFFFFFF,a0
ROM:00053952                 jsr     CheckObjectOOB?
ROM:00053958                 bcc.w   locret_53962
ROM:0005395C
ROM:0005395C loc_5395C:
ROM:0005395C                 jmp     (SetDying).l
ROM:00053962
ROM:00053962
ROM:00053962 locret_53962:
ROM:00053962                 rts
ROM:00053964
ROM:00053964                 movea.l $3C(a6),a1
ROM:00053968                 jsr     loc_2942A
ROM:0005396E                 move.w  #$1AE,d1
ROM:00053972                 jsr     (sub_236E).l
ROM:00053978                 jsr     ClearObjStuff
ROM:0005397E                 move.w  #0,$38(a6)
ROM:00053984                 lea     (stru_29771C.field_C).l,a0
ROM:0005398A                 jsr     ChangeAnimation
ROM:00053990                 move.b  #0,$21(a6)
ROM:00053996                 lea     $539F0,a1
ROM:0005399A                 jsr     (SpawnObj).l
ROM:000539A0                 jsr     sub_5DD22
ROM:000539A6                 addi.w  #$60,$22(a0)
ROM:000539AC                 lea     ProcRailSwitch,a1
ROM:000539B0                 move.l  a1,(a6)
ROM:000539B2
