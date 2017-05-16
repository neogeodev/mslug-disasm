ROM:0004F742 ProcBoulder:
ROM:0004F742                 jsr     ObjectRelated
ROM:0004F748                 jsr     Animate
ROM:0004F74E                 movea.l #$FFFFFFFF,a0
ROM:0004F754                 lea     (BBBoulder).l,a0
ROM:0004F75A                 jsr     CheckObjectOOB
ROM:0004F760                 bcc.w   locret_4F76A
ROM:0004F764                 jmp     (SetDying).l
ROM:0004F76A
ROM:0004F76A
ROM:0004F76A locret_4F76A:
ROM:0004F76A                 rts
ROM:0004F76C
ROM:0004F76C                 move.w  #$1B6,d1
ROM:0004F770                 jsr     (sub_236E).l
ROM:0004F776                 lea     (off_2949BE).l,a0
ROM:0004F77C                 jsr     ChangeAnimation
ROM:0004F782                 move.w  #0,$38(a6)
ROM:0004F788                 jsr     ObjectRelated
ROM:0004F78E                 lea     (unk_295F94).l,a1
ROM:0004F794                 jsr     sub_43FAC
ROM:0004F79A                 lea     loc_4F7A0,a1
ROM:0004F79E                 move.l  a1,(a6)
ROM:0004F7A0
ROM:0004F7A0 loc_4F7A0:
ROM:0004F7A0                 jsr     ObjectRelated
ROM:0004F7A6                 jsr     Animate
ROM:0004F7AC                 movea.l #$FFFFFFFF,a0
ROM:0004F7B2                 lea     (BBBoulder).l,a0
ROM:0004F7B8                 jsr     CheckObjectOOB
ROM:0004F7BE                 bcc.w   locret_4F7C8
ROM:0004F7C2                 jmp     (SetDying).l
ROM:0004F7C8
ROM:0004F7C8
ROM:0004F7C8 locret_4F7C8:
ROM:0004F7C8                 rts
ROM:0004F7CA
ROM:0004F7CA                 move.w  #$1CA,d1
ROM:0004F7CE                 jsr     (sub_236E).l
ROM:0004F7D4                 move.w  #$1D8,d1
ROM:0004F7D8                 jsr     (sub_236E).l
ROM:0004F7DE                 move.w  #$1CB,d1
ROM:0004F7E2                 jsr     (sub_236E).l
ROM:0004F7E8                 lea     (off_2C0092).l,a0
ROM:0004F7EE                 jsr     GetParamDifficulty
ROM:0004F7F4                 move.w  d0,$66(a6)
ROM:0004F7F8                 lea     (off_2949CE).l,a0
ROM:0004F7FE                 jsr     ChangeAnimation
ROM:0004F804                 cmpi.b  #1,$98(a6)
ROM:0004F80A                 bne.w   loc_4F81C
ROM:0004F80E                 lea     (unk_2954A8).l,a0
ROM:0004F814                 move.l  a0,$48(a6)
ROM:0004F818                 bra.w   loc_4F826
ROM:0004F81C
ROM:0004F81C
ROM:0004F81C loc_4F81C:
ROM:0004F81C                 lea     (off_295454).l,a0
ROM:0004F822                 move.l  a0,$48(a6)
ROM:0004F826
ROM:0004F826 loc_4F826:
ROM:0004F826                 jsr     ClearObjStuff
ROM:0004F82C                 jsr     sub_5E7C0
ROM:0004F832                 move.w  #$2000,$38(a6)
ROM:0004F838                 move.l  #unk_296356,$60(a6)
ROM:0004F840                 move.w  $16(a6),$14(a6)
ROM:0004F846                 lea     ProcTNTDangerBarrel,a1
ROM:0004F84A                 move.l  a1,(a6)
ROM:0004F84C
