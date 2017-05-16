ROM:00067514 ProcKnifingShieldSoldier:
ROM:00067514                 jsr     loc_67FB8
ROM:00067518                 jsr     loc_681EE
ROM:0006751C                 jsr     loc_67F46
ROM:00067520                 jsr     Animate
ROM:00067526                 bcc.w   loc_6754E
ROM:0006752A                 cmpi.w  #0,$72(a6)
ROM:00067530                 bgt.w   loc_6754E
ROM:00067534                 lea     unk_674F2,a1
ROM:00067538                 move.l  a1,(a6)
ROM:0006753A                 subq.b  #1,$82(a6)
ROM:0006753E                 cmpi.b  #0,$82(a6)
ROM:00067544                 bgt.w   loc_6754E
ROM:00067548                 lea     loc_6756C,a1
ROM:0006754C                 move.l  a1,(a6)
ROM:0006754E
ROM:0006754E loc_6754E:
ROM:0006754E
ROM:0006754E                 jsr     sub_283CA
ROM:00067554                 jsr     loc_283D8
ROM:0006755A                 jsr     loc_681C6
ROM:0006755E                 bcc.w   loc_67568
ROM:00067562                 lea     unk_67220,a1
ROM:00067566                 move.l  a1,(a6)
ROM:00067568
ROM:00067568 loc_67568:
ROM:00067568                 bra.w   loc_6760E
ROM:0006756C
ROM:0006756C
ROM:0006756C loc_6756C:
ROM:0006756C                 lea     (off_2BFA2A).l,a0
ROM:00067572                 jsr     GetParamDifficulty
ROM:00067578                 move.w  d0,$72(a6)
ROM:0006757C                 lea     (unk_2C82A0).l,a0
ROM:00067582                 jsr     ChangeAnimation
ROM:00067588                 lea     loc_6758E,a1
ROM:0006758C                 move.l  a1,(a6)
ROM:0006758E
ROM:0006758E loc_6758E:
ROM:0006758E                 jsr     loc_67FB8
ROM:00067592                 jsr     loc_681EE
ROM:00067596                 jsr     loc_67F46
ROM:0006759A                 jsr     Animate
ROM:000675A0                 bcc.w   loc_675AA
ROM:000675A4                 lea     unk_670FE,a1
ROM:000675A8                 move.l  a1,(a6)
ROM:000675AA
ROM:000675AA loc_675AA:
ROM:000675AA                 jsr     loc_681C6
ROM:000675AE                 bcc.w   loc_675B8
ROM:000675B2                 lea     unk_67220,a1
ROM:000675B6                 move.l  a1,(a6)
ROM:000675B8
ROM:000675B8 loc_675B8:
ROM:000675B8                 bra.w   loc_6760E
ROM:000675BC
ROM:000675BC
ROM:000675BC loc_675BC:
ROM:000675BC                 lea     (off_2C834C).l,a0
ROM:000675C2                 jsr     ChangeAnimation
ROM:000675C8                 lea     loc_675E4,a1
ROM:000675CC                 move.l  a1,(a6)
ROM:000675CE                 bra.w   loc_675E4
ROM:000675D2
ROM:000675D2
ROM:000675D2 loc_675D2:
ROM:000675D2                 lea     (unk_2C82EC).l,a0
ROM:000675D8                 jsr     ChangeAnimation
ROM:000675DE                 lea     loc_675E4,a1
ROM:000675E2                 move.l  a1,(a6)
ROM:000675E4
ROM:000675E4 loc_675E4:
ROM:000675E4
ROM:000675E4                 jsr     loc_67FB8
ROM:000675E8                 jsr     loc_681EE
ROM:000675EC                 jsr     loc_67F46
ROM:000675F0                 jsr     Animate
ROM:000675F6                 bcc.w   loc_67600
ROM:000675FA                 lea     unk_670FE,a1
ROM:000675FE                 move.l  a1,(a6)
ROM:00067600
ROM:00067600 loc_67600:
ROM:00067600                 jsr     loc_681C6
ROM:00067604                 bcc.w   loc_6760E
ROM:00067608                 lea     unk_67220,a1
ROM:0006760C                 move.l  a1,(a6)
ROM:0006760E
ROM:0006760E loc_6760E:
ROM:0006760E
ROM:0006760E                 subq.w  #1,$72(a6)
ROM:00067612                 jsr     CheckShot?
ROM:00067618                 bcc.w   loc_6762E
ROM:0006761C                 bclr    #3,$13(a6)
ROM:00067622                 lea     (SoundCodeGunFire).l,a0
ROM:00067628                 jsr     SoundRelated_0
ROM:0006762E
ROM:0006762E loc_6762E:
ROM:0006762E                 jsr     CheckIfDead
ROM:00067634                 bcs.w   loc_67692
ROM:00067638                 movea.l #$FFFFFFFF,a0
ROM:0006763E                 lea     (unk_2C7CE6).l,a0
ROM:00067644                 jsr     CheckObjectOOB
ROM:0006764A                 bcc.w   locret_67654
ROM:0006764E                 lea     $67B7C,a1
ROM:00067652                 move.l  a1,(a6)
ROM:00067654
ROM:00067654 locret_67654:
ROM:00067654                 rts
ROM:00067656
ROM:00067656
ROM:00067656 loc_67656:
ROM:00067656                 jsr     loc_68286
ROM:0006765A                 lea     (unk_29BFC4).l,a0
ROM:00067660                 jsr     ChangeAnimation
ROM:00067666                 lea     loc_6766C,a1
ROM:0006766A                 move.l  a1,(a6)
ROM:0006766C
ROM:0006766C loc_6766C:
ROM:0006766C                 jsr     loc_67F46
ROM:00067670                 jsr     Animate
ROM:00067676                 bcc.w   loc_67680
ROM:0006767A                 lea     loc_6768C,a1
ROM:0006767E                 move.l  a1,(a6)
ROM:00067680
ROM:00067680 loc_67680:
ROM:00067680                 move.l  #$FFFFFFFF,$48(a6)
ROM:00067688                 bra.w   loc_6760E
ROM:0006768C
ROM:0006768C
ROM:0006768C loc_6768C:
ROM:0006768C                 jmp     loc_58F82
ROM:00067692
ROM:00067692
ROM:00067692 loc_67692:
ROM:00067692
ROM:00067692                 clr.b   $20(a6)
ROM:00067696                 bset    #3,$13(a6)
ROM:0006769C                 jsr     loc_68260
ROM:000676A0                 tst.b   $9A(a6)
ROM:000676A4                 beq.w   loc_676B2
ROM:000676A8                 lea     ($4ABC0).l,a1
ROM:000676AE                 move.l  a1,(a6)
ROM:000676B0                 rts
ROM:000676B2
ROM:000676B2
ROM:000676B2 loc_676B2:
ROM:000676B2                 jsr     sub_49FD0
ROM:000676B8                 rts
ROM:000676BA
ROM:000676BA                 jsr     loc_67E7E
ROM:000676BE                 tst.b   $99(a6)
ROM:000676C2                 bne.w   loc_677C4
ROM:000676C6
ROM:000676C6 loc_676C6:
ROM:000676C6
ROM:000676C6                 lea     (unk_2C7D1E).l,a0
ROM:000676CC                 jsr     ChangeAnimation
ROM:000676D2                 lea     loc_676D8,a1
ROM:000676D6                 move.l  a1,(a6)
ROM:000676D8
ROM:000676D8 loc_676D8:
ROM:000676D8                 jsr     loc_67FB8
ROM:000676DC                 jsr     loc_681EE
ROM:000676E0                 jsr     loc_67F46
ROM:000676E4                 jsr     Animate
ROM:000676EA                 jsr     loc_68186
ROM:000676EE                 bcc.w   loc_676F8
ROM:000676F2                 lea     loc_67780,a1
ROM:000676F6                 move.l  a1,(a6)
ROM:000676F8
ROM:000676F8 loc_676F8:
ROM:000676F8                 jsr     loc_68070
ROM:000676FC                 bcc.w   loc_67706
ROM:00067700                 lea     loc_67886,a1
ROM:00067704                 move.l  a1,(a6)
ROM:00067706
ROM:00067706 loc_67706:
ROM:00067706                 jsr     loc_680A4
ROM:0006770A                 bcc.w   loc_67714
ROM:0006770E                 lea     loc_67994,a1
ROM:00067712                 move.l  a1,(a6)
ROM:00067714
ROM:00067714 loc_67714:
ROM:00067714                 jsr     loc_681C6
ROM:00067718                 bcc.w   loc_67722
ROM:0006771C                 lea     loc_67AAE,a1
ROM:00067720                 move.l  a1,(a6)
ROM:00067722
ROM:00067722 loc_67722:
ROM:00067722                 subq.w  #1,$72(a6)
ROM:00067726                 jsr     CheckShot?
ROM:0006772C                 bcc.w   loc_67758
ROM:00067730                 bclr    #3,$13(a6)
ROM:00067736                 lea     (SoundCodeGunFire).l,a0
ROM:0006773C                 jsr     SoundRelated_0
ROM:00067742                 lea     loc_67AE2,a1
ROM:00067746                 move.l  a1,(a6)
ROM:00067748                 cmpi.b  #1,$58(a6)
ROM:0006774E                 beq.w   loc_67758
ROM:00067752                 lea     loc_67AF8,a1
ROM:00067756                 move.l  a1,(a6)
ROM:00067758
ROM:00067758 loc_67758:
ROM:00067758
ROM:00067758                 jsr     CheckIfDead
ROM:0006775E                 bcs.w   loc_67692
ROM:00067762                 movea.l #$FFFFFFFF,a0
ROM:00067768                 lea     (unk_2C7CE6).l,a0
ROM:0006776E                 jsr     CheckObjectOOB
ROM:00067774                 bcc.w   locret_6777E
ROM:00067778                 lea     loc_67B7C,a1
ROM:0006777C                 move.l  a1,(a6)
ROM:0006777E
ROM:0006777E locret_6777E:
ROM:0006777E                 rts
ROM:00067780
ROM:00067780
ROM:00067780 loc_67780:
ROM:00067780                 clr.w   $76(a6)
ROM:00067784                 lea     (unk_2C7EE6).l,a0
ROM:0006778A                 jsr     ChangeAnimation
ROM:00067790                 lea     loc_67796,a1
ROM:00067794                 move.l  a1,(a6)
ROM:00067796
ROM:00067796 loc_67796:
ROM:00067796                 jsr     loc_67FB8
ROM:0006779A                 jsr     loc_681EE
ROM:0006779E                 jsr     loc_67F46
ROM:000677A2                 jsr     Animate
ROM:000677A8                 bcc.w   loc_677B2
ROM:000677AC                 lea     loc_676C6,a1
ROM:000677B0                 move.l  a1,(a6)
ROM:000677B2
ROM:000677B2 loc_677B2:
ROM:000677B2                 jsr     loc_681C6
ROM:000677B6                 bcc.w   loc_677C0
ROM:000677BA                 lea     loc_67AAE,a1
ROM:000677BE                 move.l  a1,(a6)
ROM:000677C0
ROM:000677C0 loc_677C0:
ROM:000677C0                 bra.w   loc_67B34
ROM:000677C4
ROM:000677C4
ROM:000677C4 loc_677C4:
ROM:000677C4
ROM:000677C4                 jsr     loc_67F86
ROM:000677C8                 move.l  #off_2C7A8A,$48(a6)
ROM:000677D0                 lea     (unk_2C7DA4).l,a0
ROM:000677D6                 jsr     ChangeAnimation
ROM:000677DC                 lea     loc_677E2,a1
ROM:000677E0                 move.l  a1,(a6)
ROM:000677E2
ROM:000677E2 loc_677E2:
ROM:000677E2
ROM:000677E2                 jsr     loc_67FB8
ROM:000677E6                 jsr     loc_681EE
ROM:000677EA                 jsr     loc_67F62
ROM:000677EE                 jsr     Animate
ROM:000677F4                 move.b  $99(a6),d0
ROM:000677F8                 andi.w  #$FF,d0
ROM:000677FC                 lsl.w   #4,d0
ROM:000677FE
ROM:000677FE loc_677FE:
ROM:000677FE                 btst    #0,$3A(a6)
ROM:00067804                 bne.w   loc_67814
ROM:00067808                 cmp.w   $22(a6),d0
ROM:0006780C                 bgt.w   loc_6781C
ROM:00067810                 bra.w   loc_67822
ROM:00067814
ROM:00067814
ROM:00067814 loc_67814:
ROM:00067814                 cmp.w   $22(a6),d0
ROM:00067818                 bgt.w   loc_67822
ROM:0006781C
ROM:0006781C loc_6781C:
ROM:0006781C                 lea     loc_67846,a1
ROM:00067820                 move.l  a1,(a6)
ROM:00067822
ROM:00067822 loc_67822:
ROM:00067822
ROM:00067822                 cmpi.l  #loc_677E2,(a6)
ROM:00067828                 beq.w   loc_67834
ROM:0006782C                 move.l  #off_2C79E2,$48(a6)
ROM:00067834
ROM:00067834 loc_67834:
ROM:00067834                 jsr     loc_681C6
ROM:00067838                 bcc.w   loc_67842
ROM:0006783C                 lea     loc_67AAE,a1
ROM:00067840                 move.l  a1,(a6)
ROM:00067842
ROM:00067842 loc_67842:
ROM:00067842                 bra.w   loc_67B34
ROM:00067846
ROM:00067846
ROM:00067846 loc_67846:
ROM:00067846                 jsr     ClearObjStuff
ROM:0006784C                 lea     (unk_2C7E2A).l,a0
ROM:00067852                 jsr     ChangeAnimation
ROM:00067858                 lea     loc_6785E,a1
ROM:0006785C                 move.l  a1,(a6)
ROM:0006785E
ROM:0006785E loc_6785E:
ROM:0006785E                 jsr     ObjectRelated
ROM:00067864                 jsr     Animate
ROM:0006786A                 bcc.w   loc_67874
ROM:0006786E                 lea     loc_676C6,a1
ROM:00067872                 move.l  a1,(a6)
ROM:00067874
ROM:00067874 loc_67874:
ROM:00067874                 jsr     loc_681C6
ROM:00067878                 bcc.w   loc_67882
ROM:0006787C                 lea     loc_67AAE,a1
ROM:00067880                 move.l  a1,(a6)
ROM:00067882
ROM:00067882 loc_67882:
ROM:00067882                 bra.w   loc_67B34
ROM:00067886
ROM:00067886
ROM:00067886 loc_67886:
ROM:00067886                 lea     (off_2BF822).l,a0
ROM:0006788C                 jsr     GetParamDifficulty
ROM:00067892                 move.b  d0,$82(a6)
ROM:00067896                 lea     (unk_2C7FB0).l,a0
ROM:0006789C                 jsr     ChangeAnimation
ROM:000678A2                 lea     loc_678A8,a1
ROM:000678A6                 move.l  a1,(a6)
ROM:000678A8
ROM:000678A8 loc_678A8:
ROM:000678A8                 jsr     loc_67FB8
ROM:000678AC                 jsr     loc_681EE
ROM:000678B0                 jsr     loc_67F46
ROM:000678B4                 jsr     Animate
ROM:000678BA                 bcc.w   loc_678C4
ROM:000678BE                 lea     loc_678D6,a1
ROM:000678C2                 move.l  a1,(a6)
ROM:000678C4
ROM:000678C4 loc_678C4:
ROM:000678C4                 jsr     loc_681C6
ROM:000678C8                 bcc.w   loc_678D2
ROM:000678CC                 lea     loc_67AAE,a1
ROM:000678D0                 move.l  a1,(a6)
ROM:000678D2
ROM:000678D2 loc_678D2:
ROM:000678D2                 bra.w   loc_67B34
ROM:000678D6
ROM:000678D6
ROM:000678D6 loc_678D6:
ROM:000678D6
ROM:000678D6                 lea     (off_2BF926).l,a0
ROM:000678DC                 jsr     GetParamDifficulty
ROM:000678E2                 move.w  d0,$72(a6)
ROM:000678E6                 lea     (unk_2C802A).l,a0
ROM:000678EC                 jsr     ChangeAnimation
ROM:000678F2                 lea     loc_678F8,a1
ROM:000678F6                 move.l  a1,(a6)
ROM:000678F8
ROM:000678F8 loc_678F8:
ROM:000678F8                 jsr     loc_67FB8
ROM:000678FC                 jsr     loc_681EE
ROM:00067900                 jsr     loc_67F46
ROM:00067904                 jsr     Animate
ROM:0006790A                 bcc.w   loc_67932
ROM:0006790E                 cmpi.w  #0,$72(a6)
ROM:00067914                 bgt.w   loc_67440
ROM:00067918                 lea     loc_678D6,a1
ROM:0006791C                 move.l  a1,(a6)
ROM:0006791E                 subq.b  #1,$82(a6)
ROM:00067922                 cmpi.b  #0,$82(a6)
ROM:00067928                 bgt.w   loc_67932
ROM:0006792C                 lea     loc_67944,a1
ROM:00067930                 move.l  a1,(a6)
ROM:00067932
ROM:00067932 loc_67932:
ROM:00067932
ROM:00067932                 jsr     loc_681C6
ROM:00067936                 bcc.w   loc_67940
ROM:0006793A                 lea     loc_67AAE,a1
ROM:0006793E                 move.l  a1,(a6)
ROM:00067940
ROM:00067940 loc_67940:
ROM:00067940                 bra.w   loc_67B34
ROM:00067944
ROM:00067944
ROM:00067944 loc_67944:
ROM:00067944                 lea     (off_2BF8A4).l,a0
ROM:0006794A                 jsr     GetParamDifficulty
ROM:00067950                 move.w  d0,$72(a6)
ROM:00067954                 lea     (unk_2C806E).l,a0
ROM:0006795A                 jsr     ChangeAnimation
ROM:00067960                 lea     loc_67966,a1
ROM:00067964                 move.l  a1,(a6)
ROM:00067966
ROM:00067966 loc_67966:
ROM:00067966                 jsr     loc_67FB8
ROM:0006796A                 jsr     loc_681EE
ROM:0006796E                 jsr     loc_67F46
ROM:00067972                 jsr     Animate
ROM:00067978                 bcc.w   loc_67982
ROM:0006797C                 lea     loc_676C6,a1
ROM:00067980                 move.l  a1,(a6)
ROM:00067982
ROM:00067982 loc_67982:
ROM:00067982                 jsr     loc_681C6
ROM:00067986                 bcc.w   loc_67990
ROM:0006798A                 lea     loc_67AAE,a1
ROM:0006798E                 move.l  a1,(a6)
ROM:00067990
ROM:00067990 loc_67990:
ROM:00067990                 bra.w   loc_67B34
ROM:00067994
ROM:00067994
ROM:00067994 loc_67994:
ROM:00067994                 lea     (off_2BF9A8).l,a0
ROM:0006799A                 jsr     GetParamDifficulty
ROM:000679A0                 move.b  d0,$82(a6)
ROM:000679A4                 lea     (unk_2C80E4).l,a0
ROM:000679AA                 jsr     ChangeAnimation
ROM:000679B0                 lea     loc_679B6,a1
ROM:000679B4                 move.l  a1,(a6)
ROM:000679B6
ROM:000679B6 loc_679B6:
ROM:000679B6                 jsr     loc_67FB8
ROM:000679BA                 jsr     loc_681EE
ROM:000679BE                 jsr     loc_67F46
ROM:000679C2                 jsr     Animate
ROM:000679C8                 bcc.w   loc_679D2
ROM:000679CC                 lea     loc_679E4,a1
ROM:000679D0                 move.l  a1,(a6)
ROM:000679D2
ROM:000679D2 loc_679D2:
ROM:000679D2                 jsr     loc_681C6
ROM:000679D6                 bcc.w   loc_679E0
ROM:000679DA                 lea     loc_67AAE,a1
ROM:000679DE                 move.l  a1,(a6)
ROM:000679E0
ROM:000679E0 loc_679E0:
ROM:000679E0                 bra.w   loc_67B34
ROM:000679E4
ROM:000679E4
ROM:000679E4 loc_679E4:
ROM:000679E4
ROM:000679E4                 lea     (off_2BFAAC).l,a0
ROM:000679EA                 jsr     GetParamDifficulty
ROM:000679F0                 move.w  d0,$72(a6)
ROM:000679F4                 lea     (unk_2C8146).l,a0
ROM:000679FA                 jsr     ChangeAnimation
ROM:00067A00                 lea     loc_67A06,a1
ROM:00067A04                 move.l  a1,(a6)
ROM:00067A06
ROM:00067A06 loc_67A06:
ROM:00067A06                 jsr     loc_67FB8
ROM:00067A0A                 jsr     loc_681EE
ROM:00067A0E                 jsr     loc_67F46
ROM:00067A12                 jsr     Animate
ROM:00067A18                 bcc.w   loc_67A40
ROM:00067A1C                 cmpi.w  #0,$72(a6)
ROM:00067A22                 bgt.w   loc_6754E
ROM:00067A26                 lea     loc_679E4,a1
ROM:00067A2A                 move.l  a1,(a6)
ROM:00067A2C                 subq.b  #1,$82(a6)
ROM:00067A30                 cmpi.b  #0,$82(a6)
ROM:00067A36                 bgt.w   loc_67A40
ROM:00067A3A                 lea     loc_67A5E,a1
ROM:00067A3E                 move.l  a1,(a6)
ROM:00067A40
ROM:00067A40 loc_67A40:
ROM:00067A40
ROM:00067A40                 jsr     sub_283CA
ROM:00067A46                 jsr     loc_283D8
ROM:00067A4C                 jsr     loc_681C6
ROM:00067A50                 bcc.w   loc_67A5A
ROM:00067A54                 lea     loc_67AAE,a1
ROM:00067A58                 move.l  a1,(a6)
ROM:00067A5A
ROM:00067A5A loc_67A5A:
ROM:00067A5A                 bra.w   loc_67B34
ROM:00067A5E
ROM:00067A5E
ROM:00067A5E loc_67A5E:
ROM:00067A5E                 lea     (off_2BFA2A).l,a0
ROM:00067A64                 jsr     GetParamDifficulty
ROM:00067A6A                 move.w  d0,$72(a6)
ROM:00067A6E                 lea     (unk_2C82A0).l,a0
ROM:00067A74                 jsr     ChangeAnimation
ROM:00067A7A                 lea     loc_67A80,a1
ROM:00067A7E                 move.l  a1,(a6)
ROM:00067A80
ROM:00067A80 loc_67A80:
ROM:00067A80                 jsr     loc_67FB8
ROM:00067A84                 jsr     loc_681EE
ROM:00067A88                 jsr     loc_67F46
ROM:00067A8C                 jsr     Animate
ROM:00067A92                 bcc.w   loc_67A9C
ROM:00067A96                 lea     loc_676C6,a1
ROM:00067A9A                 move.l  a1,(a6)
ROM:00067A9C
ROM:00067A9C loc_67A9C:
ROM:00067A9C                 jsr     loc_681C6
ROM:00067AA0                 bcc.w   loc_67AAA
ROM:00067AA4                 lea     loc_67AAE,a1
ROM:00067AA8                 move.l  a1,(a6)
ROM:00067AAA
ROM:00067AAA loc_67AAA:
ROM:00067AAA                 bra.w   loc_67B34
ROM:00067AAE
ROM:00067AAE
ROM:00067AAE loc_67AAE:
ROM:00067AAE
ROM:00067AAE                 lea     (off_2C7F54).l,a0
ROM:00067AB4                 jsr     ChangeAnimation
ROM:00067ABA                 lea     loc_67AC0,a1
ROM:00067ABE                 move.l  a1,(a6)
ROM:00067AC0
ROM:00067AC0 loc_67AC0:
ROM:00067AC0                 jsr     loc_67FB8
ROM:00067AC4                 jsr     loc_681EE
ROM:00067AC8                 jsr     sub_27C8C
ROM:00067ACE                 bcc.w   loc_67AD8
ROM:00067AD2                 lea     loc_677C4,a1
ROM:00067AD6                 move.l  a1,(a6)
ROM:00067AD8
ROM:00067AD8 loc_67AD8:
ROM:00067AD8                 jsr     Animate
ROM:00067ADE                 bra.w   loc_67B34
ROM:00067AE2
ROM:00067AE2
ROM:00067AE2 loc_67AE2:
ROM:00067AE2                 lea     (off_2C834C).l,a0
ROM:00067AE8                 jsr     ChangeAnimation
ROM:00067AEE                 lea     loc_67B0A,a1
ROM:00067AF2                 move.l  a1,(a6)
ROM:00067AF4                 bra.w   loc_67B0A
ROM:00067AF8
ROM:00067AF8
ROM:00067AF8 loc_67AF8:
ROM:00067AF8                 lea     (unk_2C82EC).l,a0
ROM:00067AFE                 jsr     ChangeAnimation
ROM:00067B04                 lea     loc_67B0A,a1
ROM:00067B08                 move.l  a1,(a6)
ROM:00067B0A
ROM:00067B0A loc_67B0A:
ROM:00067B0A
ROM:00067B0A                 jsr     loc_67FB8
ROM:00067B0E                 jsr     loc_681EE
ROM:00067B12                 jsr     loc_67F46
ROM:00067B16                 jsr     Animate
ROM:00067B1C                 bcc.w   loc_67B26
ROM:00067B20                 lea     loc_676C6,a1
ROM:00067B24                 move.l  a1,(a6)
ROM:00067B26
ROM:00067B26 loc_67B26:
ROM:00067B26                 jsr     loc_681C6
ROM:00067B2A                 bcc.w   loc_67B34
ROM:00067B2E                 lea     loc_67AAE,a1
ROM:00067B32                 move.l  a1,(a6)
ROM:00067B34
ROM:00067B34 loc_67B34:
ROM:00067B34
ROM:00067B34                 subq.w  #1,$72(a6)
ROM:00067B38                 jsr     CheckShot?
ROM:00067B3E                 bcc.w   loc_67B54
ROM:00067B42                 bclr    #3,$13(a6)
ROM:00067B48                 lea     (SoundCodeGunFire).l,a0
ROM:00067B4E                 jsr     SoundRelated_0
ROM:00067B54
ROM:00067B54 loc_67B54:
ROM:00067B54                 jsr     CheckIfDead
ROM:00067B5A                 bcs.w   loc_67692
ROM:00067B5E                 movea.l #$FFFFFFFF,a0
ROM:00067B64                 lea     (unk_2C7CE6).l,a0
ROM:00067B6A                 jsr     CheckObjectOOB
ROM:00067B70                 bcc.w   locret_67B7A
ROM:00067B74                 lea     loc_67B7C,a1
ROM:00067B78                 move.l  a1,(a6)
ROM:00067B7A
ROM:00067B7A locret_67B7A:
ROM:00067B7A                 rts
ROM:00067B7C
ROM:00067B7C
ROM:00067B7C loc_67B7C:
ROM:00067B7C
ROM:00067B7C                 jmp     (SetDying).l
ROM:00067B82
ROM:00067B82                 rts
ROM:00067B84
ROM:00067B84
ROM:00067B84 loc_67B84:
ROM:00067B84
ROM:00067B84                 jsr     (ClearObjChilds?).l
ROM:00067B8A                 jmp     (SetDying).l
ROM:00067B90
ROM:00067B90                 rts
ROM:00067B92
ROM:00067B92
ROM:00067B92 loc_67B92:
ROM:00067B92                 movea.l $C(a6),a0
ROM:00067B96                 tst.b   $9A(a0)
ROM:00067B9A                 bne.w   loc_67BB8
ROM:00067B9E                 move.w  #$38,d1
ROM:00067BA2                 jsr     (sub_236E).l
ROM:00067BA8                 move.w  #$1A,$1C(a6)
ROM:00067BAE                 jsr     sub_138FE
ROM:00067BB4                 bra.w   loc_67BCE
ROM:00067BB8
ROM:00067BB8
ROM:00067BB8 loc_67BB8:
ROM:00067BB8                 move.w  #$1C7,d1
ROM:00067BBC                 jsr     (sub_236E).l
ROM:00067BC2                 move.w  #$1F,$1C(a6)
ROM:00067BC8                 jsr     sub_138FE
ROM:00067BCE
ROM:00067BCE loc_67BCE:
ROM:00067BCE                 lea     (off_2BF59A).l,a0
ROM:00067BD4                 jsr     GetParamDifficulty
ROM:00067BDA                 move.w  d0,$66(a6)
ROM:00067BDE                 move.l  #off_2C7A36,$48(a6)
ROM:00067BE6                 lea     loc_67BEC,a1
ROM:00067BEA                 move.l  a1,(a6)
ROM:00067BEC
ROM:00067BEC loc_67BEC:
ROM:00067BEC                 jsr     sub_5E506
ROM:00067BF2                 move.l  $94(a0),$94(a6)
ROM:00067BF8                 move.b  $80(a0),d0
ROM:00067BFC                 cmp.b   $80(a6),d0
ROM:00067C00                 beq.w   loc_67C28
ROM:00067C04                 move.b  d0,$80(a6)
ROM:00067C08                 andi.w  #7,d0
ROM:00067C0C                 movea.l #off_2C7CFE,a0
ROM:00067C12                 lsl.w   #2,d0
ROM:00067C14                 movea.l (a0,d0.w),a0
ROM:00067C18                 cmpa.l  #$FFFFFFFF,a0
ROM:00067C1E                 beq.w   loc_67C28
ROM:00067C22                 jsr     ChangeAnimation
ROM:00067C28
ROM:00067C28 loc_67C28:
ROM:00067C28
ROM:00067C28                 jsr     Animate
ROM:00067C2E                 jsr     CheckShot?
ROM:00067C34                 bcc.w   loc_67C3E
ROM:00067C38                 bclr    #3,$13(a6)
ROM:00067C3E
ROM:00067C3E loc_67C3E:
ROM:00067C3E                 jsr     CheckIfDead
ROM:00067C44                 bcc.w   loc_67C58
ROM:00067C48                 movea.l $C(a6),a0
ROM:00067C4C                 move.l  #loc_67656,(a0)
ROM:00067C52                 lea     loc_67C7C,a1
ROM:00067C56                 move.l  a1,(a6)
ROM:00067C58
ROM:00067C58 loc_67C58:
ROM:00067C58                 movea.l $C(a6),a0
ROM:00067C5C                 tst.b   $20(a0)
ROM:00067C60                 bne.w   loc_67C6A
ROM:00067C64                 lea     loc_67C7C,a1
ROM:00067C68                 move.l  a1,(a6)
ROM:00067C6A
ROM:00067C6A loc_67C6A:
ROM:00067C6A                 jsr     sub_5E45A
ROM:00067C70                 bcc.w   locret_67C7A
ROM:00067C74                 lea     loc_67B84,a1
ROM:00067C78                 move.l  a1,(a6)
ROM:00067C7A
ROM:00067C7A locret_67C7A:
ROM:00067C7A                 rts
ROM:00067C7C
ROM:00067C7C
ROM:00067C7C loc_67C7C:
ROM:00067C7C
ROM:00067C7C                 addi.w  #-8,$22(a6)
ROM:00067C82                 addi.w  #$12,$24(a6)
ROM:00067C88                 move.w  #$CC,d0
ROM:00067C8C                 jsr     XSpeedRelated
ROM:00067C92                 move.w  d0,$28(a6)
ROM:00067C96                 move.w  #$438,$2A(a6)
ROM:00067C9C                 move.w  #$FFDC,$2E(a6)
ROM:00067CA2                 move.w  #0,$2C(a6)
ROM:00067CA8                 lea     (unk_2C836C).l,a0
ROM:00067CAE                 jsr     ChangeAnimation
ROM:00067CB4                 lea     loc_67CBA,a1
ROM:00067CB8                 move.l  a1,(a6)
ROM:00067CBA
ROM:00067CBA loc_67CBA:
ROM:00067CBA                 jsr     sub_27C8C
ROM:00067CC0                 bcc.w   loc_67CCA
ROM:00067CC4                 lea     unk_67CE8,a1
ROM:00067CC8                 move.l  a1,(a6)
ROM:00067CCA
ROM:00067CCA loc_67CCA:
ROM:00067CCA                 jsr     Animate
ROM:00067CD0                 movea.l #$FFFFFFFF,a0
ROM:00067CD6                 jsr     CheckObjectOOB?
ROM:00067CDC                 bcc.w   locret_67CE6
ROM:00067CE0                 lea     loc_67B84,a1
ROM:00067CE4                 move.l  a1,(a6)
ROM:00067CE6
ROM:00067CE6 locret_67CE6:
ROM:00067CE6                 rts
ROM:00067CE6
