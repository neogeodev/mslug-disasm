ROM:00053A18 ProcTrainSignals:
ROM:00053A18                 jsr     ObjectRelated
ROM:00053A1E                 move.w  (word_107FE8).l,d0
ROM:00053A24                 sub.w   d0,$22(a6)
ROM:00053A28                 move.w  (word_107FEA).l,d0
ROM:00053A2E                 add.w   d0,$24(a6)
ROM:00053A32                 jsr     Animate
ROM:00053A38                 bcc.w   locret_53A40
ROM:00053A3C                 jsr     sub_53DCA
ROM:00053A40
ROM:00053A40 locret_53A40:
ROM:00053A40                 rts
ROM:00053A42
ROM:00053A42                 move.w  #$1E4,d1
ROM:00053A46                 jsr     (sub_236E).l
ROM:00053A4C                 jsr     ClearObjStuff
ROM:00053A52                 move.w  #$4000,$38(a6)
ROM:00053A58                 jsr     PositionRelated
ROM:00053A5E                 lea     (off_2977E0).l,a0
ROM:00053A64                 jsr     ChangeAnimation
ROM:00053A6A                 move.w  #0,$72(a6)
ROM:00053A70                 move.b  #0,$20(a6)
ROM:00053A76                 lea     loc_53B9E,a1
ROM:00053A7A                 jsr     (SpawnObj).l
ROM:00053A80                 lea     ProcRailwayZapper,a1
ROM:00053A84                 move.l  a1,(a6)
ROM:00053A86
