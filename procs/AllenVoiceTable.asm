ROM:000509D6 AllenVoiceTable:dc.w $113C
ROM:000509D8                 dc.w $113D
ROM:000509DA                 dc.w $113E
ROM:000509DC                 dc.w $113C
ROM:000509DE
ROM:000509DE
ROM:000509DE loc_509DE:
ROM:000509DE                 lea     (unk_296BD8).l,a0
ROM:000509E4                 jsr     ChangeAnimation
ROM:000509EA                 move.w  #$5A,$30(a6)
ROM:000509F0                 clr.w   $28(a6)
ROM:000509F4                 lea     loc_509FA,a1
ROM:000509F8                 move.l  a1,(a6)
ROM:000509FA
ROM:000509FA loc_509FA:
ROM:000509FA                 move.b  #$1E,$45(a6)
ROM:00050A00                 bsr.w   loc_503F0+2
ROM:00050A04                 bsr.w   sub_50360
ROM:00050A08                 jsr     Animate
ROM:00050A0E                 subq.w  #1,$30(a6)
ROM:00050A12                 bne.w   loc_50A26
ROM:00050A16                 lea     (off_2963C4).l,a0
ROM:00050A1C                 move.l  a0,$48(a6)
ROM:00050A20                 lea     loc_50A2A,a1
ROM:00050A24                 move.l  a1,(a6)
ROM:00050A26
ROM:00050A26 loc_50A26:
ROM:00050A26                 bra.w   loc_5072E
ROM:00050A2A
ROM:00050A2A
ROM:00050A2A loc_50A2A:
ROM:00050A2A
ROM:00050A2A                 tst.b   ObjLLItem.AttackTimer(a6)
ROM:00050A2E                 beq.w   loc_50A3C
ROM:00050A32                 move.w  #$FA00,ObjLLItem.XSpeed(a6)
ROM:00050A38                 bra.w   loc_50A42
ROM:00050A3C
ROM:00050A3C
ROM:00050A3C loc_50A3C:
ROM:00050A3C                 move.w  #$600,ObjLLItem.XSpeed(a6)
ROM:00050A42
ROM:00050A42 loc_50A42:
ROM:00050A42                 move.b  ObjLLItem.AttackTimer(a6),d0
ROM:00050A46                 move.b  ObjLLItem.field_3A(a6),d1
ROM:00050A4A                 eor.b   d1,d0
ROM:00050A4C                 btst    #0,d0
ROM:00050A50                 beq.w   loc_50A64
ROM:00050A54                 lea     (off_296894).l,a0
ROM:00050A5A                 jsr     ChangeAnimation
ROM:00050A60                 bra.w   loc_50A70
ROM:00050A64
ROM:00050A64
ROM:00050A64 loc_50A64:
ROM:00050A64                 lea     (off_296908).l,a0
ROM:00050A6A                 jsr     ChangeAnimation
ROM:00050A70
ROM:00050A70 loc_50A70:
ROM:00050A70                 lea     loc_50A76,a1
ROM:00050A74                 move.l  a1,(a6)
ROM:00050A76
ROM:00050A76 loc_50A76:
ROM:00050A76                 bsr.w   loc_503F0+2
ROM:00050A7A                 bsr.w   sub_50360
ROM:00050A7E                 jsr     Animate
ROM:00050A84                 move.l  $72(a6),d0
ROM:00050A88                 bpl.w   loc_50A92
ROM:00050A8C                 lea     loc_50C18,a1
ROM:00050A90                 move.l  a1,(a6)
ROM:00050A92
ROM:00050A92 loc_50A92:
ROM:00050A92                 tst.b   $77(a6)
ROM:00050A96                 bne.w   loc_50AA0
ROM:00050A9A                 lea     loc_50B22,a1
ROM:00050A9E                 move.l  a1,(a6)
ROM:00050AA0
ROM:00050AA0 loc_50AA0:
ROM:00050AA0                 jsr     sub_50490
ROM:00050AA4                 bcc.w   loc_50AAE
ROM:00050AA8                 lea     loc_50BD2,a1
ROM:00050AAC                 move.l  a1,(a6)
ROM:00050AAE
ROM:00050AAE loc_50AAE:
ROM:00050AAE                 jsr     sub_504F0
ROM:00050AB2                 bcc.w   loc_50ABC
ROM:00050AB6                 lea     loc_50BC2,a1
ROM:00050ABA                 move.l  a1,(a6)
ROM:00050ABC
ROM:00050ABC loc_50ABC:
ROM:00050ABC                 jsr     sub_505F0
ROM:00050AC0                 bcc.w   loc_50ACA
ROM:00050AC4                 lea     loc_50DFC,a1
ROM:00050AC8                 move.l  a1,(a6)
ROM:00050ACA
ROM:00050ACA loc_50ACA:
ROM:00050ACA                 jsr     sub_505A0
ROM:00050ACE                 bcc.w   loc_50AD8
ROM:00050AD2                 lea     loc_50B6A,a1
ROM:00050AD6                 move.l  a1,(a6)
ROM:00050AD8
ROM:00050AD8 loc_50AD8:
ROM:00050AD8                 jsr     sub_50520
ROM:00050ADC                 bcc.w   loc_50AE6
ROM:00050AE0                 lea     loc_50B5E,a1
ROM:00050AE4                 move.l  a1,(a6)
ROM:00050AE6
ROM:00050AE6 loc_50AE6:
ROM:00050AE6                 jsr     sub_5054C
ROM:00050AEA                 bcc.w   loc_50AF4
ROM:00050AEE                 lea     loc_50D1A,a1
ROM:00050AF2                 move.l  a1,(a6)
ROM:00050AF4
ROM:00050AF4 loc_50AF4:
ROM:00050AF4                 jsr     sub_506A2
ROM:00050AF8                 bcc.w   loc_50B02
ROM:00050AFC                 lea     loc_50DBE,a1
ROM:00050B00                 move.l  a1,(a6)
ROM:00050B02
ROM:00050B02 loc_50B02:
ROM:00050B02                 jsr     sub_506F6
ROM:00050B06                 bcc.w   loc_50B10
ROM:00050B0A                 lea     loc_50B5E,a1
ROM:00050B0E                 move.l  a1,(a6)
ROM:00050B10
ROM:00050B10 loc_50B10:
ROM:00050B10                 tst.b   $70(a6)
ROM:00050B14                 beq.w   loc_50B1E
ROM:00050B18                 lea     loc_50C88,a1
ROM:00050B1C                 move.l  a1,(a6)
ROM:00050B1E
ROM:00050B1E loc_50B1E:
ROM:00050B1E                 bra.w   loc_5072E
ROM:00050B22
ROM:00050B22
ROM:00050B22 loc_50B22:
ROM:00050B22                 clr.b   $86(a6)
ROM:00050B26                 lea     (off_296954).l,a0
ROM:00050B2C                 jsr     ChangeAnimation
ROM:00050B32                 clr.w   $28(a6)
ROM:00050B36                 lea     loc_50B3C,a1
ROM:00050B3A                 move.l  a1,(a6)
ROM:00050B3C
ROM:00050B3C loc_50B3C:
ROM:00050B3C                 bsr.w   loc_503F0+2
ROM:00050B40                 bsr.w   sub_50360
ROM:00050B44                 jsr     Animate
ROM:00050B4A                 bcc.w   loc_50B5A
ROM:00050B4E                 bchg    #0,$3A(a6)
ROM:00050B54                 lea     loc_50A2A,a1
ROM:00050B58                 move.l  a1,(a6)
ROM:00050B5A
ROM:00050B5A loc_50B5A:
ROM:00050B5A                 bra.w   loc_5072E
ROM:00050B5E
ROM:00050B5E
ROM:00050B5E loc_50B5E:
ROM:00050B5E
ROM:00050B5E                 addq.b  #1,$7A(a6)
ROM:00050B62                 not.b   $78(a6)
ROM:00050B66                 bra.w   loc_50A2A
ROM:00050B6A
ROM:00050B6A
ROM:00050B6A loc_50B6A:
ROM:00050B6A                 tst.b   $86(a6)
ROM:00050B6E                 bne.w   loc_50B90
ROM:00050B72                 move.b  #$1E,$86(a6)
ROM:00050B78                 jsr     GetRand2?
ROM:00050B7E                 andi.w  #6,d0
ROM:00050B82                 lea     AllenVoiceTable,a0
ROM:00050B86                 move.w  (a0,d0.w),d0
ROM:00050B8A                 jsr     (PlaySFX).l
ROM:00050B90
ROM:00050B90 loc_50B90:
ROM:00050B90                 lea     (off_296B76).l,a0
ROM:00050B96                 jsr     ChangeAnimation
ROM:00050B9C                 clr.w   ObjLLItem.XSpeed(a6)
ROM:00050BA0                 lea     loc_50BA6,a1
ROM:00050BA4                 move.l  a1,(a6)
ROM:00050BA6
ROM:00050BA6 loc_50BA6:
ROM:00050BA6                 bsr.w   loc_503F0+2
ROM:00050BAA                 bsr.w   sub_50360
ROM:00050BAE                 jsr     Animate
ROM:00050BB4                 bcc.w   loc_50BBE
ROM:00050BB8                 lea     loc_50A2A,a1
ROM:00050BBC                 move.l  a1,(a6)
ROM:00050BBE
ROM:00050BBE loc_50BBE:
ROM:00050BBE                 bra.w   loc_5072E
ROM:00050BC2
ROM:00050BC2
ROM:00050BC2 loc_50BC2:
ROM:00050BC2                 lea     (unk_29658A).l,a0
ROM:00050BC8                 jsr     ChangeAnimation
ROM:00050BCE                 bra.w   loc_50BDE
ROM:00050BD2
ROM:00050BD2
ROM:00050BD2 loc_50BD2:
ROM:00050BD2                 lea     (off_29668C).l,a0
ROM:00050BD8                 jsr     ChangeAnimation
ROM:00050BDE
ROM:00050BDE loc_50BDE:
ROM:00050BDE                 clr.b   $86(a6)
ROM:00050BE2                 clr.w   ObjLLItem.XSpeed(a6)
ROM:00050BE6                 lea     loc_50BEC,a1
ROM:00050BEA                 move.l  a1,(a6)
ROM:00050BEC
ROM:00050BEC loc_50BEC:
ROM:00050BEC                 bsr.w   loc_503F0+2
ROM:00050BF0                 bsr.w   sub_50360
ROM:00050BF4                 jsr     Animate
ROM:00050BFA                 bcc.w   loc_50C14
ROM:00050BFE                 lea     (off_296EFC).l,a0
ROM:00050C04                 jsr     GetParamDifficulty
ROM:00050C0A                 move.b  d0,$7B(a6)
ROM:00050C0E                 lea     loc_50A2A,a1
ROM:00050C12                 move.l  a1,(a6)
ROM:00050C14
ROM:00050C14 loc_50C14:
ROM:00050C14                 bra.w   loc_5072E
ROM:00050C18
ROM:00050C18
ROM:00050C18 loc_50C18:
ROM:00050C18                 clr.w   ObjLLItem.XSpeed(a6)
ROM:00050C1C                 lea     (unk_296BD8).l,a0
ROM:00050C22                 jsr     ChangeAnimation
ROM:00050C28                 lea     loc_50C2E,a1
ROM:00050C2C                 move.l  a1,(a6)
ROM:00050C2E
ROM:00050C2E loc_50C2E:
ROM:00050C2E                 bsr.w   loc_503F0+2
ROM:00050C32                 bsr.w   sub_50360
ROM:00050C36                 jsr     Animate
ROM:00050C3C                 move.l  $72(a6),d0
ROM:00050C40                 bmi.w   loc_50C4A
ROM:00050C44                 lea     loc_50A2A,a1
ROM:00050C48                 move.l  a1,(a6)
ROM:00050C4A
ROM:00050C4A loc_50C4A:
ROM:00050C4A                 bra.w   loc_5072E
ROM:00050C4E
ROM:00050C4E
ROM:00050C4E loc_50C4E:
ROM:00050C4E                 clr.b   $86(a6)
ROM:00050C52                 lea     (off_296A04).l,a0
ROM:00050C58                 jsr     ChangeAnimation
ROM:00050C5E                 clr.b   ObjLLItem.SubAttackTimer(a6)
ROM:00050C62                 clr.w   ObjLLItem.XSpeed(a6)
ROM:00050C66                 lea     loc_50C6C,a1
ROM:00050C6A                 move.l  a1,(a6)
ROM:00050C6C
ROM:00050C6C loc_50C6C:
ROM:00050C6C                 bsr.w   loc_503F0+2
ROM:00050C70                 bsr.w   sub_50360
ROM:00050C74                 jsr     Animate
ROM:00050C7A                 bcc.w   loc_50C84
ROM:00050C7E                 lea     loc_50A2A,a1
ROM:00050C82                 move.l  a1,(a6)
ROM:00050C84
ROM:00050C84 loc_50C84:
ROM:00050C84                 bra.w   loc_5072E
ROM:00050C88
ROM:00050C88
ROM:00050C88 loc_50C88:
ROM:00050C88                 move.w  ObjLLItem.YPos(a6),d1
ROM:00050C8C                 jsr     sub_4400E
ROM:00050C92                 cmpi.w  #$8F,d1
ROM:00050C96                 ble.w   loc_50CB4
ROM:00050C9A                 move.l  PlayerStruct.field_72(a6),d0
ROM:00050C9E                 bmi.w   loc_50CB4
ROM:00050CA2                 movea.l d0,a0
ROM:00050CA4                 move.w  ObjLLItem.YPos(a0),d0
ROM:00050CA8                 cmp.w   ObjLLItem.YPos(a6),d0
ROM:00050CAC                 bcs.w   loc_50D1A
ROM:00050CB0                 bra.w   loc_50CF6
ROM:00050CB4
ROM:00050CB4
ROM:00050CB4 loc_50CB4:
ROM:00050CB4
ROM:00050CB4                 tst.b   $79(a6)
ROM:00050CB8                 bne.w   loc_50CF6
ROM:00050CBC                 lea     (off_2969BC).l,a0
ROM:00050CC2                 jsr     ChangeAnimation
ROM:00050CC8                 move.w  #$886,ObjLLItem.YSpeed(a6)
ROM:00050CCE                 move.w  #$FEDD,ObjLLItem.Weight(a6)
ROM:00050CD4                 move.w  #$444,d0
ROM:00050CD8                 tst.b   $78(a6)
ROM:00050CDC                 beq.w   loc_50CE2
ROM:00050CE0                 neg.w   d0
ROM:00050CE2
ROM:00050CE2 loc_50CE2:
ROM:00050CE2                 move.w  d0,ObjLLItem.XSpeed(a6)
ROM:00050CE6                 move.b  #$FF,ObjLLItem.field_70(a6)
ROM:00050CEC                 lea     loc_50D90,a1
ROM:00050CF0                 move.l  a1,(a6)
ROM:00050CF2                 bra.w   loc_50D90
ROM:00050CF6
ROM:00050CF6
ROM:00050CF6 loc_50CF6:
ROM:00050CF6
ROM:00050CF6                 lea     (off_2969BC).l,a0
ROM:00050CFC                 jsr     ChangeAnimation
ROM:00050D02                 clr.w   ObjLLItem.XSpeed(a6)
ROM:00050D06                 clr.w   ObjLLItem.YSpeed(a6)
ROM:00050D0A                 move.w  #$FFC0,ObjLLItem.Weight(a6)
ROM:00050D10                 lea     loc_50D90,a1
ROM:00050D14                 move.l  a1,(a6)
ROM:00050D16                 bra.w   loc_50D90
ROM:00050D1A
ROM:00050D1A
ROM:00050D1A loc_50D1A:
ROM:00050D1A
ROM:00050D1A                 lea     (off_2969BC).l,a0
ROM:00050D20                 jsr     ChangeAnimation
ROM:00050D26                 move.l  #$1111,d0
ROM:00050D2C                 move.w  #$180,d1
ROM:00050D30                 mulu.w  d0,d1
ROM:00050D32                 lsr.l   #8,d1
ROM:00050D34                 mulu.w  d0,d1
ROM:00050D36                 swap    d1
ROM:00050D38                 neg.w   d1
ROM:00050D3A                 move.w  d1,ObjLLItem.Weight(a6)
ROM:00050D3E                 move.w  #$F0,d1
ROM:00050D42                 mulu.w  d0,d1
ROM:00050D44                 lsr.l   #8,d1
ROM:00050D46                 move.w  d1,ObjLLItem.YSpeed(a6)
ROM:00050D4A                 move.w  ObjLLItem.YPos(a6),d1
ROM:00050D4E                 jsr     sub_4400E
ROM:00050D54                 cmpi.w  #$BF,d1
ROM:00050D58                 ble.w   loc_50D64
ROM:00050D5C                 move.w  #$30,d0
ROM:00050D60                 bra.w   loc_50D68
ROM:00050D64
ROM:00050D64
ROM:00050D64 loc_50D64:
ROM:00050D64                 move.w  #$60,d0
ROM:00050D68
ROM:00050D68 loc_50D68:
ROM:00050D68                 cmpi.w  #$A0,ObjLLItem.XPos(a6)
ROM:00050D6E                 bmi.w   loc_50D78
ROM:00050D72                 neg.w   d0
ROM:00050D74                 addi.w  #$140,d0
ROM:00050D78
ROM:00050D78 loc_50D78:
ROM:00050D78                 sub.w   ObjLLItem.XPos(a6),d0
ROM:00050D7C                 muls.w  #17,d0
ROM:00050D80                 move.w  d0,ObjLLItem.XSpeed(a6)
ROM:00050D84                 move.b  #$FF,ObjLLItem.field_70(a6)
ROM:00050D8A                 lea     loc_50D90,a1
ROM:00050D8E                 move.l  a1,(a6)
ROM:00050D90
ROM:00050D90 loc_50D90:
ROM:00050D90
ROM:00050D90                 bsr.w   loc_503F0+2
ROM:00050D94                 bsr.w   sub_50360
ROM:00050D98                 jsr     Animate
ROM:00050D9E                 tst.b   ObjLLItem.field_70(a6)
ROM:00050DA2                 bne.w   loc_50DAC
ROM:00050DA6                 lea     loc_50C4E,a1
ROM:00050DAA                 move.l  a1,(a6)
ROM:00050DAC
ROM:00050DAC loc_50DAC:
ROM:00050DAC                 jsr     sub_505F0
ROM:00050DB0                 bcc.w   loc_50DBA
ROM:00050DB4                 lea     loc_50DFC,a1
ROM:00050DB8                 move.l  a1,(a6)
ROM:00050DBA
ROM:00050DBA loc_50DBA:
ROM:00050DBA                 bra.w   loc_5072E
ROM:00050DBE
ROM:00050DBE
ROM:00050DBE loc_50DBE:
ROM:00050DBE                 lea     (off_2969BC).l,a0
ROM:00050DC4                 jsr     ChangeAnimation
ROM:00050DCA                 move.w  #0,d0
ROM:00050DCE                 jsr     XSpeedRelated
ROM:00050DD4                 move.w  d0,ObjLLItem.XSpeed(a6)
ROM:00050DD8                 move.w  #$922,ObjLLItem.YSpeed(a6)
ROM:00050DDE                 move.w  #$FD64,ObjLLItem.Weight(a6)
ROM:00050DE4                 move.w  #0,ObjLLItem.SpeedRelated(a6)
ROM:00050DEA                 move.b  #$FF,ObjLLItem.field_70(a6)
ROM:00050DF0                 clr.b   ObjLLItem.field_71(a6)
ROM:00050DF4                 lea     loc_50D90,a1
ROM:00050DF8                 move.l  a1,(a6)
ROM:00050DFA                 bra.s   loc_50D90
ROM:00050DFC
ROM:00050DFC
ROM:00050DFC loc_50DFC:
ROM:00050DFC
ROM:00050DFC                 clr.b   $86(a6)
ROM:00050E00                 lea     (unk_296C82).l,a0
ROM:00050E06                 jsr     ChangeAnimation
ROM:00050E0C                 jsr     sub_283CA
ROM:00050E12                 lea     loc_50E18,a1
ROM:00050E16                 move.l  a1,(a6)
ROM:00050E18
ROM:00050E18 loc_50E18:
ROM:00050E18                 bsr.w   loc_503F0+2
ROM:00050E1C                 bsr.w   sub_50360
ROM:00050E20                 jsr     Animate
ROM:00050E26                 bcc.w   loc_50E30
ROM:00050E2A                 lea     loc_50A2A,a1
ROM:00050E2E                 move.l  a1,(a6)
ROM:00050E30
ROM:00050E30 loc_50E30:
ROM:00050E30                 tst.b   ObjLLItem.field_70(a6)
ROM:00050E34                 bne.w   loc_50E3C
ROM:00050E38                 clr.w   ObjLLItem.XSpeed(a6)
ROM:00050E3C
ROM:00050E3C loc_50E3C:
ROM:00050E3C                 bra.w   loc_5072E
ROM:00050E40
ROM:00050E40
ROM:00050E40 loc_50E40:
ROM:00050E40                 jsr     sub_4AAD2
ROM:00050E46                 move.w  #SFXVoiceSeeYouInHell,d0
ROM:00050E4A                 jsr     (PlaySFX).l
ROM:00050E50                 move.w  ObjLLItem.field_14(a6),d1
ROM:00050E54                 move.w  #$18E,d2
ROM:00050E58                 move.w  #1,d3
ROM:00050E5C                 move.w  #1,d4
ROM:00050E60                 jsr     (loc_2C30).l
ROM:00050E66                 tst.b   $70(a6)
ROM:00050E6A                 bne.w   loc_50EA2
ROM:00050E6E                 lea     (off_296A4C).l,a0
ROM:00050E74                 jsr     ChangeAnimation
ROM:00050E7A                 clr.w   ObjLLItem.XSpeed(a6)
ROM:00050E7E                 lea     loc_50E84,a1
ROM:00050E82                 move.l  a1,(a6)
ROM:00050E84
ROM:00050E84 loc_50E84:
ROM:00050E84
ROM:00050E84                 move.b  #2,$45(a6)
ROM:00050E8A                 bsr.w   sub_50360
ROM:00050E8E                 jsr     Animate
ROM:00050E94                 bcc.w   loc_50E9E
ROM:00050E98                 lea     $50F56,a1
ROM:00050E9C                 move.l  a1,(a6)
ROM:00050E9E
ROM:00050E9E loc_50E9E:
ROM:00050E9E                 bra.w   loc_507EE
ROM:00050EA2
ROM:00050EA2
ROM:00050EA2 loc_50EA2:
ROM:00050EA2                 lea     (off_296ABC).l,a0
ROM:00050EA8                 jsr     ChangeAnimation
ROM:00050EAE                 move.w  #0,d0
ROM:00050EB2                 jsr     XSpeedRelated
ROM:00050EB8                 move.w  d0,$28(a6)
ROM:00050EBC                 move.w  #$400,$2A(a6)
ROM:00050EC2                 move.w  #$FF00,$2E(a6)
ROM:00050EC8                 move.w  #0,$2C(a6)
ROM:00050ECE                 lea     loc_50ED4,a1
ROM:00050ED2                 move.l  a1,(a6)
ROM:00050ED4
ROM:00050ED4 loc_50ED4:
ROM:00050ED4                 move.b  #2,$45(a6)
ROM:00050EDA                 jsr     sub_50360
ROM:00050EDE                 jsr     Animate
ROM:00050EE4                 tst.b   $70(a6)
ROM:00050EE8                 bne.w   loc_50EF2
ROM:00050EEC                 lea     loc_50EF6,a1
ROM:00050EF0                 move.l  a1,(a6)
ROM:00050EF2
ROM:00050EF2 loc_50EF2:
ROM:00050EF2                 bra.w   loc_507EE
ROM:00050EF6
ROM:00050EF6
ROM:00050EF6 loc_50EF6:
ROM:00050EF6                 lea     (off_296ADC).l,a0
ROM:00050EFC                 jsr     ChangeAnimation
ROM:00050F02                 clr.w   $28(a6)
ROM:00050F06                 lea     loc_50E84,a1
ROM:00050F0A                 move.l  a1,(a6)
ROM:00050F0C                 bra.w   loc_50E84
ROM:00050F10
ROM:00050F10                 lea     (off_296B24).l,a0
ROM:00050F16                 jsr     ChangeAnimation
ROM:00050F1C                 clr.w   $28(a6)
ROM:00050F20                 lea     $50F26,a1
ROM:00050F24                 move.l  a1,(a6)
ROM:00050F26                 move.b  #2,$45(a6)
ROM:00050F2C                 bsr.w   sub_50360
ROM:00050F30                 jsr     Animate
ROM:00050F36                 bcc.w   loc_50F52
ROM:00050F3A                 move.b  #$F,$45(a6)
ROM:00050F40                 move.b  $45(a6),$59(a6)
ROM:00050F46                 bclr    #3,$13(a6)
ROM:00050F4C                 lea     loc_50A2A,a1
ROM:00050F50                 move.l  a1,(a6)
ROM:00050F52
ROM:00050F52 loc_50F52:
ROM:00050F52                 bra.w   loc_507EE
ROM:00050F56
ROM:00050F56                 move.b  #$1E,$59(a6)
ROM:00050F5C                 lea     loc_50F62,a1
ROM:00050F60                 move.l  a1,(a6)
ROM:00050F62
ROM:00050F62 loc_50F62:
ROM:00050F62                 bsr.w   sub_50360
ROM:00050F66                 jsr     Animate
ROM:00050F6C                 tst.b   $59(a6)
ROM:00050F70                 bne.w   loc_50F7A
ROM:00050F74                 jmp     (SetDying).l
ROM:00050F7A
ROM:00050F7A
ROM:00050F7A loc_50F7A:
ROM:00050F7A                 bra.w   loc_507EE
ROM:00050F7E
ROM:00050F7E                 lea     (off_29643A).l,a0
ROM:00050F84                 move.l  a0,$48(a6)
ROM:00050F88                 move.w  #$7E,$5C(a6)
ROM:00050F8E                 bra.w   loc_50FCA
ROM:00050F92
ROM:00050F92                 lea     (off_29648E).l,a0
ROM:00050F98                 move.l  a0,$48(a6)
ROM:00050F9C                 move.w  #$7F,$5C(a6)
ROM:00050FA2                 bra.w   loc_50FCA
ROM:00050FA6
ROM:00050FA6                 lea     (off_2964E2).l,a0
ROM:00050FAC                 move.l  a0,$48(a6)
ROM:00050FB0                 move.w  #$7C,$5C(a6)
ROM:00050FB6                 bra.w   loc_50FCA
ROM:00050FBA
ROM:00050FBA                 lea     (off_296536).l,a0
ROM:00050FC0                 move.l  a0,$48(a6)
ROM:00050FC4                 move.w  #$7D,$5C(a6)
ROM:00050FCA
ROM:00050FCA loc_50FCA:
ROM:00050FCA
ROM:00050FCA                 lea     loc_50FD0,a1
ROM:00050FCE                 move.l  a1,(a6)
ROM:00050FD0
ROM:00050FD0 loc_50FD0:
ROM:00050FD0                 movea.l $C(a6),a0
ROM:00050FD4                 move.w  $22(a0),$22(a6)
ROM:00050FDA                 move.w  $24(a0),$24(a6)
ROM:00050FE0                 tst.b   $87(a0)
ROM:00050FE4                 bne.w   loc_50FFC
ROM:00050FE8                 jsr     CheckShot?
ROM:00050FEE                 movea.l $C(a6),a0
ROM:00050FF2                 adda.w  $5C(a6),a0
ROM:00050FF6                 scs     (a0)
ROM:00050FF8                 bra.w   loc_51006
ROM:00050FFC
ROM:00050FFC
ROM:00050FFC loc_50FFC:
ROM:00050FFC                 movea.l $C(a6),a0
ROM:00051000                 adda.w  $5C(a6),a0
ROM:00051004                 clr.b   (a0)
ROM:00051006
ROM:00051006 loc_51006:
ROM:00051006                 bclr    #3,$13(a6)
ROM:0005100C                 rts
ROM:0005100E
ROM:0005100E
ROM:0005100E loc_5100E:
ROM:0005100E                 lea     (off_29663A).l,a0
ROM:00051014                 jsr     ChangeAnimation
ROM:0005101A                 bra.w   loc_5102A
ROM:0005101E
ROM:0005101E
ROM:0005101E loc_5101E:
ROM:0005101E                 lea     (off_296784).l,a0
ROM:00051024                 jsr     ChangeAnimation
ROM:0005102A
ROM:0005102A loc_5102A:
ROM:0005102A                 move.w  #$18F,d1
ROM:0005102E                 jsr     (sub_236E).l
ROM:00051034                 lea     loc_5103A,a1
ROM:00051038                 move.l  a1,(a6)
ROM:0005103A
ROM:0005103A loc_5103A:
ROM:0005103A                 movea.l $C(a6),a0
ROM:0005103E                 move.b  $3A(a0),$3A(a6)
ROM:00051044                 move.w  $38(a0),$38(a6)
ROM:0005104A                 move.w  $22(a0),$22(a6)
ROM:00051050                 move.w  $24(a0),$24(a6)
ROM:00051056                 jsr     Animate
ROM:0005105C                 bcc.w   locret_51066
ROM:00051060                 jmp     (SetDying).l
ROM:00051066
ROM:00051066
ROM:00051066 locret_51066:
ROM:00051066                 rts
ROM:00051068
ROM:00051068
ROM:00051068 loc_51068:
ROM:00051068                 ori.b   #$18,(a6)
ROM:0005106C                 ori.b   #$1A,(a6)
ROM:00051070
ROM:00051070 loc_51070:
ROM:00051070                 ori.b   #8,d6
ROM:00051074                 andi.b  #0,d4
ROM:00051078                 ori.b   #$FA,d0
ROM:0005107C                 ori.b   #$FA,d6
ROM:00051080                 ori.b   #0,d0
ROM:00051084                 ori.b   #$3A,-(a4)
ROM:00051084
