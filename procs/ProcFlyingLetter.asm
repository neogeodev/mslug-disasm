ROM:0004D81A ProcFlyingLetter:
ROM:0004D81A                 move.w  #$41,d1
ROM:0004D81E                 jsr     (sub_236E).l
ROM:0004D824                 bset    #6,$12(a6)
ROM:0004D82A                 move.b  #$FF,$32(a6)
ROM:0004D830                 move.b  #$FF,$33(a6)
ROM:0004D836                 move.b  #0,$3A(a6)
ROM:0004D83C                 jsr     ClearObjStuff
ROM:0004D842                 move.w  #$F0,$72(a6)
ROM:0004D848                 jsr     GetRand2?
ROM:0004D84E                 andi.w  #$1F,d0
ROM:0004D852                 add.w   d0,$72(a6)
ROM:0004D856                 jsr     GetRand2?
ROM:0004D85C                 andi.w  #$1F,d0
ROM:0004D860                 btst    #0,d0
ROM:0004D864                 beq.w   loc_4D86A
ROM:0004D868                 neg.w   d0
ROM:0004D86A
ROM:0004D86A loc_4D86A:
ROM:0004D86A                 move.w  d0,$28(a6)
ROM:0004D86E                 jsr     GetRand2?
ROM:0004D874                 andi.w  #$3F,d0
ROM:0004D878                 btst    #0,d0
ROM:0004D87C                 beq.w   loc_4D882
ROM:0004D880                 neg.w   d0
ROM:0004D882
ROM:0004D882 loc_4D882:
ROM:0004D882                 move.w  d0,$2A(a6)
ROM:0004D886                 lea     (off_294378).l,a0
ROM:0004D88C                 jsr     ChangeAnimation
ROM:0004D892                 lea     ProcFlyLetterA,a1
ROM:0004D896                 move.l  a1,(a6)
ROM:0004D898
