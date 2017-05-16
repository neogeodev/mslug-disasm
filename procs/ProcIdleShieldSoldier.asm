ROM:00067110 ProcIdleShieldSoldier:
ROM:00067110                 jsr     loc_67FB8
ROM:00067114                 jsr     loc_681EE
ROM:00067118                 jsr     loc_67F46
ROM:0006711C                 jsr     Animate
ROM:00067122                 tst.b   $99(a6)
ROM:00067126                 bne.w   loc_67146
ROM:0006712A                 jsr     loc_6815A
ROM:0006712E                 bcc.w   loc_67138
ROM:00067132                 lea     unk_6731E,a1
ROM:00067136                 move.l  a1,(a6)
ROM:00067138
ROM:00067138 loc_67138:
ROM:00067138                 jsr     loc_6810A
ROM:0006713C                 bcc.w   loc_67146
ROM:00067140                 lea     unk_67254,a1
ROM:00067144                 move.l  a1,(a6)
ROM:00067146
ROM:00067146 loc_67146:
ROM:00067146
ROM:00067146                 jsr     loc_68186
ROM:0006714A                 bcc.w   loc_67154
ROM:0006714E                 lea     loc_671DC,a1
ROM:00067152                 move.l  a1,(a6)
ROM:00067154
ROM:00067154 loc_67154:
ROM:00067154                 jsr     loc_68020
ROM:00067158                 bcc.w   loc_67162
ROM:0006715C                 lea     unk_67394,a1
ROM:00067160                 move.l  a1,(a6)
ROM:00067162
ROM:00067162 loc_67162:
ROM:00067162                 jsr     loc_680A4
ROM:00067166                 bcc.w   loc_67170
ROM:0006716A                 lea     unk_674A2,a1
ROM:0006716E                 move.l  a1,(a6)
ROM:00067170
ROM:00067170 loc_67170:
ROM:00067170                 jsr     loc_681C6
ROM:00067174                 bcc.w   loc_6717E
ROM:00067178                 lea     unk_67220,a1
ROM:0006717C                 move.l  a1,(a6)
ROM:0006717E
ROM:0006717E loc_6717E:
ROM:0006717E                 subq.w  #1,$72(a6)
ROM:00067182                 jsr     CheckShot?
ROM:00067188                 bcc.w   loc_671B4
ROM:0006718C                 bclr    #3,$13(a6)
ROM:00067192                 lea     (SoundCodeGunFire).l,a0
ROM:00067198                 jsr     SoundRelated_0
ROM:0006719E                 lea     loc_675BC,a1
ROM:000671A2                 move.l  a1,(a6)
ROM:000671A4                 cmpi.b  #1,$58(a6)
ROM:000671AA                 beq.w   loc_671B4
ROM:000671AE                 lea     loc_675D2,a1
ROM:000671B2                 move.l  a1,(a6)
ROM:000671B4
ROM:000671B4 loc_671B4:
ROM:000671B4
ROM:000671B4                 jsr     CheckIfDead
ROM:000671BA                 bcs.w   loc_67692
ROM:000671BE                 movea.l #$FFFFFFFF,a0
ROM:000671C4                 lea     (unk_2C7CE6).l,a0
ROM:000671CA                 jsr     CheckObjectOOB
ROM:000671D0                 bcc.w   locret_671DA
ROM:000671D4                 lea     $67B7C,a1
ROM:000671D8                 move.l  a1,(a6)
ROM:000671DA
ROM:000671DA locret_671DA:
ROM:000671DA                 rts
ROM:000671DC
ROM:000671DC
ROM:000671DC loc_671DC:
ROM:000671DC                 clr.w   $76(a6)
ROM:000671E0                 lea     (unk_2C7EE6).l,a0
ROM:000671E6                 jsr     ChangeAnimation
ROM:000671EC                 lea     loc_671F2,a1
ROM:000671F0                 move.l  a1,(a6)
ROM:000671F2
ROM:000671F2 loc_671F2:
ROM:000671F2                 jsr     loc_67FB8
ROM:000671F6                 jsr     loc_681EE
ROM:000671FA                 jsr     loc_67F46
ROM:000671FE                 jsr     Animate
ROM:00067204                 bcc.w   loc_6720E
ROM:00067208                 lea     unk_670FE,a1
ROM:0006720C                 move.l  a1,(a6)
ROM:0006720E
ROM:0006720E loc_6720E:
ROM:0006720E                 jsr     loc_681C6
ROM:00067212                 bcc.w   loc_6721C
ROM:00067216                 lea     unk_67220,a1
ROM:0006721A                 move.l  a1,(a6)
ROM:0006721C
ROM:0006721C loc_6721C:
ROM:0006721C                 bra.w   loc_6760E
ROM:0006721C
