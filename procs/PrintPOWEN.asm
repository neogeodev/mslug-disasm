ROM:0003E84C PrintPOWEN:
ROM:0003E84C                 cmpa.l  #0,a1
ROM:0003E852                 bne.w   loc_3E858
ROM:0003E856                 rts
ROM:0003E858
ROM:0003E858
ROM:0003E858 loc_3E858:
ROM:0003E858                 cmpi.b  #1,$68(a6)
ROM:0003E85E                 bne.w   loc_3E866
ROM:0003E862                 addi.w  #$220,d0
ROM:0003E866
ROM:0003E866 loc_3E866:
ROM:0003E866                 lea     (MilitaryGrades).l,a2
ROM:0003E86C                 clr.l   d4
ROM:0003E86E                 move.b  d3,d4
ROM:0003E870                 lsl.l   #2,d4
ROM:0003E872                 adda.l  d4,a2
ROM:0003E874                 move.w  #$2300,d1
ROM:0003E878                 add.b   (a2)+,d1
ROM:0003E87A                 movem.w d0-d1,($3C0000).l
ROM:0003E882                 addi.w  #$20,d0
ROM:0003E886                 move.w  #$2300,d1
ROM:0003E88A                 add.b   (a2)+,d1
ROM:0003E88C                 movem.w d0-d1,($3C0000).l
ROM:0003E894                 addi.w  #$20,d0
ROM:0003E898                 move.w  #$2300,d1
ROM:0003E89C                 add.b   (a2)+,d1
ROM:0003E89E                 movem.w d0-d1,($3C0000).l
ROM:0003E8A6                 addi.w  #$20,d0
ROM:0003E8AA                 move.w  #$2300,d1
ROM:0003E8AE                 add.b   (a2),d1
ROM:0003E8B0                 movem.w d0-d1,($3C0000).l
ROM:0003E8B8                 addi.w  #$20,d0
ROM:0003E8BC
