ROM:0005F48E ProcHangingBoulder:
ROM:0005F48E                 jsr     ObjectRelated
ROM:0005F494                 jsr     Animate
ROM:0005F49A                 jsr     CheckShot?
ROM:0005F4A0                 bclr    #3,$13(a6)
ROM:0005F4A6                 cmpi.b  #$88,$20(a6)
ROM:0005F4AC                 bne.w   loc_5F4BE
ROM:0005F4B0                 movea.l $C(a6),a0
ROM:0005F4B4                 cmpi.b  #$FF,$21(a0)
ROM:0005F4BA                 beq.w   loc_5F4C8
ROM:0005F4BE
ROM:0005F4BE loc_5F4BE:
ROM:0005F4BE                 cmpi.b  #$FF,$21(a6)
ROM:0005F4C4                 bne.w   loc_5F4CE
ROM:0005F4C8
ROM:0005F4C8 loc_5F4C8:
ROM:0005F4C8                 lea     loc_5F508,a1
ROM:0005F4CC                 move.l  a1,(a6)
ROM:0005F4CE
ROM:0005F4CE loc_5F4CE:
ROM:0005F4CE                 cmpi.b  #$EE,$21(a6)
ROM:0005F4D4                 bne.w   loc_5F4E4
ROM:0005F4D8                 move.b  #$1E,$71(a6)
ROM:0005F4DE                 lea     loc_5F3F2,a1
ROM:0005F4E2                 move.l  a1,(a6)
ROM:0005F4E4
ROM:0005F4E4 loc_5F4E4:
ROM:0005F4E4                 movea.l $C(a6),a0
ROM:0005F4E8                 cmpi.b  #$FF,$21(a0)
ROM:0005F4EE                 bne.w   loc_5F4F8
ROM:0005F4F2                 lea     loc_5F508,a1
ROM:0005F4F6                 move.l  a1,(a6)
ROM:0005F4F8
ROM:0005F4F8 loc_5F4F8:
ROM:0005F4F8                 jsr     sub_5F9AC
ROM:0005F4FC                 bcc.w   locret_5F506
ROM:0005F500                 jmp     (SetDying).l
ROM:0005F506
ROM:0005F506
ROM:0005F506 locret_5F506:
ROM:0005F506                 rts
ROM:0005F508
ROM:0005F508
ROM:0005F508 loc_5F508:
ROM:0005F508
ROM:0005F508                 lea     loc_5F668,a1
ROM:0005F50C                 jsr     (SpawnObj).l
ROM:0005F512                 jsr     InitSamePositions
ROM:0005F518                 jsr     ClearObjStuff
ROM:0005F51E                 move.w  #0,$28(a6)
ROM:0005F524                 move.w  #0,$2A(a6)
ROM:0005F52A                 move.w  #0,$2C(a6)
ROM:0005F530                 move.w  #$FF40,$2E(a6)
ROM:0005F536                 move.b  #$FF,$70(a6)
ROM:0005F53C                 lea     (off_2C0C5E).l,a0
ROM:0005F542                 jsr     ChangeAnimation
ROM:0005F548                 lea     (off_2C0DBA).l,a0
ROM:0005F54E                 move.l  a0,$4C(a6)
ROM:0005F552                 jsr     sub_283CA
ROM:0005F558                 lea     loc_5F55E,a1
ROM:0005F55C                 move.l  a1,(a6)
ROM:0005F55E
ROM:0005F55E loc_5F55E:
ROM:0005F55E                 jsr     sub_27D50
ROM:0005F564                 bcc.w   loc_5F56E
ROM:0005F568                 lea     loc_5F5FA,a1
ROM:0005F56C                 move.l  a1,(a6)
ROM:0005F56E
ROM:0005F56E loc_5F56E:
ROM:0005F56E                 jsr     Animate
ROM:0005F574                 jsr     sub_5F91E
ROM:0005F578                 jsr     CheckShot?
ROM:0005F57E                 bclr    #3,$13(a6)
ROM:0005F584                 jsr     loc_283D8
ROM:0005F58A                 btst    #1,$13(a6)
ROM:0005F590                 beq.w   loc_5F59A
ROM:0005F594                 lea     loc_5F5AA,a1
ROM:0005F598                 move.l  a1,(a6)
ROM:0005F59A
ROM:0005F59A loc_5F59A:
ROM:0005F59A                 jsr     sub_5F9AC
ROM:0005F59E                 bcc.w   locret_5F5A8
ROM:0005F5A2                 jmp     (SetDying).l
ROM:0005F5A8
ROM:0005F5A8
ROM:0005F5A8 locret_5F5A8:
ROM:0005F5A8                 rts
ROM:0005F5AA
ROM:0005F5AA
ROM:0005F5AA loc_5F5AA:
ROM:0005F5AA                 move.w  #$D000,$38(a6)
ROM:0005F5B0                 move.w  $2E(a6),d0
ROM:0005F5B4                 asr.w   #1,d0
ROM:0005F5B6                 move.w  d0,$2E(a6)
ROM:0005F5BA                 move.w  #0,$2A(a6)
ROM:0005F5C0                 move.l  #$FFFFFFFF,$4C(a6)
ROM:0005F5C8                 lea     (unk_2C0CC4).l,a0
ROM:0005F5CE                 jsr     ChangeAnimation
ROM:0005F5D4                 lea     loc_5F5DA,a1
ROM:0005F5D8                 move.l  a1,(a6)
ROM:0005F5DA
ROM:0005F5DA loc_5F5DA:
ROM:0005F5DA                 jsr     sub_27D50
ROM:0005F5E0                 jsr     Animate
ROM:0005F5E6                 bcs.w   loc_5F5F2
ROM:0005F5EA                 jsr     sub_5F9AC
ROM:0005F5EE                 bcc.w   locret_5F5F8
ROM:0005F5F2
ROM:0005F5F2 loc_5F5F2:
ROM:0005F5F2                 jmp     (SetDying).l
ROM:0005F5F8
ROM:0005F5F8
ROM:0005F5F8 locret_5F5F8:
ROM:0005F5F8                 rts
ROM:0005F5FA
ROM:0005F5FA
ROM:0005F5FA loc_5F5FA:
ROM:0005F5FA                 jsr     ObjectRelated
ROM:0005F600                 move.w  #$1053,d0
ROM:0005F604                 jsr     (PlaySFX).l
ROM:0005F60A                 move.w  #$8000,$38(a6)
ROM:0005F610                 lea     (loc_789F0).l,a1
ROM:0005F616                 jsr     (SpawnObj).l
ROM:0005F61C                 jsr     InitSamePositions
ROM:0005F622                 addi.w  #1,$38(a0)
ROM:0005F628                 lea     (unk_2C0F06).l,a1
ROM:0005F62E                 jsr     sub_43FAC
ROM:0005F634                 jsr     ClearObjStuff
ROM:0005F63A                 lea     (off_2C0C98).l,a0
ROM:0005F640                 jsr     ChangeAnimation
ROM:0005F646                 lea     loc_5F64C,a1
ROM:0005F64A                 move.l  a1,(a6)
ROM:0005F64C
ROM:0005F64C loc_5F64C:
ROM:0005F64C                 jsr     sub_27AFC
ROM:0005F652                 jsr     Animate
ROM:0005F658                 jsr     sub_5F9AC
ROM:0005F65C                 bcc.w   locret_5F666
ROM:0005F660                 jmp     (SetDying).l
ROM:0005F666
ROM:0005F666
ROM:0005F666 locret_5F666:
ROM:0005F666                 rts
ROM:0005F668
ROM:0005F668
ROM:0005F668 loc_5F668:
ROM:0005F668                 move.w  #$27,d1
ROM:0005F66C                 jsr     (sub_236E).l
ROM:0005F672                 move.b  #$FF,$32(a6)
ROM:0005F678                 move.b  #$FF,$33(a6)
ROM:0005F67E                 jsr     ClearObjStuff
ROM:0005F684                 lea     (off_2C0DAA).l,a0
ROM:0005F68A                 jsr     ChangeAnimation
ROM:0005F690                 lea     loc_5F696,a1
ROM:0005F694                 move.l  a1,(a6)
ROM:0005F696
ROM:0005F696 loc_5F696:
ROM:0005F696                 jsr     ObjectRelated
ROM:0005F69C                 jsr     Animate
ROM:0005F6A2                 movea.l $C(a6),a0
ROM:0005F6A6                 movea.l $C(a0),a0
ROM:0005F6AA                 cmpi.b  #$FF,$21(a0)
ROM:0005F6B0                 beq.w   loc_5F6BC
ROM:0005F6B4                 jsr     sub_5F9C8
ROM:0005F6B8                 bcc.w   locret_5F6C2
ROM:0005F6BC
ROM:0005F6BC loc_5F6BC:
ROM:0005F6BC                 jmp     (SetDying).l
ROM:0005F6C2
ROM:0005F6C2
ROM:0005F6C2 locret_5F6C2:
ROM:0005F6C2                 rts
ROM:0005F6C4
ROM:0005F6C4
ROM:0005F6C4 loc_5F6C4:
ROM:0005F6C4                 move.w  #$1D,d1
ROM:0005F6C8                 jsr     (sub_236E).l
ROM:0005F6CE                 move.w  #$4A,d0
ROM:0005F6D2                 btst    #0,$3A(a6)
ROM:0005F6D8                 beq.w   loc_5F6E0
ROM:0005F6DC                 move.w  #$FFC4,d0
ROM:0005F6E0
ROM:0005F6E0 loc_5F6E0:
ROM:0005F6E0                 add.w   d0,$22(a6)
ROM:0005F6E4                 addi.w  #$30,$24(a6)
ROM:0005F6EA                 jsr     ClearObjStuff
ROM:0005F6F0                 lea     (off_2C09AC).l,a0
ROM:0005F6F6                 jsr     ChangeAnimation
ROM:0005F6FC                 move.w  #$FF80,$2A(a6)
ROM:0005F702
ROM:0005F702 loc_5F702:
ROM:0005F702                 subq.w  #1,$24(a6)
ROM:0005F706                 move.w  $22(a6),d1
ROM:0005F70A                 move.w  $24(a6),d2
ROM:0005F70E                 jsr     sub_280C6
ROM:0005F714                 bcc.s   loc_5F702
ROM:0005F716                 move.b  #0,$70(a6)
ROM:0005F71C                 lea     loc_5F722,a1
ROM:0005F720                 move.l  a1,(a6)
ROM:0005F722
ROM:0005F722 loc_5F722:
ROM:0005F722                 jsr     ObjectRelated
ROM:0005F728                 jsr     Animate
ROM:0005F72E                 bcc.w   loc_5F738
ROM:0005F732                 lea     loc_5F752,a1
ROM:0005F736                 move.l  a1,(a6)
ROM:0005F738
ROM:0005F738 loc_5F738:
ROM:0005F738                 jsr     sub_5F990
ROM:0005F73C                 bcc.w   locret_5F750
ROM:0005F740                 movea.l $C(a6),a0
ROM:0005F744                 move.b  #$EE,$21(a0)
ROM:0005F74A                 jmp     (SetDying).l
ROM:0005F750
ROM:0005F750
ROM:0005F750 locret_5F750:
ROM:0005F750                 rts
ROM:0005F752
ROM:0005F752
ROM:0005F752 loc_5F752:
ROM:0005F752                 jsr     ClearObjStuff
ROM:0005F758                 lea     (unk_29B744).l,a0
ROM:0005F75E                 jsr     ChangeAnimation
ROM:0005F764                 move.w  #$FE00,d0
ROM:0005F768                 btst    #0,$3A(a6)
ROM:0005F76E                 beq.w   loc_5F774
ROM:0005F772                 neg.w   d0
ROM:0005F774
ROM:0005F774 loc_5F774:
ROM:0005F774                 move.w  d0,$28(a6)
ROM:0005F778                 lea     loc_5F77E,a1
ROM:0005F77C                 move.l  a1,(a6)
ROM:0005F77E
ROM:0005F77E loc_5F77E:
ROM:0005F77E                 jsr     PositionRelated
ROM:0005F784                 jsr     Animate
ROM:0005F78A                 jsr     CheckShot?
ROM:0005F790                 bcc.w   loc_5F79E
ROM:0005F794                 movea.l $C(a6),a0
ROM:0005F798                 move.b  #$EE,$21(a0)
ROM:0005F79E
ROM:0005F79E loc_5F79E:
ROM:0005F79E                 movea.l $C(a6),a0
ROM:0005F7A2                 cmpi.b  #$FF,$70(a0)
ROM:0005F7A8                 bne.w   loc_5F7C6
ROM:0005F7AC                 lea     (loc_58F82).l,a1
ROM:0005F7B2                 move.l  a1,(a6)
ROM:0005F7B4                 lea     (loc_776E2).l,a1
ROM:0005F7BA                 jsr     (SpawnObj).l
ROM:0005F7C0                 jsr     InitSamePositions
ROM:0005F7C6
ROM:0005F7C6 loc_5F7C6:
ROM:0005F7C6                 jsr     sub_5F94C
ROM:0005F7CA                 bcc.w   loc_5F7D4
ROM:0005F7CE                 lea     loc_5F7F4,a1
ROM:0005F7D2                 move.l  a1,(a6)
ROM:0005F7D4
ROM:0005F7D4 loc_5F7D4:
ROM:0005F7D4                 jsr     sub_49FD0
ROM:0005F7DA                 jsr     sub_5F990
ROM:0005F7DE                 bcc.w   locret_5F7F2
ROM:0005F7E2                 movea.l $C(a6),a0
ROM:0005F7E6                 move.b  #$EE,$21(a0)
ROM:0005F7EC                 jmp     (SetDying).l
ROM:0005F7F2
ROM:0005F7F2
ROM:0005F7F2 locret_5F7F2:
ROM:0005F7F2                 rts
ROM:0005F7F4
ROM:0005F7F4
ROM:0005F7F4 loc_5F7F4:
ROM:0005F7F4                 jsr     sub_5E4DC
ROM:0005F7FA                 move.w  #$18,d0
ROM:0005F7FE                 btst    #0,$3A(a6)
ROM:0005F804                 beq.w   loc_5F80A
ROM:0005F808                 neg.w   d0
ROM:0005F80A
ROM:0005F80A loc_5F80A:
ROM:0005F80A                 add.w   d0,$22(a6)
ROM:0005F80E                 addi.w  #$10,$24(a6)
ROM:0005F814                 jsr     ClearObjStuff
ROM:0005F81A                 lea     (off_2C0A3A).l,a0
ROM:0005F820                 jsr     ChangeAnimation
ROM:0005F826                 lea     loc_5F82C,a1
ROM:0005F82A                 move.l  a1,(a6)
ROM:0005F82C
ROM:0005F82C loc_5F82C:
ROM:0005F82C                 jsr     ObjectRelated
ROM:0005F832                 jsr     Animate
ROM:0005F838                 bcc.w   loc_5F842
ROM:0005F83C                 lea     loc_5F8A8,a1
ROM:0005F840                 move.l  a1,(a6)
ROM:0005F842
ROM:0005F842 loc_5F842:
ROM:0005F842                 jsr     CheckShot?
ROM:0005F848                 bcc.w   loc_5F856
ROM:0005F84C                 movea.l $C(a6),a0
ROM:0005F850                 move.b  #$EE,$21(a0)
ROM:0005F856
ROM:0005F856 loc_5F856:
ROM:0005F856                 movea.l $C(a6),a0
ROM:0005F85A                 cmpi.b  #$FF,$70(a0)
ROM:0005F860                 bne.w   loc_5F888
ROM:0005F864                 cmpi.b  #$FF,$70(a6)
ROM:0005F86A                 beq.w   loc_5F888
ROM:0005F86E                 lea     (loc_58F82).l,a1
ROM:0005F874                 move.l  a1,(a6)
ROM:0005F876                 lea     (loc_776E2).l,a1
ROM:0005F87C                 jsr     (SpawnObj).l
ROM:0005F882                 jsr     InitSamePositions
ROM:0005F888
ROM:0005F888 loc_5F888:
ROM:0005F888
ROM:0005F888                 jsr     sub_49FD0
ROM:0005F88E                 jsr     sub_5F990
ROM:0005F892                 bcc.w   locret_5F8A6
ROM:0005F896                 movea.l $C(a6),a0
ROM:0005F89A                 move.b  #$EE,$21(a0)
ROM:0005F8A0                 jmp     (SetDying).l
ROM:0005F8A6
ROM:0005F8A6
ROM:0005F8A6 locret_5F8A6:
ROM:0005F8A6                 rts
ROM:0005F8A8
ROM:0005F8A8
ROM:0005F8A8 loc_5F8A8:
ROM:0005F8A8                 jsr     ClearObjStuff
ROM:0005F8AE                 lea     (off_2C0BB6).l,a0
ROM:0005F8B4                 jsr     ChangeAnimation
ROM:0005F8BA                 lea     loc_5F8C0,a1
ROM:0005F8BE                 move.l  a1,(a6)
ROM:0005F8C0
ROM:0005F8C0 loc_5F8C0:
ROM:0005F8C0                 jsr     ObjectRelated
ROM:0005F8C6                 jsr     Animate
ROM:0005F8CC                 bcc.w   loc_5F8EA
ROM:0005F8D0                 lea     (loc_58F82).l,a1
ROM:0005F8D6                 move.l  a1,(a6)
ROM:0005F8D8                 lea     (loc_776E2).l,a1
ROM:0005F8DE                 jsr     (SpawnObj).l
ROM:0005F8E4                 jsr     InitSamePositions
ROM:0005F8EA
ROM:0005F8EA loc_5F8EA:
ROM:0005F8EA                 jsr     CheckShot?
ROM:0005F8F0                 bcc.w   loc_5F8FE
ROM:0005F8F4                 movea.l $C(a6),a0
ROM:0005F8F8                 move.b  #$EE,$21(a0)
ROM:0005F8FE
ROM:0005F8FE loc_5F8FE:
ROM:0005F8FE                 jsr     sub_49FD0
ROM:0005F904                 jsr     sub_5F990
ROM:0005F908                 bcc.w   locret_5F91C
ROM:0005F90C                 movea.l $C(a6),a0
ROM:0005F910                 move.b  #$EE,$21(a0)
ROM:0005F916                 jmp     (SetDying).l
ROM:0005F91C
ROM:0005F91C
ROM:0005F91C locret_5F91C:
ROM:0005F91C                 rts
ROM:0005F91E
ROM:0005F91E
ROM:0005F91E
ROM:0005F91E
