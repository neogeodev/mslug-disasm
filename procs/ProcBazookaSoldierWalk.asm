ROM:00047BE0 ProcBazookaSoldierWalk:
ROM:00047BE0                 jsr     sub_48F2E
ROM:00047BE4                 jsr     Animate
ROM:00047BEA                 jsr     sub_49346
ROM:00047BEE                 bcc.w   loc_47BF8
ROM:00047BF2                 lea     loc_47C50,a1
ROM:00047BF6                 move.l  a1,(a6)
ROM:00047BF8
ROM:00047BF8 loc_47BF8:
ROM:00047BF8                 jsr     sub_490FA
ROM:00047BFC                 bcc.w   loc_47C06
ROM:00047C00                 lea     $47A4C,a1
ROM:00047C04                 move.l  a1,(a6)
ROM:00047C06
ROM:00047C06 loc_47C06:
ROM:00047C06                 jsr     sub_49256
ROM:00047C0A                 bcc.w   loc_47C14
ROM:00047C0E                 lea     loc_47ED2,a1
ROM:00047C12                 move.l  a1,(a6)
ROM:00047C14
ROM:00047C14 loc_47C14:
ROM:00047C14                 jsr     sub_49196
ROM:00047C18                 bcc.w   loc_47C22
ROM:00047C1C                 lea     loc_47CFE,a1
ROM:00047C20                 move.l  a1,(a6)
ROM:00047C22
ROM:00047C22 loc_47C22:
ROM:00047C22                 jsr     sub_492F8
ROM:00047C26                 bcc.w   loc_47C30
ROM:00047C2A                 lea     loc_47C50,a1
ROM:00047C2E                 move.l  a1,(a6)
ROM:00047C30
ROM:00047C30 loc_47C30:
ROM:00047C30                 jsr     sub_491DE
ROM:00047C34                 bcc.w   loc_47C3E
ROM:00047C38                 lea     loc_47DBC,a1
ROM:00047C3C                 move.l  a1,(a6)
ROM:00047C3E
ROM:00047C3E loc_47C3E:
ROM:00047C3E                 jsr     sub_4932C
ROM:00047C42                 bcc.w   loc_47C4C
ROM:00047C46                 lea     loc_47F12,a1
ROM:00047C4A                 move.l  a1,(a6)
ROM:00047C4C
ROM:00047C4C loc_47C4C:
ROM:00047C4C                 bra.w   loc_489F8
ROM:00047C50
ROM:00047C50
ROM:00047C50 loc_47C50:
ROM:00047C50
ROM:00047C50                 move.b  $3A(a6),d0
ROM:00047C54                 eori.b  #1,d0
ROM:00047C58                 move.b  d0,$7C(a6)
ROM:00047C5C                 jsr     sub_492F8
ROM:00047C60                 bcs.w   loc_47BAC
ROM:00047C64                 lea     (off_2BFBB0).l,a0
ROM:00047C6A                 jsr     GetParamDifficulty
ROM:00047C70                 move.w  d0,$36(a6)
ROM:00047C74                 jsr     sub_48F04
ROM:00047C78                 neg.w   $28(a6)
ROM:00047C7C                 lea     (unk_28E49E).l,a0
ROM:00047C82                 jsr     ChangeAnimation
ROM:00047C88                 lea     loc_47C8E,a1
ROM:00047C8C                 move.l  a1,(a6)
ROM:00047C8E
ROM:00047C8E loc_47C8E:
ROM:00047C8E                 jsr     sub_48F2E
ROM:00047C92                 jsr     Animate
ROM:00047C98                 jsr     sub_49346
ROM:00047C9C                 bcc.w   loc_47CA6
ROM:00047CA0                 lea     loc_47BAC,a1
ROM:00047CA4                 move.l  a1,(a6)
ROM:00047CA6
ROM:00047CA6 loc_47CA6:
ROM:00047CA6                 jsr     sub_490FA
ROM:00047CAA                 bcc.w   loc_47CB4
ROM:00047CAE                 lea     $47A4C,a1
ROM:00047CB2                 move.l  a1,(a6)
ROM:00047CB4
ROM:00047CB4 loc_47CB4:
ROM:00047CB4                 jsr     sub_49256
ROM:00047CB8                 bcc.w   loc_47CC2
ROM:00047CBC                 lea     loc_47ED2,a1
ROM:00047CC0                 move.l  a1,(a6)
ROM:00047CC2
ROM:00047CC2 loc_47CC2:
ROM:00047CC2                 jsr     sub_49196
ROM:00047CC6                 bcc.w   loc_47CD0
ROM:00047CCA                 lea     loc_47CFE,a1
ROM:00047CCE                 move.l  a1,(a6)
ROM:00047CD0
ROM:00047CD0 loc_47CD0:
ROM:00047CD0                 jsr     sub_492F8
ROM:00047CD4                 bcc.w   loc_47CDE
ROM:00047CD8                 lea     loc_47BAC,a1
ROM:00047CDC                 move.l  a1,(a6)
ROM:00047CDE
ROM:00047CDE loc_47CDE:
ROM:00047CDE                 jsr     sub_491DE
ROM:00047CE2                 bcc.w   loc_47CEC
ROM:00047CE6                 lea     loc_47DBC,a1
ROM:00047CEA                 move.l  a1,(a6)
ROM:00047CEC
ROM:00047CEC loc_47CEC:
ROM:00047CEC                 jsr     sub_4932C
ROM:00047CF0                 bcc.w   loc_47CFA
ROM:00047CF4                 lea     loc_47F12,a1
ROM:00047CF8                 move.l  a1,(a6)
ROM:00047CFA
ROM:00047CFA loc_47CFA:
ROM:00047CFA                 bra.w   loc_489F8
ROM:00047CFE
ROM:00047CFE
ROM:00047CFE loc_47CFE:
ROM:00047CFE
ROM:00047CFE                 move.b  $3A(a6),d0
ROM:00047D02                 eori.b  #1,d0
ROM:00047D06                 move.b  d0,$7C(a6)
ROM:00047D0A                 jsr     sub_492F8
ROM:00047D0E                 bcs.w   loc_47A4C
ROM:00047D12                 lea     (unk_28E1B6).l,a0
ROM:00047D18                 jsr     sub_5E086
ROM:00047D1E                 move.l  a0,$94(a6)
ROM:00047D22                 lea     (off_2BFBB0).l,a0
ROM:00047D28                 jsr     GetParamDifficulty
ROM:00047D2E                 move.w  d0,$36(a6)
ROM:00047D32                 jsr     sub_48F04
ROM:00047D36                 neg.w   $28(a6)
ROM:00047D3A                 lea     (unk_28E49E).l,a0
ROM:00047D40                 jsr     ChangeAnimation
ROM:00047D46                 lea     loc_47D4C,a1
ROM:00047D4A                 move.l  a1,(a6)
ROM:00047D4C
ROM:00047D4C loc_47D4C:
ROM:00047D4C                 jsr     sub_48F2E
ROM:00047D50                 jsr     Animate
ROM:00047D56                 jsr     sub_49346
ROM:00047D5A                 bcc.w   loc_47D64
ROM:00047D5E                 lea     loc_47F84,a1
ROM:00047D62                 move.l  a1,(a6)
ROM:00047D64
ROM:00047D64 loc_47D64:
ROM:00047D64                 jsr     sub_49010
ROM:00047D68                 bcc.w   loc_47D72
ROM:00047D6C                 lea     $47A4C,a1
ROM:00047D70                 move.l  a1,(a6)
ROM:00047D72
ROM:00047D72 loc_47D72:
ROM:00047D72                 jsr     sub_49256
ROM:00047D76                 bcc.w   loc_47D80
ROM:00047D7A                 lea     loc_47ED2,a1
ROM:00047D7E                 move.l  a1,(a6)
ROM:00047D80
ROM:00047D80 loc_47D80:
ROM:00047D80                 jsr     sub_49196
ROM:00047D84                 bcs.w   loc_47D8E
ROM:00047D88                 lea     $47A4C,a1
ROM:00047D8C                 move.l  a1,(a6)
ROM:00047D8E
ROM:00047D8E loc_47D8E:
ROM:00047D8E                 jsr     sub_492F8
ROM:00047D92                 bcc.w   loc_47D9C
ROM:00047D96                 lea     $47A4C,a1
ROM:00047D9A                 move.l  a1,(a6)
ROM:00047D9C
ROM:00047D9C loc_47D9C:
ROM:00047D9C                 jsr     sub_491DE
ROM:00047DA0                 bcc.w   loc_47DAA
ROM:00047DA4                 lea     loc_47DBC,a1
ROM:00047DA8                 move.l  a1,(a6)
ROM:00047DAA
ROM:00047DAA loc_47DAA:
ROM:00047DAA                 jsr     sub_4932C
ROM:00047DAE                 bcc.w   loc_47DB8
ROM:00047DB2                 lea     loc_47F12,a1
ROM:00047DB6                 move.l  a1,(a6)
ROM:00047DB8
ROM:00047DB8 loc_47DB8:
ROM:00047DB8                 bra.w   loc_489F8
ROM:00047DBC
ROM:00047DBC
ROM:00047DBC loc_47DBC:
ROM:00047DBC
ROM:00047DBC                 clr.w   $28(a6)
ROM:00047DC0                 move.b  $3A(a6),d0
ROM:00047DC4                 andi.b  #1,d0
ROM:00047DC8                 move.b  d0,$7C(a6)
ROM:00047DCC                 jsr     sub_492F8
ROM:00047DD0                 bcs.w   loc_47ED2
ROM:00047DD4                 jsr     loc_4926A
ROM:00047DD8                 bcs.w   loc_47E24
ROM:00047DDC                 lea     (unk_28E1B6).l,a0
ROM:00047DE2                 jsr     sub_5E086
ROM:00047DE8                 move.l  a0,$94(a6)
ROM:00047DEC                 lea     (off_28E7BC).l,a0
ROM:00047DF2                 jsr     ChangeAnimation
ROM:00047DF8                 lea     loc_47DFE,a1
ROM:00047DFC                 move.l  a1,(a6)
ROM:00047DFE
ROM:00047DFE loc_47DFE:
ROM:00047DFE                 jsr     sub_48FB0
ROM:00047E02                 jsr     Animate
ROM:00047E08                 bcc.w   loc_47E12
ROM:00047E0C                 lea     loc_47E24,a1
ROM:00047E10                 move.l  a1,(a6)
ROM:00047E12
ROM:00047E12 loc_47E12:
ROM:00047E12                 jsr     sub_4932C
ROM:00047E16                 bcc.w   loc_47E20
ROM:00047E1A                 lea     loc_47F12,a1
ROM:00047E1E                 move.l  a1,(a6)
ROM:00047E20
ROM:00047E20 loc_47E20:
ROM:00047E20                 bra.w   loc_489F8
ROM:00047E24
ROM:00047E24
ROM:00047E24 loc_47E24:
ROM:00047E24
ROM:00047E24                 move.b  $3A(a6),$7C(a6)
ROM:00047E2A                 lea     (off_2BFB2E).l,a0
ROM:00047E30                 jsr     GetParamDifficulty
ROM:00047E36                 move.w  d0,$36(a6)
ROM:00047E3A                 jsr     sub_48F04
ROM:00047E3E                 lea     (unk_28E394).l,a0
ROM:00047E44                 jsr     ChangeAnimation
ROM:00047E4A                 lea     loc_47E50,a1
ROM:00047E4E                 move.l  a1,(a6)
ROM:00047E50
ROM:00047E50 loc_47E50:
ROM:00047E50                 jsr     sub_48F2E
ROM:00047E54                 jsr     Animate
ROM:00047E5A                 jsr     loc_4921E
ROM:00047E5E                 bcs.w   loc_47E68
ROM:00047E62                 lea     loc_47E88,a1
ROM:00047E66                 move.l  a1,(a6)
ROM:00047E68
ROM:00047E68 loc_47E68:
ROM:00047E68                 jsr     sub_492F8
ROM:00047E6C                 bcc.w   loc_47E76
ROM:00047E70                 lea     loc_47E88,a1
ROM:00047E74                 move.l  a1,(a6)
ROM:00047E76
ROM:00047E76 loc_47E76:
ROM:00047E76                 jsr     sub_4932C
ROM:00047E7A                 bcc.w   loc_47E84
ROM:00047E7E                 lea     loc_47F12,a1
ROM:00047E82                 move.l  a1,(a6)
ROM:00047E84
ROM:00047E84 loc_47E84:
ROM:00047E84                 bra.w   loc_489F8
ROM:00047E88
ROM:00047E88
ROM:00047E88 loc_47E88:
ROM:00047E88
ROM:00047E88                 movea.l $94(a6),a0
ROM:00047E8C                 jsr     sub_5E338
ROM:00047E92                 bcs.w   loc_47A42
ROM:00047E96                 clr.w   $28(a6)
ROM:00047E9A                 lea     (unk_28E416).l,a0
ROM:00047EA0                 jsr     ChangeAnimation
ROM:00047EA6                 lea     loc_47EAC,a1
ROM:00047EAA                 move.l  a1,(a6)
ROM:00047EAC
ROM:00047EAC loc_47EAC:
ROM:00047EAC                 jsr     sub_48FB0
ROM:00047EB0                 jsr     Animate
ROM:00047EB6                 bcc.w   loc_47EC0
ROM:00047EBA                 lea     $47A4C,a1
ROM:00047EBE                 move.l  a1,(a6)
ROM:00047EC0
ROM:00047EC0 loc_47EC0:
ROM:00047EC0                 jsr     sub_4932C
ROM:00047EC4                 bcc.w   loc_47ECE
ROM:00047EC8                 lea     loc_47F12,a1
ROM:00047ECC                 move.l  a1,(a6)
ROM:00047ECE
ROM:00047ECE loc_47ECE:
ROM:00047ECE                 bra.w   loc_489F8
ROM:00047ED2
ROM:00047ED2
ROM:00047ED2 loc_47ED2:
ROM:00047ED2
ROM:00047ED2                 addq.b  #1,$77(a6)
ROM:00047ED6                 clr.w   $28(a6)
ROM:00047EDA                 lea     (off_28E858).l,a0
ROM:00047EE0                 jsr     ChangeAnimation
ROM:00047EE6                 lea     loc_47EEC,a1
ROM:00047EEA                 move.l  a1,(a6)
ROM:00047EEC
ROM:00047EEC loc_47EEC:
ROM:00047EEC                 jsr     sub_48FB0
ROM:00047EF0                 jsr     Animate
ROM:00047EF6                 bcc.w   loc_47F00
ROM:00047EFA                 lea     $47A4C,a1
ROM:00047EFE                 move.l  a1,(a6)
ROM:00047F00
ROM:00047F00 loc_47F00:
ROM:00047F00                 jsr     sub_4932C
ROM:00047F04                 bcc.w   loc_47F0E
ROM:00047F08                 lea     loc_47F12,a1
ROM:00047F0C                 move.l  a1,(a6)
ROM:00047F0E
ROM:00047F0E loc_47F0E:
ROM:00047F0E                 bra.w   loc_489F8
ROM:00047F12
ROM:00047F12
ROM:00047F12 loc_47F12:
ROM:00047F12
ROM:00047F12                 move.w  $28(a6),d0
ROM:00047F16                 asr.w   #1,d0
ROM:00047F18                 move.w  d0,$28(a6)
ROM:00047F1C                 lea     (off_28E75E).l,a0
ROM:00047F22                 jsr     ChangeAnimation
ROM:00047F28                 lea     loc_47F2E,a1
ROM:00047F2C                 move.l  a1,(a6)
ROM:00047F2E
ROM:00047F2E loc_47F2E:
ROM:00047F2E                 jsr     sub_27C8C
ROM:00047F34                 bcc.w   loc_47F3E
ROM:00047F38                 lea     loc_47F48,a1
ROM:00047F3C                 move.l  a1,(a6)
ROM:00047F3E
ROM:00047F3E loc_47F3E:
ROM:00047F3E                 jsr     Animate
ROM:00047F44                 bra.w   loc_489F8
ROM:00047F48
ROM:00047F48
ROM:00047F48 loc_47F48:
ROM:00047F48                 clr.w   $28(a6)
ROM:00047F4C                 lea     (off_28E79C).l,a0
ROM:00047F52                 jsr     ChangeAnimation
ROM:00047F58                 lea     loc_47F5E,a1
ROM:00047F5C                 move.l  a1,(a6)
ROM:00047F5E
ROM:00047F5E loc_47F5E:
ROM:00047F5E                 jsr     sub_48FB0
ROM:00047F62                 jsr     Animate
ROM:00047F68                 bcc.w   loc_47F72
ROM:00047F6C                 lea     $47A4C,a1
ROM:00047F70                 move.l  a1,(a6)
ROM:00047F72
ROM:00047F72 loc_47F72:
ROM:00047F72                 jsr     sub_4932C
ROM:00047F76                 bcc.w   loc_47F80
ROM:00047F7A                 lea     loc_47F12,a1
ROM:00047F7E                 move.l  a1,(a6)
ROM:00047F80
ROM:00047F80 loc_47F80:
ROM:00047F80                 bra.w   loc_489F8
ROM:00047F84
ROM:00047F84
ROM:00047F84 loc_47F84:
ROM:00047F84
ROM:00047F84                 tst.b   $85(a6)
ROM:00047F88                 beq.w   loc_47FAA
ROM:00047F8C                 movea.l $94(a6),a0
ROM:00047F90                 jsr     loc_32DE0
ROM:00047F96                 bcc.w   loc_47FAA
ROM:00047F9A                 movea.l $94(a6),a0
ROM:00047F9E                 move.w  $24(a0),d0
ROM:00047FA2                 cmp.w   $24(a6),d0
ROM:00047FA6                 beq.w   loc_482C0
ROM:00047FAA
ROM:00047FAA loc_47FAA:
ROM:00047FAA
ROM:00047FAA                 clr.b   $77(a6)
ROM:00047FAE                 clr.w   $28(a6)
ROM:00047FB2                 movea.l $94(a6),a0
ROM:00047FB6                 jsr     sub_5E070
ROM:00047FBC                 add.b   $7E(a6),d0
ROM:00047FC0                 move.b  d0,$7A(a6)
ROM:00047FC4                 move.b  $7D(a6),d1
ROM:00047FC8                 jsr     sub_4939C
ROM:00047FCC                 bcs.w   loc_47FD4
ROM:00047FD0                 move.b  #$80,d1
ROM:00047FD4
ROM:00047FD4 loc_47FD4:
ROM:00047FD4                 move.b  $7A(a6),d0
ROM:00047FD8                 and.b   d1,d0
ROM:00047FDA                 lsr.b   #4,d0
ROM:00047FDC                 move.b  d0,$7A(a6)
ROM:00047FE0                 clr.b   $81(a6)
ROM:00047FE4                 lea     (off_28E8F4).l,a0
ROM:00047FEA                 jsr     ChangeAnimation
ROM:00047FF0                 andi.b  #$F,$7A(a6)
ROM:00047FF6                 move.b  $7A(a6),$7B(a6)
ROM:00047FFC                 cmpi.b  #8,$7A(a6)
ROM:00048002                 ble.w   loc_48018
ROM:00048006                 move.b  #1,$81(a6)
ROM:0004800C                 lea     (off_28E914).l,a0
ROM:00048012                 jsr     ChangeAnimation
ROM:00048018
ROM:00048018 loc_48018:
ROM:00048018                 lea     loc_4801E,a1
ROM:0004801C                 move.l  a1,(a6)
ROM:0004801E
ROM:0004801E loc_4801E:
ROM:0004801E                 jsr     sub_48FB0
ROM:00048022                 jsr     Animate
ROM:00048028                 bcc.w   loc_48032
ROM:0004802C                 lea     loc_48044,a1
ROM:00048030                 move.l  a1,(a6)
ROM:00048032
ROM:00048032 loc_48032:
ROM:00048032                 jsr     sub_4932C
ROM:00048036                 bcc.w   loc_48040
ROM:0004803A                 lea     loc_47F12,a1
ROM:0004803E                 move.l  a1,(a6)
ROM:00048040
ROM:00048040 loc_48040:
ROM:00048040                 bra.w   loc_489F8
ROM:00048044
ROM:00048044
ROM:00048044 loc_48044:
ROM:00048044                 clr.w   $28(a6)
ROM:00048048                 andi.b  #$F,$7A(a6)
ROM:0004804E                 tst.b   $81(a6)
ROM:00048052                 bne.w   loc_48080
ROM:00048056                 lea     (off_28E974).l,a0
ROM:0004805C                 jsr     ChangeAnimation
ROM:00048062                 clr.w   $78(a6)
ROM:00048066                 btst    #0,$3A(a6)
ROM:0004806C                 bne.w   loc_480AC
ROM:00048070                 move.b  #8,d0
ROM:00048074                 sub.b   $7A(a6),d0
ROM:00048078                 move.b  d0,$7A(a6)
ROM:0004807C                 bra.w   loc_480AC
ROM:00048080
ROM:00048080
ROM:00048080 loc_48080:
ROM:00048080                 lea     (off_28EAB0).l,a0
ROM:00048086                 jsr     ChangeAnimation
ROM:0004808C                 clr.w   $78(a6)
ROM:00048090                 subi.b  #9,$7A(a6)
ROM:00048096                 btst    #0,$3A(a6)
ROM:0004809C                 beq.w   loc_480AC
ROM:000480A0                 move.b  #6,d0
ROM:000480A4                 sub.b   $7A(a6),d0
ROM:000480A8                 move.b  d0,$7A(a6)
ROM:000480AC
ROM:000480AC loc_480AC:
ROM:000480AC
ROM:000480AC                 move.b  $7A(a6),d0
ROM:000480B0                 add.b   d0,$7A(a6)
ROM:000480B4                 lea     loc_480BA,a1
ROM:000480B8                 move.l  a1,(a6)
ROM:000480BA
ROM:000480BA loc_480BA:
ROM:000480BA                 jsr     sub_48FB0
ROM:000480BE                 jsr     Animate
ROM:000480C4                 move.b  $7A(a6),d0
ROM:000480C8                 andi.w  #$1F,d0
ROM:000480CC                 cmp.w   $78(a6),d0
ROM:000480D0                 bne.w   loc_480DA
ROM:000480D4                 lea     loc_480F0,a1
ROM:000480D8                 move.l  a1,(a6)
ROM:000480DA
ROM:000480DA loc_480DA:
ROM:000480DA                 addq.w  #1,$78(a6)
ROM:000480DE                 jsr     sub_4932C
ROM:000480E2                 bcc.w   loc_480EC
ROM:000480E6                 lea     loc_47F12,a1
ROM:000480EA                 move.l  a1,(a6)
ROM:000480EC
ROM:000480EC loc_480EC:
ROM:000480EC                 bra.w   loc_489F8
ROM:000480F0
ROM:000480F0
ROM:000480F0 loc_480F0:
ROM:000480F0                 clr.w   $28(a6)
ROM:000480F4                 subq.w  #1,$78(a6)
ROM:000480F8                 lea     (off_2BFD36).l,a0
ROM:000480FE                 jsr     GetParamDifficulty
ROM:00048104                 move.b  d0,$82(a6)
ROM:00048108
ROM:00048108 loc_48108:
ROM:00048108                 move.b  $7B(a6),d0
ROM:0004810C                 andi.w  #$F,d0
ROM:00048110                 btst    #0,$3A(a6)
ROM:00048116                 bne.w   loc_4813A
ROM:0004811A                 movea.l #off_28E1CA,a0
ROM:00048120                 lsl.w   #2,d0
ROM:00048122                 movea.l (a0,d0.w),a0
ROM:00048126                 cmpa.l  #$FFFFFFFF,a0
ROM:0004812C                 beq.w   loc_48136
ROM:00048130                 jsr     ChangeAnimation
ROM:00048136
ROM:00048136 loc_48136:
ROM:00048136                 bra.w   loc_48156
ROM:0004813A
ROM:0004813A
ROM:0004813A loc_4813A:
ROM:0004813A                 movea.l #off_28E20A,a0
ROM:00048140                 lsl.w   #2,d0
ROM:00048142                 movea.l (a0,d0.w),a0
ROM:00048146                 cmpa.l  #$FFFFFFFF,a0
ROM:0004814C                 beq.w   loc_48156
ROM:00048150                 jsr     ChangeAnimation
ROM:00048156
ROM:00048156 loc_48156:
ROM:00048156
ROM:00048156                 jsr     loc_4940E
ROM:0004815A                 lea     (off_2BFCB4).l,a0
ROM:00048160                 jsr     GetParamDifficulty
ROM:00048166                 move.w  d0,$72(a6)
ROM:0004816A                 lea     ProcBazookaSoldierFire,a1
ROM:0004816E                 move.l  a1,(a6)
ROM:00048170
