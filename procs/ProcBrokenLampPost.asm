ROM:00052E02 ProcBrokenLampPost:
ROM:00052E02                 jsr     ObjectRelated
ROM:00052E08                 jsr     Animate
ROM:00052E0E                 jsr     CheckOutOfScreen
ROM:00052E14                 bcc.w   locret_52E1E
ROM:00052E18                 jmp     (SetDying).l
ROM:00052E1E
ROM:00052E1E
ROM:00052E1E locret_52E1E:
ROM:00052E1E                 rts
ROM:00052E20
ROM:00052E20                 movea.l $3C(a6),a1
ROM:00052E24                 jsr     loc_2942A
ROM:00052E2A                 lea     (off_2983F0).l,a2
ROM:00052E30                 move.l  a2,$80(a6)
ROM:00052E34                 lea     (stru_29754C).l,a0
ROM:00052E3A                 jsr     ChangeAnimation
ROM:00052E40                 bra.w   loc_52FC0
ROM:00052E44
ROM:00052E44                 movea.l $3C(a6),a1
ROM:00052E48                 jsr     loc_2942A
ROM:00052E4E                 lea     (off_298404).l,a2
ROM:00052E54                 move.l  a2,$80(a6)
ROM:00052E58                 lea     (stru_29754C).l,a0
ROM:00052E5E                 jsr     ChangeAnimation
ROM:00052E64                 bra.w   loc_52FC0
ROM:00052E68
ROM:00052E68                 movea.l $3C(a6),a1
ROM:00052E6C                 jsr     loc_2942A
ROM:00052E72                 lea     (off_298418).l,a2
ROM:00052E78                 move.l  a2,$80(a6)
ROM:00052E7C                 lea     (stru_297562).l,a0
ROM:00052E82                 jsr     ChangeAnimation
ROM:00052E88                 bra.w   loc_52FC0
ROM:00052E8C
ROM:00052E8C                 movea.l $3C(a6),a1
ROM:00052E90                 jsr     loc_2942A
ROM:00052E96                 lea     (off_29842C).l,a2
ROM:00052E9C                 move.l  a2,$80(a6)
ROM:00052EA0                 lea     ($38F14).l,a1
ROM:00052EA6                 jsr     (SpawnObj).l
ROM:00052EAC                 jsr     InitSamePositions
ROM:00052EB2                 addi.w  #7,$22(a0)
ROM:00052EB8                 addi.w  #$20,$24(a0)
ROM:00052EBE                 move.b  #1,$98(a0)
ROM:00052EC4                 lea     ($38F48).l,a1
ROM:00052ECA                 jsr     (SpawnObj).l
ROM:00052ED0                 jsr     InitSamePositions
ROM:00052ED6                 addi.w  #$30,$22(a0)
ROM:00052EDC                 addi.w  #$20,$24(a0)
ROM:00052EE2                 move.b  #1,$98(a0)
ROM:00052EE8                 lea     (off_2986FC).l,a1
ROM:00052EEE                 jsr     sub_43FAC
ROM:00052EF4                 movea.l $80(a6),a2
ROM:00052EF8                 jsr     InitObjectGFX?
ROM:00052EFE                 jmp     (SetDying).l
ROM:00052F04
ROM:00052F04                 rts
ROM:00052F06
ROM:00052F06                 lea     (stru_297562).l,a0
ROM:00052F0C                 jsr     ChangeAnimation
ROM:00052F12                 bra.w   loc_52FC0
ROM:00052F16
ROM:00052F16                 movea.l $3C(a6),a1
ROM:00052F1A                 jsr     loc_2942A
ROM:00052F20                 lea     (off_298440).l,a2
ROM:00052F26                 move.l  a2,$80(a6)
ROM:00052F2A                 lea     (stru_297578).l,a0
ROM:00052F30                 jsr     ChangeAnimation
ROM:00052F36                 bra.w   loc_52FC0
ROM:00052F3A
ROM:00052F3A                 movea.l $3C(a6),a1
ROM:00052F3E                 jsr     loc_2942A
ROM:00052F44                 lea     (off_298454).l,a2
ROM:00052F4A                 move.l  a2,$80(a6)
ROM:00052F4E                 lea     ($38F14).l,a1
ROM:00052F54                 jsr     (SpawnObj).l
ROM:00052F5A                 jsr     InitSamePositions
ROM:00052F60                 addi.w  #7,$22(a0)
ROM:00052F66                 addi.w  #$20,$24(a0)
ROM:00052F6C                 move.b  #1,$98(a0)
ROM:00052F72                 lea     ($38F48).l,a1
ROM:00052F78                 jsr     (SpawnObj).l
ROM:00052F7E                 jsr     InitSamePositions
ROM:00052F84                 addi.w  #$30,$22(a0)
ROM:00052F8A                 addi.w  #$20,$24(a0)
ROM:00052F90                 move.b  #1,$98(a0)
ROM:00052F96                 lea     (off_2986FC).l,a1
ROM:00052F9C                 jsr     sub_43FAC
ROM:00052FA2                 movea.l $80(a6),a2
ROM:00052FA6                 jsr     InitObjectGFX?
ROM:00052FAC                 jmp     (SetDying).l
ROM:00052FB2
ROM:00052FB2                 rts
ROM:00052FB4
ROM:00052FB4                 lea     (stru_297578).l,a0
ROM:00052FBA                 jsr     ChangeAnimation
ROM:00052FC0
ROM:00052FC0 loc_52FC0:
ROM:00052FC0
ROM:00052FC0                 move.w  #$40,$70(a6)
ROM:00052FC6                 move.w  #$28,$66(a6)
ROM:00052FCC                 move.b  #0,$21(a6)
ROM:00052FD2                 lea     loc_52FD8,a1
ROM:00052FD6                 move.l  a1,(a6)
ROM:00052FD8
ROM:00052FD8 loc_52FD8:
ROM:00052FD8                 jsr     ObjectRelated
ROM:00052FDE                 jsr     Animate
ROM:00052FE4                 jsr     CheckShot?
ROM:00052FEA                 bcc.w   loc_53000
ROM:00052FEE                 lea     (SoundCodeGunFire).l,a0
ROM:00052FF4                 jsr     SoundRelated_0
ROM:00052FFA                 bclr    #3,$13(a6)
ROM:00053000
ROM:00053000 loc_53000:
ROM:00053000                 jsr     CheckIfDead
ROM:00053006                 bcc.w   loc_530BA
ROM:0005300A                 move.w  #$1035,d0
ROM:0005300E                 jsr     (PlaySFX).l
ROM:00053014                 lea     ($FFFFFFFF).w,a0
ROM:00053018                 move.l  a0,$48(a6)
ROM:0005301C                 move.l  #$300,d0
ROM:00053022                 jsr     sub_51A28
ROM:00053028                 lea     ($38F14).l,a1
ROM:0005302E                 jsr     (SpawnObj).l
ROM:00053034                 jsr     InitSamePositions
ROM:0005303A                 addi.w  #7,$22(a0)
ROM:00053040                 addi.w  #$20,$24(a0)
ROM:00053046                 move.b  #1,$98(a0)
ROM:0005304C                 lea     ($38F48).l,a1
ROM:00053052                 jsr     (SpawnObj).l
ROM:00053058                 jsr     InitSamePositions
ROM:0005305E                 addi.w  #$30,$22(a0)
ROM:00053064                 addi.w  #$20,$24(a0)
ROM:0005306A                 move.b  #1,$98(a0)
ROM:00053070                 jsr     nullsub_2
ROM:00053076                 lea     (off_2986FC).l,a1
ROM:0005307C                 jsr     sub_43FAC
ROM:00053082                 subi.w  #$10,$24(a6)
ROM:00053088                 lea     (unk_297FC0).l,a1
ROM:0005308E                 jsr     SpawnDebris?
ROM:00053094                 lea     (off_297FD2).l,a1
ROM:0005309A                 jsr     SpawnDebris?
ROM:000530A0                 lea     (unk_298086).l,a1
ROM:000530A6                 jsr     SpawnDebris?
ROM:000530AC                 movea.l $80(a6),a2
ROM:000530B0                 jsr     InitObjectGFX?
ROM:000530B6                 bra.w   loc_530C4
ROM:000530BA
ROM:000530BA
ROM:000530BA loc_530BA:
ROM:000530BA                 jsr     CheckOutOfScreen
ROM:000530C0                 bcc.w   locret_530CA
ROM:000530C4
ROM:000530C4 loc_530C4:
ROM:000530C4                 jmp     (SetDying).l
ROM:000530CA
ROM:000530CA
ROM:000530CA locret_530CA:
ROM:000530CA                 rts
ROM:000530CC
ROM:000530CC                 movea.l $3C(a6),a1
ROM:000530D0                 jsr     loc_2942A
ROM:000530D6                 move.b  #0,$21(a6)
ROM:000530DC                 lea     (off_298468).l,a2
ROM:000530E2                 move.l  a2,$80(a6)
ROM:000530E6                 lea     (stru_29758E).l,a0
ROM:000530EC                 jsr     ChangeAnimation
ROM:000530F2                 bra.w   loc_5326C
ROM:000530F6
ROM:000530F6                 movea.l $3C(a6),a1
ROM:000530FA                 jsr     loc_2942A
ROM:00053100                 move.b  #0,$21(a6)
ROM:00053106                 lea     (off_29847C).l,a2
ROM:0005310C                 move.l  a2,$80(a6)
ROM:00053110                 lea     (stru_29758E).l,a0
ROM:00053116                 jsr     ChangeAnimation
ROM:0005311C                 bra.w   loc_5326C
ROM:00053120
ROM:00053120                 movea.l $3C(a6),a1
ROM:00053124                 jsr     loc_2942A
ROM:0005312A                 move.b  #1,$21(a6)
ROM:00053130                 lea     (off_298490).l,a2
ROM:00053136                 move.l  a2,$80(a6)
ROM:0005313A                 lea     (stru_2975A4).l,a0
ROM:00053140                 jsr     ChangeAnimation
ROM:00053146                 bra.w   loc_5326C
ROM:0005314A
ROM:0005314A                 movea.l $3C(a6),a1
ROM:0005314E                 jsr     loc_2942A
ROM:00053154                 move.b  #1,$21(a6)
ROM:0005315A                 lea     (off_2984A4).l,a2
ROM:00053160                 move.l  a2,$80(a6)
ROM:00053164                 lea     (stru_2975A4).l,a0
ROM:0005316A                 jsr     ChangeAnimation
ROM:00053170                 bra.w   loc_5326C
ROM:00053174
ROM:00053174                 movea.l $3C(a6),a1
ROM:00053178                 jsr     loc_2942A
ROM:0005317E                 move.b  #2,$21(a6)
ROM:00053184                 lea     (off_2984B8).l,a2
ROM:0005318A                 move.l  a2,$80(a6)
ROM:0005318E                 lea     (stru_2975BA).l,a0
ROM:00053194                 jsr     ChangeAnimation
ROM:0005319A                 bra.w   loc_5326C
ROM:0005319E
ROM:0005319E                 movea.l $3C(a6),a1
ROM:000531A2                 jsr     loc_2942A
ROM:000531A8                 move.b  #2,$21(a6)
ROM:000531AE                 lea     (off_2984CC).l,a2
ROM:000531B4                 move.l  a2,$80(a6)
ROM:000531B8                 lea     (stru_2975BA).l,a0
ROM:000531BE                 jsr     ChangeAnimation
ROM:000531C4                 bra.w   loc_5326C
ROM:000531C8
ROM:000531C8                 movea.l $3C(a6),a1
ROM:000531CC                 jsr     loc_2942A
ROM:000531D2                 move.b  #3,$21(a6)
ROM:000531D8                 lea     (off_2984E0).l,a2
ROM:000531DE                 move.l  a2,$80(a6)
ROM:000531E2                 lea     (stru_2975D0).l,a0
ROM:000531E8                 jsr     ChangeAnimation
ROM:000531EE                 bra.w   loc_5326C
ROM:000531F2
ROM:000531F2                 movea.l $3C(a6),a1
ROM:000531F6                 jsr     loc_2942A
ROM:000531FC                 move.b  #3,$21(a6)
ROM:00053202                 lea     (off_2984F4).l,a2
ROM:00053208                 move.l  a2,$80(a6)
ROM:0005320C                 lea     (stru_2975D0).l,a0
ROM:00053212                 jsr     ChangeAnimation
ROM:00053218                 bra.w   loc_5326C
ROM:0005321C
ROM:0005321C                 movea.l $3C(a6),a1
ROM:00053220                 jsr     loc_2942A
ROM:00053226                 move.b  #4,$21(a6)
ROM:0005322C                 lea     (off_298508).l,a2
ROM:00053232                 move.l  a2,$80(a6)
ROM:00053236                 lea     (stru_2975E6).l,a0
ROM:0005323C                 jsr     ChangeAnimation
ROM:00053242                 bra.w   loc_5326C
ROM:00053246
ROM:00053246                 movea.l $3C(a6),a1
ROM:0005324A                 jsr     loc_2942A
ROM:00053250                 move.b  #4,$21(a6)
ROM:00053256                 lea     (off_29851C).l,a2
ROM:0005325C                 move.l  a2,$80(a6)
ROM:00053260                 lea     (stru_2975E6).l,a0
ROM:00053266                 jsr     ChangeAnimation
ROM:0005326C
ROM:0005326C loc_5326C:
ROM:0005326C
ROM:0005326C                 move.w  #$40,$70(a6)
ROM:00053272                 move.w  #$28,$66(a6)
ROM:00053278                 lea     loc_5327E,a1
ROM:0005327C                 move.l  a1,(a6)
ROM:0005327E
ROM:0005327E loc_5327E:
ROM:0005327E                 jsr     ObjectRelated
ROM:00053284                 jsr     Animate
ROM:0005328A                 jsr     CheckShot?
ROM:00053290                 bcc.w   loc_532A6
ROM:00053294                 lea     (SoundCodeGunFire).l,a0
ROM:0005329A                 jsr     SoundRelated_0
ROM:000532A0                 bclr    #3,$13(a6)
ROM:000532A6
ROM:000532A6 loc_532A6:
ROM:000532A6                 jsr     CheckIfDead
ROM:000532AC                 bcc.w   loc_532F4
ROM:000532B0                 jsr     sub_53E0C
ROM:000532B4                 lea     ($FFFFFFFF).w,a0
ROM:000532B8                 move.l  a0,$48(a6)
ROM:000532BC                 move.l  #$500,d0
ROM:000532C2                 jsr     sub_51A28
ROM:000532C8                 addi.w  #$10,$22(a6)
ROM:000532CE                 lea     (unk_297FF6).l,a1
ROM:000532D4                 jsr     SpawnDebris?
ROM:000532DA                 lea     (off_298008).l,a1
ROM:000532E0                 jsr     SpawnDebris?
ROM:000532E6                 movea.l $80(a6),a2
ROM:000532EA                 jsr     InitObjectGFX?
ROM:000532F0                 bra.w   loc_532FE
ROM:000532F4
ROM:000532F4
ROM:000532F4 loc_532F4:
ROM:000532F4                 jsr     CheckOutOfScreen
ROM:000532FA                 bcc.w   locret_53304
ROM:000532FE
ROM:000532FE loc_532FE:
ROM:000532FE                 jmp     (SetDying).l
ROM:00053304
ROM:00053304
ROM:00053304 locret_53304:
ROM:00053304                 rts
ROM:00053306
ROM:00053306                 movea.l $3C(a6),a1
ROM:0005330A                 jsr     loc_2942A
ROM:00053310                 move.w  #$36,d1
ROM:00053314                 jsr     (sub_236E).l
ROM:0005331A                 move.w  #$40,$70(a6)
ROM:00053320                 move.w  #$64,$66(a6)
ROM:00053326                 lea     (stru_2975FC).l,a0
ROM:0005332C                 jsr     ChangeAnimation
ROM:00053332                 jsr     ObjectRelated
ROM:00053338                 move.l  #unk_2988EA,$60(a6)
ROM:00053340                 lea     ($EA3FA).l,a1
ROM:00053346                 move.w  #$74,d0
ROM:0005334A                 move.b  #0,$74(a6)
ROM:00053350                 jsr     sub_4429E
ROM:00053356                 lea     loc_5335C,a1
ROM:0005335A                 move.l  a1,(a6)
ROM:0005335C
ROM:0005335C loc_5335C:
ROM:0005335C                 clr.b   (byte_10E39A).l
ROM:00053362                 jsr     ObjectRelated
ROM:00053368                 jsr     sub_28998
ROM:0005336E                 jsr     Animate
ROM:00053374                 jsr     CheckShot?
ROM:0005337A                 bcc.w   loc_53390
ROM:0005337E                 lea     (SoundCodeGunFire).l,a0
ROM:00053384                 jsr     SoundRelated_0
ROM:0005338A                 bclr    #3,$13(a6)
ROM:00053390
ROM:00053390 loc_53390:
ROM:00053390                 jsr     CheckIfDead
ROM:00053396                 bcc.w   loc_533C8
ROM:0005339A                 bclr    #0,$13(a6)
ROM:000533A0                 move.w  #$1023,d0
ROM:000533A4                 jsr     (PlaySFX).l
ROM:000533AA                 lea     (unk_29801A).l,a1
ROM:000533B0                 jsr     SpawnDebris?
ROM:000533B6                 lea     (off_29802C).l,a1
ROM:000533BC                 jsr     SpawnDebris?
ROM:000533C2                 lea     $533DA,a1
ROM:000533C6                 move.l  a1,(a6)
ROM:000533C8
ROM:000533C8 loc_533C8:
ROM:000533C8                 jsr     CheckOutOfScreen
ROM:000533CE                 bcc.w   locret_533D8
ROM:000533D2                 jmp     (SetDying).l
ROM:000533D8
ROM:000533D8
ROM:000533D8 locret_533D8:
ROM:000533D8                 rts
ROM:000533DA
ROM:000533DA                 lea     (off_298530).l,a2
ROM:000533E0                 jsr     InitObjectGFX?
ROM:000533E6                 move.w  #$64,$66(a6)
ROM:000533EC                 lea     (stru_297612).l,a0
ROM:000533F2                 jsr     ChangeAnimation
ROM:000533F8                 lea     loc_533FE,a1
ROM:000533FC                 move.l  a1,(a6)
ROM:000533FE
ROM:000533FE loc_533FE:
ROM:000533FE                 clr.b   (byte_10E39A).l
ROM:00053404                 jsr     ObjectRelated
ROM:0005340A                 jsr     sub_28998
ROM:00053410                 jsr     Animate
ROM:00053416                 jsr     CheckShot?
ROM:0005341C                 bcc.w   loc_53432
ROM:00053420                 lea     (SoundCodeGunFire).l,a0
ROM:00053426                 jsr     SoundRelated_0
ROM:0005342C                 bclr    #3,$13(a6)
ROM:00053432
ROM:00053432 loc_53432:
ROM:00053432                 jsr     CheckIfDead
ROM:00053438                 bcc.w   loc_53470
ROM:0005343C                 move.w  #$1030,d0
ROM:00053440                 jsr     (PlaySFX).l
ROM:00053446                 lea     (unk_29801A).l,a1
ROM:0005344C                 jsr     SpawnDebris?
ROM:00053452                 lea     (off_29802C).l,a1
ROM:00053458                 jsr     SpawnDebris?
ROM:0005345E                 lea     (unk_2980D8).l,a1
ROM:00053464                 jsr     SpawnDebris?
ROM:0005346A                 lea     $53482,a1
ROM:0005346E                 move.l  a1,(a6)
ROM:00053470
ROM:00053470 loc_53470:
ROM:00053470                 jsr     CheckOutOfScreen
ROM:00053476                 bcc.w   locret_53480
ROM:0005347A                 jmp     (SetDying).l
ROM:00053480
ROM:00053480
ROM:00053480 locret_53480:
ROM:00053480                 rts
ROM:00053482
ROM:00053482                 move.l  #$2000,d0
ROM:00053488                 jsr     sub_51A28
ROM:0005348E                 move.b  #$FF,$74(a6)
ROM:00053494                 lea     (off_298544).l,a2
ROM:0005349A                 jsr     InitObjectGFX?
ROM:000534A0                 lea     ($FFFFFFFF).w,a0
ROM:000534A4                 move.l  a0,$48(a6)
ROM:000534A8                 lea     (stru_297622).l,a0
ROM:000534AE                 jsr     ChangeAnimation
ROM:000534B4                 lea     $534BA,a1
ROM:000534B8                 move.l  a1,(a6)
ROM:000534BA                 jsr     ObjectRelated
ROM:000534C0                 jsr     Animate
ROM:000534C6                 jsr     CheckOutOfScreen
ROM:000534CC                 bcc.w   locret_534D6
ROM:000534D0                 jmp     (SetDying).l
ROM:000534D6
ROM:000534D6
ROM:000534D6 locret_534D6:
ROM:000534D6                 rts
ROM:000534D8
ROM:000534D8                 movea.l $3C(a6),a1
ROM:000534DC                 jsr     loc_2942A
ROM:000534E2                 move.w  #$36,d1
ROM:000534E6                 jsr     (sub_236E).l
ROM:000534EC                 move.w  #$C0,$70(a6)
ROM:000534F2                 move.w  #$28,$66(a6)
ROM:000534F8                 lea     (stru_297632).l,a0
ROM:000534FE                 jsr     ChangeAnimation
ROM:00053504                 lea     loc_5350A,a1
ROM:00053508                 move.l  a1,(a6)
ROM:0005350A
ROM:0005350A loc_5350A:
ROM:0005350A                 jsr     ObjectRelated
ROM:00053510                 jsr     Animate
ROM:00053516                 cmpi.w  #$90,$22(a6)
ROM:0005351C                 bgt.w   loc_53590
ROM:00053520                 cmpi.w  #$FFE0,$22(a6)
ROM:00053526                 blt.w   loc_5357E
ROM:0005352A                 jsr     CheckShot?
ROM:00053530                 bcc.w   loc_53546
ROM:00053534                 lea     (SoundCodeGunFire).l,a0
ROM:0005353A                 jsr     SoundRelated_0
ROM:00053540                 bclr    #3,$13(a6)
ROM:00053546
ROM:00053546 loc_53546:
ROM:00053546                 jsr     CheckIfDead
ROM:0005354C                 bcc.w   loc_5357E
ROM:00053550                 bclr    #0,$13(a6)
ROM:00053556                 move.w  #$1023,d0
ROM:0005355A                 jsr     (PlaySFX).l
ROM:00053560                 lea     (unk_29803E).l,a1
ROM:00053566                 jsr     SpawnDebris?
ROM:0005356C                 lea     (unk_298050).l,a1
ROM:00053572                 jsr     SpawnDebris?
ROM:00053578                 lea     loc_5359E,a1
ROM:0005357C                 move.l  a1,(a6)
ROM:0005357E
ROM:0005357E loc_5357E:
ROM:0005357E
ROM:0005357E                 jsr     CheckOutOfScreen
ROM:00053584                 bcc.w   locret_5358E
ROM:00053588                 jmp     (SetDying).l
ROM:0005358E
ROM:0005358E
ROM:0005358E locret_5358E:
ROM:0005358E                 rts
ROM:00053590
ROM:00053590
ROM:00053590 loc_53590:
ROM:00053590                 bclr    #3,$13(a6)
ROM:00053596                 bclr    #0,$13(a6)
ROM:0005359C                 rts
ROM:0005359E
ROM:0005359E
ROM:0005359E loc_5359E:
ROM:0005359E                 cmpi.w  #0,$38(a6)
ROM:000535A4                 beq.w   loc_535B0
ROM:000535A8                 jsr     sub_53F2E
ROM:000535AC                 bra.w   loc_535B4
ROM:000535B0
ROM:000535B0
ROM:000535B0 loc_535B0:
ROM:000535B0                 jsr     sub_53EE2
ROM:000535B4
ROM:000535B4 loc_535B4:
ROM:000535B4                 move.w  #$28,$66(a6)
ROM:000535BA                 lea     (stru_297648).l,a0
ROM:000535C0                 jsr     ChangeAnimation
ROM:000535C6                 lea     loc_535CC,a1
ROM:000535CA                 move.l  a1,(a6)
ROM:000535CC
ROM:000535CC loc_535CC:
ROM:000535CC                 jsr     ObjectRelated
ROM:000535D2                 jsr     Animate
ROM:000535D8                 cmpi.w  #$FFE0,$22(a6)
ROM:000535DE                 blt.s   loc_5357E
ROM:000535E0                 jsr     CheckShot?
ROM:000535E6                 bcc.w   loc_535FC
ROM:000535EA                 lea     (SoundCodeGunFire).l,a0
ROM:000535F0                 jsr     SoundRelated_0
ROM:000535F6                 bclr    #3,$13(a6)
ROM:000535FC
ROM:000535FC loc_535FC:
ROM:000535FC                 jsr     CheckIfDead
ROM:00053602                 bcc.w   loc_53640
ROM:00053606                 bclr    #0,$13(a6)
ROM:0005360C                 move.w  #$1030,d0
ROM:00053610                 jsr     (PlaySFX).l
ROM:00053616                 lea     (unk_29803E).l,a1
ROM:0005361C                 jsr     SpawnDebris?
ROM:00053622                 lea     (unk_298050).l,a1
ROM:00053628                 jsr     SpawnDebris?
ROM:0005362E                 lea     (unk_2980EA).l,a1
ROM:00053634                 jsr     SpawnDebris?
ROM:0005363A                 lea     $53652,a1
ROM:0005363E                 move.l  a1,(a6)
ROM:00053640
ROM:00053640 loc_53640:
ROM:00053640                 jsr     CheckOutOfScreen
ROM:00053646                 bcc.w   locret_53650
ROM:0005364A                 jmp     (SetDying).l
ROM:00053650
ROM:00053650
ROM:00053650 locret_53650:
ROM:00053650                 rts
ROM:00053652
ROM:00053652                 move.l  #$2000,d0
ROM:00053658                 jsr     sub_51A28
ROM:0005365E                 cmpi.w  #0,$38(a6)
ROM:00053664                 beq.w   loc_53670
ROM:00053668                 jsr     loc_53F54
ROM:0005366C                 bra.w   loc_53674
ROM:00053670
ROM:00053670
ROM:00053670 loc_53670:
ROM:00053670                 jsr     loc_53F08
ROM:00053674
ROM:00053674 loc_53674:
ROM:00053674                 lea     ($FFFFFFFF).w,a0
ROM:00053678                 move.l  a0,$48(a6)
ROM:0005367C                 lea     (stru_297658).l,a0
ROM:00053682                 jsr     ChangeAnimation
ROM:00053688                 lea     loc_5368E,a1
ROM:0005368C                 move.l  a1,(a6)
ROM:0005368E
ROM:0005368E loc_5368E:
ROM:0005368E                 jsr     ObjectRelated
ROM:00053694                 jsr     Animate
ROM:0005369A                 jsr     CheckOutOfScreen
ROM:000536A0                 bcc.w   locret_536AA
ROM:000536A4                 jmp     (SetDying).l
ROM:000536AA
ROM:000536AA
ROM:000536AA locret_536AA:
ROM:000536AA                 rts
ROM:000536AC
ROM:000536AC
ROM:000536AC loc_536AC:
ROM:000536AC                 move.w  #$19,d1
ROM:000536B0                 move.w  #$C,d2
ROM:000536B4                 move.w  #2,d3
ROM:000536B8                 move.w  #1,d4
ROM:000536BC                 jsr     (sub_2C26).l
ROM:000536C2                 move.w  #$1B,d1
ROM:000536C6                 move.w  #$E,d2
ROM:000536CA                 move.w  #2,d3
ROM:000536CE                 move.w  #1,d4
ROM:000536D2                 jsr     (sub_2C26).l
ROM:000536D8                 move.w  #$B4,$72(a6)
ROM:000536DE                 lea     loc_536E4,a1
ROM:000536E2                 move.l  a1,(a6)
ROM:000536E4
ROM:000536E4 loc_536E4:
ROM:000536E4                 subq.w  #1,$72(a6)
ROM:000536E8                 bne.w   loc_536F2
ROM:000536EC                 lea     loc_5370A,a1
ROM:000536F0                 move.l  a1,(a6)
ROM:000536F2
ROM:000536F2 loc_536F2:
ROM:000536F2                 move.l  (dword_106F5C).l,d0
ROM:000536F8                 swap    d0
ROM:000536FA                 cmpi.w  #$140,d0
ROM:000536FE                 blt.w   locret_53708
ROM:00053702                 jmp     (SetDying).l
ROM:00053708
ROM:00053708
ROM:00053708 locret_53708:
ROM:00053708                 rts
ROM:0005370A
ROM:0005370A
ROM:0005370A loc_5370A:
ROM:0005370A                 move.w  #$19,d1
ROM:0005370E                 move.w  #$D,d2
ROM:00053712                 move.w  #1,d3
ROM:00053716                 move.w  #1,d4
ROM:0005371A                 jsr     (sub_2C26).l
ROM:00053720                 move.w  #$1B,d1
ROM:00053724                 move.w  #$F,d2
ROM:00053728                 move.w  #1,d3
ROM:0005372C                 move.w  #1,d4
ROM:00053730                 jsr     (sub_2C26).l
ROM:00053736                 move.w  #$78,$72(a6)
ROM:0005373C                 lea     loc_53742,a1
ROM:00053740                 move.l  a1,(a6)
ROM:00053742
ROM:00053742 loc_53742:
ROM:00053742                 subq.w  #1,$72(a6)
ROM:00053746                 bne.w   loc_53750
ROM:0005374A                 lea     loc_536AC,a1
ROM:0005374E                 move.l  a1,(a6)
ROM:00053750
ROM:00053750 loc_53750:
ROM:00053750                 move.l  (dword_106F5C).l,d0
ROM:00053756                 swap    d0
ROM:00053758                 cmpi.w  #$140,d0
ROM:0005375C                 blt.w   locret_53766
ROM:00053760                 jmp     (SetDying).l
ROM:00053766
ROM:00053766
ROM:00053766 locret_53766:
ROM:00053766                 rts
ROM:00053768
ROM:00053768
ROM:00053768 loc_53768:
ROM:00053768                 move.w  #$A,d1
ROM:0005376C                 jsr     (sub_236E).l
ROM:00053772                 jsr     loc_53E9C
ROM:00053776                 movea.l $C(a6),a0
ROM:0005377A                 move.w  $54(a0),$22(a6)
ROM:00053780                 move.w  $56(a0),$24(a6)
ROM:00053786                 move.w  #$3FF,d0
ROM:0005378A                 jsr     sub_5EA1C
ROM:00053790                 addq.w  #1,d0
ROM:00053792                 move.w  d0,$36(a6)
ROM:00053796                 jmp     loc_6DCE0
ROM:0005379C
ROM:0005379C                 move.w  #$B,d1
ROM:000537A0                 jsr     (sub_236E).l
ROM:000537A6                 bra.w   loc_53804
ROM:000537AA
ROM:000537AA                 move.w  #$B,d1
ROM:000537AE                 jsr     (sub_236E).l
ROM:000537B4                 jsr     ClearObjStuff
ROM:000537BA                 move.w  #$1FF,d0
ROM:000537BE                 jsr     sub_5EA1C
ROM:000537C4                 move.w  d0,$2A(a6)
ROM:000537C8                 move.w  #$FFF0,$2E(a6)
ROM:000537CE                 move.w  #$FF,d0
ROM:000537D2                 jsr     sub_5EA1C
ROM:000537D8                 btst    #0,d0
ROM:000537DC                 beq.w   loc_537E2
ROM:000537E0                 neg.w   d0
ROM:000537E2
ROM:000537E2 loc_537E2:
ROM:000537E2                 move.w  d0,$28(a6)
ROM:000537E6                 bra.w   loc_53828
ROM:000537EA
ROM:000537EA
