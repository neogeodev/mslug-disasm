ROM:000541B6 ProcBalcony:
ROM:000541B6                 jsr     ObjectRelated
ROM:000541BC                 jsr     sub_28108
ROM:000541C2                 jsr     Animate
ROM:000541C8                 jsr     CheckShot?
ROM:000541CE                 bcc.w   loc_541E4
ROM:000541D2                 lea     (SoundCodeGunFire).l,a0
ROM:000541D8                 jsr     SoundRelated_0
ROM:000541DE                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:000541E4
ROM:000541E4 loc_541E4:
ROM:000541E4                 jsr     CheckIfDead
ROM:000541EA                 bcc.w   loc_54242
ROM:000541EE                 bclr    #0,$13(a6)
ROM:000541F4                 move.l  #$3000,d0
ROM:000541FA                 jsr     sub_51A28
ROM:00054200                 move.w  #$1023,d0
ROM:00054204                 jsr     (PlaySFX).l
ROM:0005420A                 lea     (off_29B368).l,a1
ROM:00054210                 jsr     sub_43FAC
ROM:00054216                 lea     (unk_29A29C).l,a1
ROM:0005421C                 jsr     SpawnDebris?
ROM:00054222                 lea     (unk_29A2AE).l,a1
ROM:00054228                 jsr     SpawnDebris?
ROM:0005422E                 lea     (unk_29A3E0).l,a1
ROM:00054234                 jsr     SpawnDebris?
ROM:0005423A                 jsr     loc_55266
ROM:0005423E                 bra.w   loc_5424C
ROM:00054242
ROM:00054242
ROM:00054242 loc_54242:
ROM:00054242                 jsr     CheckOutOfScreen
ROM:00054248                 bcc.w   locret_54252
ROM:0005424C
ROM:0005424C loc_5424C:
ROM:0005424C                 jmp     (SetDying).l
ROM:00054252
ROM:00054252
ROM:00054252 locret_54252:
ROM:00054252                 rts
ROM:00054254
ROM:00054254                 move.b  #0,$20(a6)
ROM:0005425A                 move.w  #$118,$66(a6)
ROM:00054260                 lea     (unk_2989B4).l,a0
ROM:00054266                 jsr     ChangeAnimation
ROM:0005426C                 jsr     ObjectRelated
ROM:00054272                 lea     (unk_29B2CA).l,a1
ROM:00054278                 jsr     sub_43FAC
ROM:0005427E                 bra.w   loc_542B6
ROM:00054282
ROM:00054282                 movea.l $3C(a6),a1
ROM:00054286                 jsr     loc_2942A
ROM:0005428C                 move.b  #1,$20(a6)
ROM:00054292                 move.w  #$280,$66(a6)
ROM:00054298                 lea     (unk_298A10).l,a0
ROM:0005429E                 jsr     ChangeAnimation
ROM:000542A4                 jsr     ObjectRelated
ROM:000542AA                 lea     (off_29B2F2).l,a1
ROM:000542B0                 jsr     sub_43FAC
ROM:000542B6
ROM:000542B6 loc_542B6:
ROM:000542B6                 move.w  #$60,$70(a6)
ROM:000542BC                 lea     loc_542C2,a1
ROM:000542C0                 move.l  a1,(a6)
ROM:000542C2
ROM:000542C2 loc_542C2:
ROM:000542C2                 clr.b   (byte_10E39A).l
ROM:000542C8                 jsr     ObjectRelated
ROM:000542CE                 jsr     Animate
ROM:000542D4                 jsr     CheckShot?
ROM:000542DA                 bcc.w   loc_542F0
ROM:000542DE                 lea     (SoundCodeGunFire).l,a0
ROM:000542E4                 jsr     SoundRelated_0
ROM:000542EA                 bclr    #3,$13(a6)
ROM:000542F0
ROM:000542F0 loc_542F0:
ROM:000542F0                 cmpi.w  #$A0,$66(a6)
ROM:000542F6                 bgt.w   loc_54326
ROM:000542FA                 move.w  #$102A,d0
ROM:000542FE                 jsr     (PlaySFX).l
ROM:00054304                 lea     (unk_29A2D2).l,a1
ROM:0005430A                 jsr     SpawnDebris?
ROM:00054310                 cmpi.b  #0,$20(a6)
ROM:00054316                 beq.w   loc_54320
ROM:0005431A                 subi.w  #$30,$22(a0)
ROM:00054320
ROM:00054320 loc_54320:
ROM:00054320                 lea     $54338,a1
ROM:00054324                 move.l  a1,(a6)
ROM:00054326
ROM:00054326 loc_54326:
ROM:00054326                 jsr     CheckOutOfScreen
ROM:0005432C                 bcc.w   locret_54336
ROM:00054330                 jmp     (SetDying).l
ROM:00054336
ROM:00054336
ROM:00054336 locret_54336:
ROM:00054336                 rts
ROM:00054338
ROM:00054338                 cmpi.b  #0,$20(a6)
ROM:0005433E                 bne.w   loc_54352
ROM:00054342                 lea     (unk_2989CA).l,a0
ROM:00054348                 jsr     ChangeAnimation
ROM:0005434E                 bra.w   loc_5435E
ROM:00054352
ROM:00054352
ROM:00054352 loc_54352:
ROM:00054352                 lea     (unk_298A26).l,a0
ROM:00054358                 jsr     ChangeAnimation
ROM:0005435E
ROM:0005435E loc_5435E:
ROM:0005435E                 lea     loc_54364,a1
ROM:00054362                 move.l  a1,(a6)
ROM:00054364
ROM:00054364 loc_54364:
ROM:00054364                 clr.b   (byte_10E39A).l
ROM:0005436A                 jsr     ObjectRelated
ROM:00054370                 jsr     Animate
ROM:00054376                 jsr     CheckShot?
ROM:0005437C                 bcc.w   loc_54392
ROM:00054380                 lea     (SoundCodeGunFire).l,a0
ROM:00054386                 jsr     SoundRelated_0
ROM:0005438C                 bclr    #3,$13(a6)
ROM:00054392
ROM:00054392 loc_54392:
ROM:00054392                 jsr     CheckIfDead
ROM:00054398                 bcc.w   loc_543E6
ROM:0005439C                 bclr    #0,$13(a6)
ROM:000543A2                 move.w  #$102B,d0
ROM:000543A6                 jsr     (PlaySFX).l
ROM:000543AC                 cmpi.b  #0,$20(a6)
ROM:000543B2                 beq.w   loc_543BC
ROM:000543B6                 subi.w  #$30,$22(a6)
ROM:000543BC
ROM:000543BC loc_543BC:
ROM:000543BC                 lea     (unk_29A2C0).l,a1
ROM:000543C2                 jsr     SpawnDebris?
ROM:000543C8                 move.w  #$C000,$38(a0)
ROM:000543CE                 lea     (unk_29A3F2).l,a1
ROM:000543D4                 jsr     SpawnDebris?
ROM:000543DA                 move.w  #$C000,$38(a0)
ROM:000543E0                 lea     unk_543F8,a1
ROM:000543E4                 move.l  a1,(a6)
ROM:000543E6
ROM:000543E6 loc_543E6:
ROM:000543E6                 jsr     CheckOutOfScreen
ROM:000543EC                 bcc.w   locret_543F6
ROM:000543F0                 jmp     (SetDying).l
ROM:000543F6
ROM:000543F6
ROM:000543F6 locret_543F6:
ROM:000543F6                 rts
ROM:000543F6
