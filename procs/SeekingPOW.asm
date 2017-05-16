ROM:0003FF86 SeekingPOW:
ROM:0003FF86                 bsr.w   sub_3FECE
ROM:0003FF8A                 tst.b   $70(a6)
ROM:0003FF8E                 bne.w   loc_3FF9C
ROM:0003FF92                 lea     $40014,a1
ROM:0003FF96                 move.l  a1,(a6)
ROM:0003FF98                 bra.w   loc_3FFBC
ROM:0003FF9C
ROM:0003FF9C
ROM:0003FF9C loc_3FF9C:
ROM:0003FF9C                 btst    #5,$5A(a6)
ROM:0003FFA2                 bne.w   loc_3FFB6
ROM:0003FFA6                 tst.b   $98(a6)
ROM:0003FFAA                 bne.w   loc_3FFBC
ROM:0003FFAE                 subq.w  #1,$5C(a6)
ROM:0003FFB2                 bcc.w   loc_3FFBC
ROM:0003FFB6
ROM:0003FFB6 loc_3FFB6:
ROM:0003FFB6                 lea     $40054,a1
ROM:0003FFBA                 move.l  a1,(a6)
ROM:0003FFBC
ROM:0003FFBC loc_3FFBC:
ROM:0003FFBC
ROM:0003FFBC                 jsr     sub_770CC
ROM:0003FFC2                 tst.w   d0
ROM:0003FFC4                 bmi.w   loc_3FFE4
ROM:0003FFC8                 move.b  d0,$72(a6)
ROM:0003FFCC                 andi.b  #1,d1
ROM:0003FFD0                 beq.w   loc_3FFDE
ROM:0003FFD4                 lea     $4008C,a1
ROM:0003FFD8                 move.l  a1,(a6)
ROM:0003FFDA                 bra.w   loc_3FFE4
ROM:0003FFDE
ROM:0003FFDE
ROM:0003FFDE loc_3FFDE:
ROM:0003FFDE                 lea     loc_401A8,a1
ROM:0003FFE2                 move.l  a1,(a6)
ROM:0003FFE4
ROM:0003FFE4 loc_3FFE4:
ROM:0003FFE4
ROM:0003FFE4                 jsr     Animate
ROM:0003FFEA
ROM:0003FFEA loc_3FFEA:
ROM:0003FFEA
ROM:0003FFEA                 lea     off_3EF9A,a1
ROM:0003FFEE                 bsr.w   sub_3EE48
ROM:0003FFF2                 bcc.w   loc_40000
ROM:0003FFF6                 move.b  d0,$71(a6)
ROM:0003FFFA                 lea     loc_40268,a1
ROM:0003FFFE
ROM:0003FFFE loc_3FFFE:
ROM:0003FFFE
ROM:0003FFFE                 move.l  a1,(a6)
ROM:00040000
ROM:00040000 loc_40000:
ROM:00040000
ROM:00040000                 jsr     CheckShot?
ROM:00040006
ROM:00040006 loc_40006:
ROM:00040006                 bcc.w   loc_40010
ROM:0004000A
ROM:0004000A loc_4000A:
ROM:0004000A
ROM:0004000A                 jmp     (SetDying).l
ROM:00040010
ROM:00040010
ROM:00040010 loc_40010:
ROM:00040010
ROM:00040010                 jmp     loc_3EFCE
ROM:00040014
ROM:00040014
ROM:00040014 loc_40014:
ROM:00040014                 lea     loc_3F01C,a0
ROM:00040018                 move.l  a0,$48(a6)
ROM:0004001C                 lea     off_3F194,a0
ROM:00040020                 jsr     ChangeAnimation
ROM:00040026                 clr.w   $28(a6)
ROM:0004002A                 clr.w   $2A(a6)
ROM:0004002E                 lea     loc_40034,a1
ROM:00040032                 move.l  a1,(a6)
ROM:00040034
ROM:00040034 loc_40034:
ROM:00040034
ROM:00040034                 jsr     sub_28364
ROM:0004003A                 scs     $70(a6)
ROM:0004003E                 tst.b   $70(a6)
ROM:00040042                 beq.w   loc_4004C
ROM:00040046                 lea     loc_3FF62,a1
ROM:0004004A                 move.l  a1,(a6)
ROM:0004004C
ROM:0004004C loc_4004C:
ROM:0004004C                 jsr     Animate
ROM:00040052                 bra.s   loc_3FFEA
ROM:00040054
ROM:00040054                 clr.w   $28(a6)
ROM:00040058                 lea     off_3F488,a0
ROM:0004005C                 jsr     ChangeAnimation
ROM:00040062                 lea     loc_40068,a1
ROM:00040066                 move.l  a1,(a6)
ROM:00040068
ROM:00040068 loc_40068:
ROM:00040068                 bsr.w   sub_3FECE
ROM:0004006C                 jsr     Animate
ROM:00040072                 bcc.w   loc_40088
ROM:00040076                 bchg    #0,$3A(a6)
ROM:0004007C                 move.w  #$1E,$5C(a6)
ROM:00040082                 lea     loc_3FF62,a1
ROM:00040086                 move.l  a1,(a6)
ROM:00040088
ROM:00040088 loc_40088:
ROM:00040088                 bra.w   loc_3FFEA
ROM:0004008C
ROM:0004008C                 lea     off_3F596,a0
ROM:00040090                 jsr     ChangeAnimation
ROM:00040096                 lea     loc_4009C,a1
ROM:0004009A                 move.l  a1,(a6)
ROM:0004009C
ROM:0004009C loc_4009C:
ROM:0004009C                 clr.w   $2E(a6)
ROM:000400A0                 clr.w   $2A(a6)
ROM:000400A4                 move.b  $72(a6),d0
ROM:000400A8                 jsr     sub_77190
ROM:000400AE                 jsr     Animate
ROM:000400B4                 bcc.w   loc_400BE
ROM:000400B8                 lea     loc_400C2,a1
ROM:000400BC                 move.l  a1,(a6)
ROM:000400BE
ROM:000400BE loc_400BE:
ROM:000400BE                 bra.w   loc_3FFEA
ROM:000400C2
ROM:000400C2
ROM:000400C2 loc_400C2:
ROM:000400C2                 lea     off_3F5AC,a0
ROM:000400C6                 jsr     ChangeAnimation
ROM:000400CC                 clr.w   $2E(a6)
ROM:000400D0                 move.w  #$154,$2A(a6)
ROM:000400D6                 lea     loc_400DC,a1
ROM:000400DA                 move.l  a1,(a6)
ROM:000400DC
ROM:000400DC loc_400DC:
ROM:000400DC                 move.b  $72(a6),d0
ROM:000400E0                 jsr     sub_77190
ROM:000400E6
ROM:000400E6 loc_400E6:
ROM:000400E6                 tst.w   d0
ROM:000400E8                 bpl.w   loc_400F6
ROM:000400EC                 lea     loc_3FF24,a1
ROM:000400F0                 move.l  a1,(a6)
ROM:000400F2                 bra.w   loc_40108
ROM:000400F6
ROM:000400F6
ROM:000400F6 loc_400F6:
ROM:000400F6                 subi.w  #$24,d0
ROM:000400FA                 sub.w   $24(a6),d0
ROM:000400FE
ROM:000400FE loc_400FE:
ROM:000400FE
ROM:000400FE                 bcc.w   loc_40108
ROM:00040102                 lea     loc_40120,a1
ROM:00040106                 move.l  a1,(a6)
ROM:00040108
ROM:00040108 loc_40108:
ROM:00040108
ROM:00040108                 jsr     Animate
ROM:0004010E                 bcc.w   loc_4011C
ROM:00040112                 lea     off_3F5AC,a0
ROM:00040116                 jsr     ChangeAnimation
ROM:0004011C
ROM:0004011C loc_4011C:
ROM:0004011C                 bra.w   loc_3FFEA
ROM:00040120
ROM:00040120
ROM:00040120 loc_40120:
ROM:00040120                 lea     unk_3F636,a0
ROM:00040124                 jsr     ChangeAnimation
ROM:0004012A                 lea     loc_40130,a1
ROM:0004012E                 move.l  a1,(a6)
ROM:00040130
ROM:00040130 loc_40130:
ROM:00040130                 jsr     ObjectRelated
ROM:00040136                 jsr     Animate
ROM:0004013C                 bcc.w   loc_40146
ROM:00040140                 lea     loc_4014A,a1
ROM:00040144                 move.l  a1,(a6)
ROM:00040146
ROM:00040146 loc_40146:
ROM:00040146                 bra.w   loc_3FFEA
ROM:0004014A
ROM:0004014A
ROM:0004014A loc_4014A:
ROM:0004014A                 lea     off_3F71E,a0
ROM:0004014E                 jsr     ChangeAnimation
ROM:00040154                 move.w  #$FCCD,d0
ROM:00040158                 jsr     XSpeedRelated
ROM:0004015E                 move.w  d0,$28(a6)
ROM:00040162                 move.w  #$4C9,$2A(a6)
ROM:00040168                 move.w  #$FF0B,$2E(a6)
ROM:0004016E                 move.w  #0,$2C(a6)
ROM:00040174                 lea     loc_4017A,a1
ROM:00040178                 move.l  a1,(a6)
ROM:0004017A
ROM:0004017A loc_4017A:
ROM:0004017A                 move.w  $28(a6),d0
ROM:0004017E                 beq.w   loc_40190
ROM:00040182                 asr.w   #4,d0
ROM:00040184                 seq     d1
ROM:00040186                 ext.w   d1
ROM:00040188                 eor.w   d1,d0
ROM:0004018A                 sub.w   d1,d0
ROM:0004018C                 sub.w   d0,$28(a6)
ROM:00040190
ROM:00040190 loc_40190:
ROM:00040190                 bsr.w   sub_3FECE
ROM:00040194                 jsr     Animate
ROM:0004019A                 bcc.w   loc_401A4
ROM:0004019E                 lea     loc_3FF24,a1
ROM:000401A2                 move.l  a1,(a6)
ROM:000401A4
ROM:000401A4 loc_401A4:
ROM:000401A4                 bra.w   loc_3FFEA
ROM:000401A8
ROM:000401A8
ROM:000401A8 loc_401A8:
ROM:000401A8                 lea     off_3F72A,a0
ROM:000401AC                 jsr     ChangeAnimation
ROM:000401B2                 clr.w   $2A(a6)
ROM:000401B6                 clr.w   $2E(a6)
ROM:000401BA                 lea     loc_401C0,a1
ROM:000401BE                 move.l  a1,(a6)
ROM:000401C0
ROM:000401C0 loc_401C0:
ROM:000401C0                 move.b  $72(a6),d0
ROM:000401C4                 jsr     sub_77190
ROM:000401CA                 jsr     Animate
ROM:000401D0                 bcc.w   loc_401DA
ROM:000401D4                 lea     loc_401DE,a1
ROM:000401D8                 move.l  a1,(a6)
ROM:000401DA
ROM:000401DA loc_401DA:
ROM:000401DA                 bra.w   loc_3FFEA
ROM:000401DE
ROM:000401DE
ROM:000401DE loc_401DE:
ROM:000401DE
ROM:000401DE                 lea     loc_3F80E,a0
ROM:000401E2                 jsr     ChangeAnimation
ROM:000401E8                 clr.w   $2E(a6)
ROM:000401EC                 move.w  #$FEAC,$2A(a6)
ROM:000401F2                 lea     loc_401F8,a1
ROM:000401F6                 move.l  a1,(a6)
ROM:000401F8
ROM:000401F8 loc_401F8:
ROM:000401F8                 move.b  $72(a6),d0
ROM:000401FC
ROM:000401FC loc_401FC:
ROM:000401FC                 jsr     sub_77190
ROM:00040202                 move.w  d0,-(sp)
ROM:00040204
ROM:00040204 loc_40204:
ROM:00040204
ROM:00040204                 jsr     Animate
ROM:0004020A                 bcc.w   loc_40214
ROM:0004020E                 lea     loc_401DE,a1
ROM:00040212                 move.l  a1,(a6)
ROM:00040214
ROM:00040214 loc_40214:
ROM:00040214                 move.w  (sp)+,d0
ROM:00040216                 bpl.w   loc_40220
ROM:0004021A                 lea     loc_40014,a1
ROM:0004021E                 move.l  a1,(a6)
ROM:00040220
ROM:00040220 loc_40220:
ROM:00040220                 jsr     sub_27EBA
ROM:00040226                 bcs.w   loc_40230
ROM:0004022A                 lea     loc_40234,a1
ROM:0004022E                 move.l  a1,(a6)
ROM:00040230
ROM:00040230 loc_40230:
ROM:00040230                 bra.w   loc_3FFEA
ROM:00040234
ROM:00040234
ROM:00040234 loc_40234:
ROM:00040234                 lea     off_3F888,a0
ROM:00040238                 jsr     ChangeAnimation
ROM:0004023E                 clr.w   $28(a6)
ROM:00040242                 clr.w   $2A(a6)
ROM:00040246                 clr.b   $70(a6)
ROM:0004024A                 lea     loc_40250,a1
ROM:0004024E                 move.l  a1,(a6)
ROM:00040250
ROM:00040250 loc_40250:
ROM:00040250                 bsr.w   sub_3FECE
ROM:00040254                 jsr     Animate
ROM:0004025A                 bcc.w   loc_40264
ROM:0004025E                 lea     loc_3FF24,a1
ROM:00040262                 move.l  a1,(a6)
ROM:00040264
ROM:00040264 loc_40264:
ROM:00040264                 bra.w   loc_3FFEA
ROM:00040268
ROM:00040268
ROM:00040268 loc_40268:
ROM:00040268                 move.w  #SFXVoiceThankYou,d0
ROM:0004026C                 jsr     (PlaySFX).l
ROM:00040272                 move.b  $71(a6),d0
ROM:00040276                 bsr.w   sub_3EFA2
ROM:0004027A                 lea     ($FFFFFFFF).w,a0
ROM:0004027E
ROM:0004027E loc_4027E:
ROM:0004027E                 move.l  a0,$48(a6)
ROM:00040282                 lea     off_3F40A,a0
ROM:00040286                 jsr     ChangeAnimation
ROM:0004028C                 move.w  #$C0,d0
ROM:00040290                 sub.w   $22(a6),d0
ROM:00040294                 bmi.w   loc_402A8
ROM:00040298                 bset    #0,$3A(a6)
ROM:0004029E                 move.w  #$700,$28(a6)
ROM:000402A4                 bra.w   loc_402B4
ROM:000402A8
ROM:000402A8
ROM:000402A8 loc_402A8:
ROM:000402A8                 bclr    #0,$3A(a6)
ROM:000402AE                 move.w  #$F900,$28(a6)
ROM:000402B4
ROM:000402B4 loc_402B4:
ROM:000402B4                 move.w  #4,$30(a6)
ROM:000402BA                 lea     loc_402C0,a1
ROM:000402BE                 move.l  a1,(a6)
ROM:000402C0
ROM:000402C0 loc_402C0:
ROM:000402C0                 bsr.w   sub_3FECE
ROM:000402C4                 jsr     Animate
ROM:000402CA                 subq.w  #1,$30(a6)
ROM:000402CE                 bne.w   loc_402F0
ROM:000402D2                 bchg    #0,$3A(a6)
ROM:000402D8                 tst.b   $9B(a6)
ROM:000402DC                 beq.w   loc_402EA
ROM:000402E0                 lea     loc_40304,a1
ROM:000402E4                 move.l  a1,(a6)
ROM:000402E6                 bra.w   loc_402F0
ROM:000402EA
ROM:000402EA
ROM:000402EA loc_402EA:
ROM:000402EA                 lea     loc_4032E,a1
ROM:000402EE                 move.l  a1,(a6)
ROM:000402F0
ROM:000402F0 loc_402F0:
ROM:000402F0
ROM:000402F0                 jsr     CheckShot?
ROM:000402F6                 bcc.w   loc_40300
ROM:000402FA                 jmp     (SetDying).l
ROM:00040300
ROM:00040300
ROM:00040300 loc_40300:
ROM:00040300                 bra.w   loc_3EFCE
ROM:00040304
ROM:00040304
ROM:00040304 loc_40304:
ROM:00040304                 lea     off_3F49E,a0
ROM:00040308                 jsr     ChangeAnimation
ROM:0004030E                 clr.w   $28(a6)
ROM:00040312                 lea     ProcPOWGiveUnderpants,a1
ROM:00040316                 move.l  a1,(a6)
ROM:00040318
