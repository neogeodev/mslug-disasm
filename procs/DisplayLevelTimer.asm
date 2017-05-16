ROM:00047490 DisplayLevelTimer:
ROM:00047490                 cmpi.w  #99,(LevelTimer).l
ROM:00047498                 bls.w   loc_4751E
ROM:0004749C                 move.w  #$7243,d0
ROM:000474A0                 move.w  #$63B6,d1
ROM:000474A4                 movem.w d0-d1,($3C0000).l
ROM:000474AC                 addi.w  #$20,d0
ROM:000474B0                 addq.w  #1,d1
ROM:000474B2                 movem.w d0-d1,($3C0000).l
ROM:000474BA                 subi.w  #$1F,d0
ROM:000474BE                 addi.w  #$F,d1
ROM:000474C2                 movem.w d0-d1,($3C0000).l
ROM:000474CA                 addi.w  #$20,d0
ROM:000474CE                 addq.w  #1,d1
ROM:000474D0                 movem.w d0-d1,($3C0000).l
ROM:000474D8                 subi.w  #$21,d0
ROM:000474DC                 move.w  #$7283,d0
ROM:000474E0                 move.w  #$63B8,d1
ROM:000474E4                 movem.w d0-d1,($3C0000).l
ROM:000474EC                 addi.w  #$20,d0
ROM:000474F0                 addq.w  #1,d1
ROM:000474F2                 movem.w d0-d1,($3C0000).l
ROM:000474FA                 subi.w  #$1F,d0
ROM:000474FE                 addi.w  #$F,d1
ROM:00047502                 movem.w d0-d1,($3C0000).l
ROM:0004750A                 addi.w  #$20,d0
ROM:0004750E                 addq.w  #1,d1
ROM:00047510                 movem.w d0-d1,($3C0000).l
ROM:00047518                 subi.w  #$21,d0
ROM:0004751C                 rts
ROM:0004751E
ROM:0004751E
ROM:0004751E loc_4751E:
ROM:0004751E                 cmpi.b  #0,d1
ROM:00047522                 bne.w   loc_475A8
ROM:00047526                 move.w  #$7243,d0
ROM:0004752A                 move.w  #$4B40,d1
ROM:0004752E                 movem.w d0-d1,($3C0000).l
ROM:00047536                 addi.w  #$20,d0
ROM:0004753A                 addq.w  #1,d1
ROM:0004753C                 movem.w d0-d1,($3C0000).l
ROM:00047544                 subi.w  #$1F,d0
ROM:00047548                 addi.w  #$F,d1
ROM:0004754C                 movem.w d0-d1,($3C0000).l
ROM:00047554                 addi.w  #$20,d0
ROM:00047558                 addq.w  #1,d1
ROM:0004755A                 movem.w d0-d1,($3C0000).l
ROM:00047562                 subi.w  #$21,d0
ROM:00047566                 move.w  #$7283,d0
ROM:0004756A                 move.w  #$4B40,d1
ROM:0004756E                 movem.w d0-d1,($3C0000).l
ROM:00047576                 addi.w  #$20,d0
ROM:0004757A                 addq.w  #1,d1
ROM:0004757C                 movem.w d0-d1,($3C0000).l
ROM:00047584                 subi.w  #$1F,d0
ROM:00047588                 addi.w  #$F,d1
ROM:0004758C                 movem.w d0-d1,($3C0000).l
ROM:00047594                 addi.w  #$20,d0
ROM:00047598                 addq.w  #1,d1
ROM:0004759A                 movem.w d0-d1,($3C0000).l
ROM:000475A2                 subi.w  #$21,d0
ROM:000475A6                 rts
ROM:000475A8
ROM:000475A8
ROM:000475A8 loc_475A8:
ROM:000475A8                 move.w  (LevelTimer).l,d0
ROM:000475AE                 cmpi.w  #99,d0
ROM:000475B2                 bls.w   loc_475BA
ROM:000475B6                 move.w  #99,d0
ROM:000475BA
ROM:000475BA loc_475BA:
ROM:000475BA                 jsr     sub_47656
ROM:000475BE                 lea     (TimerFontMap).l,a1
ROM:000475C4                 lsl.w   #1,d0
ROM:000475C6                 move.w  (a1,d0.w),d2
ROM:000475CA                 lsl.w   #1,d1
ROM:000475CC                 move.w  (a1,d1.w),d3
ROM:000475D0                 move.w  #$7243,d0
ROM:000475D4                 move.w  d3,d1
ROM:000475D6                 movem.w d0-d1,($3C0000).l
ROM:000475DE                 addi.w  #$20,d0
ROM:000475E2                 addq.w  #1,d1
ROM:000475E4                 movem.w d0-d1,($3C0000).l
ROM:000475EC                 subi.w  #$1F,d0
ROM:000475F0                 addi.w  #$F,d1
ROM:000475F4                 movem.w d0-d1,($3C0000).l
ROM:000475FC                 addi.w  #$20,d0
ROM:00047600                 addq.w  #1,d1
ROM:00047602                 movem.w d0-d1,($3C0000).l
ROM:0004760A                 subi.w  #$21,d0
ROM:0004760E                 move.w  #$7283,d0
ROM:00047612                 move.w  d2,d1
ROM:00047614                 movem.w d0-d1,($3C0000).l
ROM:0004761C                 addi.w  #$20,d0
ROM:00047620                 addq.w  #1,d1
ROM:00047622                 movem.w d0-d1,($3C0000).l
ROM:0004762A                 subi.w  #$1F,d0
ROM:0004762E                 addi.w  #$F,d1
ROM:00047632                 movem.w d0-d1,($3C0000).l
ROM:0004763A                 addi.w  #$20,d0
ROM:0004763E                 addq.w  #1,d1
ROM:00047640                 movem.w d0-d1,($3C0000).l
ROM:00047648                 subi.w  #$21,d0
ROM:0004764C                 rts
ROM:0004764C
ROM:0004764C
ROM:0004764E
ROM:0004764E                 move.w  d0,(LevelTimer).l
ROM:00047654                 rts
ROM:00047656
ROM:00047656
ROM:00047656
ROM:00047656
