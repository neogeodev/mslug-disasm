ROM:0003E740 GenPOWNames:
ROM:0003E740                 move.w  #64,d0
ROM:0003E744                 jsr     GetRandMaxD0
ROM:0003E74A                 move.w  $5C(a6),d1
ROM:0003E74E                 addi.w  #$98,d1
ROM:0003E752                 move.b  d0,(a6,d1.w)
ROM:0003E756                 move.w  #332,d0
ROM:0003E75A                 jsr     GetRandMaxD0
ROM:0003E760                 lea     (POWNameRndLUT?).l,a1
ROM:0003E766                 clr.l   d2
ROM:0003E768                 move.b  (a1,d0.w),d2
ROM:0003E76C                 move.w  $5C(a6),d1
ROM:0003E770                 addi.w  #$90,d1
ROM:0003E774                 move.b  d2,(a6,d1.w)
ROM:0003E778                 move.l  d2,d3
ROM:0003E77A                 subq.w  #2,d2
ROM:0003E77C                 lsl.w   #3,d2
ROM:0003E77E                 lea     (POWNameLUT).l,a1
ROM:0003E784                 movea.l (a1,d2.w),a2
ROM:0003E788                 move.l  4(a1,d2.w),d0
ROM:0003E78C                 jsr     GetRandMaxD0
ROM:0003E792                 mulu.w  d3,d0
ROM:0003E794                 adda.l  d0,a2
ROM:0003E796                 move.w  $5C(a6),d1
ROM:0003E79A                 lsl.w   #2,d1
ROM:0003E79C                 addi.w  #$70,d1
ROM:0003E7A0                 move.l  a2,(a6,d1.w)
ROM:0003E7A4                 rts
ROM:0003E7A4
ROM:0003E7A4
ROM:0003E7A6
ROM:0003E7A6
ROM:0003E7A6
ROM:0003E7A6
