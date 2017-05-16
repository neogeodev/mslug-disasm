ROM:00060D58 ProcToiletsIdle:
ROM:00060D58                 jsr     ObjectRelated
ROM:00060D5E                 jsr     Animate
ROM:00060D64                 jsr     CheckShot?
ROM:00060D6A                 bcc.w   loc_60D80
ROM:00060D6E                 lea     (SoundCodeGunFire).l,a0
ROM:00060D74                 jsr     SoundRelated_0
ROM:00060D7A                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:00060D80
ROM:00060D80 loc_60D80:
ROM:00060D80                 jsr     CheckIfDead
ROM:00060D86                 bcc.w   loc_60D90
ROM:00060D8A                 lea     loc_60DA0,a1
ROM:00060D8E                 move.l  a1,(a6)
ROM:00060D90
ROM:00060D90 loc_60D90:
ROM:00060D90                 jsr     sub_60DF0
ROM:00060D94                 bcc.w   locret_60D9E
ROM:00060D98                 lea     loc_60DE8,a1
ROM:00060D9C                 move.l  a1,(a6)
ROM:00060D9E
ROM:00060D9E locret_60D9E:
ROM:00060D9E                 rts
ROM:00060DA0
ROM:00060DA0
ROM:00060DA0 loc_60DA0:
ROM:00060DA0                 bclr    #1,ObjLLItem.Flags2(a6)
ROM:00060DA6                 lea     (off_2C2B8C).l,a0
ROM:00060DAC                 move.w  $80(a6),d0
ROM:00060DB0                 add.w   d0,d0
ROM:00060DB2                 add.w   d0,d0
ROM:00060DB4                 movea.l (a0,d0.w),a0
ROM:00060DB8                 jsr     (a0)
ROM:00060DBA                 lea     (unk_29C54C).l,a0
ROM:00060DC0                 jsr     ChangeAnimation
ROM:00060DC6                 lea     ProcToiletsExplode,a1
ROM:00060DCA                 move.l  a1,(a6)
ROM:00060DCC
