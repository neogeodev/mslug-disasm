ROM:00025F4A PrintP2Lives:
ROM:00025F4A                 movea.w #$73E5,a1
ROM:00025F4E                 move.w  #$5300,d0
ROM:00025F52                 lea     (a2up).l,a2
ROM:00025F58                 jsr     FixPrint
ROM:00025F5E                 move.w  #$73C4,d0
ROM:00025F62                 bsr.w   sub_25F92
ROM:00025F66                 movea.w #$72C3,a1
ROM:00025F6A                 move.w  #$7AB0,d0
ROM:00025F6E                 move.w  #8,d1
ROM:00025F72                 move.w  #3,d2
ROM:00025F76                 jsr     FixRelated3
ROM:00025F7C                 movea.w #$7343,a1
ROM:00025F80                 move.w  #$7AE4,d0
ROM:00025F84                 move.w  #4,d1
ROM:00025F88                 move.w  #1,d2
ROM:00025F8C                 jmp     FixRelated3
ROM:00025F8C
ROM:00025F8C
ROM:00025F92
ROM:00025F92
ROM:00025F92
ROM:00025F92
