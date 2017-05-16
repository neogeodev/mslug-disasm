ROM:00061210 ProcHeliFlyAway:
ROM:00061210                 jsr     sub_616CA
ROM:00061214                 jsr     sub_61580
ROM:00061218                 jsr     Set?FromXSpeed
ROM:0006121C                 jsr     sub_614B6
ROM:00061220                 jsr     Animate
ROM:00061226                 movea.l #$FFFFFFFF,a0
ROM:0006122C                 lea     (unk_2C33A0).l,a0
ROM:00061232                 jsr     CheckObjectOOB?
ROM:00061238                 bcc.w   locret_61252
ROM:0006123C                 move.b  #$FF,$20(a6)
ROM:00061242                 move.w  #$10E8,d0
ROM:00061246                 jsr     (SoundRelated4).l
ROM:0006124C                 jmp     (SetDying).l
ROM:00061252
ROM:00061252
ROM:00061252 locret_61252:
ROM:00061252                 rts
ROM:00061254
ROM:00061254
ROM:00061254 loc_61254:
ROM:00061254                 move.w  #$189,d1
ROM:00061258                 jsr     (sub_236E).l
ROM:0006125E                 move.w  #$18B,d1
ROM:00061262                 jsr     (sub_236E).l
ROM:00061268                 move.b  #0,$46(a6)
ROM:0006126E                 move.b  #0,$3B(a6)
ROM:00061274                 lea     loc_6127A,a1
ROM:00061278                 move.l  a1,(a6)
ROM:0006127A
ROM:0006127A loc_6127A:
ROM:0006127A                 jsr     FollowSpawner
ROM:00061280                 movea.l $C(a6),a0
ROM:00061284                 move.b  $3A(a0),$3A(a6)
ROM:0006128A                 jsr     sub_615F6
ROM:0006128E                 jsr     sub_614E6
ROM:00061292                 movea.l $C(a6),a0
ROM:00061296                 cmpi.b  #$FF,$20(a0)
ROM:0006129C                 bne.w   locret_612A6
ROM:000612A0                 jmp     (SetDying).l
ROM:000612A6
ROM:000612A6
ROM:000612A6 locret_612A6:
ROM:000612A6                 rts
ROM:000612A8
ROM:000612A8
ROM:000612A8 loc_612A8:
ROM:000612A8                 move.w  #4,$86(a6)
ROM:000612AE                 lea     loc_612B4,a1
ROM:000612B2                 move.l  a1,(a6)
ROM:000612B4
ROM:000612B4 loc_612B4:
ROM:000612B4                 jsr     ObjectRelated
ROM:000612BA                 lea     (unk_2C3282).l,a0
ROM:000612C0                 move.l  a0,$4C(a6)
ROM:000612C4                 jsr     sub_283CA
ROM:000612CA                 jsr     sub_283CA
ROM:000612D0                 jsr     loc_283D8
ROM:000612D6                 subq.w  #1,$86(a6)
ROM:000612DA                 bpl.w   locret_612E4
ROM:000612DE                 jmp     (SetDying).l
ROM:000612E4
ROM:000612E4
ROM:000612E4 locret_612E4:
ROM:000612E4                 rts
ROM:000612E6
ROM:000612E6
