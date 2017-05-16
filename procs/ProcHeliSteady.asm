ROM:00060F8E ProcHeliSteady:
ROM:00060F8E                 jsr     sub_6179E
ROM:00060F92                 jsr     sub_6161E
ROM:00060F96                 jsr     sub_61580
ROM:00060F9A                 jsr     Set?FromXSpeed
ROM:00060F9E                 jsr     sub_614B6
ROM:00060FA2                 jsr     Animate
ROM:00060FA8                 jsr     CheckIfDead
ROM:00060FAE                 bcc.w   loc_60FC8
ROM:00060FB2                 lea     loc_6100C,a1
ROM:00060FB6                 move.l  a1,(a6)
ROM:00060FB8                 cmpi.b  #$FF,$9A(a6)
ROM:00060FBE                 bne.w   loc_60FC8
ROM:00060FC2                 lea     loc_610F4,a1
ROM:00060FC6                 move.l  a1,(a6)
ROM:00060FC8
ROM:00060FC8 loc_60FC8:
ROM:00060FC8
ROM:00060FC8                 jsr     DoBombDrop
ROM:00060FCC                 jsr     sub_61774
ROM:00060FD0                 bcs.w   loc_60FDA
ROM:00060FD4                 lea     loc_60F04,a1
ROM:00060FD8                 move.l  a1,(a6)
ROM:00060FDA
ROM:00060FDA loc_60FDA:
ROM:00060FDA                 jsr     loc_6197C
ROM:00060FDE                 bcc.w   loc_60FE8
ROM:00060FE2                 lea     loc_61204,a1
ROM:00060FE6                 move.l  a1,(a6)
ROM:00060FE8
ROM:00060FE8 loc_60FE8:
ROM:00060FE8                 movea.l #$FFFFFFFF,a0
ROM:00060FEE                 lea     (unk_2C33A0).l,a0
ROM:00060FF4                 jsr     CheckObjectOOB
ROM:00060FFA                 bcc.w   locret_6100A
ROM:00060FFE                 move.b  #$FF,$20(a6)
ROM:00061004                 jmp     (SetDying).l
ROM:0006100A
ROM:0006100A
ROM:0006100A locret_6100A:
ROM:0006100A                 rts
ROM:0006100C
ROM:0006100C
ROM:0006100C loc_6100C:
ROM:0006100C
ROM:0006100C                 move.w  #$1FF,$74(a6)
ROM:00061012                 lea     (off_2C2CD8).l,a0
ROM:00061018                 jsr     ChangeAnimation
ROM:0006101E                 lea     loc_61024,a1
ROM:00061022                 move.l  a1,(a6)
ROM:00061024
ROM:00061024 loc_61024:
ROM:00061024                 jsr     sub_616CA
ROM:00061028                 jsr     sub_61580
ROM:0006102C                 jsr     Set?FromXSpeed
ROM:00061030                 jsr     Animate
ROM:00061036                 cmpi.w  #$1B0,$24(a6)
ROM:0006103C                 blt.w   loc_61088
ROM:00061040                 lea     ($77FD6).l,a1
ROM:00061046                 jsr     (SpawnObj).l
ROM:0006104C                 jsr     InitSamePositions
ROM:00061052                 subi.w  #$10,$24(a0)
ROM:00061058                 lea     (unk_2C3406).l,a1
ROM:0006105E                 jsr     SpawnDebris?
ROM:00061064                 move.w  #$102F,d0
ROM:00061068                 jsr     (PlaySFX).l
ROM:0006106E                 move.w  #$10E8,d0
ROM:00061072                 jsr     (SoundRelated4).l
ROM:00061078                 move.b  #$FF,$20(a6)
ROM:0006107E                 jsr     sub_61482
ROM:00061082                 jmp     (SetDying).l
ROM:00061088
ROM:00061088
ROM:00061088 loc_61088:
ROM:00061088                 move.b  (LevelSubTimer?).l,d0
ROM:0006108E                 andi.b  #3,d0
ROM:00061092                 bne.w   loc_610BC
ROM:00061096                 lea     (unk_2C33B4).l,a1
ROM:0006109C                 jsr     SpawnDebris?
ROM:000610A2                 move.w  #$28,d0
ROM:000610A6                 btst    #0,$3A(a6)
ROM:000610AC                 beq.w   loc_610B2
ROM:000610B0                 neg.w   d0
ROM:000610B2
ROM:000610B2 loc_610B2:
ROM:000610B2                 add.w   d0,$22(a0)
ROM:000610B6                 subi.w  #$18,$24(a0)
ROM:000610BC
ROM:000610BC loc_610BC:
ROM:000610BC                 movea.l #$FFFFFFFF,a0
ROM:000610C2                 lea     (unk_2C33A0).l,a0
ROM:000610C8                 jsr     CheckObjectOOB
ROM:000610CE                 bcc.w   locret_610F2
ROM:000610D2                 move.w  #$102F,d0
ROM:000610D6                 jsr     (PlaySFX).l
ROM:000610DC                 move.w  #$10E8,d0
ROM:000610E0                 jsr     (SoundRelated4).l
ROM:000610E6                 move.b  #$FF,$20(a6)
ROM:000610EC                 jmp     (SetDying).l
ROM:000610F2
ROM:000610F2
ROM:000610F2 locret_610F2:
ROM:000610F2                 rts
ROM:000610F4
ROM:000610F4
ROM:000610F4 loc_610F4:
ROM:000610F4
ROM:000610F4                 move.w  #$140,PlayerStruct.field_72(a6)
ROM:000610FA                 move.w  #$160,ObjLLItem.field_74(a6)
ROM:00061100                 move.b  $9C(a6),d1
ROM:00061104                 asl.b   #1,d1
ROM:00061106                 move.b  d1,$9C(a6)
ROM:0006110A                 lea     (off_2C2CD8).l,a0
ROM:00061110                 jsr     ChangeAnimation
ROM:00061116                 lea     loc_6111C,a1
ROM:0006111A                 move.l  a1,(a6)
ROM:0006111C
ROM:0006111C loc_6111C:
ROM:0006111C                 jsr     sub_6164C
ROM:00061120                 jsr     sub_61580
ROM:00061124                 jsr     Set?FromXSpeed
ROM:00061128                 jsr     Animate
ROM:0006112E                 move.w  $22(a6),d0
ROM:00061132                 move.w  $24(a6),d1
ROM:00061136                 jsr     sub_4400E
ROM:0006113C                 cmpi.w  #$3E0,d0
ROM:00061140                 blt.w   loc_61198
ROM:00061144                 lea     ($77FD6).l,a1
ROM:0006114A                 jsr     (SpawnObj).l
ROM:00061150                 jsr     InitSamePositions
ROM:00061156                 subi.w  #$10,$24(a0)
ROM:0006115C                 lea     (unk_2C3406).l,a1
ROM:00061162                 jsr     SpawnDebris?
ROM:00061168                 move.w  #$102F,d0
ROM:0006116C                 jsr     (PlaySFX).l
ROM:00061172                 move.w  #$10E8,d0
ROM:00061176                 jsr     (SoundRelated4).l
ROM:0006117C                 move.b  #$FF,$20(a6)
ROM:00061182                 lea     loc_612A8,a1
ROM:00061186                 jsr     (SpawnObj).l
ROM:0006118C                 jsr     InitSamePositions
ROM:00061192                 jmp     (SetDying).l
ROM:00061198
ROM:00061198
ROM:00061198 loc_61198:
ROM:00061198                 move.b  (LevelSubTimer?).l,d0
ROM:0006119E                 andi.b  #3,d0
ROM:000611A2                 bne.w   loc_611CC
ROM:000611A6                 lea     (unk_2C33B4).l,a1
ROM:000611AC                 jsr     SpawnDebris?
ROM:000611B2                 move.w  #$28,d0
ROM:000611B6                 btst    #0,$3A(a6)
ROM:000611BC                 beq.w   loc_611C2
ROM:000611C0                 neg.w   d0
ROM:000611C2
ROM:000611C2 loc_611C2:
ROM:000611C2                 add.w   d0,$22(a0)
ROM:000611C6                 subi.w  #$18,$24(a0)
ROM:000611CC
ROM:000611CC loc_611CC:
ROM:000611CC                 movea.l #$FFFFFFFF,a0
ROM:000611D2                 lea     (unk_2C33A0).l,a0
ROM:000611D8                 jsr     CheckObjectOOB
ROM:000611DE                 bcc.w   locret_61202
ROM:000611E2                 move.w  #$102F,d0
ROM:000611E6                 jsr     (PlaySFX).l
ROM:000611EC                 move.w  #$10E8,d0
ROM:000611F0                 jsr     (SoundRelated4).l
ROM:000611F6                 move.b  #$FF,$20(a6)
ROM:000611FC                 jmp     (SetDying).l
ROM:00061202
ROM:00061202
ROM:00061202 locret_61202:
ROM:00061202                 rts
ROM:00061204
ROM:00061204
ROM:00061204 loc_61204:
ROM:00061204                 move.w  #$1FF,$74(a6)
ROM:0006120A                 lea     ProcHeliFlyAway,a1
ROM:0006120E                 move.l  a1,(a6)
ROM:00061210
