ROM:0005B556 SetNSpriteX:
ROM:0005B556                 move.w  #$40,d7
ROM:0005B55A                 add.w   d1,d7
ROM:0005B55C                 move.w  d7,d5
ROM:0005B55E                 addq.w  #1,d5
ROM:0005B560                 swap    d5
ROM:0005B562                 move.w  4(a3),d5
ROM:0005B566                 swap    d7
ROM:0005B568                 moveq   #2,d4
ROM:0005B56A                 swap    d4
ROM:0005B56C                 movea.l (a3),a6
ROM:0005B56E                 move.w  $A(a3),d6
ROM:0005B572                 subq.b  #1,d6
ROM:0005B574                 andi.w  #$1F,d6
ROM:0005B578                 add.w   d6,d6
ROM:0005B57A                 add.w   d6,d6
ROM:0005B57C                 jmp     loc_5B580(pc,d6.w)
ROM:0005B580
ROM:0005B580
ROM:0005B580 loc_5B580:
ROM:0005B580                 bra.w   loc_5B732
ROM:0005B584
ROM:0005B584                 bra.w   loc_5B728
ROM:0005B588
ROM:0005B588                 bra.w   loc_5B71E
ROM:0005B58C
ROM:0005B58C                 bra.w   loc_5B714
ROM:0005B590
ROM:0005B590                 bra.w   loc_5B70A
ROM:0005B594
ROM:0005B594                 bra.w   loc_5B700
ROM:0005B598
ROM:0005B598                 bra.w   loc_5B6F6
ROM:0005B59C
ROM:0005B59C                 bra.w   loc_5B6EC
ROM:0005B5A0
ROM:0005B5A0                 bra.w   loc_5B6E2
ROM:0005B5A4
ROM:0005B5A4                 bra.w   loc_5B6D8
ROM:0005B5A8
ROM:0005B5A8                 bra.w   loc_5B6CE
ROM:0005B5AC
ROM:0005B5AC                 bra.w   loc_5B6C4
ROM:0005B5B0
ROM:0005B5B0                 bra.w   loc_5B6BA
ROM:0005B5B4
ROM:0005B5B4                 bra.w   loc_5B6B0
ROM:0005B5B8
ROM:0005B5B8                 bra.w   loc_5B6A6
ROM:0005B5BC
ROM:0005B5BC                 bra.w   loc_5B69C
ROM:0005B5C0
ROM:0005B5C0                 bra.w   loc_5B692
ROM:0005B5C4
ROM:0005B5C4                 bra.w   loc_5B688
ROM:0005B5C8
ROM:0005B5C8                 bra.w   loc_5B67E
ROM:0005B5CC
ROM:0005B5CC                 bra.w   loc_5B674
ROM:0005B5D0
ROM:0005B5D0                 bra.w   loc_5B66A
ROM:0005B5D4
ROM:0005B5D4                 bra.w   loc_5B660
ROM:0005B5D8
ROM:0005B5D8                 bra.w   loc_5B656
ROM:0005B5DC
ROM:0005B5DC                 bra.w   loc_5B64C
ROM:0005B5E0
ROM:0005B5E0                 bra.w   loc_5B642
ROM:0005B5E4
ROM:0005B5E4                 bra.w   loc_5B638
ROM:0005B5E8
ROM:0005B5E8                 bra.w   loc_5B62E
ROM:0005B5EC
ROM:0005B5EC                 bra.w   loc_5B624
ROM:0005B5F0
ROM:0005B5F0                 bra.w   loc_5B61A
ROM:0005B5F4
ROM:0005B5F4                 bra.w   loc_5B610
ROM:0005B5F8
ROM:0005B5F8                 bra.w   loc_5B606
ROM:0005B5FC
ROM:0005B5FC                 move.w  (a6)+,d7
ROM:0005B5FE                 move.l  d7,(a4)
ROM:0005B600                 add.l   d4,d7
ROM:0005B602                 move.l  d5,(a4)
ROM:0005B604                 add.l   d4,d5
ROM:0005B606
ROM:0005B606 loc_5B606:
ROM:0005B606                 move.w  (a6)+,d7
ROM:0005B608                 move.l  d7,(a4)
ROM:0005B60A                 add.l   d4,d7
ROM:0005B60C                 move.l  d5,(a4)
ROM:0005B60E                 add.l   d4,d5
ROM:0005B610
ROM:0005B610 loc_5B610:
ROM:0005B610                 move.w  (a6)+,d7
ROM:0005B612                 move.l  d7,(a4)
ROM:0005B614                 add.l   d4,d7
ROM:0005B616                 move.l  d5,(a4)
ROM:0005B618                 add.l   d4,d5
ROM:0005B61A
ROM:0005B61A loc_5B61A:
ROM:0005B61A                 move.w  (a6)+,d7
ROM:0005B61C                 move.l  d7,(a4)
ROM:0005B61E                 add.l   d4,d7
ROM:0005B620                 move.l  d5,(a4)
ROM:0005B622                 add.l   d4,d5
ROM:0005B624
ROM:0005B624 loc_5B624:
ROM:0005B624                 move.w  (a6)+,d7
ROM:0005B626                 move.l  d7,(a4)
ROM:0005B628                 add.l   d4,d7
ROM:0005B62A                 move.l  d5,(a4)
ROM:0005B62C                 add.l   d4,d5
ROM:0005B62E
ROM:0005B62E loc_5B62E:
ROM:0005B62E                 move.w  (a6)+,d7
ROM:0005B630                 move.l  d7,(a4)
ROM:0005B632                 add.l   d4,d7
ROM:0005B634                 move.l  d5,(a4)
ROM:0005B636                 add.l   d4,d5
ROM:0005B638
ROM:0005B638 loc_5B638:
ROM:0005B638                 move.w  (a6)+,d7
ROM:0005B63A                 move.l  d7,(a4)
ROM:0005B63C                 add.l   d4,d7
ROM:0005B63E                 move.l  d5,(a4)
ROM:0005B640                 add.l   d4,d5
ROM:0005B642
ROM:0005B642 loc_5B642:
ROM:0005B642                 move.w  (a6)+,d7
ROM:0005B644                 move.l  d7,(a4)
ROM:0005B646                 add.l   d4,d7
ROM:0005B648                 move.l  d5,(a4)
ROM:0005B64A                 add.l   d4,d5
ROM:0005B64C
ROM:0005B64C loc_5B64C:
ROM:0005B64C                 move.w  (a6)+,d7
ROM:0005B64E                 move.l  d7,(a4)
ROM:0005B650                 add.l   d4,d7
ROM:0005B652                 move.l  d5,(a4)
ROM:0005B654                 add.l   d4,d5
ROM:0005B656
ROM:0005B656 loc_5B656:
ROM:0005B656                 move.w  (a6)+,d7
ROM:0005B658                 move.l  d7,(a4)
ROM:0005B65A                 add.l   d4,d7
ROM:0005B65C                 move.l  d5,(a4)
ROM:0005B65E                 add.l   d4,d5
ROM:0005B660
ROM:0005B660 loc_5B660:
ROM:0005B660                 move.w  (a6)+,d7
ROM:0005B662                 move.l  d7,(a4)
ROM:0005B664                 add.l   d4,d7
ROM:0005B666                 move.l  d5,(a4)
ROM:0005B668                 add.l   d4,d5
ROM:0005B66A
ROM:0005B66A loc_5B66A:
ROM:0005B66A                 move.w  (a6)+,d7
ROM:0005B66C                 move.l  d7,(a4)
ROM:0005B66E                 add.l   d4,d7
ROM:0005B670                 move.l  d5,(a4)
ROM:0005B672                 add.l   d4,d5
ROM:0005B674
ROM:0005B674 loc_5B674:
ROM:0005B674                 move.w  (a6)+,d7
ROM:0005B676                 move.l  d7,(a4)
ROM:0005B678                 add.l   d4,d7
ROM:0005B67A                 move.l  d5,(a4)
ROM:0005B67C                 add.l   d4,d5
ROM:0005B67E
ROM:0005B67E loc_5B67E:
ROM:0005B67E                 move.w  (a6)+,d7
ROM:0005B680                 move.l  d7,(a4)
ROM:0005B682                 add.l   d4,d7
ROM:0005B684                 move.l  d5,(a4)
ROM:0005B686                 add.l   d4,d5
ROM:0005B688
ROM:0005B688 loc_5B688:
ROM:0005B688                 move.w  (a6)+,d7
ROM:0005B68A                 move.l  d7,(a4)
ROM:0005B68C                 add.l   d4,d7
ROM:0005B68E                 move.l  d5,(a4)
ROM:0005B690                 add.l   d4,d5
ROM:0005B692
ROM:0005B692 loc_5B692:
ROM:0005B692                 move.w  (a6)+,d7
ROM:0005B694                 move.l  d7,(a4)
ROM:0005B696                 add.l   d4,d7
ROM:0005B698                 move.l  d5,(a4)
ROM:0005B69A                 add.l   d4,d5
ROM:0005B69C
ROM:0005B69C loc_5B69C:
ROM:0005B69C                 move.w  (a6)+,d7
ROM:0005B69E                 move.l  d7,(a4)
ROM:0005B6A0                 add.l   d4,d7
ROM:0005B6A2                 move.l  d5,(a4)
ROM:0005B6A4                 add.l   d4,d5
ROM:0005B6A6
ROM:0005B6A6 loc_5B6A6:
ROM:0005B6A6                 move.w  (a6)+,d7
ROM:0005B6A8                 move.l  d7,(a4)
ROM:0005B6AA                 add.l   d4,d7
ROM:0005B6AC                 move.l  d5,(a4)
ROM:0005B6AE                 add.l   d4,d5
ROM:0005B6B0
ROM:0005B6B0 loc_5B6B0:
ROM:0005B6B0                 move.w  (a6)+,d7
ROM:0005B6B2                 move.l  d7,(a4)
ROM:0005B6B4                 add.l   d4,d7
ROM:0005B6B6                 move.l  d5,(a4)
ROM:0005B6B8                 add.l   d4,d5
ROM:0005B6BA
ROM:0005B6BA loc_5B6BA:
ROM:0005B6BA                 move.w  (a6)+,d7
ROM:0005B6BC                 move.l  d7,(a4)
ROM:0005B6BE                 add.l   d4,d7
ROM:0005B6C0                 move.l  d5,(a4)
ROM:0005B6C2                 add.l   d4,d5
ROM:0005B6C4
ROM:0005B6C4 loc_5B6C4:
ROM:0005B6C4                 move.w  (a6)+,d7
ROM:0005B6C6                 move.l  d7,(a4)
ROM:0005B6C8                 add.l   d4,d7
ROM:0005B6CA                 move.l  d5,(a4)
ROM:0005B6CC                 add.l   d4,d5
ROM:0005B6CE
ROM:0005B6CE loc_5B6CE:
ROM:0005B6CE                 move.w  (a6)+,d7
ROM:0005B6D0                 move.l  d7,(a4)
ROM:0005B6D2                 add.l   d4,d7
ROM:0005B6D4                 move.l  d5,(a4)
ROM:0005B6D6                 add.l   d4,d5
ROM:0005B6D8
ROM:0005B6D8 loc_5B6D8:
ROM:0005B6D8                 move.w  (a6)+,d7
ROM:0005B6DA                 move.l  d7,(a4)
ROM:0005B6DC                 add.l   d4,d7
ROM:0005B6DE                 move.l  d5,(a4)
ROM:0005B6E0                 add.l   d4,d5
ROM:0005B6E2
ROM:0005B6E2 loc_5B6E2:
ROM:0005B6E2                 move.w  (a6)+,d7
ROM:0005B6E4                 move.l  d7,(a4)
ROM:0005B6E6                 add.l   d4,d7
ROM:0005B6E8                 move.l  d5,(a4)
ROM:0005B6EA                 add.l   d4,d5
ROM:0005B6EC
ROM:0005B6EC loc_5B6EC:
ROM:0005B6EC                 move.w  (a6)+,d7
ROM:0005B6EE                 move.l  d7,(a4)
ROM:0005B6F0                 add.l   d4,d7
ROM:0005B6F2                 move.l  d5,(a4)
ROM:0005B6F4                 add.l   d4,d5
ROM:0005B6F6
ROM:0005B6F6 loc_5B6F6:
ROM:0005B6F6                 move.w  (a6)+,d7
ROM:0005B6F8                 move.l  d7,(a4)
ROM:0005B6FA                 add.l   d4,d7
ROM:0005B6FC                 move.l  d5,(a4)
ROM:0005B6FE                 add.l   d4,d5
ROM:0005B700
ROM:0005B700 loc_5B700:
ROM:0005B700                 move.w  (a6)+,d7
ROM:0005B702                 move.l  d7,(a4)
ROM:0005B704                 add.l   d4,d7
ROM:0005B706                 move.l  d5,(a4)
ROM:0005B708                 add.l   d4,d5
ROM:0005B70A
ROM:0005B70A loc_5B70A:
ROM:0005B70A                 move.w  (a6)+,d7
ROM:0005B70C                 move.l  d7,(a4)
ROM:0005B70E                 add.l   d4,d7
ROM:0005B710                 move.l  d5,(a4)
ROM:0005B712                 add.l   d4,d5
ROM:0005B714
ROM:0005B714 loc_5B714:
ROM:0005B714                 move.w  (a6)+,d7
ROM:0005B716                 move.l  d7,(a4)
ROM:0005B718                 add.l   d4,d7
ROM:0005B71A                 move.l  d5,(a4)
ROM:0005B71C                 add.l   d4,d5
ROM:0005B71E
ROM:0005B71E loc_5B71E:
ROM:0005B71E                 move.w  (a6)+,d7
ROM:0005B720                 move.l  d7,(a4)
ROM:0005B722                 add.l   d4,d7
ROM:0005B724                 move.l  d5,(a4)
ROM:0005B726                 add.l   d4,d5
ROM:0005B728
ROM:0005B728 loc_5B728:
ROM:0005B728                 move.w  (a6)+,d7
ROM:0005B72A                 move.l  d7,(a4)
ROM:0005B72C                 add.l   d4,d7
ROM:0005B72E                 move.l  d5,(a4)
ROM:0005B730                 add.l   d4,d5
ROM:0005B732
ROM:0005B732 loc_5B732:
ROM:0005B732                 move.w  (a6)+,d7
ROM:0005B734                 move.l  d7,(a4)
ROM:0005B736                 add.l   d4,d7
ROM:0005B738                 move.l  d5,(a4)
ROM:0005B73A                 add.l   d4,d5
ROM:0005B73C                 move.w  #$8401,d6
ROM:0005B740                 add.w   d0,d6
ROM:0005B742                 swap    d6
ROM:0005B744                 move.w  $A(a3),d6
ROM:0005B748                 move.l  #$2000000,d5
ROM:0005B74E                 move.l  d6,(a4)
ROM:0005B750                 sub.l   d5,d6
ROM:0005B752                 sub.l   d5,d6
ROM:0005B754                 move.w  6(a3),d6
ROM:0005B758                 move.l  d6,(a4)
ROM:0005B75A                 rts
ROM:0005B75C
ROM:0005B75C
ROM:0005B75C loc_5B75C:
ROM:0005B75C                 move.w  #$40,d7
ROM:0005B760                 add.w   d1,d7
ROM:0005B762                 move.w  d7,d5
ROM:0005B764                 addq.w  #1,d5
ROM:0005B766                 swap    d5
ROM:0005B768                 move.w  4(a3),d5
ROM:0005B76C                 swap    d7
ROM:0005B76E                 moveq   #2,d4
ROM:0005B770                 swap    d4
ROM:0005B772                 movea.l (a3),a6
ROM:0005B774                 move.w  $A(a3),d6
ROM:0005B778                 subq.b  #1,d6
ROM:0005B77A                 andi.w  #$1F,d6
ROM:0005B77E                 add.w   d6,d6
ROM:0005B780                 add.w   d6,d6
ROM:0005B782                 jmp     loc_5B786(pc,d6.w)
ROM:0005B786
ROM:0005B786
ROM:0005B786 loc_5B786:
ROM:0005B786                 bra.w   loc_5B938
ROM:0005B78A
ROM:0005B78A                 bra.w   loc_5B92E
ROM:0005B78E
ROM:0005B78E                 bra.w   loc_5B924
ROM:0005B792
ROM:0005B792                 bra.w   loc_5B91A
ROM:0005B796
ROM:0005B796                 bra.w   loc_5B910
ROM:0005B79A
ROM:0005B79A                 bra.w   loc_5B906
ROM:0005B79E
ROM:0005B79E                 bra.w   loc_5B8FC
ROM:0005B7A2
ROM:0005B7A2                 bra.w   loc_5B8F2
ROM:0005B7A6
ROM:0005B7A6                 bra.w   loc_5B8E8
ROM:0005B7AA
ROM:0005B7AA                 bra.w   loc_5B8DE
ROM:0005B7AE
ROM:0005B7AE                 bra.w   loc_5B8D4
ROM:0005B7B2
ROM:0005B7B2                 bra.w   loc_5B8CA
ROM:0005B7B6
ROM:0005B7B6                 bra.w   loc_5B8C0
ROM:0005B7BA
ROM:0005B7BA                 bra.w   loc_5B8B6
ROM:0005B7BE
ROM:0005B7BE                 bra.w   loc_5B8AC
ROM:0005B7C2
ROM:0005B7C2                 bra.w   loc_5B8A2
ROM:0005B7C6
ROM:0005B7C6                 bra.w   loc_5B898
ROM:0005B7CA
ROM:0005B7CA                 bra.w   loc_5B88E
ROM:0005B7CE
ROM:0005B7CE                 bra.w   loc_5B884
ROM:0005B7D2
ROM:0005B7D2                 bra.w   loc_5B87A
ROM:0005B7D6
ROM:0005B7D6                 bra.w   loc_5B870
ROM:0005B7DA
ROM:0005B7DA                 bra.w   loc_5B866
ROM:0005B7DE
ROM:0005B7DE                 bra.w   loc_5B85C
ROM:0005B7E2
ROM:0005B7E2                 bra.w   loc_5B852
ROM:0005B7E6
ROM:0005B7E6                 bra.w   loc_5B848
ROM:0005B7EA
ROM:0005B7EA                 bra.w   loc_5B83E
ROM:0005B7EE
ROM:0005B7EE                 bra.w   loc_5B834
ROM:0005B7F2
ROM:0005B7F2                 bra.w   loc_5B82A
ROM:0005B7F6
ROM:0005B7F6                 bra.w   loc_5B820
ROM:0005B7FA
ROM:0005B7FA                 bra.w   loc_5B816
ROM:0005B7FE
ROM:0005B7FE                 bra.w   loc_5B80C
ROM:0005B802
ROM:0005B802                 move.w  -(a6),d7
ROM:0005B804                 move.l  d7,(a4)
ROM:0005B806                 add.l   d4,d7
ROM:0005B808                 move.l  d5,(a4)
ROM:0005B80A                 add.l   d4,d5
ROM:0005B80C
ROM:0005B80C loc_5B80C:
ROM:0005B80C                 move.w  -(a6),d7
ROM:0005B80E                 move.l  d7,(a4)
ROM:0005B810                 add.l   d4,d7
ROM:0005B812                 move.l  d5,(a4)
ROM:0005B814                 add.l   d4,d5
ROM:0005B816
ROM:0005B816 loc_5B816:
ROM:0005B816                 move.w  -(a6),d7
ROM:0005B818                 move.l  d7,(a4)
ROM:0005B81A                 add.l   d4,d7
ROM:0005B81C                 move.l  d5,(a4)
ROM:0005B81E                 add.l   d4,d5
ROM:0005B820
ROM:0005B820 loc_5B820:
ROM:0005B820                 move.w  -(a6),d7
ROM:0005B822                 move.l  d7,(a4)
ROM:0005B824                 add.l   d4,d7
ROM:0005B826                 move.l  d5,(a4)
ROM:0005B828                 add.l   d4,d5
ROM:0005B82A
ROM:0005B82A loc_5B82A:
ROM:0005B82A                 move.w  -(a6),d7
ROM:0005B82C                 move.l  d7,(a4)
ROM:0005B82E                 add.l   d4,d7
ROM:0005B830                 move.l  d5,(a4)
ROM:0005B832                 add.l   d4,d5
ROM:0005B834
ROM:0005B834 loc_5B834:
ROM:0005B834                 move.w  -(a6),d7
ROM:0005B836                 move.l  d7,(a4)
ROM:0005B838                 add.l   d4,d7
ROM:0005B83A                 move.l  d5,(a4)
ROM:0005B83C                 add.l   d4,d5
ROM:0005B83E
ROM:0005B83E loc_5B83E:
ROM:0005B83E                 move.w  -(a6),d7
ROM:0005B840                 move.l  d7,(a4)
ROM:0005B842                 add.l   d4,d7
ROM:0005B844                 move.l  d5,(a4)
ROM:0005B846                 add.l   d4,d5
ROM:0005B848
ROM:0005B848 loc_5B848:
ROM:0005B848                 move.w  -(a6),d7
ROM:0005B84A                 move.l  d7,(a4)
ROM:0005B84C                 add.l   d4,d7
ROM:0005B84E                 move.l  d5,(a4)
ROM:0005B850                 add.l   d4,d5
ROM:0005B852
ROM:0005B852 loc_5B852:
ROM:0005B852                 move.w  -(a6),d7
ROM:0005B854                 move.l  d7,(a4)
ROM:0005B856                 add.l   d4,d7
ROM:0005B858                 move.l  d5,(a4)
ROM:0005B85A                 add.l   d4,d5
ROM:0005B85C
ROM:0005B85C loc_5B85C:
ROM:0005B85C                 move.w  -(a6),d7
ROM:0005B85E                 move.l  d7,(a4)
ROM:0005B860                 add.l   d4,d7
ROM:0005B862                 move.l  d5,(a4)
ROM:0005B864                 add.l   d4,d5
ROM:0005B866
ROM:0005B866 loc_5B866:
ROM:0005B866                 move.w  -(a6),d7
ROM:0005B868                 move.l  d7,(a4)
ROM:0005B86A                 add.l   d4,d7
ROM:0005B86C                 move.l  d5,(a4)
ROM:0005B86E                 add.l   d4,d5
ROM:0005B870
ROM:0005B870 loc_5B870:
ROM:0005B870                 move.w  -(a6),d7
ROM:0005B872                 move.l  d7,(a4)
ROM:0005B874                 add.l   d4,d7
ROM:0005B876                 move.l  d5,(a4)
ROM:0005B878                 add.l   d4,d5
ROM:0005B87A
ROM:0005B87A loc_5B87A:
ROM:0005B87A                 move.w  -(a6),d7
ROM:0005B87C                 move.l  d7,(a4)
ROM:0005B87E                 add.l   d4,d7
ROM:0005B880                 move.l  d5,(a4)
ROM:0005B882                 add.l   d4,d5
ROM:0005B884
ROM:0005B884 loc_5B884:
ROM:0005B884                 move.w  -(a6),d7
ROM:0005B886                 move.l  d7,(a4)
ROM:0005B888                 add.l   d4,d7
ROM:0005B88A                 move.l  d5,(a4)
ROM:0005B88C                 add.l   d4,d5
ROM:0005B88E
ROM:0005B88E loc_5B88E:
ROM:0005B88E                 move.w  -(a6),d7
ROM:0005B890                 move.l  d7,(a4)
ROM:0005B892                 add.l   d4,d7
ROM:0005B894                 move.l  d5,(a4)
ROM:0005B896                 add.l   d4,d5
ROM:0005B898
ROM:0005B898 loc_5B898:
ROM:0005B898                 move.w  -(a6),d7
ROM:0005B89A                 move.l  d7,(a4)
ROM:0005B89C                 add.l   d4,d7
ROM:0005B89E                 move.l  d5,(a4)
ROM:0005B8A0                 add.l   d4,d5
ROM:0005B8A2
ROM:0005B8A2 loc_5B8A2:
ROM:0005B8A2                 move.w  -(a6),d7
ROM:0005B8A4                 move.l  d7,(a4)
ROM:0005B8A6                 add.l   d4,d7
ROM:0005B8A8                 move.l  d5,(a4)
ROM:0005B8AA                 add.l   d4,d5
ROM:0005B8AC
ROM:0005B8AC loc_5B8AC:
ROM:0005B8AC                 move.w  -(a6),d7
ROM:0005B8AE                 move.l  d7,(a4)
ROM:0005B8B0                 add.l   d4,d7
ROM:0005B8B2                 move.l  d5,(a4)
ROM:0005B8B4                 add.l   d4,d5
ROM:0005B8B6
ROM:0005B8B6 loc_5B8B6:
ROM:0005B8B6                 move.w  -(a6),d7
ROM:0005B8B8                 move.l  d7,(a4)
ROM:0005B8BA                 add.l   d4,d7
ROM:0005B8BC                 move.l  d5,(a4)
ROM:0005B8BE                 add.l   d4,d5
ROM:0005B8C0
ROM:0005B8C0 loc_5B8C0:
ROM:0005B8C0                 move.w  -(a6),d7
ROM:0005B8C2                 move.l  d7,(a4)
ROM:0005B8C4                 add.l   d4,d7
ROM:0005B8C6                 move.l  d5,(a4)
ROM:0005B8C8                 add.l   d4,d5
ROM:0005B8CA
ROM:0005B8CA loc_5B8CA:
ROM:0005B8CA                 move.w  -(a6),d7
ROM:0005B8CC                 move.l  d7,(a4)
ROM:0005B8CE                 add.l   d4,d7
ROM:0005B8D0                 move.l  d5,(a4)
ROM:0005B8D2                 add.l   d4,d5
ROM:0005B8D4
ROM:0005B8D4 loc_5B8D4:
ROM:0005B8D4                 move.w  -(a6),d7
ROM:0005B8D6                 move.l  d7,(a4)
ROM:0005B8D8                 add.l   d4,d7
ROM:0005B8DA                 move.l  d5,(a4)
ROM:0005B8DC                 add.l   d4,d5
ROM:0005B8DE
ROM:0005B8DE loc_5B8DE:
ROM:0005B8DE                 move.w  -(a6),d7
ROM:0005B8E0                 move.l  d7,(a4)
ROM:0005B8E2                 add.l   d4,d7
ROM:0005B8E4                 move.l  d5,(a4)
ROM:0005B8E6                 add.l   d4,d5
ROM:0005B8E8
ROM:0005B8E8 loc_5B8E8:
ROM:0005B8E8                 move.w  -(a6),d7
ROM:0005B8EA                 move.l  d7,(a4)
ROM:0005B8EC                 add.l   d4,d7
ROM:0005B8EE                 move.l  d5,(a4)
ROM:0005B8F0                 add.l   d4,d5
ROM:0005B8F2
ROM:0005B8F2 loc_5B8F2:
ROM:0005B8F2                 move.w  -(a6),d7
ROM:0005B8F4                 move.l  d7,(a4)
ROM:0005B8F6                 add.l   d4,d7
ROM:0005B8F8                 move.l  d5,(a4)
ROM:0005B8FA                 add.l   d4,d5
ROM:0005B8FC
ROM:0005B8FC loc_5B8FC:
ROM:0005B8FC                 move.w  -(a6),d7
ROM:0005B8FE                 move.l  d7,(a4)
ROM:0005B900                 add.l   d4,d7
ROM:0005B902                 move.l  d5,(a4)
ROM:0005B904                 add.l   d4,d5
ROM:0005B906
ROM:0005B906 loc_5B906:
ROM:0005B906                 move.w  -(a6),d7
ROM:0005B908                 move.l  d7,(a4)
ROM:0005B90A                 add.l   d4,d7
ROM:0005B90C                 move.l  d5,(a4)
ROM:0005B90E                 add.l   d4,d5
ROM:0005B910
ROM:0005B910 loc_5B910:
ROM:0005B910                 move.w  -(a6),d7
ROM:0005B912                 move.l  d7,(a4)
ROM:0005B914                 add.l   d4,d7
ROM:0005B916                 move.l  d5,(a4)
ROM:0005B918                 add.l   d4,d5
ROM:0005B91A
ROM:0005B91A loc_5B91A:
ROM:0005B91A                 move.w  -(a6),d7
ROM:0005B91C                 move.l  d7,(a4)
ROM:0005B91E                 add.l   d4,d7
ROM:0005B920                 move.l  d5,(a4)
ROM:0005B922                 add.l   d4,d5
ROM:0005B924
ROM:0005B924 loc_5B924:
ROM:0005B924                 move.w  -(a6),d7
ROM:0005B926                 move.l  d7,(a4)
ROM:0005B928                 add.l   d4,d7
ROM:0005B92A                 move.l  d5,(a4)
ROM:0005B92C                 add.l   d4,d5
ROM:0005B92E
ROM:0005B92E loc_5B92E:
ROM:0005B92E                 move.w  -(a6),d7
ROM:0005B930                 move.l  d7,(a4)
ROM:0005B932                 add.l   d4,d7
ROM:0005B934                 move.l  d5,(a4)
ROM:0005B936                 add.l   d4,d5
ROM:0005B938
ROM:0005B938 loc_5B938:
ROM:0005B938                 move.w  -(a6),d7
ROM:0005B93A                 move.l  d7,(a4)
ROM:0005B93C                 add.l   d4,d7
ROM:0005B93E                 move.l  d5,(a4)
ROM:0005B940                 add.l   d4,d5
ROM:0005B942                 move.w  #$8401,d6
ROM:0005B946                 add.w   d0,d6
ROM:0005B948                 swap    d6
ROM:0005B94A                 move.w  $A(a3),d6
ROM:0005B94E                 move.l  #$2000000,d5
ROM:0005B954                 move.l  d6,(a4)
ROM:0005B956                 sub.l   d5,d6
ROM:0005B958                 sub.l   d5,d6
ROM:0005B95A                 move.w  6(a3),d6
ROM:0005B95E                 move.l  d6,(a4)
ROM:0005B960                 rts
ROM:0005B962
ROM:0005B962
