ROM:00048170 ProcBazookaSoldierFire:
ROM:00048170                 jsr     sub_48FB0
ROM:00048174                 jsr     Animate
ROM:0004817A                 bcs.w   loc_48188
ROM:0004817E                 cmpi.b  #1,$82(a6)
ROM:00048184                 ble.w   loc_481AC
ROM:00048188
ROM:00048188 loc_48188:
ROM:00048188                 cmpi.w  #0,$72(a6)
ROM:0004818E                 bgt.w   loc_481AC
ROM:00048192                 lea     loc_48108,a1
ROM:00048196                 move.l  a1,(a6)
ROM:00048198                 subq.b  #1,$82(a6)
ROM:0004819C                 cmpi.b  #0,$82(a6)
ROM:000481A2                 bgt.w   loc_481AC
ROM:000481A6                 lea     loc_481BE,a1
ROM:000481AA                 move.l  a1,(a6)
ROM:000481AC
ROM:000481AC loc_481AC:
ROM:000481AC
ROM:000481AC                 jsr     sub_4932C
ROM:000481B0                 bcc.w   loc_481BA
ROM:000481B4                 lea     loc_47F12,a1
ROM:000481B8                 move.l  a1,(a6)
ROM:000481BA
ROM:000481BA loc_481BA:
ROM:000481BA                 bra.w   loc_489F8
ROM:000481BE
ROM:000481BE
ROM:000481BE loc_481BE:
ROM:000481BE                 clr.w   $28(a6)
ROM:000481C2                 tst.b   $81(a6)
ROM:000481C6                 bne.w   loc_481F6
ROM:000481CA                 lea     (off_28E974).l,a0
ROM:000481D0                 jsr     ChangeAnimation
ROM:000481D6                 cmpi.w  #8,$78(a6)
ROM:000481DC                 blt.w   loc_4821E
ROM:000481E0                 move.w  #$10,d0
ROM:000481E4                 sub.w   $78(a6),d0
ROM:000481E8                 move.w  d0,$78(a6)
ROM:000481EC                 bchg    #0,$3A(a6)
ROM:000481F2                 bra.w   loc_4821E
ROM:000481F6
ROM:000481F6
ROM:000481F6 loc_481F6:
ROM:000481F6                 lea     (off_28EAB0).l,a0
ROM:000481FC                 jsr     ChangeAnimation
ROM:00048202                 cmpi.w  #6,$78(a6)
ROM:00048208                 blt.w   loc_4821E
ROM:0004820C                 move.w  #$C,d0
ROM:00048210                 sub.w   $78(a6),d0
ROM:00048214                 move.w  d0,$78(a6)
ROM:00048218                 bchg    #0,$3A(a6)
ROM:0004821E
ROM:0004821E loc_4821E:
ROM:0004821E
ROM:0004821E                 lea     loc_48224,a1
ROM:00048222                 move.l  a1,(a6)
ROM:00048224
ROM:00048224 loc_48224:
ROM:00048224                 jsr     sub_48FB0
ROM:00048228                 jsr     Animate
ROM:0004822E                 tst.w   $78(a6)
ROM:00048232                 bne.w   loc_4823C
ROM:00048236                 lea     loc_48260,a1
ROM:0004823A                 move.l  a1,(a6)
ROM:0004823C
ROM:0004823C loc_4823C:
ROM:0004823C                 move.b  (LevelSubTimer?).l,d0
ROM:00048242                 andi.b  #1,d0
ROM:00048246                 bne.w   loc_4824E
ROM:0004824A                 subq.w  #1,$78(a6)
ROM:0004824E
ROM:0004824E loc_4824E:
ROM:0004824E                 jsr     sub_4932C
ROM:00048252                 bcc.w   loc_4825C
ROM:00048256                 lea     loc_47F12,a1
ROM:0004825A                 move.l  a1,(a6)
ROM:0004825C
ROM:0004825C loc_4825C:
ROM:0004825C                 bra.w   loc_489F8
ROM:00048260
ROM:00048260
ROM:00048260 loc_48260:
ROM:00048260                 clr.w   $28(a6)
ROM:00048264                 lea     (off_2BFC32).l,a0
ROM:0004826A                 jsr     GetParamDifficulty
ROM:00048270                 move.w  d0,$72(a6)
ROM:00048274                 lea     (off_28E934).l,a0
ROM:0004827A                 jsr     ChangeAnimation
ROM:00048280                 tst.b   $81(a6)
ROM:00048284                 beq.w   loc_48294
ROM:00048288                 lea     (off_28E954).l,a0
ROM:0004828E                 jsr     ChangeAnimation
ROM:00048294
ROM:00048294 loc_48294:
ROM:00048294                 lea     loc_4829A,a1
ROM:00048298                 move.l  a1,(a6)
ROM:0004829A
ROM:0004829A loc_4829A:
ROM:0004829A                 jsr     sub_48FB0
ROM:0004829E                 jsr     Animate
ROM:000482A4                 bcc.w   loc_482AE
ROM:000482A8                 lea     $47A42,a1
ROM:000482AC                 move.l  a1,(a6)
ROM:000482AE
ROM:000482AE loc_482AE:
ROM:000482AE                 jsr     sub_4932C
ROM:000482B2                 bcc.w   loc_482BC
ROM:000482B6                 lea     loc_47F12,a1
ROM:000482BA                 move.l  a1,(a6)
ROM:000482BC
ROM:000482BC loc_482BC:
ROM:000482BC                 bra.w   loc_489F8
ROM:000482C0
ROM:000482C0
ROM:000482C0 loc_482C0:
ROM:000482C0                 move.l  #off_28E03E,$48(a6)
ROM:000482C8                 lea     (off_28E656).l,a0
ROM:000482CE                 jsr     ChangeAnimation
ROM:000482D4                 lea     loc_482DA,a1
ROM:000482D8                 move.l  a1,(a6)
ROM:000482DA
ROM:000482DA loc_482DA:
ROM:000482DA                 jsr     sub_48FB0
ROM:000482DE                 jsr     Animate
ROM:000482E4                 bcc.w   loc_482EE
ROM:000482E8                 lea     loc_48300,a1
ROM:000482EC                 move.l  a1,(a6)
ROM:000482EE
ROM:000482EE loc_482EE:
ROM:000482EE                 jsr     sub_4932C
ROM:000482F2                 bcc.w   loc_482FC
ROM:000482F6                 lea     loc_47F12,a1
ROM:000482FA                 move.l  a1,(a6)
ROM:000482FC
ROM:000482FC loc_482FC:
ROM:000482FC                 bra.w   loc_489F8
ROM:00048300
ROM:00048300
ROM:00048300 loc_48300:
ROM:00048300                 clr.w   $28(a6)
ROM:00048304                 lea     (off_2BFD36).l,a0
ROM:0004830A                 jsr     GetParamDifficulty
ROM:00048310                 move.b  d0,$82(a6)
ROM:00048314
ROM:00048314 loc_48314:
ROM:00048314                 lea     (off_2BFCB4).l,a0
ROM:0004831A                 jsr     GetParamDifficulty
ROM:00048320                 move.w  d0,$72(a6)
ROM:00048324                 move.l  #off_28E092,$48(a6)
ROM:0004832C                 lea     (unk_28E6C8).l,a0
ROM:00048332                 jsr     ChangeAnimation
ROM:00048338                 lea     loc_4833E,a1
ROM:0004833C                 move.l  a1,(a6)
ROM:0004833E
ROM:0004833E loc_4833E:
ROM:0004833E                 jsr     sub_48FB0
ROM:00048342                 jsr     Animate
ROM:00048348                 bcc.w   loc_48380
ROM:0004834C                 cmpi.w  #0,$72(a6)
ROM:00048352                 bgt.w   loc_48380
ROM:00048356                 lea     loc_48314,a1
ROM:0004835A                 move.l  a1,(a6)
ROM:0004835C                 subq.b  #1,$82(a6)
ROM:00048360                 cmpi.b  #0,$82(a6)
ROM:00048366                 bgt.w   loc_48380
ROM:0004836A                 lea     loc_48392,a1
ROM:0004836E                 move.l  a1,(a6)
ROM:00048370                 lea     (off_2BFC32).l,a0
ROM:00048376                 jsr     GetParamDifficulty
ROM:0004837C                 move.w  d0,$72(a6)
ROM:00048380
ROM:00048380 loc_48380:
ROM:00048380
ROM:00048380                 jsr     sub_4932C
ROM:00048384                 bcc.w   loc_4838E
ROM:00048388                 lea     loc_47F12,a1
ROM:0004838C                 move.l  a1,(a6)
ROM:0004838E
ROM:0004838E loc_4838E:
ROM:0004838E                 bra.w   loc_48A44
ROM:00048392
ROM:00048392
ROM:00048392 loc_48392:
ROM:00048392                 lea     (off_28E6EE).l,a0
ROM:00048398                 jsr     ChangeAnimation
ROM:0004839E                 lea     loc_483A4,a1
ROM:000483A2                 move.l  a1,(a6)
ROM:000483A4
ROM:000483A4 loc_483A4:
ROM:000483A4                 jsr     sub_48FB0
ROM:000483A8                 jsr     Animate
ROM:000483AE                 bcc.w   loc_483C0
ROM:000483B2                 move.l  #off_28DF42,$48(a6)
ROM:000483BA                 lea     $47A42,a1
ROM:000483BE                 move.l  a1,(a6)
ROM:000483C0
ROM:000483C0 loc_483C0:
ROM:000483C0                 jsr     sub_4932C
ROM:000483C4                 bcc.w   loc_483CE
ROM:000483C8                 lea     loc_47F12,a1
ROM:000483CC                 move.l  a1,(a6)
ROM:000483CE
ROM:000483CE loc_483CE:
ROM:000483CE                 bra.w   loc_48A44
ROM:000483D2
ROM:000483D2
ROM:000483D2 loc_483D2:
ROM:000483D2                 move.b  #1,$9B(a6)
ROM:000483D8                 move.b  #1,$86(a6)
ROM:000483DE                 bra.w   loc_483E6
ROM:000483E2
ROM:000483E2
ROM:000483E2 loc_483E2:
ROM:000483E2
ROM:000483E2                 clr.b   $86(a6)
ROM:000483E6
ROM:000483E6 loc_483E6:
ROM:000483E6                 jsr     sub_5E7C0
ROM:000483EC                 jsr     sub_48EA6
ROM:000483F0                 tst.b   $98(a6)
ROM:000483F4                 bne.w   loc_48404
ROM:000483F8                 tst.b   $9B(a6)
ROM:000483FC                 bne.w   loc_4857C
ROM:00048400                 bra.w   loc_48710
ROM:00048404
ROM:00048404
ROM:00048404 loc_48404:
ROM:00048404                 tst.b   $9C(a6)
ROM:00048408                 beq.w   loc_48418
ROM:0004840C                 move.b  $9C(a6),d0
ROM:00048410                 andi.w  #$FF,d0
ROM:00048414                 move.w  d0,$72(a6)
ROM:00048418
ROM:00048418 loc_48418:
ROM:00048418                 jsr     sub_4932C
ROM:0004841C                 bcc.w   loc_48492
ROM:00048420
ROM:00048420 loc_48420:
ROM:00048420
ROM:00048420                 move.w  $28(a6),d0
ROM:00048424                 asr.w   #1,d0
ROM:00048426                 move.w  d0,$28(a6)
ROM:0004842A                 lea     (off_28E75E).l,a0
ROM:00048430                 jsr     ChangeAnimation
ROM:00048436                 lea     loc_4843C,a1
ROM:0004843A                 move.l  a1,(a6)
ROM:0004843C
ROM:0004843C loc_4843C:
ROM:0004843C                 jsr     sub_27C8C
ROM:00048442                 bcc.w   loc_4844C
ROM:00048446                 lea     loc_48456,a1
ROM:0004844A                 move.l  a1,(a6)
ROM:0004844C
ROM:0004844C loc_4844C:
ROM:0004844C                 jsr     Animate
ROM:00048452                 bra.w   loc_489F8
ROM:00048456
ROM:00048456
ROM:00048456 loc_48456:
ROM:00048456                 clr.w   $28(a6)
ROM:0004845A                 lea     (off_28E79C).l,a0
ROM:00048460                 jsr     ChangeAnimation
ROM:00048466                 lea     loc_4846C,a1
ROM:0004846A                 move.l  a1,(a6)
ROM:0004846C
ROM:0004846C loc_4846C:
ROM:0004846C                 jsr     sub_48FB0
ROM:00048470                 jsr     Animate
ROM:00048476                 bcc.w   loc_48480
ROM:0004847A                 lea     loc_48492,a1
ROM:0004847E                 move.l  a1,(a6)
ROM:00048480
ROM:00048480 loc_48480:
ROM:00048480                 jsr     sub_4932C
ROM:00048484                 bcc.w   loc_4848E
ROM:00048488                 lea     loc_48420,a1
ROM:0004848C                 move.l  a1,(a6)
ROM:0004848E
ROM:0004848E loc_4848E:
ROM:0004848E                 bra.w   loc_489F8
ROM:00048492
ROM:00048492
ROM:00048492 loc_48492:
ROM:00048492
ROM:00048492                 lea     (off_2BFB2E).l,a0
ROM:00048498                 jsr     GetParamDifficulty
ROM:0004849E                 move.w  d0,$36(a6)
ROM:000484A2                 jsr     sub_48F04
ROM:000484A6                 lea     (unk_28E394).l,a0
ROM:000484AC                 jsr     ChangeAnimation
ROM:000484B2                 lea     loc_484B8,a1
ROM:000484B6                 move.l  a1,(a6)
ROM:000484B8
ROM:000484B8 loc_484B8:
ROM:000484B8                 jsr     sub_48F2E
ROM:000484BC                 jsr     Animate
ROM:000484C2                 move.b  $98(a6),d0
ROM:000484C6                 andi.w  #$FF,d0
ROM:000484CA                 lsl.w   #4,d0
ROM:000484CC                 btst    #0,$3A(a6)
ROM:000484D2                 bne.w   loc_484E2
ROM:000484D6                 cmp.w   $22(a6),d0
ROM:000484DA                 bgt.w   loc_484EA
ROM:000484DE                 bra.w   loc_484F0
ROM:000484E2
ROM:000484E2
ROM:000484E2 loc_484E2:
ROM:000484E2                 cmp.w   $22(a6),d0
ROM:000484E6                 bgt.w   loc_484F0
ROM:000484EA
ROM:000484EA loc_484EA:
ROM:000484EA                 lea     loc_48502,a1
ROM:000484EE                 move.l  a1,(a6)
ROM:000484F0
ROM:000484F0 loc_484F0:
ROM:000484F0
ROM:000484F0                 jsr     sub_4932C
ROM:000484F4                 bcc.w   loc_484FE
ROM:000484F8                 lea     loc_48420,a1
ROM:000484FC                 move.l  a1,(a6)
ROM:000484FE
ROM:000484FE loc_484FE:
ROM:000484FE                 bra.w   loc_489F8
ROM:00048502
ROM:00048502
ROM:00048502 loc_48502:
ROM:00048502                 tst.b   $9B(a6)
ROM:00048506                 beq.w   loc_486D4
ROM:0004850A                 move.w  #$FCCD,d0
ROM:0004850E                 jsr     XSpeedRelated
ROM:00048514                 move.w  d0,$28(a6)
ROM:00048518                 move.w  #$CCB,$2A(a6)
ROM:0004851E                 move.w  #$FAE2,$2E(a6)
ROM:00048524                 move.w  #0,$2C(a6)
ROM:0004852A                 lea     (off_28E656).l,a0
ROM:00048530                 jsr     ChangeAnimation
ROM:00048536                 lea     loc_4853C,a1
ROM:0004853A                 move.l  a1,(a6)
ROM:0004853C
ROM:0004853C loc_4853C:
ROM:0004853C                 jsr     sub_27BC8
ROM:00048542                 bcc.w   loc_4854A
ROM:00048546                 clr.w   $28(a6)
ROM:0004854A
ROM:0004854A loc_4854A:
ROM:0004854A                 jsr     Animate
ROM:00048550                 bcc.w   loc_48562
ROM:00048554                 tst.w   $28(a6)
ROM:00048558                 bne.w   loc_48562
ROM:0004855C                 lea     loc_4857C,a1
ROM:00048560                 move.l  a1,(a6)
ROM:00048562
ROM:00048562 loc_48562:
ROM:00048562
ROM:00048562                 tst.b   $86(a6)
ROM:00048566                 beq.w   loc_48578
ROM:0004856A                 jsr     sub_4932C
ROM:0004856E                 bcc.w   loc_48578
ROM:00048572                 lea     loc_48420,a1
ROM:00048576                 move.l  a1,(a6)
ROM:00048578
ROM:00048578 loc_48578:
ROM:00048578
ROM:00048578                 bra.w   loc_489F8
ROM:0004857C
ROM:0004857C
ROM:0004857C loc_4857C:
ROM:0004857C
ROM:0004857C                 clr.w   $28(a6)
ROM:00048580                 move.l  #off_28E03E,$48(a6)
ROM:00048588                 lea     (off_28E6B0).l,a0
ROM:0004858E                 jsr     ChangeAnimation
ROM:00048594                 lea     loc_4859A,a1
ROM:00048598                 move.l  a1,(a6)
ROM:0004859A
ROM:0004859A loc_4859A:
ROM:0004859A                 jsr     sub_48FB0
ROM:0004859E                 jsr     Animate
ROM:000485A4                 jsr     loc_492A4
ROM:000485A8                 bcc.w   loc_485B2
ROM:000485AC                 lea     loc_4867A,a1
ROM:000485B0                 move.l  a1,(a6)
ROM:000485B2
ROM:000485B2 loc_485B2:
ROM:000485B2                 cmpi.w  #$18,$22(a6)
ROM:000485B8                 blt.w   loc_485D6
ROM:000485BC                 cmpi.w  #$128,$22(a6)
ROM:000485C2                 bgt.w   loc_485D6
ROM:000485C6                 cmpi.w  #0,$72(a6)
ROM:000485CC                 bgt.w   loc_485D6
ROM:000485D0                 lea     loc_485E8,a1
ROM:000485D4                 move.l  a1,(a6)
ROM:000485D6
ROM:000485D6 loc_485D6:
ROM:000485D6
ROM:000485D6                 jsr     sub_4932C
ROM:000485DA                 bcc.w   loc_485E4
ROM:000485DE                 lea     loc_48420,a1
ROM:000485E2                 move.l  a1,(a6)
ROM:000485E4
ROM:000485E4 loc_485E4:
ROM:000485E4                 bra.w   loc_48A44
ROM:000485E8
ROM:000485E8
ROM:000485E8 loc_485E8:
ROM:000485E8                 clr.w   $28(a6)
ROM:000485EC                 lea     (off_2BFD36).l,a0
ROM:000485F2                 jsr     GetParamDifficulty
ROM:000485F8                 move.b  d0,$82(a6)
ROM:000485FC
ROM:000485FC loc_485FC:
ROM:000485FC                 lea     (off_2BFCB4).l,a0
ROM:00048602                 jsr     GetParamDifficulty
ROM:00048608                 move.w  d0,$72(a6)
ROM:0004860C                 move.l  #off_28E092,$48(a6)
ROM:00048614                 lea     (unk_28E6C8).l,a0
ROM:0004861A                 jsr     ChangeAnimation
ROM:00048620                 lea     loc_48626,a1
ROM:00048624                 move.l  a1,(a6)
ROM:00048626
ROM:00048626 loc_48626:
ROM:00048626                 jsr     sub_48FB0
ROM:0004862A                 jsr     Animate
ROM:00048630                 bcc.w   loc_48668
ROM:00048634                 cmpi.w  #0,$72(a6)
ROM:0004863A                 bgt.w   loc_48668
ROM:0004863E                 lea     loc_485FC,a1
ROM:00048642                 move.l  a1,(a6)
ROM:00048644                 subq.b  #1,$82(a6)
ROM:00048648                 cmpi.b  #0,$82(a6)
ROM:0004864E                 bgt.w   loc_48668
ROM:00048652                 lea     loc_4857C,a1
ROM:00048656                 move.l  a1,(a6)
ROM:00048658                 lea     (off_2BFC32).l,a0
ROM:0004865E                 jsr     GetParamDifficulty
ROM:00048664                 move.w  d0,$72(a6)
ROM:00048668
ROM:00048668 loc_48668:
ROM:00048668
ROM:00048668                 jsr     sub_4932C
ROM:0004866C                 bcc.w   loc_48676
ROM:00048670                 lea     loc_48420,a1
ROM:00048674                 move.l  a1,(a6)
ROM:00048676
ROM:00048676 loc_48676:
ROM:00048676                 bra.w   loc_48A44
ROM:0004867A
ROM:0004867A
ROM:0004867A loc_4867A:
ROM:0004867A                 clr.w   $28(a6)
ROM:0004867E                 move.l  #off_28DF42,$48(a6)
ROM:00048686                 lea     (off_28E6EE).l,a0
ROM:0004868C                 jsr     ChangeAnimation
ROM:00048692                 lea     loc_48698,a1
ROM:00048696                 move.l  a1,(a6)
ROM:00048698
ROM:00048698 loc_48698:
ROM:00048698                 jsr     sub_48FB0
ROM:0004869C                 jsr     Animate
ROM:000486A2                 bcc.w   loc_486C2
ROM:000486A6                 jsr     loc_58FE2
ROM:000486AC                 lea     $48CA4,a1
ROM:000486B0                 jsr     (SpawnObj).l
ROM:000486B6                 jsr     InitSamePositions
ROM:000486BC                 addi.w  #$18,$24(a0)
ROM:000486C2
ROM:000486C2 loc_486C2:
ROM:000486C2                 jsr     sub_4932C
ROM:000486C6                 bcc.w   loc_486D0
ROM:000486CA                 lea     loc_48420,a1
ROM:000486CE                 move.l  a1,(a6)
ROM:000486D0
ROM:000486D0 loc_486D0:
ROM:000486D0                 bra.w   loc_48A44
ROM:000486D4
ROM:000486D4
ROM:000486D4 loc_486D4:
ROM:000486D4                 clr.w   $28(a6)
ROM:000486D8                 lea     (off_28E4EE).l,a0
ROM:000486DE                 jsr     ChangeAnimation
ROM:000486E4                 lea     loc_486EA,a1
ROM:000486E8                 move.l  a1,(a6)
ROM:000486EA
ROM:000486EA loc_486EA:
ROM:000486EA                 jsr     sub_48FB0
ROM:000486EE                 jsr     Animate
ROM:000486F4                 bcc.w   loc_486FE
ROM:000486F8                 lea     loc_48710,a1
ROM:000486FC                 move.l  a1,(a6)
ROM:000486FE
ROM:000486FE loc_486FE:
ROM:000486FE                 jsr     sub_4932C
ROM:00048702                 bcc.w   loc_4870C
ROM:00048706                 lea     loc_48420,a1
ROM:0004870A                 move.l  a1,(a6)
ROM:0004870C
ROM:0004870C loc_4870C:
ROM:0004870C                 bra.w   loc_489F8
ROM:00048710
ROM:00048710
ROM:00048710 loc_48710:
ROM:00048710
ROM:00048710                 clr.w   $28(a6)
ROM:00048714                 move.l  #off_28DFEA,$48(a6)
ROM:0004871C                 lea     (off_28E536).l,a0
ROM:00048722                 jsr     ChangeAnimation
ROM:00048728                 lea     loc_4872E,a1
ROM:0004872C                 move.l  a1,(a6)
ROM:0004872E
ROM:0004872E loc_4872E:
ROM:0004872E                 jsr     sub_48FB0
ROM:00048732                 jsr     Animate
ROM:00048738                 jsr     loc_492A4
ROM:0004873C                 bcc.w   loc_48746
ROM:00048740                 lea     loc_4883E,a1
ROM:00048744                 move.l  a1,(a6)
ROM:00048746
ROM:00048746 loc_48746:
ROM:00048746                 cmpi.w  #0,$72(a6)
ROM:0004874C                 bgt.w   loc_48756
ROM:00048750                 lea     loc_48768,a1
ROM:00048754                 move.l  a1,(a6)
ROM:00048756
ROM:00048756 loc_48756:
ROM:00048756                 jsr     sub_4932C
ROM:0004875A                 bcc.w   loc_48764
ROM:0004875E                 lea     loc_48420,a1
ROM:00048762                 move.l  a1,(a6)
ROM:00048764
ROM:00048764 loc_48764:
ROM:00048764                 bra.w   loc_489F8
ROM:00048768
ROM:00048768
ROM:00048768 loc_48768:
ROM:00048768                 clr.w   $28(a6)
ROM:0004876C                 move.l  #off_28DF42,$48(a6)
ROM:00048774                 lea     (off_2BFD36).l,a0
ROM:0004877A                 jsr     GetParamDifficulty
ROM:00048780                 move.b  d0,$82(a6)
ROM:00048784                 lea     (off_28E5B6).l,a0
ROM:0004878A                 jsr     ChangeAnimation
ROM:00048790                 bra.w   loc_487A0
ROM:00048794
ROM:00048794
ROM:00048794 loc_48794:
ROM:00048794                 lea     (unk_28E610).l,a0
ROM:0004879A                 jsr     ChangeAnimation
ROM:000487A0
ROM:000487A0 loc_487A0:
ROM:000487A0                 lea     loc_487A6,a1
ROM:000487A4                 move.l  a1,(a6)
ROM:000487A6
ROM:000487A6 loc_487A6:
ROM:000487A6                 jsr     sub_48FB0
ROM:000487AA                 jsr     Animate
ROM:000487B0                 bcc.w   loc_487E8
ROM:000487B4                 cmpi.w  #0,$72(a6)
ROM:000487BA                 bgt.w   loc_487E8
ROM:000487BE                 lea     loc_48794,a1
ROM:000487C2                 move.l  a1,(a6)
ROM:000487C4                 subq.b  #1,$82(a6)
ROM:000487C8                 cmpi.b  #0,$82(a6)
ROM:000487CE                 bgt.w   loc_487E8
ROM:000487D2                 lea     loc_487FA,a1
ROM:000487D6                 move.l  a1,(a6)
ROM:000487D8                 lea     (off_2BFC32).l,a0
ROM:000487DE                 jsr     GetParamDifficulty
ROM:000487E4                 move.w  d0,$72(a6)
ROM:000487E8
ROM:000487E8 loc_487E8:
ROM:000487E8
ROM:000487E8                 jsr     sub_4932C
ROM:000487EC                 bcc.w   loc_487F6
ROM:000487F0                 lea     loc_48420,a1
ROM:000487F4                 move.l  a1,(a6)
ROM:000487F6
ROM:000487F6 loc_487F6:
ROM:000487F6                 bra.w   loc_489F8
ROM:000487FA
ROM:000487FA
ROM:000487FA loc_487FA:
ROM:000487FA                 clr.w   $28(a6)
ROM:000487FE                 move.l  #off_28DFEA,$48(a6)
ROM:00048806                 lea     (off_28E632).l,a0
ROM:0004880C                 jsr     ChangeAnimation
ROM:00048812                 lea     loc_48818,a1
ROM:00048816                 move.l  a1,(a6)
ROM:00048818
ROM:00048818 loc_48818:
ROM:00048818                 jsr     sub_48FB0
ROM:0004881C                 jsr     Animate
ROM:00048822                 bcc.w   loc_4882C
ROM:00048826                 lea     loc_48710,a1
ROM:0004882A                 move.l  a1,(a6)
ROM:0004882C
ROM:0004882C loc_4882C:
ROM:0004882C                 jsr     sub_4932C
ROM:00048830                 bcc.w   loc_4883A
ROM:00048834                 lea     loc_48420,a1
ROM:00048838                 move.l  a1,(a6)
ROM:0004883A
ROM:0004883A loc_4883A:
ROM:0004883A                 bra.w   loc_489F8
ROM:0004883E
ROM:0004883E
ROM:0004883E loc_4883E:
ROM:0004883E                 clr.w   $28(a6)
ROM:00048842                 move.l  #off_28DF42,$48(a6)
ROM:0004884A                 lea     (off_28E578).l,a0
ROM:00048850                 jsr     ChangeAnimation
ROM:00048856                 lea     loc_4885C,a1
ROM:0004885A                 move.l  a1,(a6)
ROM:0004885C
ROM:0004885C loc_4885C:
ROM:0004885C                 jsr     sub_48FB0
ROM:00048860                 jsr     Animate
ROM:00048866                 bcc.w   loc_48886
ROM:0004886A                 jsr     loc_58FE2
ROM:00048870                 lea     $48CA4,a1
ROM:00048874                 jsr     (SpawnObj).l
ROM:0004887A                 jsr     InitSamePositions
ROM:00048880                 addi.w  #$18,$24(a0)
ROM:00048886
ROM:00048886 loc_48886:
ROM:00048886                 jsr     sub_4932C
ROM:0004888A                 bcc.w   loc_48894
ROM:0004888E                 lea     loc_48420,a1
ROM:00048892                 move.l  a1,(a6)
ROM:00048894
ROM:00048894 loc_48894:
ROM:00048894                 bra.w   loc_489F8
ROM:00048898
ROM:00048898                 clr.b   $80(a6)
ROM:0004889C                 bra.w   loc_488A6
ROM:000488A0
ROM:000488A0                 move.b  #1,$80(a6)
ROM:000488A6
ROM:000488A6 loc_488A6:
ROM:000488A6                 move.w  #$38,d1
ROM:000488AA                 jsr     (sub_236E).l
ROM:000488B0                 move.w  #1,$66(a6)
ROM:000488B6                 move.w  #$8000,d0
ROM:000488BA                 jsr     sub_28134
ROM:000488C0                 andi.w  #$FFE3,$38(a6)
ROM:000488C6                 ori.w   #$18,$38(a6)
ROM:000488CC                 move.l  #off_28DF96,$48(a6)
ROM:000488D4                 move.b  $9E(a6),d0
ROM:000488D8                 ext.w   d0
ROM:000488DA                 lsl.w   #4,d0
ROM:000488DC                 move.w  d0,$8C(a6)
ROM:000488E0                 lea     (off_2BFF8E).l,a0
ROM:000488E6                 jsr     GetParamDifficulty
ROM:000488EC                 move.w  d0,$8E(a6)
ROM:000488F0                 jsr     sub_5E0D4
ROM:000488F6                 move.l  a0,$94(a6)
ROM:000488FA                 clr.w   $78(a6)
ROM:000488FE                 move.b  #8,$7E(a6)
ROM:00048904                 move.b  #$F0,$7D(a6)
ROM:0004890A                 lea     $48D0E,a1
ROM:0004890E                 jsr     (SpawnObj).l
ROM:00048914                 jsr     InitSamePositions
ROM:0004891A
ROM:0004891A loc_4891A:
ROM:0004891A                 lea     (off_2BFF0C).l,a0
ROM:00048920                 jsr     GetParamDifficulty
ROM:00048926                 move.w  d0,$72(a6)
ROM:0004892A                 move.b  #0,$83(a6)
ROM:00048930                 lea     (off_28ED0A).l,a0
ROM:00048936                 jsr     ChangeAnimation
ROM:0004893C                 lea     loc_48942,a1
ROM:00048940                 move.l  a1,(a6)
ROM:00048942
ROM:00048942 loc_48942:
ROM:00048942                 jsr     loc_48F54
ROM:00048946                 bcc.w   loc_48950
ROM:0004894A                 lea     loc_489C6,a1
ROM:0004894E                 move.l  a1,(a6)
ROM:00048950
ROM:00048950 loc_48950:
ROM:00048950                 jsr     Animate
ROM:00048956                 jsr     loc_49054
ROM:0004895A                 bcc.w   loc_4896A
ROM:0004895E                 move.b  #1,$83(a6)
ROM:00048964                 lea     loc_4896E,a1
ROM:00048968                 move.l  a1,(a6)
ROM:0004896A
ROM:0004896A loc_4896A:
ROM:0004896A                 bra.w   loc_48A90
ROM:0004896E
ROM:0004896E
ROM:0004896E loc_4896E:
ROM:0004896E                 move.b  #1,$83(a6)
ROM:00048974                 jsr     loc_493E4
ROM:00048978                 move.w  $78(a6),d0
ROM:0004897C                 lsr.w   #1,d0
ROM:0004897E                 andi.w  #$F,d0
ROM:00048982                 movea.l #off_28E24A,a0
ROM:00048988                 lsl.w   #2,d0
ROM:0004898A                 movea.l (a0,d0.w),a0
ROM:0004898E                 cmpa.l  #$FFFFFFFF,a0
ROM:00048994                 beq.w   loc_4899E
ROM:00048998                 jsr     ChangeAnimation
ROM:0004899E
ROM:0004899E loc_4899E:
ROM:0004899E                 lea     loc_489A4,a1
ROM:000489A2                 move.l  a1,(a6)
ROM:000489A4
ROM:000489A4 loc_489A4:
ROM:000489A4                 jsr     loc_48F54
ROM:000489A8                 bcc.w   loc_489B2
ROM:000489AC                 lea     loc_489C6,a1
ROM:000489B0                 move.l  a1,(a6)
ROM:000489B2
ROM:000489B2 loc_489B2:
ROM:000489B2                 jsr     Animate
ROM:000489B8                 bcc.w   loc_489C2
ROM:000489BC                 lea     loc_4891A,a1
ROM:000489C0                 move.l  a1,(a6)
ROM:000489C2
ROM:000489C2 loc_489C2:
ROM:000489C2                 bra.w   loc_48A90
ROM:000489C6
ROM:000489C6
ROM:000489C6 loc_489C6:
ROM:000489C6
ROM:000489C6                 move.b  #3,$83(a6)
ROM:000489CC                 lea     (off_28EF0C).l,a0
ROM:000489D2                 jsr     ChangeAnimation
ROM:000489D8                 lea     loc_489DE,a1
ROM:000489DC                 move.l  a1,(a6)
ROM:000489DE
ROM:000489DE loc_489DE:
ROM:000489DE                 jsr     ObjectRelated
ROM:000489E4                 jsr     Animate
ROM:000489EA                 bcc.w   loc_489F4
ROM:000489EE                 lea     $4797C,a1
ROM:000489F2                 move.l  a1,(a6)
ROM:000489F4
ROM:000489F4 loc_489F4:
ROM:000489F4                 bra.w   loc_48A90
ROM:000489F8
ROM:000489F8
ROM:000489F8 loc_489F8:
ROM:000489F8
ROM:000489F8                 jsr     loc_4936E
ROM:000489FC                 subq.w  #1,$72(a6)
ROM:00048A00                 jsr     CheckShot?
ROM:00048A06                 bcc.w   loc_48A26
ROM:00048A0A                 lea     $48CA4,a1
ROM:00048A0E                 jsr     (SpawnObj).l
ROM:00048A14                 jsr     InitSamePositions
ROM:00048A1A                 addi.w  #$18,$24(a0)
ROM:00048A20                 jsr     sub_49FD0
ROM:00048A26
ROM:00048A26 loc_48A26:
ROM:00048A26                 movea.l #$FFFFFFFF,a0
ROM:00048A2C                 lea     (unk_28E196).l,a0
ROM:00048A32                 jsr     CheckObjectOOB
ROM:00048A38                 bcc.w   locret_48A42
ROM:00048A3C                 lea     loc_48B1E,a1
ROM:00048A40                 move.l  a1,(a6)
ROM:00048A42
ROM:00048A42 locret_48A42:
ROM:00048A42                 rts
ROM:00048A44
ROM:00048A44
ROM:00048A44 loc_48A44:
ROM:00048A44
ROM:00048A44                 jsr     loc_4936E
ROM:00048A48                 subq.w  #1,$72(a6)
ROM:00048A4C                 jsr     CheckShot?
ROM:00048A52                 bcc.w   loc_48A72
ROM:00048A56                 lea     loc_48CA4,a1
ROM:00048A5A                 jsr     (SpawnObj).l
ROM:00048A60                 jsr     InitSamePositions
ROM:00048A66                 addi.w  #$10,$24(a0)
ROM:00048A6C                 jsr     sub_49FF2
ROM:00048A72
ROM:00048A72 loc_48A72:
ROM:00048A72                 movea.l #$FFFFFFFF,a0
ROM:00048A78                 lea     (unk_28E196).l,a0
ROM:00048A7E                 jsr     CheckObjectOOB
ROM:00048A84                 bcc.w   locret_48A8E
ROM:00048A88                 lea     loc_48B1E,a1
ROM:00048A8C                 move.l  a1,(a6)
ROM:00048A8E
ROM:00048A8E locret_48A8E:
ROM:00048A8E                 rts
ROM:00048A90
ROM:00048A90
ROM:00048A90 loc_48A90:
ROM:00048A90
ROM:00048A90                 jsr     loc_4936E
ROM:00048A94                 subq.w  #1,$72(a6)
ROM:00048A98                 jsr     CheckShot?
ROM:00048A9E                 bcc.w   loc_48AD2
ROM:00048AA2                 lea     loc_48CA4,a1
ROM:00048AA6                 jsr     (SpawnObj).l
ROM:00048AAC                 jsr     InitSamePositions
ROM:00048AB2                 addi.w  #$18,$24(a0)
ROM:00048AB8                 movea.l $50(a6),a1
ROM:00048ABC                 move.w  $28(a1),d0
ROM:00048AC0                 asr.w   #4,d0
ROM:00048AC2                 move.w  d0,$28(a0)
ROM:00048AC6                 jsr     sub_49FD0
ROM:00048ACC                 move.b  #2,$83(a6)
ROM:00048AD2
ROM:00048AD2 loc_48AD2:
ROM:00048AD2                 cmpi.b  #0,$9E(a6)
ROM:00048AD8                 bge.w   loc_48AF0
ROM:00048ADC                 cmpi.w  #$FFE0,$22(a6)
ROM:00048AE2                 bgt.w   loc_48AEC
ROM:00048AE6                 lea     loc_48B1E,a1
ROM:00048AEA                 move.l  a1,(a6)
ROM:00048AEC
ROM:00048AEC loc_48AEC:
ROM:00048AEC                 bra.w   loc_48B00
ROM:00048AF0
ROM:00048AF0
ROM:00048AF0 loc_48AF0:
ROM:00048AF0                 cmpi.w  #$160,$22(a6)
ROM:00048AF6                 blt.w   loc_48B00
ROM:00048AFA                 lea     loc_48B1E,a1
ROM:00048AFE                 move.l  a1,(a6)
ROM:00048B00
ROM:00048B00 loc_48B00:
ROM:00048B00
ROM:00048B00                 movea.l #$FFFFFFFF,a0
ROM:00048B06                 lea     (unk_28E19E).l,a0
ROM:00048B0C                 jsr     CheckObjectOOB
ROM:00048B12                 bcc.w   locret_48B1C
ROM:00048B16                 lea     loc_48B1E,a1
ROM:00048B1A                 move.l  a1,(a6)
ROM:00048B1C
ROM:00048B1C locret_48B1C:
ROM:00048B1C                 rts
ROM:00048B1E
ROM:00048B1E
ROM:00048B1E loc_48B1E:
ROM:00048B1E
ROM:00048B1E                 jmp     (SetDying).l
ROM:00048B24
ROM:00048B24                 rts
ROM:00048B26
ROM:00048B26
ROM:00048B26 loc_48B26:
ROM:00048B26
ROM:00048B26
ROM:00048B26                 jsr     (ClearObjChilds?).l
ROM:00048B2C                 jmp     (SetDying).l
ROM:00048B32
ROM:00048B32                 rts
ROM:00048B34
ROM:00048B34
ROM:00048B34 loc_48B34:
ROM:00048B34
ROM:00048B34                 move.w  #$2000,d0
ROM:00048B38                 jsr     sub_28134
ROM:00048B3E                 andi.w  #$FFE3,$38(a6)
ROM:00048B44                 ori.w   #$14,$38(a6)
ROM:00048B4A                 jsr     ProcessObj?List
ROM:00048B50                 jmp     loc_77F6A
ROM:00048B56
ROM:00048B56
ROM:00048B56 loc_48B56:
ROM:00048B56
ROM:00048B56                 move.w  #4,d1
ROM:00048B5A                 jsr     (sub_236E).l
ROM:00048B60                 lea     (off_28F556).l,a0
ROM:00048B66                 jsr     ChangeAnimation
ROM:00048B6C                 lea     loc_48B72,a1
ROM:00048B70                 move.l  a1,(a6)
ROM:00048B72
ROM:00048B72 loc_48B72:
ROM:00048B72                 jsr     ObjectRelated
ROM:00048B78                 jsr     Animate
ROM:00048B7E                 bcc.w   loc_48B88
ROM:00048B82                 lea     loc_48B26,a1
ROM:00048B86                 move.l  a1,(a6)
ROM:00048B88
ROM:00048B88 loc_48B88:
ROM:00048B88                 movea.l #$FFFFFFFF,a0
ROM:00048B8E                 jsr     CheckObjectOOB?
ROM:00048B94                 bcc.w   locret_48B9E
ROM:00048B98                 lea     loc_48B26,a1
ROM:00048B9C                 move.l  a1,(a6)
ROM:00048B9E
ROM:00048B9E locret_48B9E:
ROM:00048B9E                 rts
ROM:00048BA0
ROM:00048BA0
ROM:00048BA0 loc_48BA0:
ROM:00048BA0
ROM:00048BA0                 lea     (off_2BFDB8).l,a0
ROM:00048BA6                 jsr     GetParamDifficulty
ROM:00048BAC                 btst    #0,$3A(a6)
ROM:00048BB2                 bne.w   loc_48BB8
ROM:00048BB6                 neg.w   d0
ROM:00048BB8
ROM:00048BB8 loc_48BB8:
ROM:00048BB8                 move.w  d0,$28(a6)
ROM:00048BBC                 clr.w   $2A(a6)
ROM:00048BC0                 bra.w   loc_48C04
ROM:00048BC4
ROM:00048BC4                 move.b  $98(a6),$7B(a6)
ROM:00048BCA
ROM:00048BCA loc_48BCA:
ROM:00048BCA                 lea     (off_2BFDB8).l,a0
ROM:00048BD0                 jsr     GetParamDifficulty
ROM:00048BD6                 move.b  $7B(a6),d3
ROM:00048BDA                 andi.w  #$F,d3
ROM:00048BDE                 lsl.w   #5,d3
ROM:00048BE0                 lea     (unk_2C07AC).l,a1
ROM:00048BE6                 lea     (off_2C072C).l,a2
ROM:00048BEC                 move.w  (a1,d3.w),d1
ROM:00048BF0                 move.w  (a2,d3.w),d2
ROM:00048BF4                 muls.w  d0,d1
ROM:00048BF6                 muls.w  d0,d2
ROM:00048BF8                 asr.l   #8,d1
ROM:00048BFA                 asr.l   #8,d2
ROM:00048BFC                 move.w  d1,$28(a6)
ROM:00048C00                 move.w  d2,$2A(a6)
ROM:00048C04
ROM:00048C04 loc_48C04:
ROM:00048C04                 move.w  #$96,$70(a6)
ROM:00048C0A                 move.w  #$17B,d1
ROM:00048C0E                 jsr     (sub_236E).l
ROM:00048C14                 move.w  #$D000,d0
ROM:00048C18                 jsr     sub_28134
ROM:00048C1E                 andi.w  #$FFE3,$38(a6)
ROM:00048C24                 ori.w   #$14,$38(a6)
ROM:00048C2A                 bset    #4,$6B(a6)
ROM:00048C30                 move.w  #$1064,d0
ROM:00048C34                 jsr     (PlaySFX).l
ROM:00048C3A                 lea     (unk_28F51C).l,a0
ROM:00048C40                 jsr     ChangeAnimation
ROM:00048C46                 lea     loc_48C4C,a1
ROM:00048C4A                 move.l  a1,(a6)
ROM:00048C4C
ROM:00048C4C loc_48C4C:
ROM:00048C4C                 jsr     PositionRelated
ROM:00048C52                 bcc.w   loc_48C5C
ROM:00048C56                 lea     loc_48B34,a1
ROM:00048C5A                 move.l  a1,(a6)
ROM:00048C5C
ROM:00048C5C loc_48C5C:
ROM:00048C5C                 jsr     Animate
ROM:00048C62                 subq.w  #1,$70(a6)
ROM:00048C66                 cmpi.w  #0,$70(a6)
ROM:00048C6C                 bgt.w   loc_48C76
ROM:00048C70                 lea     loc_48B34,a1
ROM:00048C74                 move.l  a1,(a6)
ROM:00048C76
ROM:00048C76 loc_48C76:
ROM:00048C76                 jsr     loc_283D8
ROM:00048C7C                 btst    #1,$13(a6)
ROM:00048C82                 beq.w   loc_48C8C
ROM:00048C86                 lea     loc_48B34,a1
ROM:00048C8A                 move.l  a1,(a6)
ROM:00048C8C
ROM:00048C8C loc_48C8C:
ROM:00048C8C                 movea.l #$FFFFFFFF,a0
ROM:00048C92                 jsr     CheckObjectOOB?
ROM:00048C98                 bcc.w   locret_48CA2
ROM:00048C9C                 lea     loc_48B26,a1
ROM:00048CA0                 move.l  a1,(a6)
ROM:00048CA2
ROM:00048CA2 locret_48CA2:
ROM:00048CA2                 rts
ROM:00048CA4
ROM:00048CA4
ROM:00048CA4 loc_48CA4:
ROM:00048CA4
ROM:00048CA4                 move.w  #$FFBC,d0
ROM:00048CA8                 jsr     XSpeedRelated
ROM:00048CAE                 move.w  d0,$28(a6)
ROM:00048CB2                 move.w  #$32A,$2A(a6)
ROM:00048CB8                 move.w  #$FFCA,$2E(a6)
ROM:00048CBE                 move.w  #0,$2C(a6)
ROM:00048CC4                 move.w  #$38,d1
ROM:00048CC8                 jsr     (sub_236E).l
ROM:00048CCE                 lea     (unk_29CA36).l,a0
ROM:00048CD4                 jsr     ChangeAnimation
ROM:00048CDA                 lea     loc_48CE0,a1
ROM:00048CDE                 move.l  a1,(a6)
ROM:00048CE0
ROM:00048CE0 loc_48CE0:
ROM:00048CE0                 jsr     sub_27BC8
ROM:00048CE6                 bcc.w   loc_48CF0
ROM:00048CEA                 lea     loc_48B26,a1
ROM:00048CEE                 move.l  a1,(a6)
ROM:00048CF0
ROM:00048CF0 loc_48CF0:
ROM:00048CF0                 jsr     Animate
ROM:00048CF6                 movea.l #$FFFFFFFF,a0
ROM:00048CFC                 jsr     CheckObjectOOB?
ROM:00048D02                 bcc.w   locret_48D0C
ROM:00048D06                 lea     loc_48B26,a1
ROM:00048D0A                 move.l  a1,(a6)
ROM:00048D0C
ROM:00048D0C locret_48D0C:
ROM:00048D0C                 rts
ROM:00048D0E
ROM:00048D0E                 move.w  #$18D,d1
ROM:00048D12                 jsr     (sub_236E).l
ROM:00048D18                 move.l  #off_28E0E6,$48(a6)
ROM:00048D20                 lea     (off_2BFE8A).l,a0
ROM:00048D26                 jsr     GetParamDifficulty
ROM:00048D2C                 move.w  d0,$66(a6)
ROM:00048D30
ROM:00048D30 loc_48D30:
ROM:00048D30                 lea     (off_28EF54).l,a0
ROM:00048D36                 jsr     ChangeAnimation
ROM:00048D3C                 lea     loc_48D42,a1
ROM:00048D40                 move.l  a1,(a6)
ROM:00048D42
ROM:00048D42 loc_48D42:
ROM:00048D42                 jsr     sub_5E45A
ROM:00048D48                 bcs.w   loc_48B26
ROM:00048D4C                 jsr     sub_5E506
ROM:00048D52                 move.w  $78(a0),$78(a6)
ROM:00048D58                 subq.w  #1,$38(a6)
ROM:00048D5C                 jsr     Animate
ROM:00048D62                 movea.l $C(a6),a0
ROM:00048D66                 cmpi.b  #1,$83(a0)
ROM:00048D6C                 bne.w   loc_48D76
ROM:00048D70                 lea     loc_48D7A,a1
ROM:00048D74                 move.l  a1,(a6)
ROM:00048D76
ROM:00048D76 loc_48D76:
ROM:00048D76                 bra.w   loc_48E2C
ROM:00048D7A
ROM:00048D7A
ROM:00048D7A loc_48D7A:
ROM:00048D7A                 movea.l $C(a6),a0
ROM:00048D7E                 move.w  $78(a0),d0
ROM:00048D82                 lsr.w   #1,d0
ROM:00048D84                 andi.w  #$F,d0
ROM:00048D88                 movea.l #off_28E26E,a0
ROM:00048D8E                 lsl.w   #2,d0
ROM:00048D90                 movea.l (a0,d0.w),a0
ROM:00048D94                 cmpa.l  #$FFFFFFFF,a0
ROM:00048D9A                 beq.w   loc_48DA4
ROM:00048D9E                 jsr     ChangeAnimation
ROM:00048DA4
ROM:00048DA4 loc_48DA4:
ROM:00048DA4                 lea     loc_48DAA,a1
ROM:00048DA8                 move.l  a1,(a6)
ROM:00048DAA
ROM:00048DAA loc_48DAA:
ROM:00048DAA                 jsr     sub_5E45A
ROM:00048DB0                 bcs.w   loc_48B26
ROM:00048DB4                 jsr     sub_5E506
ROM:00048DBA                 subq.w  #1,$38(a6)
ROM:00048DBE                 jsr     Animate
ROM:00048DC4                 movea.l $C(a6),a0
ROM:00048DC8                 cmpi.b  #0,$83(a0)
ROM:00048DCE                 bne.w   loc_48DD8
ROM:00048DD2                 lea     loc_48D30,a1
ROM:00048DD6                 move.l  a1,(a6)
ROM:00048DD8
ROM:00048DD8 loc_48DD8:
ROM:00048DD8                 bra.w   loc_48E2C
ROM:00048DDC
ROM:00048DDC
ROM:00048DDC loc_48DDC:
ROM:00048DDC                 lea     (off_28F3CC).l,a0
ROM:00048DE2                 jsr     ChangeAnimation
ROM:00048DE8                 bra.w   loc_48DF8
ROM:00048DEC
ROM:00048DEC
ROM:00048DEC loc_48DEC:
ROM:00048DEC
ROM:00048DEC                 lea     (off_28F478).l,a0
ROM:00048DF2                 jsr     ChangeAnimation
ROM:00048DF8
ROM:00048DF8 loc_48DF8:
ROM:00048DF8                 move.l  #$FFFFFFFF,$48(a6)
ROM:00048E00                 lea     loc_48E06,a1
ROM:00048E04                 move.l  a1,(a6)
ROM:00048E06
ROM:00048E06 loc_48E06:
ROM:00048E06                 jsr     ObjectRelated
ROM:00048E0C                 move.b  (LevelSubTimer?).l,d0
ROM:00048E12                 andi.b  #1,d0
ROM:00048E16                 beq.w   locret_48E2A
ROM:00048E1A                 jsr     Animate
ROM:00048E20                 bcc.w   locret_48E2A
ROM:00048E24                 lea     loc_48B26,a1
ROM:00048E28                 move.l  a1,(a6)
ROM:00048E2A
ROM:00048E2A locret_48E2A:
ROM:00048E2A
ROM:00048E2A                 rts
ROM:00048E2C
ROM:00048E2C
ROM:00048E2C loc_48E2C:
ROM:00048E2C
ROM:00048E2C                 movea.l $C(a6),a0
ROM:00048E30                 cmpi.b  #3,$83(a0)
ROM:00048E36                 bne.w   loc_48E42
ROM:00048E3A                 lea     loc_48DDC,a1
ROM:00048E3E                 move.l  a1,(a6)
ROM:00048E40                 rts
ROM:00048E42
ROM:00048E42
ROM:00048E42 loc_48E42:
ROM:00048E42                 cmpi.b  #2,$83(a0)
ROM:00048E48                 bne.w   loc_48E54
ROM:00048E4C                 lea     loc_48DEC,a1
ROM:00048E50                 move.l  a1,(a6)
ROM:00048E52                 rts
ROM:00048E54
ROM:00048E54
ROM:00048E54 loc_48E54:
ROM:00048E54                 jsr     CheckShot?
ROM:00048E5A                 bcc.w   loc_48E64
ROM:00048E5E                 bclr    #3,$13(a6)
ROM:00048E64
ROM:00048E64 loc_48E64:
ROM:00048E64                 jsr     CheckIfDead
ROM:00048E6A                 bcc.w   loc_48E94
ROM:00048E6E                 movea.l $C(a6),a0
ROM:00048E72                 move.l  a0,$50(a0)
ROM:00048E76                 move.b  $58(a6),$58(a0)
ROM:00048E7C                 move.w  $22(a0),$54(a0)
ROM:00048E82                 move.w  $24(a0),$56(a0)
ROM:00048E88                 bset    #3,$13(a0)
ROM:00048E8E                 lea     loc_48DEC,a1
ROM:00048E92                 move.l  a1,(a6)
ROM:00048E94
ROM:00048E94 loc_48E94:
ROM:00048E94                 jsr     sub_5E45A
ROM:00048E9A                 bcc.w   locret_48EA4
ROM:00048E9E                 lea     loc_48B26,a1
ROM:00048EA2                 move.l  a1,(a6)
ROM:00048EA4
ROM:00048EA4 locret_48EA4:
ROM:00048EA4                 rts
ROM:00048EA6
ROM:00048EA6
ROM:00048EA6
ROM:00048EA6
