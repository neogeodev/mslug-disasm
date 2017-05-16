ROM:0007C89A ProcSmoke1:
ROM:0007C89A                 jsr     PositionRelated
ROM:0007C8A0                 jsr     Animate
ROM:0007C8A6                 bcc.w   locret_7C8B0
ROM:0007C8AA                 lea     loc_7C65C,a1
ROM:0007C8AE                 move.l  a1,(a6)
ROM:0007C8B0
ROM:0007C8B0 locret_7C8B0:
ROM:0007C8B0                 rts
ROM:0007C8B2
ROM:0007C8B2
ROM:0007C8B2 loc_7C8B2:
ROM:0007C8B2                 move.w  #8,d1
ROM:0007C8B6                 jsr     (sub_236E).l
ROM:0007C8BC                 move.w  #$4000,d0
ROM:0007C8C0                 jsr     sub_28134
ROM:0007C8C6                 andi.w  #$FFE3,$38(a6)
ROM:0007C8CC                 ori.w   #$14,$38(a6)
ROM:0007C8D2                 jsr     ClearObjStuff
ROM:0007C8D8                 lea     (off_29E440).l,a0
ROM:0007C8DE                 jsr     ChangeAnimation
ROM:0007C8E4                 lea     loc_7C8EA,a1
ROM:0007C8E8                 move.l  a1,(a6)
ROM:0007C8EA
ROM:0007C8EA loc_7C8EA:
ROM:0007C8EA                 jsr     ObjectRelated
ROM:0007C8F0                 jsr     Animate
ROM:0007C8F6                 bcc.w   loc_7C900
ROM:0007C8FA                 lea     loc_7C65C,a1
ROM:0007C8FE                 move.l  a1,(a6)
ROM:0007C900
ROM:0007C900 loc_7C900:
ROM:0007C900                 movea.l #$FFFFFFFF,a0
ROM:0007C906                 jsr     CheckObjectOOB?
ROM:0007C90C                 bcc.w   locret_7C916
ROM:0007C910                 lea     loc_7C65C,a1
ROM:0007C914                 move.l  a1,(a6)
ROM:0007C916
ROM:0007C916 locret_7C916:
ROM:0007C916                 rts
ROM:0007C918
ROM:0007C918                 movea.l $C(a6),a0
ROM:0007C91C                 movea.l $C(a0),a0
ROM:0007C920                 tst.b   $20(a0)
ROM:0007C924                 bne.w   loc_7C966
ROM:0007C928                 move.w  #$1065,d0
ROM:0007C92C                 jsr     (PlaySFX).l
ROM:0007C932                 lea     loc_7C664,a1
ROM:0007C936                 jsr     (SpawnObj).l
ROM:0007C93C                 jsr     InitSamePositions
ROM:0007C942                 move.w  $72(a6),$72(a0)
ROM:0007C948                 move.w  $70(a6),d1
ROM:0007C94C                 add.w   d1,d1
ROM:0007C94E                 add.w   d1,d1
ROM:0007C950                 lea     (unk_2DF888).l,a1
ROM:0007C956                 move.w  (a1,d1.w),d0
ROM:0007C95A                 add.w   d0,$22(a0)
ROM:0007C95E                 move.w  2(a1,d1.w),d0
ROM:0007C962                 add.w   d0,$24(a0)
ROM:0007C966
ROM:0007C966 loc_7C966:
ROM:0007C966                 lea     loc_7C8B2,a1
ROM:0007C96A                 jsr     (SpawnObj).l
ROM:0007C970                 jsr     InitSamePositions
ROM:0007C976                 move.w  $70(a6),d1
ROM:0007C97A                 add.w   d1,d1
ROM:0007C97C                 add.w   d1,d1
ROM:0007C97E                 lea     (unk_2DF888).l,a1
ROM:0007C984                 move.w  (a1,d1.w),d0
ROM:0007C988                 add.w   d0,$22(a0)
ROM:0007C98C                 move.w  2(a1,d1.w),d0
ROM:0007C990                 add.w   d0,$24(a0)
ROM:0007C994                 rts
ROM:0007C996
ROM:0007C996                 jsr     GetRand2?
ROM:0007C99C                 andi.l  #7,d0
ROM:0007C9A2                 movea.l #off_2DF7E2,a0
ROM:0007C9A8                 lsl.w   #2,d0
ROM:0007C9AA                 movea.l (a0,d0.w),a0
ROM:0007C9AE                 cmpa.l  #$FFFFFFFF,a0
ROM:0007C9B4                 beq.w   loc_7C9BE
ROM:0007C9B8                 jsr     ChangeAnimation
ROM:0007C9BE
ROM:0007C9BE loc_7C9BE:
ROM:0007C9BE                 move.w  #$A,d1
ROM:0007C9C2                 jsr     (sub_236E).l
ROM:0007C9C8                 jsr     GetRand2?
ROM:0007C9CE                 move.w  d0,d3
ROM:0007C9D0                 andi.l  #$3E,d0
ROM:0007C9D6                 subi.w  #$20,d0
ROM:0007C9DA                 andi.w  #$FF,d0
ROM:0007C9DE                 add.w   d0,d0
ROM:0007C9E0                 lea     (off_2C072C).l,a1
ROM:0007C9E6                 move.w  (a1,d0.w),d1
ROM:0007C9EA                 lea     (unk_2C07AC).l,a1
ROM:0007C9F0                 move.w  (a1,d0.w),d2
ROM:0007C9F4                 andi.w  #7,d3
ROM:0007C9F8                 addq.w  #1,d3
ROM:0007C9FA                 muls.w  d3,d1
ROM:0007C9FC                 asl.w   #2,d2
ROM:0007C9FE                 move.w  d1,$2A(a6)
ROM:0007CA02                 move.w  d2,$28(a6)
ROM:0007CA06                 jsr     GetRand2?
ROM:0007CA0C                 andi.w  #3,d0
ROM:0007CA10                 addq.w  #2,d0
ROM:0007CA12                 move.w  $28(a6),d1
ROM:0007CA16                 muls.w  d1,d0
ROM:0007CA18                 asr.w   #1,d0
ROM:0007CA1A                 move.w  d0,$28(a6)
ROM:0007CA1E                 jsr     GetRand2?
ROM:0007CA24                 andi.w  #3,d0
ROM:0007CA28                 addq.w  #2,d0
ROM:0007CA2A                 move.w  $2A(a6),d1
ROM:0007CA2E                 muls.w  d1,d0
ROM:0007CA30                 asr.w   #1,d0
ROM:0007CA32                 move.w  d0,$2A(a6)
ROM:0007CA36                 lea     loc_7CA3C,a1
ROM:0007CA3A                 move.l  a1,(a6)
ROM:0007CA3C
ROM:0007CA3C loc_7CA3C:
ROM:0007CA3C                 jsr     sub_27D50
ROM:0007CA42                 jsr     Animate
ROM:0007CA48                 movea.l #$FFFFFFFF,a0
ROM:0007CA4E                 jsr     CheckObjectOOB?
ROM:0007CA54                 bcc.w   locret_7CA5E
ROM:0007CA58                 lea     loc_7C65C,a1
ROM:0007CA5C                 move.l  a1,(a6)
ROM:0007CA5E
ROM:0007CA5E locret_7CA5E:
ROM:0007CA5E                 rts
ROM:0007CA60
ROM:0007CA60                 lea     ($77FD6).l,a1
ROM:0007CA66                 jsr     (SpawnObj).l
ROM:0007CA6C                 jsr     InitSamePositions
ROM:0007CA72                 subi.w  #$60,$22(a0)
ROM:0007CA78                 subi.w  #8,$24(a0)
ROM:0007CA7E                 lea     (unk_2DF73E).l,a1
ROM:0007CA84                 jsr     SpawnDebris?
ROM:0007CA8A                 subi.w  #$60,$22(a0)
ROM:0007CA90                 subi.w  #8,$24(a0)
ROM:0007CA96                 lea     (off_2DF762).l,a1
ROM:0007CA9C                 jsr     SpawnDebris?
ROM:0007CAA2                 subi.w  #$60,$22(a0)
ROM:0007CAA8                 subi.w  #8,$24(a0)
ROM:0007CAAE                 rts
ROM:0007CAB0
ROM:0007CAB0                 lea     (unk_2DF786).l,a1
ROM:0007CAB6                 jsr     SpawnDebris?
ROM:0007CABC                 subi.w  #$40,$22(a0)
ROM:0007CAC2                 subi.w  #$C,$24(a0)
ROM:0007CAC8                 lea     (unk_2DF73E).l,a1
ROM:0007CACE                 jsr     SpawnDebris?
ROM:0007CAD4                 subi.w  #$40,$22(a0)
ROM:0007CADA                 subi.w  #$C,$24(a0)
ROM:0007CAE0                 lea     (off_2DF762).l,a1
ROM:0007CAE6                 jsr     SpawnDebris?
ROM:0007CAEC                 subi.w  #$40,$22(a0)
ROM:0007CAF2                 subi.w  #$C,$24(a0)
ROM:0007CAF8                 rts
ROM:0007CAFA
ROM:0007CAFA                 lea     (unk_2DF786).l,a1
ROM:0007CB00                 jsr     SpawnDebris?
ROM:0007CB06                 subi.w  #$28,$22(a0)
ROM:0007CB0C                 subi.w  #$10,$24(a0)
ROM:0007CB12                 lea     (unk_2DF750).l,a1
ROM:0007CB18                 jsr     SpawnDebris?
ROM:0007CB1E                 subi.w  #$28,$22(a0)
ROM:0007CB24                 subi.w  #$10,$24(a0)
ROM:0007CB2A                 lea     (off_2DF774).l,a1
ROM:0007CB30                 jsr     SpawnDebris?
ROM:0007CB36                 subi.w  #$28,$22(a0)
ROM:0007CB3C                 subi.w  #$10,$24(a0)
ROM:0007CB42                 rts
ROM:0007CB44
ROM:0007CB44                 lea     (unk_2DF786).l,a1
ROM:0007CB4A                 jsr     SpawnDebris?
ROM:0007CB50                 subi.w  #$18,$22(a0)
ROM:0007CB56                 subi.w  #$10,$24(a0)
ROM:0007CB5C                 lea     (unk_2DF750).l,a1
ROM:0007CB62                 jsr     SpawnDebris?
ROM:0007CB68                 subi.w  #$18,$22(a0)
ROM:0007CB6E                 subi.w  #$10,$24(a0)
ROM:0007CB74                 lea     (off_2DF774).l,a1
ROM:0007CB7A                 jsr     SpawnDebris?
ROM:0007CB80                 subi.w  #$18,$22(a0)
ROM:0007CB86                 subi.w  #$10,$24(a0)
ROM:0007CB8C                 rts
ROM:0007CB8E
ROM:0007CB8E                 lea     (unk_2DF786).l,a1
ROM:0007CB94                 jsr     SpawnDebris?
ROM:0007CB9A                 subi.w  #8,$22(a0)
ROM:0007CBA0                 subi.w  #$18,$24(a0)
ROM:0007CBA6                 lea     (unk_2DF750).l,a1
ROM:0007CBAC                 jsr     SpawnDebris?
ROM:0007CBB2                 subi.w  #8,$22(a0)
ROM:0007CBB8                 subi.w  #$18,$24(a0)
ROM:0007CBBE                 lea     (off_2DF774).l,a1
ROM:0007CBC4                 jsr     SpawnDebris?
ROM:0007CBCA                 subi.w  #8,$22(a0)
ROM:0007CBD0                 subi.w  #$18,$24(a0)
ROM:0007CBD6                 rts
ROM:0007CBD8
ROM:0007CBD8                 lea     (unk_2DF786).l,a1
ROM:0007CBDE                 jsr     SpawnDebris?
ROM:0007CBE4                 addi.w  #$10,$22(a0)
ROM:0007CBEA                 subi.w  #$1C,$24(a0)
ROM:0007CBF0                 lea     (unk_2DF750).l,a1
ROM:0007CBF6                 jsr     SpawnDebris?
ROM:0007CBFC                 addi.w  #$10,$22(a0)
ROM:0007CC02                 subi.w  #$1C,$24(a0)
ROM:0007CC08                 lea     (off_2DF774).l,a1
ROM:0007CC0E                 jsr     SpawnDebris?
ROM:0007CC14                 addi.w  #$10,$22(a0)
ROM:0007CC1A                 subi.w  #$1C,$24(a0)
ROM:0007CC20                 rts
ROM:0007CC22
ROM:0007CC22                 lea     (unk_2DF786).l,a1
ROM:0007CC28                 jsr     SpawnDebris?
ROM:0007CC2E                 addi.w  #$20,$22(a0)
ROM:0007CC34                 subi.w  #$20,$24(a0)
ROM:0007CC3A                 lea     (unk_2DF750).l,a1
ROM:0007CC40                 jsr     SpawnDebris?
ROM:0007CC46                 addi.w  #$20,$22(a0)
ROM:0007CC4C                 subi.w  #$20,$24(a0)
ROM:0007CC52                 lea     (off_2DF774).l,a1
ROM:0007CC58                 jsr     SpawnDebris?
ROM:0007CC5E                 addi.w  #$20,$22(a0)
ROM:0007CC64                 subi.w  #$20,$24(a0)
ROM:0007CC6A                 rts
ROM:0007CC6C
ROM:0007CC6C                 lea     (unk_2DF786).l,a1
ROM:0007CC72                 jsr     SpawnDebris?
ROM:0007CC78                 addi.w  #$30,$22(a0)
ROM:0007CC7E                 subi.w  #$20,$24(a0)
ROM:0007CC84                 lea     (unk_2DF750).l,a1
ROM:0007CC8A                 jsr     SpawnDebris?
ROM:0007CC90                 addi.w  #$30,$22(a0)
ROM:0007CC96                 subi.w  #$20,$24(a0)
ROM:0007CC9C                 lea     (off_2DF774).l,a1
ROM:0007CCA2                 jsr     SpawnDebris?
ROM:0007CCA8                 addi.w  #$30,$22(a0)
ROM:0007CCAE                 subi.w  #$20,$24(a0)
ROM:0007CCB4                 rts
ROM:0007CCB6
ROM:0007CCB6                 lea     ($77FD6).l,a1
ROM:0007CCBC                 jsr     (SpawnObj).l
ROM:0007CCC2                 jsr     InitSamePositions
ROM:0007CCC8                 addi.w  #$48,$22(a0)
ROM:0007CCCE                 subi.w  #$20,$24(a0)
ROM:0007CCD4                 lea     (off_2DF762).l,a1
ROM:0007CCDA                 jsr     SpawnDebris?
ROM:0007CCE0                 addi.w  #$48,$22(a0)
ROM:0007CCE6                 subi.w  #$20,$24(a0)
ROM:0007CCEC                 lea     (unk_2DF798).l,a1
ROM:0007CCF2                 jsr     SpawnDebris?
ROM:0007CCF8                 addi.w  #$48,$22(a0)
ROM:0007CCFE                 subi.w  #$20,$24(a0)
ROM:0007CD04                 rts
ROM:0007CD06
ROM:0007CD06                 lea     loc_7CE14,a1
ROM:0007CD0A                 jsr     (SpawnObj).l
ROM:0007CD10                 jsr     InitSamePositions
ROM:0007CD16                 subi.w  #$80,$22(a0)
ROM:0007CD1C                 subi.w  #$20,$24(a0)
ROM:0007CD22                 rts
ROM:0007CD24
ROM:0007CD24                 lea     loc_7CE28,a1
ROM:0007CD28                 jsr     (SpawnObj).l
ROM:0007CD2E                 jsr     InitSamePositions
ROM:0007CD34                 subi.w  #$58,$22(a0)
ROM:0007CD3A                 subi.w  #$28,$24(a0)
ROM:0007CD40                 rts
ROM:0007CD42
ROM:0007CD42                 lea     loc_7CE28,a1
ROM:0007CD46                 jsr     (SpawnObj).l
ROM:0007CD4C                 jsr     InitSamePositions
ROM:0007CD52                 subi.w  #$48,$22(a0)
ROM:0007CD58                 subi.w  #$38,$24(a0)
ROM:0007CD5E                 rts
ROM:0007CD60
ROM:0007CD60                 lea     loc_7CE28,a1
ROM:0007CD64                 jsr     (SpawnObj).l
ROM:0007CD6A                 jsr     InitSamePositions
ROM:0007CD70                 subi.w  #$38,$22(a0)
ROM:0007CD76                 subi.w  #$38,$24(a0)
ROM:0007CD7C                 rts
ROM:0007CD7E
ROM:0007CD7E                 lea     loc_7CE28,a1
ROM:0007CD82                 jsr     (SpawnObj).l
ROM:0007CD88                 jsr     InitSamePositions
ROM:0007CD8E                 subi.w  #$28,$22(a0)
ROM:0007CD94                 subi.w  #$38,$24(a0)
ROM:0007CD9A                 rts
ROM:0007CD9C
ROM:0007CD9C                 lea     loc_7CE28,a1
ROM:0007CDA0                 jsr     (SpawnObj).l
ROM:0007CDA6                 jsr     InitSamePositions
ROM:0007CDAC                 subi.w  #8,$22(a0)
ROM:0007CDB2                 subi.w  #$38,$24(a0)
ROM:0007CDB8                 rts
ROM:0007CDBA
ROM:0007CDBA                 lea     loc_7CE28,a1
ROM:0007CDBE                 jsr     (SpawnObj).l
ROM:0007CDC4                 jsr     InitSamePositions
ROM:0007CDCA                 addi.w  #8,$22(a0)
ROM:0007CDD0                 subi.w  #$38,$24(a0)
ROM:0007CDD6                 rts
ROM:0007CDD8
ROM:0007CDD8                 lea     loc_7CE28,a1
ROM:0007CDDC                 jsr     (SpawnObj).l
ROM:0007CDE2                 jsr     InitSamePositions
ROM:0007CDE8                 addi.w  #8,$22(a0)
ROM:0007CDEE                 subi.w  #$38,$24(a0)
ROM:0007CDF4                 rts
ROM:0007CDF6
ROM:0007CDF6                 lea     loc_7CE3C,a1
ROM:0007CDFA                 jsr     (SpawnObj).l
ROM:0007CE00                 jsr     InitSamePositions
ROM:0007CE06                 addi.w  #$20,$22(a0)
ROM:0007CE0C                 subi.w  #$38,$24(a0)
ROM:0007CE12                 rts
ROM:0007CE14
ROM:0007CE14
ROM:0007CE14 loc_7CE14:
ROM:0007CE14                 lea     (unk_2E001E).l,a0
ROM:0007CE1A                 move.l  a0,$4C(a6)
ROM:0007CE1E                 jsr     sub_283CA
ROM:0007CE24                 bra.w   loc_7CE4C
ROM:0007CE28
ROM:0007CE28
ROM:0007CE28 loc_7CE28:
ROM:0007CE28
ROM:0007CE28                 lea     (unk_2E0072).l,a0
ROM:0007CE2E                 move.l  a0,$4C(a6)
ROM:0007CE32                 jsr     sub_283CA
ROM:0007CE38                 bra.w   loc_7CE4C
ROM:0007CE3C
ROM:0007CE3C
ROM:0007CE3C loc_7CE3C:
ROM:0007CE3C                 lea     (unk_2E00C6).l,a0
ROM:0007CE42                 move.l  a0,$4C(a6)
ROM:0007CE46                 jsr     sub_283CA
ROM:0007CE4C
ROM:0007CE4C loc_7CE4C:
ROM:0007CE4C
ROM:0007CE4C                 move.w  #$122,d1
ROM:0007CE50                 jsr     (sub_236E).l
ROM:0007CE56                 jsr     ClearObjStuff
ROM:0007CE5C                 move.w  #$F000,d0
ROM:0007CE60                 jsr     sub_28134
ROM:0007CE66                 andi.w  #$FFE3,$38(a6)
ROM:0007CE6C                 ori.w   #$10,$38(a6)
ROM:0007CE72                 lea     (off_2DFEF4).l,a0
ROM:0007CE78                 jsr     ChangeAnimation
ROM:0007CE7E                 jsr     Animate
ROM:0007CE84                 jsr     loc_283D8
ROM:0007CE8A                 jmp     (SetDying).l
ROM:0007CE90
ROM:0007CE90                 rts
ROM:0007CE92
ROM:0007CE92                 lea     (off_29856C).l,a2
ROM:0007CE98                 bra.w   loc_7CEDE
ROM:0007CE9C
ROM:0007CE9C                 lea     (off_298580).l,a2
ROM:0007CEA2                 bra.w   loc_7CEDE
ROM:0007CEA6
ROM:0007CEA6                 lea     (off_298594).l,a2
ROM:0007CEAC                 bra.w   loc_7CEDE
ROM:0007CEB0
ROM:0007CEB0                 lea     (off_2985A8).l,a2
ROM:0007CEB6                 bra.w   loc_7CEDE
ROM:0007CEBA
ROM:0007CEBA                 lea     (off_2985BC).l,a2
ROM:0007CEC0                 bra.w   loc_7CEDE
ROM:0007CEC4
ROM:0007CEC4                 lea     (off_2985D0).l,a2
ROM:0007CECA                 bra.w   loc_7CEDE
ROM:0007CECE
ROM:0007CECE                 lea     (off_2985E4).l,a2
ROM:0007CED4                 bra.w   loc_7CEDE
ROM:0007CED8
ROM:0007CED8                 lea     (off_2985F8).l,a2
ROM:0007CEDE
ROM:0007CEDE loc_7CEDE:
ROM:0007CEDE
ROM:0007CEDE                 jsr     InitObjectGFX?
ROM:0007CEE4                 rts
ROM:0007CEE6
ROM:0007CEE6                 movea.l 8(a6),a1
ROM:0007CEEA                 move.b  $10(a6),d0
ROM:0007CEEE                 cmp.b   $10(a1),d0
ROM:0007CEF2                 bcs.w   loc_7CEFC
ROM:0007CEF6                 andi    #$EE,ccr
ROM:0007CEFA                 rts
ROM:0007CEFC
ROM:0007CEFC
ROM:0007CEFC loc_7CEFC:
ROM:0007CEFC                 ori     #$11,ccr
ROM:0007CF00                 rts
ROM:0007CF02
ROM:0007CF02                 move.w  #0,$70(a6)
ROM:0007CF08                 bra.w   loc_7CF12
ROM:0007CF0C
ROM:0007CF0C                 move.w  #1,$70(a6)
ROM:0007CF12
ROM:0007CF12 loc_7CF12:
ROM:0007CF12                 move.w  #$4B,d1
ROM:0007CF16                 jsr     (sub_236E).l
ROM:0007CF1C                 move.w  #$A,$1C(a6)
ROM:0007CF22                 jsr     sub_138FE
ROM:0007CF28                 moveq   #0,d0
ROM:0007CF2A                 move.b  d0,$20(a6)
ROM:0007CF2E                 move.b  d0,$21(a6)
ROM:0007CF32                 move.b  $9C(a6),$84(a6)
ROM:0007CF38                 lea     (off_2BDA80).l,a0
ROM:0007CF3E                 jsr     GetParamDifficulty
ROM:0007CF44                 move.w  d0,$66(a6)
ROM:0007CF48                 jsr     ClearObjStuff
ROM:0007CF4E                 move.b  $9A(a6),$3A(a6)
ROM:0007CF54                 lea     loc_7CF5C,a1
ROM:0007CF58                 move.l  a1,(a6)
ROM:0007CF5A                 rts
ROM:0007CF5C
ROM:0007CF5C
ROM:0007CF5C loc_7CF5C:
ROM:0007CF5C                 jsr     sub_5E7C0
ROM:0007CF62                 move.w  #$4001,d0
ROM:0007CF66                 jsr     sub_28134
ROM:0007CF6C                 andi.w  #$FFE3,$38(a6)
ROM:0007CF72                 ori.w   #$C,$38(a6)
ROM:0007CF78                 lea     $7D4AA,a1
ROM:0007CF7C                 jsr     (SpawnObj).l
ROM:0007CF82                 jsr     InitSamePositions
ROM:0007CF88                 lea     $7D520,a1
ROM:0007CF8C                 jsr     (SpawnObj).l
ROM:0007CF92                 jsr     InitSamePositions
ROM:0007CF98                 moveq   #0,d0
ROM:0007CF9A                 move.b  d0,$72(a6)
ROM:0007CF9E                 move.w  d0,$74(a6)
ROM:0007CFA2                 lea     (unk_2E04D6).l,a0
ROM:0007CFA8                 jsr     ChangeAnimation
ROM:0007CFAE                 lea     loc_7CFB4,a1
ROM:0007CFB2                 move.l  a1,(a6)
ROM:0007CFB4
ROM:0007CFB4 loc_7CFB4:
ROM:0007CFB4                 jsr     ObjectRelated
ROM:0007CFBA                 jsr     Animate
ROM:0007CFC0                 tst.w   $70(a6)
ROM:0007CFC4                 bne.w   loc_7CFD6
ROM:0007CFC8                 move.w  (GeoScrollX?).l,d0
ROM:0007CFCE                 cmp.w   $98(a6),d0
ROM:0007CFD2                 blt.w   loc_7CFFC
ROM:0007CFD6
ROM:0007CFD6 loc_7CFD6:
ROM:0007CFD6                 jsr     sub_5E0D4
ROM:0007CFDC                 move.w  $22(a6),d0
ROM:0007CFE0                 sub.w   $22(a0),d0
ROM:0007CFE4                 cmp.w   $98(a6),d0
ROM:0007CFE8                 bgt.w   loc_7CFFC
ROM:0007CFEC                 move.b  #1,$20(a6)
ROM:0007CFF2                 clr.w   $76(a6)
ROM:0007CFF6                 lea     loc_7D056,a1
ROM:0007CFFA                 move.l  a1,(a6)
ROM:0007CFFC
ROM:0007CFFC loc_7CFFC:
ROM:0007CFFC
ROM:0007CFFC                 jsr     CheckShot?
ROM:0007D002                 bcc.w   loc_7D018
ROM:0007D006                 lea     (SoundCodeGunFire).l,a0
ROM:0007D00C                 jsr     SoundRelated_0
ROM:0007D012                 bclr    #3,$13(a6)
ROM:0007D018
ROM:0007D018 loc_7D018:
ROM:0007D018                 jsr     sub_27EBA
ROM:0007D01E                 bcc.w   loc_7D028
ROM:0007D022                 lea     loc_7D3E2,a1
ROM:0007D026                 move.l  a1,(a6)
ROM:0007D028
ROM:0007D028 loc_7D028:
ROM:0007D028                 jsr     CheckIfDead
ROM:0007D02E                 bcc.w   loc_7D038
ROM:0007D032                 lea     loc_7D332,a1
ROM:0007D036                 move.l  a1,(a6)
ROM:0007D038
ROM:0007D038 loc_7D038:
ROM:0007D038                 movea.l #$FFFFFFFF,a0
ROM:0007D03E                 lea     (unk_2E0B5C).l,a0
ROM:0007D044                 jsr     CheckObjectOOB
ROM:0007D04A                 bcc.w   locret_7D054
ROM:0007D04E                 lea     $7DBA2,a1
ROM:0007D052                 move.l  a1,(a6)
ROM:0007D054
ROM:0007D054 locret_7D054:
ROM:0007D054                 rts
ROM:0007D056
ROM:0007D056
ROM:0007D056 loc_7D056:
ROM:0007D056                 jsr     ClearObjStuff
ROM:0007D05C                 move.w  #$FFE0,$28(a6)
ROM:0007D062                 btst    #0,$3A(a6)
ROM:0007D068                 beq.w   loc_7D070
ROM:0007D06C                 neg.w   $28(a6)
ROM:0007D070
ROM:0007D070 loc_7D070:
ROM:0007D070                 move.w  $28(a6),$2C(a6)
ROM:0007D076                 moveq   #0,d0
ROM:0007D078                 move.w  d0,$28(a6)
ROM:0007D07C                 move.b  d0,$72(a6)
ROM:0007D080                 move.w  d0,$74(a6)
ROM:0007D084                 lea     (unk_2E050A).l,a0
ROM:0007D08A                 jsr     ChangeAnimation
ROM:0007D090                 lea     loc_7D096,a1
ROM:0007D094                 move.l  a1,(a6)
ROM:0007D096
ROM:0007D096 loc_7D096:
ROM:0007D096                 jsr     sub_27AFC
ROM:0007D09C                 bcc.w   loc_7D0A6
ROM:0007D0A0                 move.b  #$FF,$72(a6)
ROM:0007D0A6
ROM:0007D0A6 loc_7D0A6:
ROM:0007D0A6                 cmpi.w  #$FC00,$28(a6)
ROM:0007D0AC                 blt.w   loc_7D0BA
ROM:0007D0B0                 cmpi.w  #$400,$28(a6)
ROM:0007D0B6                 blt.w   loc_7D0D2
ROM:0007D0BA
ROM:0007D0BA loc_7D0BA:
ROM:0007D0BA                 clr.w   $2C(a6)
ROM:0007D0BE                 move.w  #$FC00,$28(a6)
ROM:0007D0C4                 btst    #0,$3A(a6)
ROM:0007D0CA                 beq.w   loc_7D0D2
ROM:0007D0CE                 neg.w   $28(a6)
ROM:0007D0D2
ROM:0007D0D2 loc_7D0D2:
ROM:0007D0D2
ROM:0007D0D2                 jsr     Animate
ROM:0007D0D8                 tst.b   $72(a6)
ROM:0007D0DC                 bne.w   loc_7D0FA
ROM:0007D0E0                 move.w  $76(a6),d0
ROM:0007D0E4                 add.w   $28(a6),d0
ROM:0007D0E8                 move.w  d0,$76(a6)
ROM:0007D0EC                 bpl.w   loc_7D0F2
ROM:0007D0F0                 neg.w   d0
ROM:0007D0F2
ROM:0007D0F2 loc_7D0F2:
ROM:0007D0F2                 cmpi.w  #$6000,d0
ROM:0007D0F6                 blt.w   loc_7D11E
ROM:0007D0FA
ROM:0007D0FA loc_7D0FA:
ROM:0007D0FA                 move.b  #2,$20(a6)
ROM:0007D100                 clr.b   $72(a6)
ROM:0007D104                 move.w  $76(a6),d0
ROM:0007D108                 bpl.w   loc_7D10E
ROM:0007D10C                 neg.w   d0
ROM:0007D10E
ROM:0007D10E loc_7D10E:
ROM:0007D10E                 move.w  d0,$78(a6)
ROM:0007D112                 move.w  #$28,$80(a6)
ROM:0007D118                 lea     loc_7D178,a1
ROM:0007D11C                 move.l  a1,(a6)
ROM:0007D11E
ROM:0007D11E loc_7D11E:
ROM:0007D11E                 jsr     CheckShot?
ROM:0007D124                 bcc.w   loc_7D13A
ROM:0007D128                 lea     (SoundCodeGunFire).l,a0
ROM:0007D12E                 jsr     SoundRelated_0
ROM:0007D134                 bclr    #3,$13(a6)
ROM:0007D13A
ROM:0007D13A loc_7D13A:
ROM:0007D13A                 jsr     sub_27EBA
ROM:0007D140                 bcc.w   loc_7D14A
ROM:0007D144                 lea     loc_7D3E2,a1
ROM:0007D148                 move.l  a1,(a6)
ROM:0007D14A
ROM:0007D14A loc_7D14A:
ROM:0007D14A                 jsr     CheckIfDead
ROM:0007D150                 bcc.w   loc_7D15A
ROM:0007D154                 lea     loc_7D332,a1
ROM:0007D158                 move.l  a1,(a6)
ROM:0007D15A
ROM:0007D15A loc_7D15A:
ROM:0007D15A                 movea.l #$FFFFFFFF,a0
ROM:0007D160                 lea     (unk_2E0B5C).l,a0
ROM:0007D166                 jsr     CheckObjectOOB
ROM:0007D16C                 bcc.w   locret_7D176
ROM:0007D170                 lea     $7DBA2,a1
ROM:0007D174                 move.l  a1,(a6)
ROM:0007D176
ROM:0007D176 locret_7D176:
ROM:0007D176                 rts
ROM:0007D178
ROM:0007D178
ROM:0007D178 loc_7D178:
ROM:0007D178
ROM:0007D178                 jsr     ClearObjStuff
ROM:0007D17E                 clr.w   $74(a6)
ROM:0007D182                 move.w  #$109E,d0
ROM:0007D186                 jsr     (SoundRelated4).l
ROM:0007D18C                 lea     (unk_2E04D6).l,a0
ROM:0007D192                 jsr     ChangeAnimation
ROM:0007D198                 lea     loc_7D19E,a1
ROM:0007D19C                 move.l  a1,(a6)
ROM:0007D19E
ROM:0007D19E loc_7D19E:
ROM:0007D19E                 jsr     ObjectRelated
ROM:0007D1A4                 jsr     Animate
ROM:0007D1AA                 tst.b   $9B(a6)
ROM:0007D1AE                 beq.w   loc_7D1D4
ROM:0007D1B2                 cmpi.b  #4,$20(a6)
ROM:0007D1B8                 beq.w   loc_7D1D4
ROM:0007D1BC                 subq.w  #1,$80(a6)
ROM:0007D1C0                 bne.w   loc_7D1D4
ROM:0007D1C4                 move.b  #3,$20(a6)
ROM:0007D1CA                 clr.w   $76(a6)
ROM:0007D1CE                 lea     loc_7D22E,a1
ROM:0007D1D2                 move.l  a1,(a6)
ROM:0007D1D4
ROM:0007D1D4 loc_7D1D4:
ROM:0007D1D4
ROM:0007D1D4                 jsr     CheckShot?
ROM:0007D1DA                 bcc.w   loc_7D1F0
ROM:0007D1DE                 lea     (SoundCodeGunFire).l,a0
ROM:0007D1E4                 jsr     SoundRelated_0
ROM:0007D1EA                 bclr    #3,$13(a6)
ROM:0007D1F0
ROM:0007D1F0 loc_7D1F0:
ROM:0007D1F0                 jsr     sub_27EBA
ROM:0007D1F6                 bcc.w   loc_7D200
ROM:0007D1FA                 lea     loc_7D3E2,a1
ROM:0007D1FE                 move.l  a1,(a6)
ROM:0007D200
ROM:0007D200 loc_7D200:
ROM:0007D200                 jsr     CheckIfDead
ROM:0007D206                 bcc.w   loc_7D210
ROM:0007D20A                 lea     loc_7D332,a1
ROM:0007D20E                 move.l  a1,(a6)
ROM:0007D210
ROM:0007D210 loc_7D210:
ROM:0007D210                 movea.l #$FFFFFFFF,a0
ROM:0007D216                 lea     (unk_2E0B5C).l,a0
ROM:0007D21C                 jsr     CheckObjectOOB
ROM:0007D222                 bcc.w   locret_7D22C
ROM:0007D226                 lea     $7DBA2,a1
ROM:0007D22A                 move.l  a1,(a6)
ROM:0007D22C
ROM:0007D22C locret_7D22C:
ROM:0007D22C                 rts
ROM:0007D22E
ROM:0007D22E
ROM:0007D22E loc_7D22E:
ROM:0007D22E                 jsr     ClearObjStuff
ROM:0007D234                 move.w  #$20,$28(a6)
ROM:0007D23A                 btst    #0,$3A(a6)
ROM:0007D240                 beq.w   loc_7D248
ROM:0007D244                 neg.w   $28(a6)
ROM:0007D248
ROM:0007D248 loc_7D248:
ROM:0007D248                 move.w  $28(a6),$2C(a6)
ROM:0007D24E                 moveq   #0,d0
ROM:0007D250                 move.w  d0,$28(a6)
ROM:0007D254                 move.w  d0,$74(a6)
ROM:0007D258                 lea     (unk_2E057E).l,a0
ROM:0007D25E                 jsr     ChangeAnimation
ROM:0007D264                 lea     loc_7D26A,a1
ROM:0007D268                 move.l  a1,(a6)
ROM:0007D26A
ROM:0007D26A loc_7D26A:
ROM:0007D26A                 jsr     sub_27AFC
ROM:0007D270                 bcc.w   loc_7D280
ROM:0007D274                 move.b  #4,$20(a6)
ROM:0007D27A                 lea     loc_7D178,a1
ROM:0007D27E                 move.l  a1,(a6)
ROM:0007D280
ROM:0007D280 loc_7D280:
ROM:0007D280                 cmpi.w  #$FC00,$28(a6)
ROM:0007D286                 blt.w   loc_7D294
ROM:0007D28A                 cmpi.w  #$400,$28(a6)
ROM:0007D290                 blt.w   loc_7D2AC
ROM:0007D294
ROM:0007D294 loc_7D294:
ROM:0007D294                 clr.w   $2C(a6)
ROM:0007D298                 move.w  #$400,$28(a6)
ROM:0007D29E                 btst    #0,$3A(a6)
ROM:0007D2A4                 beq.w   loc_7D2AC
ROM:0007D2A8                 neg.w   $28(a6)
ROM:0007D2AC
ROM:0007D2AC loc_7D2AC:
ROM:0007D2AC
ROM:0007D2AC                 jsr     Animate
ROM:0007D2B2                 move.w  $76(a6),d0
ROM:0007D2B6                 add.w   $28(a6),d0
ROM:0007D2BA                 move.w  d0,$76(a6)
ROM:0007D2BE                 bpl.w   loc_7D2C4
ROM:0007D2C2                 neg.w   d0
ROM:0007D2C4
ROM:0007D2C4 loc_7D2C4:
ROM:0007D2C4                 cmp.w   $78(a6),d0
ROM:0007D2C8                 blt.w   loc_7D2D8
ROM:0007D2CC                 move.b  #4,$20(a6)
ROM:0007D2D2                 lea     loc_7D178,a1
ROM:0007D2D6                 move.l  a1,(a6)
ROM:0007D2D8
ROM:0007D2D8 loc_7D2D8:
ROM:0007D2D8                 jsr     CheckShot?
ROM:0007D2DE                 bcc.w   loc_7D2F4
ROM:0007D2E2                 lea     (SoundCodeGunFire).l,a0
ROM:0007D2E8                 jsr     SoundRelated_0
ROM:0007D2EE                 bclr    #3,$13(a6)
ROM:0007D2F4
ROM:0007D2F4 loc_7D2F4:
ROM:0007D2F4                 jsr     sub_27EBA
ROM:0007D2FA                 bcc.w   loc_7D304
ROM:0007D2FE                 lea     loc_7D3E2,a1
ROM:0007D302                 move.l  a1,(a6)
ROM:0007D304
ROM:0007D304 loc_7D304:
ROM:0007D304                 jsr     CheckIfDead
ROM:0007D30A                 bcc.w   loc_7D314
ROM:0007D30E                 lea     loc_7D332,a1
ROM:0007D312                 move.l  a1,(a6)
ROM:0007D314
ROM:0007D314 loc_7D314:
ROM:0007D314                 movea.l #$FFFFFFFF,a0
ROM:0007D31A                 lea     (unk_2E0B5C).l,a0
ROM:0007D320                 jsr     CheckObjectOOB
ROM:0007D326                 bcc.w   locret_7D330
ROM:0007D32A                 lea     $7DBA2,a1
ROM:0007D32E                 move.l  a1,(a6)
ROM:0007D330
ROM:0007D330 locret_7D330:
ROM:0007D330                 rts
ROM:0007D332
ROM:0007D332
ROM:0007D332 loc_7D332:
ROM:0007D332
ROM:0007D332                 lea     ($77FD6).l,a1
ROM:0007D338                 jsr     (SpawnObj).l
ROM:0007D33E                 jsr     InitSamePositions
ROM:0007D344                 move.b  #$FF,$20(a6)
ROM:0007D34A                 bclr    #1,$12(a6)
ROM:0007D350                 lea     (unk_2E064A).l,a0
ROM:0007D356                 jsr     ChangeAnimation
ROM:0007D35C                 move.w  #$109E,d0
ROM:0007D360                 jsr     (SoundRelated4).l
ROM:0007D366                 lea     loc_7D36C,a1
ROM:0007D36A                 move.l  a1,(a6)
ROM:0007D36C
ROM:0007D36C loc_7D36C:
ROM:0007D36C                 jsr     ObjectRelated
ROM:0007D372                 jsr     Animate
ROM:0007D378                 bcc.w   loc_7D382
ROM:0007D37C                 lea     loc_7D3B0,a1
ROM:0007D380                 move.l  a1,(a6)
ROM:0007D382
ROM:0007D382 loc_7D382:
ROM:0007D382                 jsr     sub_27EBA
ROM:0007D388                 bcc.w   loc_7D392
ROM:0007D38C                 lea     loc_7D3B0,a1
ROM:0007D390                 move.l  a1,(a6)
ROM:0007D392
ROM:0007D392 loc_7D392:
ROM:0007D392                 movea.l #$FFFFFFFF,a0
ROM:0007D398                 lea     (unk_2E0B5C).l,a0
ROM:0007D39E                 jsr     CheckObjectOOB
ROM:0007D3A4                 bcc.w   locret_7D3AE
ROM:0007D3A8                 lea     $7DBA2,a1
ROM:0007D3AC                 move.l  a1,(a6)
ROM:0007D3AE
ROM:0007D3AE locret_7D3AE:
ROM:0007D3AE                 rts
ROM:0007D3B0
ROM:0007D3B0
ROM:0007D3B0 loc_7D3B0:
ROM:0007D3B0
ROM:0007D3B0                 move.w  #$C000,d0
ROM:0007D3B4                 jsr     sub_28134
ROM:0007D3BA                 andi.w  #$FFE3,$38(a6)
ROM:0007D3C0                 ori.w   #$14,$38(a6)
ROM:0007D3C6                 lea     (unk_2E0348).l,a1
ROM:0007D3CC                 jsr     SpawnDebris?
ROM:0007D3D2                 move.w  #$1033,d0
ROM:0007D3D6                 jsr     (PlaySFX).l
ROM:0007D3DC                 jmp     loc_77F6A
ROM:0007D3E2
ROM:0007D3E2
ROM:0007D3E2 loc_7D3E2:
ROM:0007D3E2
ROM:0007D3E2                 move.b  #0,$21(a6)
ROM:0007D3E8                 move.b  #$80,$20(a6)
ROM:0007D3EE                 bclr    #1,$12(a6)
ROM:0007D3F4                 asr     $28(a6)
ROM:0007D3F8                 move.w  #0,$2C(a6)
ROM:0007D3FE                 move.w  #$FFF0,$2E(a6)
ROM:0007D404                 move.w  #$C000,d0
ROM:0007D408                 jsr     sub_28134
ROM:0007D40E                 andi.w  #$FFE3,$38(a6)
ROM:0007D414                 ori.w   #$1C,$38(a6)
ROM:0007D41A                 lea     (unk_2E075A).l,a0
ROM:0007D420                 jsr     ChangeAnimation
ROM:0007D426                 move.w  #$109E,d0
ROM:0007D42A                 jsr     (SoundRelated4).l
ROM:0007D430                 lea     loc_7D436,a1
ROM:0007D434                 move.l  a1,(a6)
ROM:0007D436
ROM:0007D436 loc_7D436:
ROM:0007D436                 bset    #6,$13(a6)
ROM:0007D43C                 jsr     PositionRelated
ROM:0007D442                 bclr    #6,$13(a6)
ROM:0007D448                 jsr     sub_44048
ROM:0007D44E                 jsr     Animate
ROM:0007D454                 cmpi.w  #$120,$24(a6)
ROM:0007D45A                 bgt.w   loc_7D48C
ROM:0007D45E                 tst.b   $21(a6)
ROM:0007D462                 bne.w   loc_7D48C
ROM:0007D466                 move.b  #$FF,$21(a6)
ROM:0007D46C                 tst.b   $84(a6)
ROM:0007D470                 bne.w   loc_7D48C
ROM:0007D474                 lea     ($78864).l,a1
ROM:0007D47A                 jsr     (SpawnObj).l
ROM:0007D480                 jsr     InitSamePositions
ROM:0007D486                 move.w  #$FFFF,$38(a0)
ROM:0007D48C
ROM:0007D48C loc_7D48C:
ROM:0007D48C
ROM:0007D48C                 movea.l #$FFFFFFFF,a0
ROM:0007D492                 lea     (unk_2E0340).l,a0
ROM:0007D498                 jsr     CheckObjectOOB
ROM:0007D49E                 bcc.w   locret_7D4A8
ROM:0007D4A2                 lea     $7DBA2,a1
ROM:0007D4A6                 move.l  a1,(a6)
ROM:0007D4A8
ROM:0007D4A8 locret_7D4A8:
ROM:0007D4A8                 rts
ROM:0007D4AA
ROM:0007D4AA
ROM:0007D4AA loc_7D4AA:
ROM:0007D4AA                 move.w  #$4B,d1
ROM:0007D4AE                 jsr     (sub_236E).l
ROM:0007D4B4                 move.w  #$A,$1C(a6)
ROM:0007D4BA                 jsr     sub_138FE
ROM:0007D4C0                 jsr     ClearObjStuff
ROM:0007D4C6                 moveq   #0,d0
ROM:0007D4C8                 move.b  d0,$20(a6)
ROM:0007D4CC                 move.b  d0,$21(a6)
ROM:0007D4D0                 move.w  d0,$72(a6)
ROM:0007D4D4                 move.w  #1,$82(a6)
ROM:0007D4DA                 lea     loc_7D6A6,a1
ROM:0007D4DE                 jsr     (SpawnObj).l
ROM:0007D4E4                 jsr     InitSamePositions
ROM:0007D4EA                 lea     loc_7D6B6,a1
ROM:0007D4EE                 jsr     (SpawnObj).l
ROM:0007D4F4                 jsr     InitSamePositions
ROM:0007D4FA                 lea     loc_7D6C6,a1
ROM:0007D4FE                 jsr     (SpawnObj).l
ROM:0007D504                 jsr     InitSamePositions
ROM:0007D50A                 lea     (unk_2E0770).l,a0
ROM:0007D510                 jsr     ChangeAnimation
ROM:0007D516                 lea     loc_7D564,a1
ROM:0007D51A                 move.l  a1,(a6)
ROM:0007D51C                 bra.w   loc_7D564
ROM:0007D520
ROM:0007D520
ROM:0007D520 loc_7D520:
ROM:0007D520                 move.w  #$4B,d1
ROM:0007D524                 jsr     (sub_236E).l
ROM:0007D52A                 move.w  #$A,$1C(a6)
ROM:0007D530                 jsr     sub_138FE
ROM:0007D536                 jsr     ClearObjStuff
ROM:0007D53C                 moveq   #0,d0
ROM:0007D53E                 move.b  d0,$20(a6)
ROM:0007D542                 move.b  d0,$21(a6)
ROM:0007D546                 move.w  #1,$72(a6)
ROM:0007D54C                 move.w  #$FFFF,$82(a6)
ROM:0007D552                 lea     (unk_2E081E).l,a0
ROM:0007D558                 jsr     ChangeAnimation
ROM:0007D55E                 lea     loc_7D564,a1
ROM:0007D562                 move.l  a1,(a6)
ROM:0007D564
ROM:0007D564 loc_7D564:
ROM:0007D564
ROM:0007D564                 jsr     loc_7DC1A
ROM:0007D568                 movea.l $C(a6),a0
ROM:0007D56C                 btst    #7,$5A(a0)
ROM:0007D572                 beq.w   loc_7D57C
ROM:0007D576                 bset    #0,$5A(a6)
ROM:0007D57C
ROM:0007D57C loc_7D57C:
ROM:0007D57C                 jsr     Animate
ROM:0007D582                 movea.l $C(a6),a0
ROM:0007D586                 cmpi.b  #1,$20(a0)
ROM:0007D58C                 bne.w   loc_7D596
ROM:0007D590                 lea     loc_7D5C0,a1
ROM:0007D594                 move.l  a1,(a6)
ROM:0007D596
ROM:0007D596 loc_7D596:
ROM:0007D596                 movea.l $C(a6),a0
ROM:0007D59A                 cmpi.b  #$FF,$20(a0)
ROM:0007D5A0                 beq.w   loc_7D5B8
ROM:0007D5A4                 cmpi.b  #$80,$20(a0)
ROM:0007D5AA                 beq.w   loc_7D5B8
ROM:0007D5AE                 cmpi.b  #$40,$20(a0)
ROM:0007D5B4                 bne.w   locret_7D5BE
ROM:0007D5B8
ROM:0007D5B8 loc_7D5B8:
ROM:0007D5B8
ROM:0007D5B8                 lea     $7DBA8,a1
ROM:0007D5BC                 move.l  a1,(a6)
ROM:0007D5BE
ROM:0007D5BE locret_7D5BE:
ROM:0007D5BE                 rts
ROM:0007D5C0
ROM:0007D5C0
ROM:0007D5C0 loc_7D5C0:
ROM:0007D5C0                 move.w  $72(a6),d0
ROM:0007D5C4                 movea.l #off_2E0456,a0
ROM:0007D5CA                 lsl.w   #2,d0
ROM:0007D5CC                 movea.l (a0,d0.w),a0
ROM:0007D5D0                 cmpa.l  #$FFFFFFFF,a0
ROM:0007D5D6                 beq.w   loc_7D5E0
ROM:0007D5DA                 jsr     ChangeAnimation
ROM:0007D5E0
ROM:0007D5E0 loc_7D5E0:
ROM:0007D5E0                 lea     loc_7D5E6,a1
ROM:0007D5E4                 move.l  a1,(a6)
ROM:0007D5E6
ROM:0007D5E6 loc_7D5E6:
ROM:0007D5E6                 jsr     loc_7DC1A
ROM:0007D5EA                 movea.l $C(a6),a0
ROM:0007D5EE                 btst    #7,$5A(a0)
ROM:0007D5F4                 beq.w   loc_7D5FE
ROM:0007D5F8                 bset    #0,$5A(a6)
ROM:0007D5FE
ROM:0007D5FE loc_7D5FE:
ROM:0007D5FE                 jsr     Animate
ROM:0007D604                 bcc.w   loc_7D60E
ROM:0007D608                 lea     loc_7D638,a1
ROM:0007D60C                 move.l  a1,(a6)
ROM:0007D60E
ROM:0007D60E loc_7D60E:
ROM:0007D60E                 movea.l $C(a6),a0
ROM:0007D612                 cmpi.b  #$FF,$20(a0)
ROM:0007D618                 beq.w   loc_7D630
ROM:0007D61C                 cmpi.b  #$80,$20(a0)
ROM:0007D622                 beq.w   loc_7D630
ROM:0007D626                 cmpi.b  #$40,$20(a0)
ROM:0007D62C                 bne.w   locret_7D636
ROM:0007D630
ROM:0007D630 loc_7D630:
ROM:0007D630
ROM:0007D630                 lea     $7DBA8,a1
ROM:0007D634                 move.l  a1,(a6)
ROM:0007D636
ROM:0007D636 locret_7D636:
ROM:0007D636                 rts
ROM:0007D638
ROM:0007D638
ROM:0007D638 loc_7D638:
ROM:0007D638                 move.w  $72(a6),d0
ROM:0007D63C                 movea.l #off_2E044E,a0
ROM:0007D642                 lsl.w   #2,d0
ROM:0007D644                 movea.l (a0,d0.w),a0
ROM:0007D648                 cmpa.l  #$FFFFFFFF,a0
ROM:0007D64E                 beq.w   loc_7D658
ROM:0007D652                 jsr     ChangeAnimation
ROM:0007D658
ROM:0007D658 loc_7D658:
ROM:0007D658                 lea     loc_7D65E,a1
ROM:0007D65C                 move.l  a1,(a6)
ROM:0007D65E
ROM:0007D65E loc_7D65E:
ROM:0007D65E                 jsr     loc_7DC1A
ROM:0007D662                 movea.l $C(a6),a0
ROM:0007D666                 btst    #7,$5A(a0)
ROM:0007D66C                 beq.w   loc_7D676
ROM:0007D670                 bset    #0,$5A(a6)
ROM:0007D676
ROM:0007D676 loc_7D676:
ROM:0007D676                 jsr     Animate
ROM:0007D67C                 movea.l $C(a6),a0
ROM:0007D680                 cmpi.b  #$FF,$20(a0)
ROM:0007D686                 beq.w   loc_7D69E
ROM:0007D68A                 cmpi.b  #$80,$20(a0)
ROM:0007D690                 beq.w   loc_7D69E
ROM:0007D694                 cmpi.b  #$40,$20(a0)
ROM:0007D69A                 bne.w   locret_7D6A4
ROM:0007D69E
ROM:0007D69E loc_7D69E:
ROM:0007D69E
ROM:0007D69E                 lea     $7DBA8,a1
ROM:0007D6A2                 move.l  a1,(a6)
ROM:0007D6A4
ROM:0007D6A4 locret_7D6A4:
ROM:0007D6A4                 rts
ROM:0007D6A6
ROM:0007D6A6
ROM:0007D6A6 loc_7D6A6:
ROM:0007D6A6                 move.w  #0,$70(a6)
ROM:0007D6AC                 move.w  #$26,$74(a6)
ROM:0007D6B2                 bra.w   loc_7D6D2
ROM:0007D6B6
ROM:0007D6B6
ROM:0007D6B6 loc_7D6B6:
ROM:0007D6B6                 move.w  #1,$70(a6)
ROM:0007D6BC                 move.w  #$2F,$74(a6)
ROM:0007D6C2                 bra.w   loc_7D6D2
ROM:0007D6C6
ROM:0007D6C6
ROM:0007D6C6 loc_7D6C6:
ROM:0007D6C6                 move.w  #2,$70(a6)
ROM:0007D6CC                 move.w  #$38,$74(a6)
ROM:0007D6D2
ROM:0007D6D2 loc_7D6D2:
ROM:0007D6D2
ROM:0007D6D2                 move.w  #$4C,d1
ROM:0007D6D6                 jsr     (sub_236E).l
ROM:0007D6DC                 moveq   #0,d0
ROM:0007D6DE                 move.b  d0,$20(a6)
ROM:0007D6E2                 move.b  d0,$21(a6)
ROM:0007D6E6                 bset    #4,$6B(a6)
ROM:0007D6EC                 move.w  #1,$66(a6)
ROM:0007D6F2                 jsr     ClearObjStuff
ROM:0007D6F8                 jsr     GetRand2?
ROM:0007D6FE                 andi.w  #7,d0
ROM:0007D702                 subq.w  #4,d0
ROM:0007D704                 move.w  d0,$72(a6)
ROM:0007D708                 lea     (unk_2E08AC).l,a0
ROM:0007D70E                 jsr     ChangeAnimation
ROM:0007D714                 lea     loc_7D71A,a1
ROM:0007D718                 move.l  a1,(a6)
ROM:0007D71A
ROM:0007D71A loc_7D71A:
ROM:0007D71A                 jsr     sub_7DBDA
ROM:0007D71E                 jsr     Animate
ROM:0007D724                 movea.l $C(a6),a0
ROM:0007D728                 movea.l $C(a0),a0
ROM:0007D72C                 cmpi.b  #1,$20(a0)
ROM:0007D732                 bne.w   loc_7D73C
ROM:0007D736                 lea     $7D76E,a1
ROM:0007D73A                 move.l  a1,(a6)
ROM:0007D73C
ROM:0007D73C loc_7D73C:
ROM:0007D73C                 cmpi.b  #$FF,$20(a0)
ROM:0007D742                 bne.w   loc_7D74C
ROM:0007D746                 lea     loc_7DBA8,a1
ROM:0007D74A                 move.l  a1,(a6)
ROM:0007D74C
ROM:0007D74C loc_7D74C:
ROM:0007D74C                 cmpi.b  #$80,$20(a0)
ROM:0007D752                 bne.w   loc_7D75C
ROM:0007D756                 lea     loc_7DBA8,a1
ROM:0007D75A                 move.l  a1,(a6)
ROM:0007D75C
ROM:0007D75C loc_7D75C:
ROM:0007D75C                 cmpi.b  #$40,$20(a0)
ROM:0007D762                 bne.w   locret_7D76C
ROM:0007D766                 lea     loc_7DBA8,a1
ROM:0007D76A                 move.l  a1,(a6)
ROM:0007D76C
ROM:0007D76C locret_7D76C:
ROM:0007D76C                 rts
ROM:0007D76E
ROM:0007D76E                 jsr     ClearObjStuff
ROM:0007D774                 clr.w   $36(a6)
ROM:0007D778                 lea     (unk_2E08CC).l,a0
ROM:0007D77E                 jsr     ChangeAnimation
ROM:0007D784                 lea     loc_7D78A,a1
ROM:0007D788                 move.l  a1,(a6)
ROM:0007D78A
ROM:0007D78A loc_7D78A:
ROM:0007D78A                 jsr     sub_7DBDA
ROM:0007D78E                 lea     (off_2E045E).l,a0
ROM:0007D794                 move.w  $70(a6),d0
ROM:0007D798                 add.w   d0,d0
ROM:0007D79A                 add.w   d0,d0
ROM:0007D79C                 movea.l (a0,d0.w),a0
ROM:0007D7A0                 movea.l $C(a6),a1
ROM:0007D7A4                 move.b  $20(a1),d0
ROM:0007D7A8                 andi.w  #$FF,d0
ROM:0007D7AC                 add.w   d0,d0
ROM:0007D7AE                 add.w   d0,d0
ROM:0007D7B0                 move.w  (a0,d0.w),d1
ROM:0007D7B4                 btst    #0,$3A(a6)
ROM:0007D7BA                 beq.w   loc_7D7C0
ROM:0007D7BE                 neg.w   d1
ROM:0007D7C0
ROM:0007D7C0 loc_7D7C0:
ROM:0007D7C0                 add.w   $22(a6),d1
ROM:0007D7C4                 move.w  d1,$22(a6)
ROM:0007D7C8                 move.w  $22(a6),$76(a6)
ROM:0007D7CE                 move.w  2(a0,d0.w),d1
ROM:0007D7D2                 add.w   $24(a6),d1
ROM:0007D7D6                 move.w  d1,$24(a6)
ROM:0007D7DA                 lea     (off_2E03F8).l,a0
ROM:0007D7E0                 move.w  $70(a6),d0
ROM:0007D7E4                 add.w   d0,d0
ROM:0007D7E6                 add.w   d0,d0
ROM:0007D7E8                 movea.l (a0,d0.w),a0
ROM:0007D7EC                 move.b  $20(a1),d0
ROM:0007D7F0                 andi.w  #$FF,d0
ROM:0007D7F4                 add.w   d0,d0
ROM:0007D7F6                 move.w  (a0,d0.w),d1
ROM:0007D7FA                 add.w   $36(a6),d1
ROM:0007D7FE                 move.w  d1,$36(a6)
ROM:0007D802                 lea     (off_2E03E6).l,a0
ROM:0007D808                 move.w  (a0,d0.w),d0
ROM:0007D80C                 btst    #0,$3A(a6)
ROM:0007D812                 beq.w   loc_7D820
ROM:0007D816                 neg.w   d0
ROM:0007D818                 subi.w  #$80,d0
ROM:0007D81C                 andi.w  #$FF,d0
ROM:0007D820
ROM:0007D820 loc_7D820:
ROM:0007D820                 jsr     sub_13C0E
ROM:0007D826                 move.w  d1,$28(a6)
ROM:0007D82A                 move.w  d2,$2A(a6)
ROM:0007D82E                 jsr     sub_7DBB0
ROM:0007D832                 jsr     Animate
ROM:0007D838                 bcc.w   loc_7D842
ROM:0007D83C                 lea     loc_7D898,a1
ROM:0007D840                 move.l  a1,(a6)
ROM:0007D842
ROM:0007D842 loc_7D842:
ROM:0007D842                 movea.l $C(a6),a0
ROM:0007D846                 movea.l $C(a0),a0
ROM:0007D84A                 cmpi.b  #$FF,$20(a0)
ROM:0007D850                 bne.w   loc_7D85A
ROM:0007D854                 lea     loc_7DBA8,a1
ROM:0007D858                 move.l  a1,(a6)
ROM:0007D85A
ROM:0007D85A loc_7D85A:
ROM:0007D85A                 cmpi.b  #$80,$20(a0)
ROM:0007D860                 bne.w   loc_7D86A
ROM:0007D864                 lea     loc_7DBA8,a1
ROM:0007D868                 move.l  a1,(a6)
ROM:0007D86A
ROM:0007D86A loc_7D86A:
ROM:0007D86A                 cmpi.b  #$40,$20(a0)
ROM:0007D870                 bne.w   loc_7D87A
ROM:0007D874                 lea     loc_7DBA8,a1
ROM:0007D878                 move.l  a1,(a6)
ROM:0007D87A
ROM:0007D87A loc_7D87A:
ROM:0007D87A                 move.w  $22(a6),d0
ROM:0007D87E                 sub.w   $76(a6),d0
ROM:0007D882                 bpl.w   loc_7D888
ROM:0007D886                 neg.w   d0
ROM:0007D888
ROM:0007D888 loc_7D888:
ROM:0007D888                 cmpi.w  #$1C,d0
ROM:0007D88C                 blt.w   locret_7D896
ROM:0007D890                 lea     loc_7D898,a1
ROM:0007D894                 move.l  a1,(a6)
ROM:0007D896
ROM:0007D896 locret_7D896:
ROM:0007D896                 rts
ROM:0007D898
ROM:0007D898
ROM:0007D898 loc_7D898:
ROM:0007D898
ROM:0007D898                 jsr     GetRand2?
ROM:0007D89E                 andi.w  #$7F,d0
ROM:0007D8A2                 move.w  $28(a6),d1
ROM:0007D8A6                 asr.w   #5,d1
ROM:0007D8A8                 add.w   d1,d0
ROM:0007D8AA                 move.w  d0,$28(a6)
ROM:0007D8AE                 move.w  $2A(a6),d0
ROM:0007D8B2                 asr.w   #4,d0
ROM:0007D8B4                 move.w  d0,$2A(a6)
ROM:0007D8B8                 move.w  #0,$2C(a6)
ROM:0007D8BE                 move.w  #$FFE0,$2E(a6)
ROM:0007D8C4                 jsr     GetRand2?
ROM:0007D8CA                 andi.w  #3,d0
ROM:0007D8CE                 addq.w  #3,d0
ROM:0007D8D0                 add.w   d0,d0
ROM:0007D8D2                 add.w   d0,d0
ROM:0007D8D4                 lea     (off_2E035A).l,a0
ROM:0007D8DA                 move.l  (a0,d0.w),$5C(a6)
ROM:0007D8E0                 move.w  #$D000,d0
ROM:0007D8E4                 jsr     sub_28134
ROM:0007D8EA                 andi.w  #$FFE3,$38(a6)
ROM:0007D8F0                 ori.w   #$14,$38(a6)
ROM:0007D8F6                 cmpi.w  #2,$70(a6)
ROM:0007D8FC                 bne.w   loc_7D90A
ROM:0007D900                 move.w  #$1061,d0
ROM:0007D904                 jsr     (PlaySFX).l
ROM:0007D90A
ROM:0007D90A loc_7D90A:
ROM:0007D90A                 move.w  #0,$70(a6)
ROM:0007D910                 move.w  #$FFFF,$78(a6)
ROM:0007D916                 lea     (unk_2E094A).l,a0
ROM:0007D91C                 jsr     ChangeAnimation
ROM:0007D922                 lea     loc_7D928,a1
ROM:0007D926                 move.l  a1,(a6)
ROM:0007D928
ROM:0007D928 loc_7D928:
ROM:0007D928
ROM:0007D928
ROM:0007D928                 jsr     PositionRelated
ROM:0007D92E                 jsr     Animate
ROM:0007D934                 tst.w   $78(a6)
ROM:0007D938                 beq.w   loc_7D9E8
ROM:0007D93C                 jsr     CheckShot?
ROM:0007D942                 bcc.w   loc_7D99C
ROM:0007D946                 lea     (SoundCodeGunFire).l,a0
ROM:0007D94C                 jsr     SoundRelated_0
ROM:0007D952                 bclr    #3,$13(a6)
ROM:0007D958                 cmpi.b  #2,$58(a6)
ROM:0007D95E                 beq.w   loc_7D96C
ROM:0007D962                 cmpi.b  #3,$58(a6)
ROM:0007D968                 bne.w   loc_7D99C
ROM:0007D96C
ROM:0007D96C loc_7D96C:
ROM:0007D96C                 lea     (unk_2E0AB0).l,a0
ROM:0007D972                 jsr     ChangeAnimation
ROM:0007D978                 move.l  #unk_2E0376,$5C(a6)
ROM:0007D980                 bset    #3,$13(a6)
ROM:0007D986                 movea.l $50(a6),a0
ROM:0007D98A                 move.w  $28(a0),d0
ROM:0007D98E                 add.w   $28(a6),d0
ROM:0007D992                 move.w  d0,$28(a6)
ROM:0007D996                 move.w  #0,$78(a6)
ROM:0007D99C
ROM:0007D99C loc_7D99C:
ROM:0007D99C
ROM:0007D99C                 tst.w   $78(a6)
ROM:0007D9A0                 beq.w   loc_7D9E8
ROM:0007D9A4                 lea     (off_2E141A).l,a1
ROM:0007D9AA                 move.w  $70(a6),d1
ROM:0007D9AE                 add.w   d1,d1
ROM:0007D9B0                 add.w   d1,d1
ROM:0007D9B2                 movea.l (a1,d1.w),a1
ROM:0007D9B6                 moveq   #0,d1
ROM:0007D9B8
ROM:0007D9B8 loc_7D9B8:
ROM:0007D9B8                 movea.l (a1,d1.w),a0
ROM:0007D9BC                 cmpa.l  #$FFFFFFFF,a0
ROM:0007D9C2                 beq.w   loc_7D9E8
ROM:0007D9C6                 movem.l d1/a1,-(sp)
ROM:0007D9CA                 move.l  a0,$4C(a6)
ROM:0007D9CE                 jsr     sub_283CA
ROM:0007D9D4                 jsr     loc_283D8
ROM:0007D9DA                 movem.l (sp)+,d1/a1
ROM:0007D9DE                 addq.w  #4,d1
ROM:0007D9E0                 btst    #1,$13(a6)
ROM:0007D9E6                 beq.s   loc_7D9B8
ROM:0007D9E8
ROM:0007D9E8 loc_7D9E8:
ROM:0007D9E8
ROM:0007D9E8                 cmpi.w  #$120,$24(a6)
ROM:0007D9EE                 bgt.w   loc_7DA28
ROM:0007D9F2                 tst.b   $21(a6)
ROM:0007D9F6                 bne.w   loc_7DA28
ROM:0007D9FA                 move.b  #$FF,$21(a6)
ROM:0007DA00                 movea.l $C(a6),a0
ROM:0007DA04                 movea.l $C(a0),a0
ROM:0007DA08                 tst.b   $84(a0)
ROM:0007DA0C                 bne.w   loc_7D48C
ROM:0007DA10                 lea     ($78890).l,a1
ROM:0007DA16                 jsr     (SpawnObj).l
ROM:0007DA1C                 jsr     InitSamePositions
ROM:0007DA22                 move.w  #$FFFF,$38(a0)
ROM:0007DA28
ROM:0007DA28 loc_7DA28:
ROM:0007DA28
ROM:0007DA28                 movea.l #$FFFFFFFF,a0
ROM:0007DA2E                 lea     (unk_2E0340).l,a0
ROM:0007DA34                 jsr     CheckObjectOOB?
ROM:0007DA3A                 bcc.w   locret_7DA44
ROM:0007DA3E                 lea     loc_7DBA8,a1
ROM:0007DA42                 move.l  a1,(a6)
ROM:0007DA44
ROM:0007DA44 locret_7DA44:
ROM:0007DA44                 rts
ROM:0007DA46
ROM:0007DA46                 move.w  #0,d0
ROM:0007DA4A                 jsr     XSpeedRelated
ROM:0007DA50                 move.w  d0,$28(a6)
ROM:0007DA54                 move.w  #$190,$2A(a6)
ROM:0007DA5A                 move.w  #$FFF0,$2E(a6)
ROM:0007DA60                 move.w  #0,$2C(a6)
ROM:0007DA66                 jsr     GetRand2?
ROM:0007DA6C                 andi.w  #$3FF,d0
ROM:0007DA70                 move.w  d0,$28(a6)
ROM:0007DA74                 jsr     GetRand2?
ROM:0007DA7A                 andi.w  #$3FF,d0
ROM:0007DA7E                 add.w   d0,$2A(a6)
ROM:0007DA82                 jsr     GetRand2?
ROM:0007DA88                 andi.w  #1,d0
ROM:0007DA8C                 eor.b   d0,$3A(a6)
ROM:0007DA90                 btst    #0,$3A(a6)
ROM:0007DA96                 beq.w   loc_7DA9E
ROM:0007DA9A                 neg.w   $28(a6)
ROM:0007DA9E
ROM:0007DA9E loc_7DA9E:
ROM:0007DA9E                 jsr     GetRand2?
ROM:0007DAA4                 andi.w  #3,d0
ROM:0007DAA8                 add.w   d0,d0
ROM:0007DAAA                 add.w   d0,d0
ROM:0007DAAC                 lea     (off_2E035A).l,a0
ROM:0007DAB2                 move.l  (a0,d0.w),$5C(a6)
ROM:0007DAB8                 move.w  #$D000,d0
ROM:0007DABC                 jsr     sub_28134
ROM:0007DAC2                 andi.w  #$FFE3,$38(a6)
ROM:0007DAC8                 ori.w   #$14,$38(a6)
ROM:0007DACE                 moveq   #0,d0
ROM:0007DAD0                 move.w  d0,$70(a6)
ROM:0007DAD4                 move.w  d0,$78(a6)
ROM:0007DAD8                 bset    #3,$13(a6)
ROM:0007DADE                 lea     (unk_2E0AB0).l,a0
ROM:0007DAE4                 jsr     ChangeAnimation
ROM:0007DAEA                 lea     loc_7D928,a1
ROM:0007DAEE                 move.l  a1,(a6)
ROM:0007DAF0                 bra.w   loc_7D928
ROM:0007DAF4
ROM:0007DAF4                 move.w  #0,d0
ROM:0007DAF8                 jsr     XSpeedRelated
ROM:0007DAFE                 move.w  d0,$28(a6)
ROM:0007DB02                 move.w  #$118,$2A(a6)
ROM:0007DB08                 move.w  #$FFF8,$2E(a6)
ROM:0007DB0E                 move.w  #0,$2C(a6)
ROM:0007DB14                 jsr     GetRand2?
ROM:0007DB1A                 andi.w  #$3FF,d0
ROM:0007DB1E                 move.w  d0,$28(a6)
ROM:0007DB22                 jsr     GetRand2?
ROM:0007DB28                 andi.w  #$1FF,d0
ROM:0007DB2C                 add.w   d0,$2A(a6)
ROM:0007DB30                 jsr     GetRand2?
ROM:0007DB36                 andi.w  #1,d0
ROM:0007DB3A                 eor.b   d0,$3A(a6)
ROM:0007DB3E                 btst    #0,$3A(a6)
ROM:0007DB44                 beq.w   loc_7DB4C
ROM:0007DB48                 neg.w   $28(a6)
ROM:0007DB4C
ROM:0007DB4C loc_7DB4C:
ROM:0007DB4C                 jsr     GetRand2?
ROM:0007DB52                 andi.w  #3,d0
ROM:0007DB56                 add.w   d0,d0
ROM:0007DB58                 add.w   d0,d0
ROM:0007DB5A                 lea     (off_2E035A).l,a0
ROM:0007DB60                 move.l  (a0,d0.w),$5C(a6)
ROM:0007DB66                 move.w  #$D000,d0
ROM:0007DB6A                 jsr     sub_28134
ROM:0007DB70                 andi.w  #$FFE3,$38(a6)
ROM:0007DB76                 ori.w   #$14,$38(a6)
ROM:0007DB7C                 moveq   #0,d0
ROM:0007DB7E                 move.w  d0,$70(a6)
ROM:0007DB82                 move.w  d0,$78(a6)
ROM:0007DB86                 bset    #3,$13(a6)
ROM:0007DB8C                 lea     (unk_2E0AB0).l,a0
ROM:0007DB92                 jsr     ChangeAnimation
ROM:0007DB98                 lea     loc_7D928,a1
ROM:0007DB9C                 move.l  a1,(a6)
ROM:0007DB9E                 bra.w   loc_7D928
ROM:0007DBA2
ROM:0007DBA2
ROM:0007DBA2 loc_7DBA2:
ROM:0007DBA2
ROM:0007DBA2                 move.b  #$40,$20(a6)
ROM:0007DBA8
ROM:0007DBA8 loc_7DBA8:
ROM:0007DBA8
ROM:0007DBA8                 jmp     (SetDying).l
ROM:0007DBAE
ROM:0007DBAE                 rts
ROM:0007DBB0
ROM:0007DBB0
ROM:0007DBB0
ROM:0007DBB0
