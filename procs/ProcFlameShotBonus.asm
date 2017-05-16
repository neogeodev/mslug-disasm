ROM:0009AA6A ProcFlameShotBonus:
ROM:0009AA6A                 jsr     sub_27C8C
ROM:0009AA70                 jsr     Animate
ROM:0009AA76                 jsr     sub_9A836
ROM:0009AA7A                 bcc.w   loc_9AA8C
ROM:0009AA7E                 move.b  #2,d1
ROM:0009AA82                 jsr     SetWeaponD1?
ROM:0009AA86                 lea     ProcBonusTaken?,a1
ROM:0009AA8A                 move.l  a1,(a6)
ROM:0009AA8C
ROM:0009AA8C loc_9AA8C:
ROM:0009AA8C                 bra.w   BonusDone
ROM:0009AA90
ROM:0009AA90                 move.w  #$17D,d1
ROM:0009AA94                 jsr     (sub_236E).l
ROM:0009AA9A                 lea     (off_2F79CE).l,a0
ROM:0009AAA0                 move.b  $98(a6),d0
ROM:0009AAA4                 cmpi.b  #$B,d0
ROM:0009AAA8                 bcs.w   loc_9AAB0
ROM:0009AAAC                 move.b  #$A,d0
ROM:0009AAB0
ROM:0009AAB0 loc_9AAB0:
ROM:0009AAB0                 andi.w  #$F,d0
ROM:0009AAB4                 lsl.w   #2,d0
ROM:0009AAB6                 move.l  (a0,d0.w),d0
ROM:0009AABA                 move.l  d0,$76(a6)
ROM:0009AABE                 clr.w   $7A(a6)
ROM:0009AAC2                 jsr     sub_9A87E
ROM:0009AAC6                 move.b  #8,$45(a6)
ROM:0009AACC                 move.w  #$8000,d0
ROM:0009AAD0                 jsr     sub_28134
ROM:0009AAD6                 andi.w  #$FFE3,$38(a6)
ROM:0009AADC                 ori.w   #0,$38(a6)
ROM:0009AAE2
ROM:0009AAE2 loc_9AAE2:
ROM:0009AAE2                 move.b  #$FF,$32(a6)
ROM:0009AAE8                 move.w  #$50,$70(a6)
ROM:0009AAEE                 lea     loc_9AAF4,a1
ROM:0009AAF2                 move.l  a1,(a6)
ROM:0009AAF4
ROM:0009AAF4 loc_9AAF4:
ROM:0009AAF4                 subq.w  #1,$70(a6)
ROM:0009AAF8                 cmpi.w  #0,$70(a6)
ROM:0009AAFE                 bgt.w   loc_9AB08
ROM:0009AB02                 lea     loc_9AB5C,a1
ROM:0009AB06                 move.l  a1,(a6)
ROM:0009AB08
ROM:0009AB08 loc_9AB08:
ROM:0009AB08
ROM:0009AB08                 jsr     sub_27C8C
ROM:0009AB0E                 jsr     Animate
ROM:0009AB14                 jsr     sub_9A836
ROM:0009AB18                 bcc.w   loc_9AB50
ROM:0009AB1C                 movea.l $76(a6),a2
ROM:0009AB20                 move.w  $7A(a6),d2
ROM:0009AB24                 move.b  (a2,d2.w),d2
ROM:0009AB28                 andi.w  #3,d2
ROM:0009AB2C                 lea     (unk_2F7A38).l,a2
ROM:0009AB32                 move.b  (a2,d2.w),d1
ROM:0009AB36                 lea     (unk_2F7A3C).l,a2
ROM:0009AB3C                 move.b  (a2,d2.w),d2
ROM:0009AB40                 jsr     loc_9A858
ROM:0009AB44                 move.b  #$FF,$32(a6)
ROM:0009AB4A                 lea     ProcBonusTaken?,a1
ROM:0009AB4E                 move.l  a1,(a6)
ROM:0009AB50
ROM:0009AB50 loc_9AB50:
ROM:0009AB50                 bra.w   BonusDone
ROM:0009AB50
