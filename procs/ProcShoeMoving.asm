ROM:000713F0 ProcShoeMoving:
ROM:000713F0                 jsr     sub_28998
ROM:000713F6                 jsr     loc_72C44
ROM:000713FA                 jsr     sub_27AFC
ROM:00071400                 bcc.w   loc_7140A
ROM:00071404                 lea     loc_71448,a1
ROM:00071408                 move.l  a1,(a6)
ROM:0007140A
ROM:0007140A loc_7140A:
ROM:0007140A                 jsr     Animate
ROM:00071410                 jsr     loc_726D4
ROM:00071414                 bcc.w   loc_7141E
ROM:00071418                 lea     loc_71448,a1
ROM:0007141C                 move.l  a1,(a6)
ROM:0007141E
ROM:0007141E loc_7141E:
ROM:0007141E                 jsr     loc_72750
ROM:00071422                 bcc.w   loc_7142C
ROM:00071426                 lea     loc_71448,a1
ROM:0007142A                 move.l  a1,(a6)
ROM:0007142C
ROM:0007142C loc_7142C:
ROM:0007142C                 jsr     sub_283CA
ROM:00071432                 jsr     loc_283D8
ROM:00071438                 bra.w   loc_71664
ROM:0007143C
ROM:0007143C                 bra.s   loc_713E0
ROM:0007143E
ROM:0007143E                 move.w  #1,$70(a6)
ROM:00071444                 bra.w   loc_7144E
ROM:00071448
ROM:00071448
ROM:00071448 loc_71448:
ROM:00071448
ROM:00071448                 move.w  #$3C,$70(a6)
ROM:0007144E
ROM:0007144E loc_7144E:
ROM:0007144E                 neg.w   $28(a6)
ROM:00071452                 move.w  #$1071,d0
ROM:00071456                 jsr     (SoundRelated4).l
ROM:0007145C                 lea     (unk_2D9392).l,a0
ROM:00071462                 jsr     ChangeAnimation
ROM:00071468                 lea     loc_7146E,a1
ROM:0007146C                 move.l  a1,(a6)
ROM:0007146E
ROM:0007146E loc_7146E:
ROM:0007146E                 jsr     sub_28998
ROM:00071474                 jsr     loc_72C44
ROM:00071478                 jsr     ObjectRelated
ROM:0007147E                 jsr     Animate
ROM:00071484                 bcc.w   loc_7148E
ROM:00071488                 lea     loc_714A4,a1
ROM:0007148C                 move.l  a1,(a6)
ROM:0007148E
ROM:0007148E loc_7148E:
ROM:0007148E                 jsr     sub_283CA
ROM:00071494                 jsr     loc_283D8
ROM:0007149A                 bra.w   loc_71664
ROM:0007149E
ROM:0007149E                 move.w  #$3C,$70(a6)
ROM:000714A4
ROM:000714A4 loc_714A4:
ROM:000714A4                 lea     (unk_2D93CC).l,a0
ROM:000714AA                 jsr     ChangeAnimation
ROM:000714B0                 lea     ProcShoeSteady,a1
ROM:000714B4                 move.l  a1,(a6)
ROM:000714B6
