ROM:0007BB54 ProcMiniBata:
ROM:0007BB54                 jsr     ObjectRelated
ROM:0007BB5A                 tst.b   $21(a6)
ROM:0007BB5E                 beq.w   loc_7BB70
ROM:0007BB62                 bclr    #1,$12(a6)
ROM:0007BB68                 jmp     (SetDying).l
ROM:0007BB6E
ROM:0007BB6E                 rts
ROM:0007BB70
ROM:0007BB70
ROM:0007BB70 loc_7BB70:
ROM:0007BB70                 clr.b   (byte_10E39A).l
ROM:0007BB76                 rts
ROM:0007BB78
ROM:0007BB78
ROM:0007BB78 loc_7BB78:
ROM:0007BB78                 move.w  #$2A,d1
ROM:0007BB7C                 jsr     (sub_236E).l
ROM:0007BB82                 move.w  #4,$1C(a6)
ROM:0007BB88                 jsr     sub_138FE
ROM:0007BB8E                 move.w  #0,d0
ROM:0007BB92                 jsr     sub_28134
ROM:0007BB98                 andi.w  #$FFE3,$38(a6)
ROM:0007BB9E                 ori.w   #8,$38(a6)
ROM:0007BBA4                 move.w  #1,$66(a6)
ROM:0007BBAA                 jsr     ClearObjStuff
ROM:0007BBB0                 clr.b   $21(a6)
ROM:0007BBB4                 move.w  #$FFFF,$7C(a6)
ROM:0007BBBA                 lea     loc_7BBC0,a1
ROM:0007BBBE                 move.l  a1,(a6)
ROM:0007BBC0
ROM:0007BBC0 loc_7BBC0:
ROM:0007BBC0                 movea.l $C(a6),a0
ROM:0007BBC4                 move.w  $22(a0),$22(a6)
ROM:0007BBCA                 move.w  $24(a0),$24(a6)
ROM:0007BBD0                 movea.l $C(a6),a0
ROM:0007BBD4                 move.w  $7C(a0),d0
ROM:0007BBD8                 cmp.w   $7C(a6),d0
ROM:0007BBDC                 beq.w   loc_7BC00
ROM:0007BBE0                 move.l  d0,-(sp)
ROM:0007BBE2                 movea.l #off_2DF7D6,a0
ROM:0007BBE8                 lsl.w   #2,d0
ROM:0007BBEA                 movea.l (a0,d0.w),a0
ROM:0007BBEE                 cmpa.l  #$FFFFFFFF,a0
ROM:0007BBF4                 beq.w   loc_7BBFE
ROM:0007BBF8                 jsr     ChangeAnimation
ROM:0007BBFE
ROM:0007BBFE loc_7BBFE:
ROM:0007BBFE                 move.l  (sp)+,d0
ROM:0007BC00
ROM:0007BC00 loc_7BC00:
ROM:0007BC00                 move.w  d0,$7C(a6)
ROM:0007BC04                 movea.l $C(a6),a0
ROM:0007BC08                 btst    #7,$5A(a0)
ROM:0007BC0E                 beq.w   loc_7BC18
ROM:0007BC12                 bset    #0,$5A(a6)
ROM:0007BC18
ROM:0007BC18 loc_7BC18:
ROM:0007BC18                 jsr     Animate
ROM:0007BC1E                 movea.l $C(a6),a0
ROM:0007BC22                 cmpi.b  #$FF,$20(a0)
ROM:0007BC28                 bne.w   loc_7BC78
ROM:0007BC2C                 cmpi.w  #$140,$22(a6)
ROM:0007BC32                 ble.w   loc_7BC78
ROM:0007BC36                 tst.b   $21(a6)
ROM:0007BC3A                 bne.w   loc_7BC78
ROM:0007BC3E                 move.b  #1,(byte_10A2D1).l
ROM:0007BC46                 jsr     nullsub_1
ROM:0007BC4C                 move.b  #$FF,$21(a6)
ROM:0007BC52                 lea     (unk_2DF7BC).l,a1
ROM:0007BC58                 jsr     SpawnDebris?
ROM:0007BC5E                 move.w  #$D000,$38(a0)
ROM:0007BC64                 move.w  $22(a6),-(sp)
ROM:0007BC68                 subi.w  #$20,$22(a6)
ROM:0007BC6E                 jsr     loc_628EA
ROM:0007BC74                 move.w  (sp)+,$22(a6)
ROM:0007BC78
ROM:0007BC78 loc_7BC78:
ROM:0007BC78
ROM:0007BC78                 movea.l $C(a6),a0
ROM:0007BC7C                 cmpi.b  #$FF,$21(a0)
ROM:0007BC82                 bne.w   locret_7BC8C
ROM:0007BC86                 lea     $7C65C,a1
ROM:0007BC8A                 move.l  a1,(a6)
ROM:0007BC8C
ROM:0007BC8C locret_7BC8C:
ROM:0007BC8C                 rts
ROM:0007BC8E
ROM:0007BC8E
ROM:0007BC8E loc_7BC8E:
ROM:0007BC8E                 moveq   #0,d0
ROM:0007BC90                 move.b  d0,$20(a6)
ROM:0007BC94                 move.b  d0,$21(a6)
ROM:0007BC98                 move.w  d0,$70(a6)
ROM:0007BC9C                 move.w  d0,$72(a6)
ROM:0007BCA0                 move.w  d0,$74(a6)
ROM:0007BCA4                 move.w  d0,$76(a6)
ROM:0007BCA8                 move.w  d0,$78(a6)
ROM:0007BCAC                 move.w  d0,$7A(a6)
ROM:0007BCB0                 lea     loc_7BB78,a1
ROM:0007BCB4                 jsr     (SpawnObj).l
ROM:0007BCBA                 jsr     InitSamePositions
ROM:0007BCC0                 lea     $7BF36,a1
ROM:0007BCC4                 jsr     (SpawnObj).l
ROM:0007BCCA                 jsr     InitSamePositions
ROM:0007BCD0
ROM:0007BCD0 loc_7BCD0:
ROM:0007BCD0
ROM:0007BCD0                 move.w  #0,$7C(a6)
ROM:0007BCD6                 lea     loc_7BCDC,a1
ROM:0007BCDA                 move.l  a1,(a6)
ROM:0007BCDC
ROM:0007BCDC loc_7BCDC:
ROM:0007BCDC                 jsr     sub_7BEF4
ROM:0007BCE0                 cmpi.w  #$FFFF,$70(a6)
ROM:0007BCE6                 bne.w   loc_7BCF0
ROM:0007BCEA                 lea     loc_7BD22,a1
ROM:0007BCEE                 move.l  a1,(a6)
ROM:0007BCF0
ROM:0007BCF0 loc_7BCF0:
ROM:0007BCF0                 cmpi.w  #1,$70(a6)
ROM:0007BCF6                 bne.w   loc_7BD00
ROM:0007BCFA                 lea     loc_7BDCC,a1
ROM:0007BCFE                 move.l  a1,(a6)
ROM:0007BD00
ROM:0007BD00 loc_7BD00:
ROM:0007BD00                 cmpi.w  #2,$70(a6)
ROM:0007BD06                 bne.w   loc_7BD10
ROM:0007BD0A                 lea     loc_7BE7C,a1
ROM:0007BD0E                 move.l  a1,(a6)
ROM:0007BD10
ROM:0007BD10 loc_7BD10:
ROM:0007BD10                 cmpi.b  #$FF,$20(a6)
ROM:0007BD16                 bne.w   locret_7BD20
ROM:0007BD1A                 lea     $7C374,a1
ROM:0007BD1E                 move.l  a1,(a6)
ROM:0007BD20
ROM:0007BD20 locret_7BD20:
ROM:0007BD20                 rts
ROM:0007BD22
ROM:0007BD22
ROM:0007BD22 loc_7BD22:
ROM:0007BD22
ROM:0007BD22                 move.w  #1,$7C(a6)
ROM:0007BD28                 lea     loc_7BD2E,a1
ROM:0007BD2C                 move.l  a1,(a6)
ROM:0007BD2E
ROM:0007BD2E loc_7BD2E:
ROM:0007BD2E                 cmpi.w  #$FFFF,$70(a6)
ROM:0007BD34                 beq.w   loc_7BD58
ROM:0007BD38                 tst.w   $78(a6)
ROM:0007BD3C                 bne.w   loc_7BD5C
ROM:0007BD40                 subi.w  #$A0,$74(a6)
ROM:0007BD46                 bpl.w   loc_7BD72
ROM:0007BD4A                 clr.w   $74(a6)
ROM:0007BD4E                 lea     loc_7BCD0,a1
ROM:0007BD52                 move.l  a1,(a6)
ROM:0007BD54                 bra.w   loc_7BD72
ROM:0007BD58
ROM:0007BD58
ROM:0007BD58 loc_7BD58:
ROM:0007BD58                 clr.w   $78(a6)
ROM:0007BD5C
ROM:0007BD5C loc_7BD5C:
ROM:0007BD5C                 addi.w  #$40,$74(a6)
ROM:0007BD62                 cmpi.w  #$180,$74(a6)
ROM:0007BD68                 blt.w   loc_7BD72
ROM:0007BD6C                 move.w  #$180,$74(a6)
ROM:0007BD72
ROM:0007BD72 loc_7BD72:
ROM:0007BD72
ROM:0007BD72                 move.w  $74(a6),d0
ROM:0007BD76                 sub.w   d0,$72(a6)
ROM:0007BD7A                 bpl.w   loc_7BDAC
ROM:0007BD7E                 move.w  #0,$72(a6)
ROM:0007BD84                 addq.w  #1,$76(a6)
ROM:0007BD88                 cmpi.w  #$14,$76(a6)
ROM:0007BD8E                 blt.w   loc_7BDB0
ROM:0007BD92                 moveq   #0,d0
ROM:0007BD94                 move.w  d0,$74(a6)
ROM:0007BD98                 move.w  d0,$76(a6)
ROM:0007BD9C                 move.w  #$FFFF,$78(a6)
ROM:0007BDA2                 lea     loc_7BDCC,a1
ROM:0007BDA6                 move.l  a1,(a6)
ROM:0007BDA8                 bra.w   loc_7BDB0
ROM:0007BDAC
ROM:0007BDAC
ROM:0007BDAC loc_7BDAC:
ROM:0007BDAC                 clr.w   $76(a6)
ROM:0007BDB0
ROM:0007BDB0 loc_7BDB0:
ROM:0007BDB0
ROM:0007BDB0                 jsr     sub_7BEF4
ROM:0007BDB4                 jsr     Animate
ROM:0007BDBA                 cmpi.b  #$FF,$20(a6)
ROM:0007BDC0                 bne.w   locret_7BDCA
ROM:0007BDC4                 lea     $7C374,a1
ROM:0007BDC8                 move.l  a1,(a6)
ROM:0007BDCA
ROM:0007BDCA locret_7BDCA:
ROM:0007BDCA                 rts
ROM:0007BDCC
ROM:0007BDCC
ROM:0007BDCC loc_7BDCC:
ROM:0007BDCC
ROM:0007BDCC                 move.w  #2,$7C(a6)
ROM:0007BDD2                 lea     loc_7BDD8,a1
ROM:0007BDD6                 move.l  a1,(a6)
ROM:0007BDD8
ROM:0007BDD8 loc_7BDD8:
ROM:0007BDD8                 cmpi.w  #1,$70(a6)
ROM:0007BDDE                 beq.w   loc_7BE02
ROM:0007BDE2                 tst.w   $78(a6)
ROM:0007BDE6                 bne.w   loc_7BE06
ROM:0007BDEA                 subi.w  #$A0,$74(a6)
ROM:0007BDF0                 bpl.w   loc_7BE1C
ROM:0007BDF4                 clr.w   $74(a6)
ROM:0007BDF8                 lea     loc_7BCD0,a1
ROM:0007BDFC                 move.l  a1,(a6)
ROM:0007BDFE                 bra.w   loc_7BE1C
ROM:0007BE02
ROM:0007BE02
ROM:0007BE02 loc_7BE02:
ROM:0007BE02                 clr.w   $78(a6)
ROM:0007BE06
ROM:0007BE06 loc_7BE06:
ROM:0007BE06                 addi.w  #$40,$74(a6)
ROM:0007BE0C                 cmpi.w  #$180,$74(a6)
ROM:0007BE12                 blt.w   loc_7BE1C
ROM:0007BE16                 move.w  #$180,$74(a6)
ROM:0007BE1C
ROM:0007BE1C loc_7BE1C:
ROM:0007BE1C
ROM:0007BE1C                 move.w  $74(a6),d0
ROM:0007BE20                 add.w   d0,$72(a6)
ROM:0007BE24                 cmpi.w  #$7E00,$72(a6)
ROM:0007BE2A                 ble.w   loc_7BE5C
ROM:0007BE2E                 move.w  #$7E00,$72(a6)
ROM:0007BE34                 addq.w  #1,$76(a6)
ROM:0007BE38                 cmpi.w  #$14,$76(a6)
ROM:0007BE3E                 blt.w   loc_7BE60
ROM:0007BE42                 moveq   #0,d0
ROM:0007BE44                 move.w  d0,$74(a6)
ROM:0007BE48                 move.w  d0,$76(a6)
ROM:0007BE4C                 move.w  #$FFFF,$78(a6)
ROM:0007BE52                 lea     loc_7BD22,a1
ROM:0007BE56                 move.l  a1,(a6)
ROM:0007BE58                 bra.w   loc_7BE60
ROM:0007BE5C
ROM:0007BE5C
ROM:0007BE5C loc_7BE5C:
ROM:0007BE5C                 clr.w   $76(a6)
ROM:0007BE60
ROM:0007BE60 loc_7BE60:
ROM:0007BE60
ROM:0007BE60                 jsr     sub_7BEF4
ROM:0007BE64                 jsr     Animate
ROM:0007BE6A                 cmpi.b  #$FF,$20(a6)
ROM:0007BE70                 bne.w   locret_7BE7A
ROM:0007BE74                 lea     $7C374,a1
ROM:0007BE78                 move.l  a1,(a6)
ROM:0007BE7A
ROM:0007BE7A locret_7BE7A:
ROM:0007BE7A                 rts
ROM:0007BE7C
ROM:0007BE7C
ROM:0007BE7C loc_7BE7C:
ROM:0007BE7C                 move.w  #2,$7C(a6)
ROM:0007BE82                 lea     loc_7BE88,a1
ROM:0007BE86                 move.l  a1,(a6)
ROM:0007BE88
ROM:0007BE88 loc_7BE88:
ROM:0007BE88                 cmpi.w  #2,$70(a6)
ROM:0007BE8E                 beq.w   loc_7BEAA
ROM:0007BE92                 subi.w  #$A0,$74(a6)
ROM:0007BE98                 bpl.w   loc_7BEC0
ROM:0007BE9C                 clr.w   $74(a6)
ROM:0007BEA0                 lea     loc_7BCD0,a1
ROM:0007BEA4                 move.l  a1,(a6)
ROM:0007BEA6                 bra.w   loc_7BEC0
ROM:0007BEAA
ROM:0007BEAA
ROM:0007BEAA loc_7BEAA:
ROM:0007BEAA                 addi.w  #$40,$74(a6)
ROM:0007BEB0                 cmpi.w  #$140,$74(a6)
ROM:0007BEB6                 blt.w   loc_7BEC0
ROM:0007BEBA                 move.w  #$140,$74(a6)
ROM:0007BEC0
ROM:0007BEC0 loc_7BEC0:
ROM:0007BEC0
ROM:0007BEC0                 move.w  $74(a6),d0
ROM:0007BEC4                 add.w   d0,$72(a6)
ROM:0007BEC8                 cmpi.w  #$7E00,$72(a6)
ROM:0007BECE                 ble.w   loc_7BED8
ROM:0007BED2                 move.w  #$7E00,$72(a6)
ROM:0007BED8
ROM:0007BED8 loc_7BED8:
ROM:0007BED8                 jsr     sub_7BEF4
ROM:0007BEDC                 jsr     Animate
ROM:0007BEE2                 cmpi.b  #$FF,$20(a6)
ROM:0007BEE8                 bne.w   locret_7BEF2
ROM:0007BEEC                 lea     loc_7C374,a1
ROM:0007BEF0                 move.l  a1,(a6)
ROM:0007BEF2
ROM:0007BEF2 locret_7BEF2:
ROM:0007BEF2                 rts
ROM:0007BEF4
ROM:0007BEF4
ROM:0007BEF4
ROM:0007BEF4
