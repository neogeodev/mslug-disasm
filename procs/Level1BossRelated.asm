ROM:000764B0 Level1BossRelated:
ROM:000764B0                 movea.l $C(a6),a0
ROM:000764B4                 btst    #0,$13(a0)
ROM:000764BA                 beq.w   loc_764CA
ROM:000764BE                 jsr     (ClearObjChilds?).l
ROM:000764C4                 jmp     (SetDying).l
ROM:000764CA
ROM:000764CA
ROM:000764CA loc_764CA:
ROM:000764CA                 move.w  $22(a0),$22(a6)
ROM:000764D0                 move.w  $24(a0),d0
ROM:000764D4                 add.w   $78(a0),d0
ROM:000764D8                 move.w  d0,$24(a6)
ROM:000764DC                 move.w  $38(a0),$38(a6)
ROM:000764E2                 move.l  $74(a0),$3C(a6)
ROM:000764E8                 move.w  $7A(a0),d1
ROM:000764EC                 cmp.w   $7A(a6),d1
ROM:000764F0                 beq.w   loc_76508
ROM:000764F4                 move.w  d1,$7A(a6)
ROM:000764F8                 jsr     ProcessObj?List
ROM:000764FE                 move.w  $7A(a6),d1
ROM:00076502                 jsr     (sub_236E).l
ROM:00076508
ROM:00076508 loc_76508:
ROM:00076508                 jmp     sub_5CA2A
ROM:0007650E
ROM:0007650E                 lea     loc_76766,a1
ROM:00076512                 jsr     (SpawnObj).l
ROM:00076518                 move.l  #loc_76576,$4C(a6)
ROM:00076520                 jsr     sub_283CA
ROM:00076526                 jsr     loc_283D8
ROM:0007652C                 move.l  #$FFFFFFFF,$4C(a6)
ROM:00076534                 rts
ROM:00076536
ROM:00076536                 lea     loc_767F4,a1
ROM:0007653A                 jsr     (SpawnObj).l
ROM:00076540                 move.w  $22(a6),d0
ROM:00076544                 move.w  $24(a6),d1
ROM:00076548                 subi.w  #0,d0
ROM:0007654C                 subi.w  #$40,d1
ROM:00076550                 move.w  d0,$22(a0)
ROM:00076554                 move.w  d1,$24(a0)
ROM:00076558                 move.l  #off_765CA,$4C(a6)
ROM:00076560                 jsr     sub_283CA
ROM:00076566                 jsr     loc_283D8
ROM:0007656C                 move.l  #$FFFFFFFF,$4C(a6)
ROM:00076574                 rts
ROM:00076576
ROM:00076576
ROM:00076576 loc_76576:
ROM:00076576                 ori.b   #$10,sp
ROM:0007657A                 andi.b  #0,d4
ROM:0007657E                 ori.b   #$D8,d0
ROM:00076582                 ori.b   #$D8,d0
ROM:00076586                 ori.b   #0,d0
ROM:0007658A                 ori.b   #$3A,-(a4)
ROM:0007658A
