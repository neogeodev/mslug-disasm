ROM:0003E8BC PrintName:
ROM:0003E8BC                 move.w  #$2300,d1
ROM:0003E8C0                 add.b   (a1)+,d1
ROM:0003E8C2                 movem.w d0-d1,($3C0000).l
ROM:0003E8CA                 addi.w  #$20,d0
ROM:0003E8CE                 subq.b  #1,d2
ROM:0003E8D0                 cmpi.b  #0,d2
ROM:0003E8D4                 bgt.s   PrintName
ROM:0003E8D6                 rts
ROM:0003E8D6
ROM:0003E8D6
ROM:0003E8D8
ROM:0003E8D8                 move.w  (word_106F4C).l,d1
ROM:0003E8DE                 addq.w  #1,d1
ROM:0003E8E0                 cmpi.w  #$E,d1
ROM:0003E8E4                 bls.w   loc_3E8EC
ROM:0003E8E8                 move.w  #$E,d1
ROM:0003E8EC
ROM:0003E8EC loc_3E8EC:
ROM:0003E8EC                 lea     (off_2829FE).l,a1
ROM:0003E8F2                 lsl.w   #1,d1
ROM:0003E8F4                 move.w  (a1,d1.w),d0
ROM:0003E8F8                 rts
ROM:0003E8FA
ROM:0003E8FA                 move.w  (word_106F4E).l,d1
ROM:0003E900                 addq.w  #1,d1
ROM:0003E902                 cmpi.w  #$E,d1
ROM:0003E906                 bls.w   loc_3E90E
ROM:0003E90A                 move.w  #$E,d1
ROM:0003E90E
ROM:0003E90E loc_3E90E:
ROM:0003E90E                 lea     (unk_282A1E).l,a1
ROM:0003E914                 lsl.w   #1,d1
ROM:0003E916                 move.w  (a1,d1.w),d0
ROM:0003E91A                 rts
ROM:0003E91C
ROM:0003E91C
ROM:0003E91C loc_3E91C:
ROM:0003E91C                 move.w  #$A2,d1
ROM:0003E920                 jsr     (sub_29F2).l
ROM:0003E926                 move.w  $14(a6),d1
ROM:0003E92A                 jsr     (sub_2C66).l
ROM:0003E930                 move.w  #$FFFF,$38(a6)
ROM:0003E936                 bset    #6,$12(a6)
ROM:0003E93C                 lea     (off_28295A).l,a0
ROM:0003E942                 jsr     ChangeAnimation
ROM:0003E948                 jsr     ClearObjStuff
ROM:0003E94E                 move.w  #$11C,$24(a6)
ROM:0003E954                 cmpi.w  #0,$76(a6)
ROM:0003E95A                 bne.w   loc_3E96C
ROM:0003E95E                 lea     (off_2829FE).l,a1
ROM:0003E964                 move.w  #$60,d2
ROM:0003E968                 bra.w   loc_3E976
ROM:0003E96C
ROM:0003E96C
ROM:0003E96C loc_3E96C:
ROM:0003E96C                 lea     (unk_282A1E).l,a1
ROM:0003E972                 move.w  #$E8,d2
ROM:0003E976
ROM:0003E976 loc_3E976:
ROM:0003E976                 move.w  $5C(a6),d0
ROM:0003E97A                 cmpi.w  #$E,$5C(a6)
ROM:0003E980                 bls.w   loc_3E988
ROM:0003E984                 move.w  #$E,d0
ROM:0003E988
ROM:0003E988 loc_3E988:
ROM:0003E988                 lsl.w   #1,d0
ROM:0003E98A                 move.w  (a1,d0.w),$22(a6)
ROM:0003E990                 sub.w   $22(a6),d2
ROM:0003E994                 move.w  d2,d0
ROM:0003E996                 move.w  #$7D,d1
ROM:0003E99A                 jsr     sub_5E018
ROM:0003E9A0                 move.w  d0,$34(a6)
ROM:0003E9A4                 move.w  #$1000,d1
ROM:0003E9A8                 jsr     sub_13C0E
ROM:0003E9AE                 move.w  d1,$28(a6)
ROM:0003E9B2                 move.w  d2,$2A(a6)
ROM:0003E9B6                 lea     loc_3E9BC,a1
ROM:0003E9BA                 move.l  a1,(a6)
ROM:0003E9BC
ROM:0003E9BC loc_3E9BC:
ROM:0003E9BC                 movea.l $C(a6),a1
ROM:0003E9C0                 movea.l $C(a1),a2
ROM:0003E9C4                 cmpi.b  #1,$8A(a2)
ROM:0003E9CA                 bne.w   loc_3E9DC
ROM:0003E9CE                 lea     loc_3E9FA,a1
ROM:0003E9D2                 move.l  a1,(a6)
ROM:0003E9D4                 jsr     Animate
ROM:0003E9DA                 rts
ROM:0003E9DC
ROM:0003E9DC
ROM:0003E9DC loc_3E9DC:
ROM:0003E9DC                 jsr     loc_8D2F8
ROM:0003E9E2                 cmpi.w  #$198,$24(a6)
ROM:0003E9E8                 ble.w   loc_3E9F2
ROM:0003E9EC                 lea     loc_3E9FA,a1
ROM:0003E9F0                 move.l  a1,(a6)
ROM:0003E9F2
ROM:0003E9F2 loc_3E9F2:
ROM:0003E9F2                 jsr     Animate
ROM:0003E9F8                 rts
ROM:0003E9FA
ROM:0003E9FA
ROM:0003E9FA loc_3E9FA:
ROM:0003E9FA
ROM:0003E9FA                 move.w  #$10D6,d0
ROM:0003E9FE                 jsr     (PlaySFX).l
ROM:0003EA04                 movea.l $C(a6),a1
ROM:0003EA08                 move.b  #$FF,$20(a1)
ROM:0003EA0E                 move.w  $74(a6),d0
ROM:0003EA12                 move.w  #$714C,d4
ROM:0003EA16                 add.w   $72(a6),d4
ROM:0003EA1A                 jsr     sub_4772A
ROM:0003EA20                 jsr     (ClearObjChilds?).l
ROM:0003EA26                 jmp     (SetDying).l
ROM:0003EA2C
ROM:0003EA2C                 rts
ROM:0003EA2E
ROM:0003EA2E
ROM:0003EA2E loc_3EA2E:
ROM:0003EA2E                 move.w  #6,$30(a6)
ROM:0003EA34                 move.w  #0,$70(a6)
ROM:0003EA3A                 move.b  #0,$5C(a6)
ROM:0003EA40                 lea     loc_3EA46,a1
ROM:0003EA44                 move.l  a1,(a6)
ROM:0003EA46
ROM:0003EA46 loc_3EA46:
ROM:0003EA46                 subq.w  #1,$70(a6)
ROM:0003EA4A                 cmpi.w  #0,$70(a6)
ROM:0003EA50                 bgt.w   locret_3EAA0
ROM:0003EA54                 cmpi.w  #0,$30(a6)
ROM:0003EA5A                 bgt.w   loc_3EA66
ROM:0003EA5E                 lea     loc_3EAA2,a1
ROM:0003EA62                 move.l  a1,(a6)
ROM:0003EA64                 rts
ROM:0003EA66
ROM:0003EA66
ROM:0003EA66 loc_3EA66:
ROM:0003EA66                 cmpi.b  #0,$5C(a6)
ROM:0003EA6C                 bne.w   loc_3EA7A
ROM:0003EA70                 lea     (unk_282A4C).l,a2
ROM:0003EA76                 bra.w   loc_3EA80
ROM:0003EA7A
ROM:0003EA7A
ROM:0003EA7A loc_3EA7A:
ROM:0003EA7A                 lea     (unk_282A54).l,a2
ROM:0003EA80
ROM:0003EA80 loc_3EA80:
ROM:0003EA80                 movea.w #$70D1,a1
ROM:0003EA84                 adda.w  $72(a6),a1
ROM:0003EA88                 move.b  #4,d1
ROM:0003EA8C                 jsr     FixRelated5
ROM:0003EA92                 move.w  #8,$70(a6)
ROM:0003EA98                 not.b   $5C(a6)
ROM:0003EA9C                 subq.w  #1,$30(a6)
ROM:0003EAA0
ROM:0003EAA0 locret_3EAA0:
ROM:0003EAA0                 rts
ROM:0003EAA2
ROM:0003EAA2
ROM:0003EAA2 loc_3EAA2:
ROM:0003EAA2                 move.w  #$1083,d0
ROM:0003EAA6                 jsr     (PlaySFX).l
ROM:0003EAAC                 move.l  #DebugDIPs,d0
ROM:0003EAB2                 jsr     loc_51A44
ROM:0003EAB8                 move.w  #$70CF,d0
ROM:0003EABC                 add.w   $72(a6),d0
ROM:0003EAC0                 move.w  #1,d1
ROM:0003EAC4                 lsl.w   #1,d1
ROM:0003EAC6                 addi.w  #$4B60,d1
ROM:0003EACA                 movem.w d0-d1,($3C0000).l
ROM:0003EAD2                 addi.w  #$20,d0
ROM:0003EAD6                 addq.w  #1,d1
ROM:0003EAD8                 movem.w d0-d1,($3C0000).l
ROM:0003EAE0                 subi.w  #$1F,d0
ROM:0003EAE4                 addi.w  #$F,d1
ROM:0003EAE8                 movem.w d0-d1,($3C0000).l
ROM:0003EAF0                 addi.w  #$20,d0
ROM:0003EAF4                 addq.w  #1,d1
ROM:0003EAF6                 movem.w d0-d1,($3C0000).l
ROM:0003EAFE                 subi.w  #$21,d0
ROM:0003EB02                 cmpi.w  #$A,$74(a6)
ROM:0003EB08                 bcc.w   loc_3EB64
ROM:0003EB0C                 move.w  $76(a6),d0
ROM:0003EB10                 jsr     sub_2AD36
ROM:0003EB16                 bcs.w   loc_3EB64
ROM:0003EB1A                 move.w  #$710F,d0
ROM:0003EB1E                 add.w   $72(a6),d0
ROM:0003EB22                 move.w  #0,d1
ROM:0003EB26                 lsl.w   #1,d1
ROM:0003EB28                 addi.w  #$4B60,d1
ROM:0003EB2C                 movem.w d0-d1,($3C0000).l
ROM:0003EB34                 addi.w  #$20,d0
ROM:0003EB38                 addq.w  #1,d1
ROM:0003EB3A                 movem.w d0-d1,($3C0000).l
ROM:0003EB42                 subi.w  #$1F,d0
ROM:0003EB46                 addi.w  #$F,d1
ROM:0003EB4A                 movem.w d0-d1,($3C0000).l
ROM:0003EB52                 addi.w  #$20,d0
ROM:0003EB56                 addq.w  #1,d1
ROM:0003EB58                 movem.w d0-d1,($3C0000).l
ROM:0003EB60                 subi.w  #$21,d0
ROM:0003EB64
ROM:0003EB64 loc_3EB64:
ROM:0003EB64
ROM:0003EB64                 movea.w #$70D1,a1
ROM:0003EB68                 adda.w  $72(a6),a1
ROM:0003EB6C                 move.b  #4,d1
ROM:0003EB70                 lea     (unk_282A4C).l,a2
ROM:0003EB76                 jsr     FixRelated5
ROM:0003EB7C                 lea     locret_3EB82,a1
ROM:0003EB80                 move.l  a1,(a6)
ROM:0003EB82
ROM:0003EB82 locret_3EB82:
ROM:0003EB82                 rts
ROM:0003EB84
ROM:0003EB84
ROM:0003EB84 loc_3EB84:
ROM:0003EB84                 move.w  #6,$30(a6)
ROM:0003EB8A                 move.w  #0,$70(a6)
ROM:0003EB90                 move.b  #0,$5C(a6)
ROM:0003EB96                 lea     loc_3EB9C,a1
ROM:0003EB9A                 move.l  a1,(a6)
ROM:0003EB9C
ROM:0003EB9C loc_3EB9C:
ROM:0003EB9C                 subq.w  #1,$70(a6)
ROM:0003EBA0                 cmpi.w  #0,$70(a6)
ROM:0003EBA6                 bgt.w   locret_3EBF6
ROM:0003EBAA                 cmpi.w  #0,$30(a6)
ROM:0003EBB0                 bgt.w   loc_3EBBC
ROM:0003EBB4                 lea     loc_3EBF8,a1
ROM:0003EBB8                 move.l  a1,(a6)
ROM:0003EBBA                 rts
ROM:0003EBBC
ROM:0003EBBC
ROM:0003EBBC loc_3EBBC:
ROM:0003EBBC                 cmpi.b  #0,$5C(a6)
ROM:0003EBC2                 bne.w   loc_3EBD0
ROM:0003EBC6                 lea     (unk_282A7C).l,a2
ROM:0003EBCC                 bra.w   loc_3EBD6
ROM:0003EBD0
ROM:0003EBD0
ROM:0003EBD0 loc_3EBD0:
ROM:0003EBD0                 lea     (unk_282A88).l,a2
ROM:0003EBD6
ROM:0003EBD6 loc_3EBD6:
ROM:0003EBD6                 movea.w #$70D1,a1
ROM:0003EBDA                 adda.w  $72(a6),a1
ROM:0003EBDE                 move.b  #4,d1
ROM:0003EBE2                 jsr     FixRelated4
ROM:0003EBE8                 move.w  #8,$70(a6)
ROM:0003EBEE                 not.b   $5C(a6)
ROM:0003EBF2                 subq.w  #1,$30(a6)
ROM:0003EBF6
ROM:0003EBF6 locret_3EBF6:
ROM:0003EBF6                 rts
ROM:0003EBF8
ROM:0003EBF8
ROM:0003EBF8 loc_3EBF8:
ROM:0003EBF8                 movea.w #$70D1,a1
ROM:0003EBFC                 adda.w  $72(a6),a1
ROM:0003EC00                 move.b  #4,d1
ROM:0003EC04                 lea     (unk_282A7C).l,a2
ROM:0003EC0A                 jsr     FixRelated4
ROM:0003EC10                 lea     locret_3EC16,a1
ROM:0003EC14                 move.l  a1,(a6)
ROM:0003EC16
ROM:0003EC16 locret_3EC16:
ROM:0003EC16                 rts
ROM:0003EC18
ROM:0003EC18
ROM:0003EC18 loc_3EC18:
ROM:0003EC18                 move.w  #6,$30(a6)
ROM:0003EC1E                 move.w  #0,$70(a6)
ROM:0003EC24                 move.b  #0,$5C(a6)
ROM:0003EC2A                 lea     loc_3EC30,a1
ROM:0003EC2E                 move.l  a1,(a6)
ROM:0003EC30
ROM:0003EC30 loc_3EC30:
ROM:0003EC30                 subq.w  #1,$70(a6)
ROM:0003EC34                 cmpi.w  #0,$70(a6)
ROM:0003EC3A                 bgt.w   locret_3EC8A
ROM:0003EC3E                 cmpi.w  #0,$30(a6)
ROM:0003EC44                 bgt.w   loc_3EC50
ROM:0003EC48                 lea     loc_3EC8C,a1
ROM:0003EC4C                 move.l  a1,(a6)
ROM:0003EC4E                 rts
ROM:0003EC50
ROM:0003EC50
ROM:0003EC50 loc_3EC50:
ROM:0003EC50                 cmpi.b  #0,$5C(a6)
ROM:0003EC56                 bne.w   loc_3EC64
ROM:0003EC5A                 lea     (unk_282A5C).l,a2
ROM:0003EC60                 bra.w   loc_3EC6A
ROM:0003EC64
ROM:0003EC64
ROM:0003EC64 loc_3EC64:
ROM:0003EC64                 lea     (unk_282A62).l,a2
ROM:0003EC6A
ROM:0003EC6A loc_3EC6A:
ROM:0003EC6A                 movea.w #$70F1,a1
ROM:0003EC6E                 adda.w  $72(a6),a1
ROM:0003EC72                 move.b  #4,d1
ROM:0003EC76                 jsr     FixRelated5
ROM:0003EC7C                 move.w  #8,$70(a6)
ROM:0003EC82                 not.b   $5C(a6)
ROM:0003EC86                 subq.w  #1,$30(a6)
ROM:0003EC8A
ROM:0003EC8A locret_3EC8A:
ROM:0003EC8A                 rts
ROM:0003EC8C
ROM:0003EC8C
ROM:0003EC8C loc_3EC8C:
ROM:0003EC8C                 movea.w #$70F1,a1
ROM:0003EC90                 adda.w  $72(a6),a1
ROM:0003EC94                 move.b  #4,d1
ROM:0003EC98                 lea     (unk_282A5C).l,a2
ROM:0003EC9E                 jsr     FixRelated5
ROM:0003ECA4                 lea     locret_3ECAA,a1
ROM:0003ECA8                 move.l  a1,(a6)
ROM:0003ECAA
ROM:0003ECAA locret_3ECAA:
ROM:0003ECAA                 rts
ROM:0003ECAC
ROM:0003ECAC
ROM:0003ECAC loc_3ECAC:
ROM:0003ECAC                 movea.w #$7068,a1
ROM:0003ECB0                 adda.w  $72(a6),a1
ROM:0003ECB4                 move.w  #$23BA,d0
ROM:0003ECB8                 move.w  #1,d1
ROM:0003ECBC                 move.w  #1,d2
ROM:0003ECC0                 jsr     FixFillBox
ROM:0003ECC6                 movea.w #$7088,a1
ROM:0003ECCA                 adda.w  $72(a6),a1
ROM:0003ECCE                 move.w  #$23BF,d0
ROM:0003ECD2                 move.w  #$F,d1
ROM:0003ECD6                 move.w  #1,d2
ROM:0003ECDA                 jsr     FixFillBox
ROM:0003ECE0                 movea.w #$7268,a1
ROM:0003ECE4                 adda.w  $72(a6),a1
ROM:0003ECE8                 move.w  #$23BB,d0
ROM:0003ECEC                 move.w  #1,d1
ROM:0003ECF0                 move.w  #1,d2
ROM:0003ECF4                 jsr     FixFillBox
ROM:0003ECFA                 movea.w #$7093,a1
ROM:0003ECFE                 adda.w  $72(a6),a1
ROM:0003ED02                 move.w  #$23CC,d0
ROM:0003ED06                 move.w  #1,d1
ROM:0003ED0A                 move.w  #1,d2
ROM:0003ED0E                 jsr     FixFillBox
ROM:0003ED14                 movea.w #$70B3,a1
ROM:0003ED18                 adda.w  $72(a6),a1
ROM:0003ED1C                 move.w  #$23CD,d0
ROM:0003ED20                 move.w  #$D,d1
ROM:0003ED24                 move.w  #1,d2
ROM:0003ED28                 jsr     FixFillBox
ROM:0003ED2E                 movea.w #$7253,a1
ROM:0003ED32                 adda.w  $72(a6),a1
ROM:0003ED36                 move.w  #$23CE,d0
ROM:0003ED3A                 move.w  #1,d1
ROM:0003ED3E                 move.w  #1,d2
ROM:0003ED42                 jsr     FixFillBox
ROM:0003ED48                 movea.w #$707B,a1
ROM:0003ED4C                 adda.w  $72(a6),a1
ROM:0003ED50                 move.w  #$23BC,d0
ROM:0003ED54                 move.w  #1,d1
ROM:0003ED58                 move.w  #1,d2
ROM:0003ED5C                 jsr     FixFillBox
ROM:0003ED62                 movea.w #$709B,a1
ROM:0003ED66                 adda.w  $72(a6),a1
ROM:0003ED6A                 move.w  #$23CB,d0
ROM:0003ED6E                 move.w  #$F,d1
ROM:0003ED72                 move.w  #1,d2
ROM:0003ED76                 jsr     FixFillBox
ROM:0003ED7C                 movea.w #$727B,a1
ROM:0003ED80                 adda.w  $72(a6),a1
ROM:0003ED84                 move.w  #$23BD,d0
ROM:0003ED88                 move.w  #1,d1
ROM:0003ED8C                 move.w  #1,d2
ROM:0003ED90                 jsr     FixFillBox
ROM:0003ED96                 movea.w #$7069,a1
ROM:0003ED9A                 adda.w  $72(a6),a1
ROM:0003ED9E                 move.w  #$23BE,d0
ROM:0003EDA2                 move.w  #1,d1
ROM:0003EDA6                 move.w  #$12,d2
ROM:0003EDAA                 jsr     FixFillBox
ROM:0003EDB0                 movea.w #$7269,a1
ROM:0003EDB4                 adda.w  $72(a6),a1
ROM:0003EDB8                 move.w  #$23CA,d0
ROM:0003EDBC                 move.w  #1,d1
ROM:0003EDC0                 move.w  #$12,d2
ROM:0003EDC4                 jsr     FixFillBox
ROM:0003EDCA                 jmp     (SetDying).l
ROM:0003EDD0
ROM:0003EDD0                 rts
ROM:0003EDD2
ROM:0003EDD2                 move.b  (byte_10E214).l,d0
ROM:0003EDD8                 btst    #5,d0
ROM:0003EDDC                 bne.w   loc_3EDE8
ROM:0003EDE0                 clr.b   $8A(a6)
ROM:0003EDE4                 bra.w   loc_3EDF4
ROM:0003EDE8
ROM:0003EDE8
ROM:0003EDE8 loc_3EDE8:
ROM:0003EDE8                 move.b  #1,$8A(a6)
ROM:0003EDEE                 ori     #$11,ccr
ROM:0003EDF2                 rts
ROM:0003EDF4
ROM:0003EDF4
ROM:0003EDF4 loc_3EDF4:
ROM:0003EDF4                 move.b  (byte_10E21A).l,d0
ROM:0003EDFA                 btst    #5,d0
ROM:0003EDFE                 bne.w   loc_3EE10
ROM:0003EE02                 clr.b   $8A(a6)
ROM:0003EE06                 andi    #$EE,ccr
ROM:0003EE0A                 rts
ROM:0003EE0C
ROM:0003EE0C                 bra.w   locret_3EE1C
ROM:0003EE10
ROM:0003EE10
ROM:0003EE10 loc_3EE10:
ROM:0003EE10                 move.b  #1,$8A(a6)
ROM:0003EE16                 ori     #$11,ccr
ROM:0003EE1A                 rts
ROM:0003EE1C
ROM:0003EE1C
ROM:0003EE1C locret_3EE1C:
ROM:0003EE1C                 rts
ROM:0003EE1E
ROM:0003EE1E                 movea.l 8(a6),a1
ROM:0003EE22                 move.b  $10(a6),d0
ROM:0003EE26                 cmp.b   $10(a1),d0
ROM:0003EE2A                 bcs.w   loc_3EE34
ROM:0003EE2E                 andi    #$EE,ccr
ROM:0003EE32                 rts
ROM:0003EE34
ROM:0003EE34
ROM:0003EE34 loc_3EE34:
ROM:0003EE34                 ori     #$11,ccr
ROM:0003EE38                 rts
ROM:0003EE3A
ROM:0003EE3A
ROM:0003EE3A
ROM:0003EE3A
