ROM:00047888 FixRelated7:
ROM:00047888
ROM:00047888                 move.w  d1,d4
ROM:0004788A                 movea.l a1,a4
ROM:0004788C                 movea.l a2,a5
ROM:0004788E
ROM:0004788E loc_4788E:
ROM:0004788E                 move.w  (a5)+,d0
ROM:00047890                 cmpi.w  #$FF,d0
ROM:00047894                 beq.w   locret_478AC
ROM:00047898                 move.w  d4,d1
ROM:0004789A                 movea.l a4,a1
ROM:0004789C                 jsr     FixRelated6
ROM:000478A0                 move.l  a4,d0
ROM:000478A2                 addi.l  #$40,d0
ROM:000478A8                 movea.l d0,a4
ROM:000478AA                 bra.s   loc_4788E
ROM:000478AC
ROM:000478AC
ROM:000478AC locret_478AC:
ROM:000478AC                 rts
ROM:000478AC
ROM:000478AC
ROM:000478AE
ROM:000478AE
ROM:000478AE loc_478AE:
ROM:000478AE                 clr.w   d1
ROM:000478B0                 move.b  (a1)+,d1
ROM:000478B2                 cmpi.b  #$FF,d1
ROM:000478B6                 beq.w   locret_478DE
ROM:000478BA                 cmpi.b  #$80,d1
ROM:000478BE                 bcc.w   loc_478CA
ROM:000478C2                 ori.w   #$2300,d1
ROM:000478C6                 bra.w   loc_478CE
ROM:000478CA
ROM:000478CA
ROM:000478CA loc_478CA:
ROM:000478CA                 ori.w   #$2A00,d1
ROM:000478CE
ROM:000478CE loc_478CE:
ROM:000478CE                 movem.w d0-d1,($3C0000).l
ROM:000478D6                 addi.l  #$20,d0
ROM:000478DC                 bra.s   loc_478AE
ROM:000478DE
ROM:000478DE
ROM:000478DE locret_478DE:
ROM:000478DE                 rts
ROM:000478E0
ROM:000478E0                 movea.l 8(a6),a1
ROM:000478E4                 move.b  $10(a6),d0
ROM:000478E8                 cmp.b   $10(a1),d0
ROM:000478EC                 bcs.w   loc_478F6
ROM:000478F0                 andi    #$EE,ccr
ROM:000478F4                 rts
ROM:000478F6
ROM:000478F6
ROM:000478F6 loc_478F6:
ROM:000478F6                 ori     #$11,ccr
ROM:000478FA                 rts
ROM:000478FC
ROM:000478FC                 move.b  #$C0,$7D(a6)
ROM:00047902                 move.b  #$20,$7E(a6)
ROM:00047908                 bra.w   loc_47992
ROM:0004790C
ROM:0004790C
ROM:0004790C loc_4790C:
ROM:0004790C                 move.b  #$E0,$7D(a6)
ROM:00047912                 move.b  #$10,$7E(a6)
ROM:00047918                 bra.w   loc_47992
ROM:0004791C
ROM:0004791C                 move.b  #$F0,$7D(a6)
ROM:00047922                 move.b  #8,$7E(a6)
ROM:00047928                 bra.w   loc_47992
ROM:0004792C
ROM:0004792C                 move.b  #$C0,$7D(a6)
ROM:00047932                 move.b  #$20,$7E(a6)
ROM:00047938                 bra.w   loc_479E4
ROM:0004793C
ROM:0004793C
ROM:0004793C loc_4793C:
ROM:0004793C                 move.b  #$E0,$7D(a6)
ROM:00047942                 move.b  #$10,$7E(a6)
ROM:00047948                 bra.w   loc_479E4
ROM:0004794C
ROM:0004794C                 move.b  #$F0,$7D(a6)
ROM:00047952                 move.b  #8,$7E(a6)
ROM:00047958                 bra.w   loc_479E4
ROM:0004795C
ROM:0004795C                 move.b  #$F0,$7D(a6)
ROM:00047962                 move.b  #8,$7E(a6)
ROM:00047968                 bra.w   loc_479BA
ROM:0004796C
ROM:0004796C                 move.b  #$F0,$7D(a6)
ROM:00047972                 move.b  #8,$7E(a6)
ROM:00047978                 bra.w   loc_479EC
ROM:0004797C
ROM:0004797C
ROM:0004797C loc_4797C:
ROM:0004797C                 jsr     ProcessObj?List
ROM:00047982                 move.b  #$F0,$7D(a6)
ROM:00047988                 move.b  #8,$7E(a6)
ROM:0004798E                 bra.w   loc_47998
ROM:00047992
ROM:00047992
ROM:00047992 loc_47992:
ROM:00047992
ROM:00047992                 jsr     sub_5E7C0
ROM:00047998
ROM:00047998 loc_47998:
ROM:00047998                 clr.b   $86(a6)
ROM:0004799C                 clr.b   $85(a6)
ROM:000479A0                 jsr     sub_48EA6
ROM:000479A4                 jsr     sub_5E0D4
ROM:000479AA                 move.l  a0,$94(a6)
ROM:000479AE                 tst.b   $98(a6)
ROM:000479B2                 beq.w   loc_47A4C
ROM:000479B6                 bra.w   loc_47B1E
ROM:000479BA
ROM:000479BA
ROM:000479BA loc_479BA:
ROM:000479BA                 clr.b   $86(a6)
ROM:000479BE                 move.b  #1,$85(a6)
ROM:000479C4                 jsr     sub_5E7C0
ROM:000479CA                 jsr     sub_48EA6
ROM:000479CE                 jsr     sub_5E0D4
ROM:000479D4                 move.l  a0,$94(a6)
ROM:000479D8                 tst.b   $98(a6)
ROM:000479DC                 beq.w   loc_47A4C
ROM:000479E0                 bra.w   loc_47B1E
ROM:000479E4
ROM:000479E4
ROM:000479E4 loc_479E4:
ROM:000479E4
ROM:000479E4                 clr.b   $85(a6)
ROM:000479E8                 bra.w   loc_479F2
ROM:000479EC
ROM:000479EC
ROM:000479EC loc_479EC:
ROM:000479EC                 move.b  #1,$85(a6)
ROM:000479F2
ROM:000479F2 loc_479F2:
ROM:000479F2                 clr.b   $86(a6)
ROM:000479F6                 jsr     sub_5E7C0
ROM:000479FC                 jsr     sub_48EA6
ROM:00047A00                 jsr     sub_5E0D4
ROM:00047A06                 move.l  a0,$94(a6)
ROM:00047A0A                 lea     (off_28F4C0).l,a0
ROM:00047A10                 jsr     ChangeAnimation
ROM:00047A16                 lea     loc_47A1C,a1
ROM:00047A1A                 move.l  a1,(a6)
ROM:00047A1C
ROM:00047A1C loc_47A1C:
ROM:00047A1C                 jsr     sub_48FB0
ROM:00047A20                 jsr     Animate
ROM:00047A26                 bcc.w   loc_47A30
ROM:00047A2A                 lea     loc_47A4C,a1
ROM:00047A2E                 move.l  a1,(a6)
ROM:00047A30
ROM:00047A30 loc_47A30:
ROM:00047A30                 jsr     sub_4932C
ROM:00047A34                 bcc.w   loc_47A3E
ROM:00047A38                 lea     loc_47F12,a1
ROM:00047A3C                 move.l  a1,(a6)
ROM:00047A3E
ROM:00047A3E loc_47A3E:
ROM:00047A3E                 bra.w   loc_489F8
ROM:00047A42
ROM:00047A42
ROM:00047A42 loc_47A42:
ROM:00047A42                 jsr     sub_5E1EA
ROM:00047A48                 move.l  a0,$94(a6)
ROM:00047A4C
ROM:00047A4C loc_47A4C:
ROM:00047A4C
ROM:00047A4C                 clr.w   $28(a6)
ROM:00047A50                 move.b  $3A(a6),d0
ROM:00047A54                 eori.b  #1,d0
ROM:00047A58                 move.b  d0,$7C(a6)
ROM:00047A5C                 lea     (off_28E312).l,a0
ROM:00047A62                 jsr     ChangeAnimation
ROM:00047A68                 lea     loc_47A6E,a1
ROM:00047A6C                 move.l  a1,(a6)
ROM:00047A6E
ROM:00047A6E loc_47A6E:
ROM:00047A6E                 jsr     sub_48FB0
ROM:00047A72                 jsr     Animate
ROM:00047A78                 tst.b   $98(a6)
ROM:00047A7C                 beq.w   loc_47AEA
ROM:00047A80                 movea.l $94(a6),a0
ROM:00047A84                 jsr     sub_5E338
ROM:00047A8A                 bcs.w   loc_47AE0
ROM:00047A8E                 jsr     sub_48FCC
ROM:00047A92                 lea     (unk_28E1BE).l,a0
ROM:00047A98                 movea.l #$FFFFFFFF,a1
ROM:00047A9E                 jsr     (loc_772).l
ROM:00047AA4                 jsr     sub_49172
ROM:00047AA8                 bcc.w   loc_47AB2
ROM:00047AAC                 lea     loc_47B1E,a1
ROM:00047AB0                 move.l  a1,(a6)
ROM:00047AB2
ROM:00047AB2 loc_47AB2:
ROM:00047AB2                 jsr     sub_49256
ROM:00047AB6                 bcc.w   loc_47AC0
ROM:00047ABA                 lea     loc_47ED2,a1
ROM:00047ABE                 move.l  a1,(a6)
ROM:00047AC0
ROM:00047AC0 loc_47AC0:
ROM:00047AC0                 jsr     sub_49196
ROM:00047AC4                 bcc.w   loc_47ACE
ROM:00047AC8                 lea     loc_47CFE,a1
ROM:00047ACC                 move.l  a1,(a6)
ROM:00047ACE
ROM:00047ACE loc_47ACE:
ROM:00047ACE                 jsr     sub_491DE
ROM:00047AD2                 bcc.w   loc_47ADC
ROM:00047AD6                 lea     loc_47DBC,a1
ROM:00047ADA                 move.l  a1,(a6)
ROM:00047ADC
ROM:00047ADC loc_47ADC:
ROM:00047ADC                 bra.w   loc_47AEA
ROM:00047AE0
ROM:00047AE0
ROM:00047AE0 loc_47AE0:
ROM:00047AE0                 jsr     sub_5E1EA
ROM:00047AE6                 move.l  a0,$94(a6)
ROM:00047AEA
ROM:00047AEA loc_47AEA:
ROM:00047AEA
ROM:00047AEA                 cmpi.w  #$18,$22(a6)
ROM:00047AF0                 blt.w   loc_47B0C
ROM:00047AF4                 cmpi.w  #$128,$22(a6)
ROM:00047AFA                 bgt.w   loc_47B0C
ROM:00047AFE                 jsr     sub_49010
ROM:00047B02                 bcc.w   loc_47B0C
ROM:00047B06                 lea     loc_47F84,a1
ROM:00047B0A                 move.l  a1,(a6)
ROM:00047B0C
ROM:00047B0C loc_47B0C:
ROM:00047B0C
ROM:00047B0C                 jsr     sub_4932C
ROM:00047B10                 bcc.w   loc_47B1A
ROM:00047B14                 lea     loc_47F12,a1
ROM:00047B18                 move.l  a1,(a6)
ROM:00047B1A
ROM:00047B1A loc_47B1A:
ROM:00047B1A                 bra.w   loc_489F8
ROM:00047B1E
ROM:00047B1E
ROM:00047B1E loc_47B1E:
ROM:00047B1E
ROM:00047B1E
ROM:00047B1E                 move.b  $3A(a6),$7C(a6)
ROM:00047B24                 lea     (off_2BFB2E).l,a0
ROM:00047B2A                 jsr     GetParamDifficulty
ROM:00047B30                 move.w  d0,$36(a6)
ROM:00047B34                 jsr     sub_48F04
ROM:00047B38                 lea     (unk_28E394).l,a0
ROM:00047B3E                 jsr     ChangeAnimation
ROM:00047B44                 lea     loc_47B4A,a1
ROM:00047B48                 move.l  a1,(a6)
ROM:00047B4A
ROM:00047B4A loc_47B4A:
ROM:00047B4A                 jsr     sub_48F2E
ROM:00047B4E                 jsr     Animate
ROM:00047B54                 jsr     sub_49346
ROM:00047B58                 bcc.w   loc_47B62
ROM:00047B5C                 lea     loc_47E88,a1
ROM:00047B60                 move.l  a1,(a6)
ROM:00047B62
ROM:00047B62 loc_47B62:
ROM:00047B62                 jsr     sub_490FA
ROM:00047B66                 bcc.w   loc_47B70
ROM:00047B6A                 lea     loc_47E88,a1
ROM:00047B6E                 move.l  a1,(a6)
ROM:00047B70
ROM:00047B70 loc_47B70:
ROM:00047B70                 jsr     sub_49256
ROM:00047B74                 bcc.w   loc_47B7E
ROM:00047B78                 lea     loc_47E88,a1
ROM:00047B7C                 move.l  a1,(a6)
ROM:00047B7E
ROM:00047B7E loc_47B7E:
ROM:00047B7E                 jsr     sub_49196
ROM:00047B82                 bcc.w   loc_47B8C
ROM:00047B86                 lea     loc_47E88,a1
ROM:00047B8A                 move.l  a1,(a6)
ROM:00047B8C
ROM:00047B8C loc_47B8C:
ROM:00047B8C                 jsr     sub_491DE
ROM:00047B90                 bcc.w   loc_47B9A
ROM:00047B94                 lea     loc_47E88,a1
ROM:00047B98                 move.l  a1,(a6)
ROM:00047B9A
ROM:00047B9A loc_47B9A:
ROM:00047B9A                 jsr     sub_4932C
ROM:00047B9E                 bcc.w   loc_47BA8
ROM:00047BA2                 lea     loc_47F12,a1
ROM:00047BA6                 move.l  a1,(a6)
ROM:00047BA8
ROM:00047BA8 loc_47BA8:
ROM:00047BA8                 bra.w   loc_489F8
ROM:00047BAC
ROM:00047BAC
ROM:00047BAC loc_47BAC:
ROM:00047BAC
ROM:00047BAC                 move.b  $3A(a6),$7C(a6)
ROM:00047BB2                 jsr     sub_492F8
ROM:00047BB6                 bcs.w   loc_47C50
ROM:00047BBA                 lea     (off_2BFBB0).l,a0
ROM:00047BC0                 jsr     GetParamDifficulty
ROM:00047BC6                 move.w  d0,$36(a6)
ROM:00047BCA                 jsr     sub_48F04
ROM:00047BCE                 lea     (unk_28E44E).l,a0
ROM:00047BD4                 jsr     ChangeAnimation
ROM:00047BDA                 lea     ProcBazookaSoldierWalk,a1
ROM:00047BDE                 move.l  a1,(a6)
ROM:00047BE0
