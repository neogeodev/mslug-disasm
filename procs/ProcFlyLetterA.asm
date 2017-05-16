ROM:0004D898 ProcFlyLetterA:
ROM:0004D898                 jsr     PositionRelated
ROM:0004D89E                 cmpi.w  #$14,$72(a6)
ROM:0004D8A4                 bgt.w   loc_4D8BE
ROM:0004D8A8                 move.w  $72(a6),d0
ROM:0004D8AC                 btst    #0,d0
ROM:0004D8B0                 beq.w   loc_4D8BE
ROM:0004D8B4                 subi.b  #1,$46(a6)
ROM:0004D8BA                 bra.w   loc_4D8C4
ROM:0004D8BE
ROM:0004D8BE
ROM:0004D8BE loc_4D8BE:
ROM:0004D8BE
ROM:0004D8BE                 jsr     Animate
ROM:0004D8C4
ROM:0004D8C4 loc_4D8C4:
ROM:0004D8C4                 subi.w  #1,$72(a6)
ROM:0004D8CA                 cmpi.w  #0,$72(a6)
ROM:0004D8D0                 bgt.w   loc_4D8DA
ROM:0004D8D4                 jmp     (SetDying).l
ROM:0004D8DA
ROM:0004D8DA
ROM:0004D8DA loc_4D8DA:
ROM:0004D8DA                 lea     (unk_296254).l,a0
ROM:0004D8E0                 jsr     CheckObjectOOB
ROM:0004D8E6                 bcc.w   locret_4D8F0
ROM:0004D8EA                 jmp     (SetDying).l
ROM:0004D8F0
ROM:0004D8F0
ROM:0004D8F0 locret_4D8F0:
ROM:0004D8F0                 rts
ROM:0004D8F2
ROM:0004D8F2                 movea.l $3C(a6),a1
ROM:0004D8F6                 jsr     loc_2942A
ROM:0004D8FC                 move.w  #$3F,d1
ROM:0004D900                 jsr     (sub_236E).l
ROM:0004D906                 move.b  #$FF,$32(a6)
ROM:0004D90C                 move.b  #$FF,$33(a6)
ROM:0004D912                 move.b  #0,$3A(a6)
ROM:0004D918                 move.b  #0,$21(a6)
ROM:0004D91E                 lea     (loc_5FA00).l,a1
ROM:0004D924                 jsr     (SpawnObj).l
ROM:0004D92A                 jsr     sub_5DD22
ROM:0004D930                 addi.w  #$28,$22(a0)
ROM:0004D936                 addi.w  #1,$24(a0)
ROM:0004D93C                 lea     loc_4D9D6,a1
ROM:0004D940                 jsr     (SpawnObj).l
ROM:0004D946                 jsr     sub_5DD22
ROM:0004D94C                 addi.w  #$28,$22(a0)
ROM:0004D952                 addi.w  #1,$24(a0)
ROM:0004D958                 lea     (off_294234).l,a0
ROM:0004D95E                 jsr     ChangeAnimation
ROM:0004D964                 lea     loc_4D96A,a1
ROM:0004D968                 move.l  a1,(a6)
ROM:0004D96A
ROM:0004D96A loc_4D96A:
ROM:0004D96A                 jsr     ObjectRelated
ROM:0004D970                 jsr     Animate
ROM:0004D976                 cmpi.b  #$FF,$21(a6)
ROM:0004D97C                 bne.w   loc_4D986
ROM:0004D980                 lea     loc_4D996,a1
ROM:0004D984                 move.l  a1,(a6)
ROM:0004D986
ROM:0004D986 loc_4D986:
ROM:0004D986                 jsr     CheckOutOfScreen
ROM:0004D98A                 bcc.w   locret_4D994
ROM:0004D98E                 jmp     (SetDying).l
ROM:0004D994
ROM:0004D994
ROM:0004D994 locret_4D994:
ROM:0004D994                 rts
ROM:0004D996
ROM:0004D996
ROM:0004D996 loc_4D996:
ROM:0004D996                 jsr     ObjectRelated
ROM:0004D99C                 lea     (off_295D38).l,a1
ROM:0004D9A2                 jsr     sub_43FAC
ROM:0004D9A8                 lea     (off_294244).l,a0
ROM:0004D9AE                 jsr     ChangeAnimation
ROM:0004D9B4                 lea     loc_4D9BA,a1
ROM:0004D9B8                 move.l  a1,(a6)
ROM:0004D9BA
ROM:0004D9BA loc_4D9BA:
ROM:0004D9BA                 jsr     ObjectRelated
ROM:0004D9C0                 jsr     Animate
ROM:0004D9C6                 jsr     CheckOutOfScreen
ROM:0004D9CA                 bcc.w   locret_4D9D4
ROM:0004D9CE                 jmp     (SetDying).l
ROM:0004D9D4
ROM:0004D9D4
ROM:0004D9D4 locret_4D9D4:
ROM:0004D9D4                 rts
ROM:0004D9D6
ROM:0004D9D6
ROM:0004D9D6 loc_4D9D6:
ROM:0004D9D6                 move.w  #$3D,d1
ROM:0004D9DA                 jsr     (sub_236E).l
ROM:0004D9E0                 move.b  #$FF,$32(a6)
ROM:0004D9E6                 move.b  #$FF,$33(a6)
ROM:0004D9EC                 move.b  #0,$3A(a6)
ROM:0004D9F2                 move.w  #$14,$66(a6)
ROM:0004D9F8                 lea     (unk_294254).l,a0
ROM:0004D9FE                 jsr     ChangeAnimation
ROM:0004DA04                 lea     loc_4DA0A,a1
ROM:0004DA08                 move.l  a1,(a6)
ROM:0004DA0A
ROM:0004DA0A loc_4DA0A:
ROM:0004DA0A                 jsr     ObjectRelated
ROM:0004DA10                 jsr     Animate
ROM:0004DA16                 jsr     CheckShot?
ROM:0004DA1C                 bcc.w   loc_4DA32
ROM:0004DA20                 lea     (SoundCodeGunFire).l,a0
ROM:0004DA26                 jsr     SoundRelated_0
ROM:0004DA2C                 bclr    #3,$13(a6)
ROM:0004DA32
ROM:0004DA32 loc_4DA32:
ROM:0004DA32                 jsr     CheckIfDead
ROM:0004DA38                 bcc.w   loc_4DA42
ROM:0004DA3C                 lea     loc_4DA52,a1
ROM:0004DA40                 move.l  a1,(a6)
ROM:0004DA42
ROM:0004DA42 loc_4DA42:
ROM:0004DA42                 jsr     CheckOutOfScreen
ROM:0004DA46                 bcc.w   locret_4DA50
ROM:0004DA4A                 jmp     (SetDying).l
ROM:0004DA50
ROM:0004DA50
ROM:0004DA50 locret_4DA50:
ROM:0004DA50                 rts
ROM:0004DA52
ROM:0004DA52
ROM:0004DA52 loc_4DA52:
ROM:0004DA52                 move.l  #$1000,d0
ROM:0004DA58                 jsr     sub_51A28
ROM:0004DA5E                 lea     (unk_295FBA).l,a0
ROM:0004DA64                 move.l  a0,$4C(a6)
ROM:0004DA68                 jsr     sub_283CA
ROM:0004DA6E                 jsr     sub_283CA
ROM:0004DA74                 jsr     loc_283D8
ROM:0004DA7A                 lea     (unk_29426A).l,a0
ROM:0004DA80                 jsr     ChangeAnimation
ROM:0004DA86                 lea     loc_4DA8C,a1
ROM:0004DA8A                 move.l  a1,(a6)
ROM:0004DA8C
ROM:0004DA8C loc_4DA8C:
ROM:0004DA8C                 jsr     ObjectRelated
ROM:0004DA92                 jsr     Animate
ROM:0004DA98                 bcc.w   locret_4DAD0
ROM:0004DA9C                 lea     ($FFFFFFFF).w,a0
ROM:0004DAA0                 move.l  a0,$4C(a6)
ROM:0004DAA4                 jsr     sub_283CA
ROM:0004DAAA                 move.w  #$1028,d0
ROM:0004DAAE                 jsr     (PlaySFX).l
ROM:0004DAB4                 movea.l $C(a6),a0
ROM:0004DAB8                 move.b  #$FF,$21(a0)
ROM:0004DABE                 lea     (unk_295BD8).l,a1
ROM:0004DAC4                 jsr     SpawnDebris?
ROM:0004DACA                 lea     loc_4F2A4,a1
ROM:0004DACE                 move.l  a1,(a6)
ROM:0004DAD0
ROM:0004DAD0 locret_4DAD0:
ROM:0004DAD0                 rts
ROM:0004DAD2
ROM:0004DAD2                 movea.l $3C(a6),a1
ROM:0004DAD6                 jsr     loc_2942A
ROM:0004DADC                 lea     loc_4F2C2,a1
ROM:0004DAE0                 jsr     (SpawnObj).l
ROM:0004DAE6                 jsr     sub_5DD22
ROM:0004DAEC                 addi.w  #$5C,$22(a0)
ROM:0004DAF2                 addi.w  #$22,$24(a0)
ROM:0004DAF8                 lea     loc_4DB72,a1
ROM:0004DAFC                 jsr     (SpawnObj).l
ROM:0004DB02                 jsr     sub_5DD22
ROM:0004DB08                 lea     loc_4DCE6,a1
ROM:0004DB0C                 jsr     (SpawnObj).l
ROM:0004DB12                 jsr     sub_5DD22
ROM:0004DB18                 addi.w  #$80,$22(a0)
ROM:0004DB1E                 addi.w  #$30,$24(a0)
ROM:0004DB24                 move.b  #0,$21(a6)
ROM:0004DB2A                 move.b  #0,$20(a6)
ROM:0004DB30                 lea     loc_4DB36,a1
ROM:0004DB34                 move.l  a1,(a6)
ROM:0004DB36
ROM:0004DB36 loc_4DB36:
ROM:0004DB36                 cmpi.b  #$FF,$21(a6)
ROM:0004DB3C                 bne.w   loc_4DB48
ROM:0004DB40                 jmp     (SetDying).l
ROM:0004DB46
ROM:0004DB46                 rts
ROM:0004DB48
ROM:0004DB48
ROM:0004DB48 loc_4DB48:
ROM:0004DB48                 move.b  $20(a6),d0
ROM:0004DB4C                 cmp.b   $21(a6),d0
ROM:0004DB50                 beq.w   loc_4DB58
ROM:0004DB54                 jsr     sub_4FA8A
ROM:0004DB58
ROM:0004DB58 loc_4DB58:
ROM:0004DB58                 cmpi.b  #$12,$21(a6)
ROM:0004DB5E                 bne.w   loc_4DB68
ROM:0004DB62                 jmp     (SetDying).l
ROM:0004DB68
ROM:0004DB68
ROM:0004DB68 loc_4DB68:
ROM:0004DB68                 move.b  $21(a6),d0
ROM:0004DB6C                 move.b  d0,$20(a6)
ROM:0004DB70                 rts
ROM:0004DB72
ROM:0004DB72
ROM:0004DB72 loc_4DB72:
ROM:0004DB72                 lea     ($E92B2).l,a1
ROM:0004DB78                 move.w  #$75,d0
ROM:0004DB7C                 move.b  #0,$75(a6)
ROM:0004DB82                 jsr     sub_4429E
ROM:0004DB88                 move.w  #$50,$70(a6)
ROM:0004DB8E                 move.w  #$3C,$66(a6)
ROM:0004DB94                 move.b  #0,$20(a6)
ROM:0004DB9A                 lea     (unk_294446).l,a0
ROM:0004DBA0                 jsr     ChangeAnimation
ROM:0004DBA6                 lea     loc_4DBAC,a1
ROM:0004DBAA                 move.l  a1,(a6)
ROM:0004DBAC
ROM:0004DBAC loc_4DBAC:
ROM:0004DBAC                 jsr     ObjectRelated
ROM:0004DBB2                 jsr     Animate
ROM:0004DBB8                 jsr     CheckShot?
ROM:0004DBBE                 bcc.w   loc_4DBD4
ROM:0004DBC2                 lea     (SoundCodeGunFire).l,a0
ROM:0004DBC8                 jsr     SoundRelated_0
ROM:0004DBCE                 bclr    #3,$13(a6)
ROM:0004DBD4
ROM:0004DBD4 loc_4DBD4:
ROM:0004DBD4                 jsr     CheckIfDead
ROM:0004DBDA                 bcc.w   loc_4DC2A
ROM:0004DBDE                 addi.w  #$10,$22(a6)
ROM:0004DBE4                 lea     (unk_295B5A).l,a1
ROM:0004DBEA                 jsr     SpawnDebris?
ROM:0004DBF0                 lea     (off_295B6C).l,a1
ROM:0004DBF6                 jsr     SpawnDebris?
ROM:0004DBFC                 lea     (off_295CB0).l,a1
ROM:0004DC02                 jsr     SpawnDebris?
ROM:0004DC08                 addi.w  #$20,$22(a0)
ROM:0004DC0E                 addi.w  #$30,$24(a0)
ROM:0004DC14                 movea.l $C(a6),a0
ROM:0004DC18                 addi.b  #$10,$21(a0)
ROM:0004DC1E                 move.b  #$FF,$20(a6)
ROM:0004DC24                 lea     loc_4DC4A,a1
ROM:0004DC28                 move.l  a1,(a6)
ROM:0004DC2A
ROM:0004DC2A loc_4DC2A:
ROM:0004DC2A                 jsr     CheckOutOfScreen
ROM:0004DC2E                 bcc.w   locret_4DC48
ROM:0004DC32                 move.b  #$FF,$20(a6)
ROM:0004DC38                 movea.l $C(a6),a0
ROM:0004DC3C                 ori.b   #$F0,$21(a0)
ROM:0004DC42                 lea     loc_4DC88,a1
ROM:0004DC46                 move.l  a1,(a6)
ROM:0004DC48
ROM:0004DC48 locret_4DC48:
ROM:0004DC48                 rts
ROM:0004DC4A
ROM:0004DC4A
ROM:0004DC4A loc_4DC4A:
ROM:0004DC4A                 move.l  #$1000,d0
ROM:0004DC50                 jsr     sub_51A28
ROM:0004DC56                 lea     ($FFFFFFFF).w,a0
ROM:0004DC5A                 move.l  a0,$48(a6)
ROM:0004DC5E                 move.b  #$FF,$75(a6)
ROM:0004DC64                 move.w  #$1030,d0
ROM:0004DC68                 jsr     (PlaySFX).l
ROM:0004DC6E                 lea     (off_29556A).l,a2
ROM:0004DC74                 jsr     InitObjectGFX?
ROM:0004DC78                 lea     (off_2955E2).l,a2
ROM:0004DC7E                 jsr     InitObjectGFX?
ROM:0004DC82                 lea     loc_4DC88,a1
ROM:0004DC86                 move.l  a1,(a6)
ROM:0004DC88
ROM:0004DC88 loc_4DC88:
ROM:0004DC88
ROM:0004DC88                 jsr     ObjectRelated
ROM:0004DC8E                 lea     loc_4F2A4,a1
ROM:0004DC92                 move.l  a1,(a6)
ROM:0004DC94                 rts
ROM:0004DC96
ROM:0004DC96                 move.w  #$40,d1
ROM:0004DC9A                 jsr     (sub_236E).l
ROM:0004DCA0                 move.b  #$FF,$32(a6)
ROM:0004DCA6                 move.b  #$FF,$33(a6)
ROM:0004DCAC                 move.b  #0,$3A(a6)
ROM:0004DCB2                 lea     (off_29440A).l,a0
ROM:0004DCB8                 jsr     ChangeAnimation
ROM:0004DCBE                 lea     loc_4DCC4,a1
ROM:0004DCC2                 move.l  a1,(a6)
ROM:0004DCC4
ROM:0004DCC4 loc_4DCC4:
ROM:0004DCC4                 jsr     ObjectRelated
ROM:0004DCCA                 jsr     Animate
ROM:0004DCD0                 movea.l $C(a6),a0
ROM:0004DCD4                 cmpi.b  #$FF,$20(a0)
ROM:0004DCDA                 bne.w   locret_4DCE4
ROM:0004DCDE                 jmp     (SetDying).l
ROM:0004DCE4
ROM:0004DCE4
ROM:0004DCE4 locret_4DCE4:
ROM:0004DCE4                 rts
ROM:0004DCE6
ROM:0004DCE6
ROM:0004DCE6 loc_4DCE6:
ROM:0004DCE6                 lea     ($5F384).l,a1
ROM:0004DCEC                 jsr     (SpawnObj).l
ROM:0004DCF2                 jsr     sub_5DD22
ROM:0004DCF8                 addi.w  #$29,$22(a0)
ROM:0004DCFE                 addi.w  #9,$24(a0)
ROM:0004DD04                 move.w  #$50,$70(a6)
ROM:0004DD0A                 move.w  #$3C,$66(a6)
ROM:0004DD10                 move.b  #0,$21(a6)
ROM:0004DD16                 move.b  #0,$20(a6)
ROM:0004DD1C                 lea     (unk_29445C).l,a0
ROM:0004DD22                 jsr     ChangeAnimation
ROM:0004DD28                 lea     loc_4DD2E,a1
ROM:0004DD2C                 move.l  a1,(a6)
ROM:0004DD2E
ROM:0004DD2E loc_4DD2E:
ROM:0004DD2E                 jsr     ObjectRelated
ROM:0004DD34                 jsr     Animate
ROM:0004DD3A                 cmpi.b  #1,$20(a6)
ROM:0004DD40                 bge.w   loc_4DD84
ROM:0004DD44                 cmpi.w  #$1E,$66(a6)
ROM:0004DD4A                 bgt.w   loc_4DD84
ROM:0004DD4E                 move.w  #$1028,d0
ROM:0004DD52                 jsr     (PlaySFX).l
ROM:0004DD58                 lea     (unk_295BA2).l,a1
ROM:0004DD5E                 jsr     SpawnDebris?
ROM:0004DD64                 lea     (stru_2955F6).l,a2
ROM:0004DD6A                 jsr     InitObjectGFX?
ROM:0004DD6E                 move.b  #$FF,$21(a6)
ROM:0004DD74                 movea.l $C(a6),a0
ROM:0004DD78                 addi.b  #1,$21(a0)
ROM:0004DD7E                 move.b  #1,$20(a6)
ROM:0004DD84
ROM:0004DD84 loc_4DD84:
ROM:0004DD84
ROM:0004DD84                 jsr     CheckShot?
ROM:0004DD8A                 bcc.w   loc_4DDA0
ROM:0004DD8E                 lea     (SoundCodeGunFire).l,a0
ROM:0004DD94                 jsr     SoundRelated_0
ROM:0004DD9A                 bclr    #3,$13(a6)
ROM:0004DDA0
ROM:0004DDA0 loc_4DDA0:
ROM:0004DDA0                 jsr     CheckIfDead
ROM:0004DDA6                 bcc.w   loc_4DDD2
ROM:0004DDAA                 lea     (unk_295BA2).l,a1
ROM:0004DDB0                 jsr     SpawnDebris?
ROM:0004DDB6                 lea     (off_295BB4).l,a1
ROM:0004DDBC                 jsr     SpawnDebris?
ROM:0004DDC2                 movea.l $C(a6),a0
ROM:0004DDC6                 addi.b  #1,$21(a0)
ROM:0004DDCC                 lea     loc_4DDEC,a1
ROM:0004DDD0                 move.l  a1,(a6)
ROM:0004DDD2
ROM:0004DDD2 loc_4DDD2:
ROM:0004DDD2                 jsr     CheckOutOfScreen
ROM:0004DDD6                 bcc.w   locret_4DDEA
ROM:0004DDDA                 movea.l $C(a6),a0
ROM:0004DDDE                 ori.b   #$F,$21(a0)
ROM:0004DDE4                 lea     loc_4DE32,a1
ROM:0004DDE8                 move.l  a1,(a6)
ROM:0004DDEA
ROM:0004DDEA locret_4DDEA:
ROM:0004DDEA                 rts
ROM:0004DDEC
ROM:0004DDEC
ROM:0004DDEC loc_4DDEC:
ROM:0004DDEC                 move.l  #$1000,d0
ROM:0004DDF2                 jsr     sub_51A28
ROM:0004DDF8                 lea     ($FFFFFFFF).w,a0
ROM:0004DDFC                 move.l  a0,$48(a6)
ROM:0004DE00                 move.w  #$1028,d0
ROM:0004DE04                 jsr     (PlaySFX).l
ROM:0004DE0A                 lea     (off_29560A).l,a2
ROM:0004DE10                 jsr     InitObjectGFX?
ROM:0004DE14                 lea     (off_295CB0).l,a1
ROM:0004DE1A                 jsr     SpawnDebris?
ROM:0004DE20                 addi.w  #-$20,$22(a0)
ROM:0004DE26                 addi.w  #$30,$24(a0)
ROM:0004DE2C                 lea     loc_4DE32,a1
ROM:0004DE30                 move.l  a1,(a6)
ROM:0004DE32
ROM:0004DE32 loc_4DE32:
ROM:0004DE32
ROM:0004DE32                 jsr     ObjectRelated
ROM:0004DE38                 lea     loc_4F2A4,a1
ROM:0004DE3C                 move.l  a1,(a6)
ROM:0004DE3E                 rts
ROM:0004DE40
ROM:0004DE40
ROM:0004DE40 loc_4DE40:
ROM:0004DE40                 movea.l $3C(a6),a1
ROM:0004DE44                 jsr     loc_2942A
ROM:0004DE4A                 lea     ($E92EA).l,a1
ROM:0004DE50                 move.w  #$75,d0
ROM:0004DE54                 move.b  #0,$75(a6)
ROM:0004DE5A                 jsr     sub_4429E
ROM:0004DE60                 move.w  #$70,$70(a6)
ROM:0004DE66                 move.w  #$3C,$66(a6)
ROM:0004DE6C                 move.b  #0,$20(a6)
ROM:0004DE72                 move.b  #0,$21(a6)
ROM:0004DE78                 lea     (unk_294472).l,a0
ROM:0004DE7E                 jsr     ChangeAnimation
ROM:0004DE84                 lea     loc_4DE8A,a1
ROM:0004DE88                 move.l  a1,(a6)
ROM:0004DE8A
ROM:0004DE8A loc_4DE8A:
ROM:0004DE8A                 jsr     ObjectRelated
ROM:0004DE90                 jsr     Animate
ROM:0004DE96                 jsr     CheckShot?
ROM:0004DE9C                 bcc.w   loc_4DEB2
ROM:0004DEA0                 lea     (SoundCodeGunFire).l,a0
ROM:0004DEA6                 jsr     SoundRelated_0
ROM:0004DEAC                 bclr    #3,$13(a6)
ROM:0004DEB2
ROM:0004DEB2 loc_4DEB2:
ROM:0004DEB2                 jsr     CheckIfDead
ROM:0004DEB8                 bcc.w   loc_4DF0A
ROM:0004DEBC                 move.b  #$FF,$75(a6)
ROM:0004DEC2                 addi.b  #$10,$21(a6)
ROM:0004DEC8                 move.b  #$FF,$20(a6)
ROM:0004DECE                 addi.w  #$10,$22(a6)
ROM:0004DED4                 lea     (unk_295B5A).l,a1
ROM:0004DEDA                 jsr     SpawnDebris?
ROM:0004DEE0                 lea     (off_295B6C).l,a1
ROM:0004DEE6                 jsr     SpawnDebris?
ROM:0004DEEC                 lea     (off_295CB0).l,a1
ROM:0004DEF2                 jsr     SpawnDebris?
ROM:0004DEF8                 addi.w  #$20,$22(a0)
ROM:0004DEFE                 addi.w  #$20,$24(a0)
ROM:0004DF04                 lea     loc_4DF30,a1
ROM:0004DF08                 move.l  a1,(a6)
ROM:0004DF0A
ROM:0004DF0A loc_4DF0A:
ROM:0004DF0A                 jsr     CheckOutOfScreen
ROM:0004DF0E                 bcc.w   loc_4DF1E
ROM:0004DF12                 move.b  #$FF,$20(a6)
ROM:0004DF18                 lea     loc_4DF72,a1
ROM:0004DF1C                 move.l  a1,(a6)
ROM:0004DF1E
ROM:0004DF1E loc_4DF1E:
ROM:0004DF1E                 move.b  $74(a6),d0
ROM:0004DF22                 cmp.b   $21(a6),d0
ROM:0004DF26                 beq.w   locret_4DF2E
ROM:0004DF2A                 jsr     sub_4FAF8
ROM:0004DF2E
ROM:0004DF2E locret_4DF2E:
ROM:0004DF2E                 rts
ROM:0004DF30
ROM:0004DF30
ROM:0004DF30 loc_4DF30:
ROM:0004DF30                 move.l  #$1000,d0
ROM:0004DF36                 jsr     sub_51A28
ROM:0004DF3C                 lea     ($FFFFFFFF).w,a0
ROM:0004DF40                 move.l  a0,$48(a6)
ROM:0004DF44                 move.w  #$1030,d0
ROM:0004DF48                 jsr     (PlaySFX).l
ROM:0004DF4E                 cmpi.w  #0,$22(a6)
ROM:0004DF54                 bmi.w   loc_4DF62
ROM:0004DF58                 lea     (stru_29561E).l,a2
ROM:0004DF5E                 bra.w   loc_4DF68
ROM:0004DF62
ROM:0004DF62
ROM:0004DF62 loc_4DF62:
ROM:0004DF62                 lea     (off_295632).l,a2
ROM:0004DF68
ROM:0004DF68 loc_4DF68:
ROM:0004DF68                 jsr     InitObjectGFX?
ROM:0004DF6C                 lea     loc_4DF72,a1
ROM:0004DF70                 move.l  a1,(a6)
ROM:0004DF72
ROM:0004DF72 loc_4DF72:
ROM:0004DF72
ROM:0004DF72                 jsr     ObjectRelated
ROM:0004DF78                 jsr     CheckOutOfScreen
ROM:0004DF7C                 bcc.w   loc_4DF86
ROM:0004DF80                 lea     loc_4F2A4,a1
ROM:0004DF84                 move.l  a1,(a6)
ROM:0004DF86
ROM:0004DF86 loc_4DF86:
ROM:0004DF86                 move.b  $74(a6),d0
ROM:0004DF8A                 cmp.b   $21(a6),d0
ROM:0004DF8E                 beq.w   locret_4DF96
ROM:0004DF92                 jsr     sub_4FAF8
ROM:0004DF96
ROM:0004DF96 locret_4DF96:
ROM:0004DF96                 rts
ROM:0004DF98
ROM:0004DF98                 movea.l $3C(a6),a1
ROM:0004DF9C                 jsr     loc_2942A
ROM:0004DFA2                 lea     loc_4E12C,a1
ROM:0004DFA6                 jsr     (SpawnObj).l
ROM:0004DFAC                 jsr     sub_5DD22
ROM:0004DFB2                 lea     loc_4E12C,a1
ROM:0004DFB6                 jsr     (SpawnObj).l
ROM:0004DFBC                 jsr     sub_5DD22
ROM:0004DFC2                 addi.w  #$D0,$22(a0)
ROM:0004DFC8                 ori.b   #1,$3A(a0)
ROM:0004DFCE                 move.w  #$60,$70(a6)
ROM:0004DFD4                 move.b  #0,$21(a6)
ROM:0004DFDA                 lea     ($E9310).l,a1
ROM:0004DFE0                 move.w  #$75,d0
ROM:0004DFE4                 move.b  #0,$75(a6)
ROM:0004DFEA                 jsr     sub_4429E
ROM:0004DFF0                 lea     loc_4DFF6,a1
ROM:0004DFF4                 move.l  a1,(a6)
ROM:0004DFF6
ROM:0004DFF6 loc_4DFF6:
ROM:0004DFF6                 jsr     ObjectRelated
ROM:0004DFFC                 cmpi.b  #$11,$21(a6)
ROM:0004E002                 bne.w   loc_4E04E
ROM:0004E006                 move.w  #$1030,d0
ROM:0004E00A                 jsr     (PlaySFX).l
ROM:0004E010                 lea     (unk_295BEA).l,a1
ROM:0004E016                 jsr     SpawnDebris?
ROM:0004E01C                 lea     (unk_295BFC).l,a1
ROM:0004E022                 jsr     SpawnDebris?
ROM:0004E028                 lea     (off_295CC2).l,a1
ROM:0004E02E                 jsr     SpawnDebris?
ROM:0004E034                 lea     (off_2956AA).l,a2
ROM:0004E03A                 jsr     InitObjectGFX?
ROM:0004E03E                 lea     (stru_2956E6).l,a2
ROM:0004E044                 jsr     InitObjectGFX?
ROM:0004E048                 lea     loc_4E05E,a1
ROM:0004E04C                 move.l  a1,(a6)
ROM:0004E04E
ROM:0004E04E loc_4E04E:
ROM:0004E04E                 jsr     CheckOutOfScreen
ROM:0004E052                 bcc.w   locret_4E05C
ROM:0004E056                 jmp     (SetDying).l
ROM:0004E05C
ROM:0004E05C
ROM:0004E05C locret_4E05C:
ROM:0004E05C                 rts
ROM:0004E05E
ROM:0004E05E
ROM:0004E05E loc_4E05E:
ROM:0004E05E                 move.w  #$3C,$66(a6)
ROM:0004E064                 lea     (unk_294488).l,a0
ROM:0004E06A                 jsr     ChangeAnimation
ROM:0004E070                 lea     loc_4E076,a1
ROM:0004E074                 move.l  a1,(a6)
ROM:0004E076
ROM:0004E076 loc_4E076:
ROM:0004E076                 jsr     ObjectRelated
ROM:0004E07C                 jsr     Animate
ROM:0004E082                 jsr     CheckShot?
ROM:0004E088                 bcc.w   loc_4E09E
ROM:0004E08C                 lea     (SoundCodeGunFire).l,a0
ROM:0004E092                 jsr     SoundRelated_0
ROM:0004E098                 bclr    #3,$13(a6)
ROM:0004E09E
ROM:0004E09E loc_4E09E:
ROM:0004E09E                 jsr     CheckIfDead
ROM:0004E0A4                 bcc.w   loc_4E116
ROM:0004E0A8                 lea     ($FFFFFFFF).w,a0
ROM:0004E0AC                 move.l  a0,$48(a6)
ROM:0004E0B0                 move.l  #$5000,d0
ROM:0004E0B6                 jsr     sub_51A28
ROM:0004E0BC                 move.w  #$1028,d0
ROM:0004E0C0                 jsr     (PlaySFX).l
ROM:0004E0C6                 lea     (unk_295C0E).l,a1
ROM:0004E0CC                 jsr     SpawnDebris?
ROM:0004E0D2                 lea     (unk_295C20).l,a1
ROM:0004E0D8                 jsr     SpawnDebris?
ROM:0004E0DE                 lea     (off_295CC2).l,a1
ROM:0004E0E4                 jsr     SpawnDebris?
ROM:0004E0EA                 lea     (stru_2956BE).l,a2
ROM:0004E0F0                 jsr     InitObjectGFX?
ROM:0004E0F4                 lea     (off_2956FA).l,a2
ROM:0004E0FA                 jsr     InitObjectGFX?
ROM:0004E0FE                 lea     (off_295722).l,a2
ROM:0004E104                 jsr     InitObjectGFX?
ROM:0004E108                 lea     (off_29574A).l,a2
ROM:0004E10E                 jsr     InitObjectGFX?
ROM:0004E112                 bra.w   loc_4E11E
ROM:0004E116
ROM:0004E116
ROM:0004E116 loc_4E116:
ROM:0004E116                 jsr     CheckOutOfScreen
ROM:0004E11A                 bcc.w   locret_4E12A
ROM:0004E11E
ROM:0004E11E loc_4E11E:
ROM:0004E11E                 move.b  #$FF,$75(a6)
ROM:0004E124                 jmp     (SetDying).l
ROM:0004E12A
ROM:0004E12A
ROM:0004E12A locret_4E12A:
ROM:0004E12A                 rts
ROM:0004E12C
ROM:0004E12C
ROM:0004E12C loc_4E12C:
ROM:0004E12C
ROM:0004E12C                 lea     ($5F38A).l,a1
ROM:0004E132                 jsr     (SpawnObj).l
ROM:0004E138                 jsr     sub_5DD22
ROM:0004E13E                 btst    #0,$3A(a6)
ROM:0004E144                 bne.w   loc_4E158
ROM:0004E148                 addi.w  #$2B,$22(a0)
ROM:0004E14E                 subi.w  #$17,$24(a0)
ROM:0004E154                 bra.w   loc_4E164
ROM:0004E158
ROM:0004E158
ROM:0004E158 loc_4E158:
ROM:0004E158                 subi.w  #$14,$22(a0)
ROM:0004E15E                 subi.w  #$17,$24(a0)
ROM:0004E164
ROM:0004E164 loc_4E164:
ROM:0004E164                 move.b  #0,$21(a6)
ROM:0004E16A                 move.w  #$3C,$66(a6)
ROM:0004E170                 move.w  #$70,$70(a6)
ROM:0004E176                 lea     (unk_29449E).l,a0
ROM:0004E17C                 jsr     ChangeAnimation
ROM:0004E182                 lea     loc_4E188,a1
ROM:0004E186                 move.l  a1,(a6)
ROM:0004E188
ROM:0004E188 loc_4E188:
ROM:0004E188                 jsr     ObjectRelated
ROM:0004E18E                 jsr     Animate
ROM:0004E194                 jsr     CheckShot?
ROM:0004E19A                 bcc.w   loc_4E1B0
ROM:0004E19E                 lea     (SoundCodeGunFire).l,a0
ROM:0004E1A4                 jsr     SoundRelated_0
ROM:0004E1AA                 bclr    #3,$13(a6)
ROM:0004E1B0
ROM:0004E1B0 loc_4E1B0:
ROM:0004E1B0                 jsr     CheckIfDead
ROM:0004E1B6                 bcc.w   loc_4E238
ROM:0004E1BA                 move.w  #$102F,d0
ROM:0004E1BE                 jsr     (PlaySFX).l
ROM:0004E1C4                 lea     ($FFFFFFFF).w,a0
ROM:0004E1C8                 move.l  a0,$48(a6)
ROM:0004E1CC                 lea     (unk_295B7E).l,a1
ROM:0004E1D2                 jsr     SpawnDebris?
ROM:0004E1D8                 subi.w  #$20,$24(a0)
ROM:0004E1DE                 lea     (off_295B90).l,a1
ROM:0004E1E4                 jsr     SpawnDebris?
ROM:0004E1EA                 subi.w  #$20,$24(a0)
ROM:0004E1F0                 lea     (off_295CB0).l,a1
ROM:0004E1F6                 jsr     SpawnDebris?
ROM:0004E1FC                 move.w  #$20,d0
ROM:0004E200                 btst    #0,$3A(a6)
ROM:0004E206                 beq.w   loc_4E20C
ROM:0004E20A                 neg.w   d0
ROM:0004E20C
ROM:0004E20C loc_4E20C:
ROM:0004E20C                 add.w   d0,$22(a0)
ROM:0004E210                 jsr     sub_4FB3C
ROM:0004E214                 movea.l $C(a6),a0
ROM:0004E218                 move.b  #$10,d0
ROM:0004E21C                 btst    #0,$3A(a6)
ROM:0004E222                 beq.w   loc_4E22A
ROM:0004E226                 move.b  #1,d0
ROM:0004E22A
ROM:0004E22A loc_4E22A:
ROM:0004E22A                 or.b    d0,$21(a0)
ROM:0004E22E                 move.b  #$FF,$21(a6)
ROM:0004E234                 bra.w   loc_4E240
ROM:0004E238
ROM:0004E238
ROM:0004E238 loc_4E238:
ROM:0004E238                 jsr     CheckOutOfScreen
ROM:0004E23C                 bcc.w   locret_4E246
ROM:0004E240
ROM:0004E240 loc_4E240:
ROM:0004E240                 jmp     (SetDying).l
ROM:0004E246
ROM:0004E246
ROM:0004E246 locret_4E246:
ROM:0004E246                 rts
ROM:0004E246
