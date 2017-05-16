ROM:0004F84C ProcTNTDangerBarrel:
ROM:0004F84C                 jsr     ObjectRelated
ROM:0004F852                 cmpi.w  #$148,$22(a6)
ROM:0004F858                 bmi.w   loc_4F862
ROM:0004F85C                 move.b  #2,$45(a6)
ROM:0004F862
ROM:0004F862 loc_4F862:
ROM:0004F862                 move.b  $98(a6),d0
ROM:0004F866                 cmpi.b  #1,d0
ROM:0004F86A                 beq.w   loc_4F88E
ROM:0004F86E                 jsr     sub_28998
ROM:0004F874                 move.w  $22(a6),d0
ROM:0004F878                 subi.w  #$12,d0
ROM:0004F87C                 move.w  $24(a6),d1
ROM:0004F880                 addi.w  #$24,d1
ROM:0004F884                 move.w  #$24,d2
ROM:0004F888                 jsr     loc_99812
ROM:0004F88E
ROM:0004F88E loc_4F88E:
ROM:0004F88E                 jsr     Animate
ROM:0004F894                 move.w  $16(a6),d0
ROM:0004F898                 btst    #3,(LevelSubTimer?).l
ROM:0004F8A0                 beq.w   loc_4F8A8
ROM:0004F8A4                 move.w  $18(a6),d0
ROM:0004F8A8
ROM:0004F8A8 loc_4F8A8:
ROM:0004F8A8                 move.w  d0,$14(a6)
ROM:0004F8AC                 jsr     CheckShot?
ROM:0004F8B2                 bcc.w   loc_4F8CC
ROM:0004F8B6                 move.w  $1A(a6),$14(a6)
ROM:0004F8BC                 bclr    #3,$13(a6)
ROM:0004F8C2                 move.w  #$108D,d0
ROM:0004F8C6                 jsr     (PlaySFX).l
ROM:0004F8CC
ROM:0004F8CC loc_4F8CC:
ROM:0004F8CC                 jsr     CheckIfDead
ROM:0004F8D2                 bcc.w   loc_4F936
ROM:0004F8D6                 move.w  #$1030,d0
ROM:0004F8DA                 jsr     (PlaySFX).l
ROM:0004F8E0                 lea     loc_4F954,a1
ROM:0004F8E4                 jsr     (SpawnObj).l
ROM:0004F8EA                 jsr     InitSamePositions
ROM:0004F8F0                 lea     (unk_295C7A).l,a1
ROM:0004F8F6                 jsr     SpawnDebris?
ROM:0004F8FC                 lea     (unk_295C8C).l,a1
ROM:0004F902                 jsr     SpawnDebris?
ROM:0004F908                 lea     (unk_295C9E).l,a1
ROM:0004F90E                 jsr     SpawnDebris?
ROM:0004F914                 jsr     GetRand2?
ROM:0004F91A                 andi.b  #$3F,d0
ROM:0004F91E                 bne.w   loc_4F94C
ROM:0004F922                 lea     loc_4F992,a1
ROM:0004F926                 jsr     (SpawnObj).l
ROM:0004F92C                 jsr     InitSamePositions
ROM:0004F932                 bra.w   loc_4F94C
ROM:0004F936
ROM:0004F936
ROM:0004F936 loc_4F936:
ROM:0004F936                 movea.l #$FFFFFFFF,a0
ROM:0004F93C                 lea     (unk_296268).l,a0
ROM:0004F942                 jsr     CheckObjectOOB
ROM:0004F948                 bcc.w   locret_4F952
ROM:0004F94C
ROM:0004F94C loc_4F94C:
ROM:0004F94C
ROM:0004F94C                 jmp     (SetDying).l
ROM:0004F952
ROM:0004F952
ROM:0004F952 locret_4F952:
ROM:0004F952                 rts
ROM:0004F954
ROM:0004F954
ROM:0004F954 loc_4F954:
ROM:0004F954                 move.w  #8,$72(a6)
ROM:0004F95A                 lea     loc_4F960,a1
ROM:0004F95E                 move.l  a1,(a6)
ROM:0004F960
ROM:0004F960 loc_4F960:
ROM:0004F960                 jsr     ObjectRelated
ROM:0004F966                 lea     (unk_2961A6).l,a0
ROM:0004F96C                 move.l  a0,$4C(a6)
ROM:0004F970                 jsr     sub_283CA
ROM:0004F976                 jsr     sub_283CA
ROM:0004F97C                 jsr     loc_283D8
ROM:0004F982                 subq.w  #1,$72(a6)
ROM:0004F986                 bpl.w   locret_4F990
ROM:0004F98A                 jmp     (SetDying).l
ROM:0004F990
ROM:0004F990
ROM:0004F990 locret_4F990:
ROM:0004F990                 rts
ROM:0004F992
ROM:0004F992
ROM:0004F992 loc_4F992:
ROM:0004F992                 move.w  #$1C6,d1
ROM:0004F996                 jsr     (sub_236E).l
ROM:0004F99C                 lea     (off_2949DE).l,a0
ROM:0004F9A2                 jsr     ChangeAnimation
ROM:0004F9A8                 move.b  #0,$3A(a6)
ROM:0004F9AE                 jsr     ClearObjStuff
ROM:0004F9B4                 jsr     GetRand2?
ROM:0004F9BA                 move.w  d0,d1
ROM:0004F9BC                 andi.w  #$7FF,d0
ROM:0004F9C0                 addi.w  #$1000,d0
ROM:0004F9C4                 move.w  d1,d0
ROM:0004F9C6                 andi.w  #$FF,d0
ROM:0004F9CA                 btst    #0,d0
ROM:0004F9CE                 bne.w   loc_4F9D4
ROM:0004F9D2                 neg.w   d0
ROM:0004F9D4
ROM:0004F9D4 loc_4F9D4:
ROM:0004F9D4                 move.w  d0,$28(a6)
ROM:0004F9D8                 move.w  d1,d0
ROM:0004F9DA                 andi.w  #$7F,d0
ROM:0004F9DE                 addi.w  #$7F,d0
ROM:0004F9E2                 move.w  d0,$2E(a6)
ROM:0004F9E6                 subi.w  #$10,$38(a6)
ROM:0004F9EC                 lea     loc_4F9F2,a1
ROM:0004F9F0                 move.l  a1,(a6)
ROM:0004F9F2
ROM:0004F9F2 loc_4F9F2:
ROM:0004F9F2                 jsr     PositionRelated
ROM:0004F9F8                 jsr     Animate
ROM:0004F9FE                 move.b  (LevelSubTimer?).l,d0
ROM:0004FA04                 andi.b  #7,d0
ROM:0004FA08                 bne.w   loc_4FA22
ROM:0004FA0C                 lea     ($77EFE).l,a1
ROM:0004FA12                 jsr     (SpawnObj).l
ROM:0004FA18                 jsr     InitSamePositions
ROM:0004FA1E                 subq.w  #1,$38(a6)
ROM:0004FA22
ROM:0004FA22 loc_4FA22:
ROM:0004FA22                 movea.l #$FFFFFFFF,a0
ROM:0004FA28                 lea     (unk_296268).l,a0
ROM:0004FA2E                 jsr     CheckObjectOOB
ROM:0004FA34                 bcc.w   locret_4FA3E
ROM:0004FA38                 jmp     (SetDying).l
ROM:0004FA3E
ROM:0004FA3E
ROM:0004FA3E locret_4FA3E:
ROM:0004FA3E                 rts
ROM:0004FA40
ROM:0004FA40                 move.w  #$11,d1
ROM:0004FA44                 move.w  #$C2,d2
ROM:0004FA48                 move.w  #$FFFF,d3
ROM:0004FA4C                 move.w  #1,d4
ROM:0004FA50                 jsr     (sub_2C26).l
ROM:0004FA56                 rts
ROM:0004FA58
ROM:0004FA58                 move.w  #$11,d1
ROM:0004FA5C                 move.w  #$C1,d2
ROM:0004FA60                 move.w  #$FFFF,d3
ROM:0004FA64                 move.w  #1,d4
ROM:0004FA68                 jsr     (sub_2C26).l
ROM:0004FA6E                 rts
ROM:0004FA70
ROM:0004FA70
ROM:0004FA70
ROM:0004FA70
