ROM:00025F02 PrintP1Lives:
ROM:00025F02                 movea.w #$7065,a1
ROM:00025F06                 move.w  #$5300,d0
ROM:00025F0A                 lea     ($2785B8).l,a2
ROM:00025F10                 jsr     FixPrint
ROM:00025F16                 move.w  #$7044,d0
ROM:00025F1A                 bsr.w   sub_25F92
ROM:00025F1E                 movea.w #$7143,a1
ROM:00025F22                 move.w  #$7AB0,d0
ROM:00025F26                 move.w  #8,d1
ROM:00025F2A                 move.w  #3,d2
ROM:00025F2E                 jsr     FixRelated3
ROM:00025F34                 movea.w #$71C3,a1
ROM:00025F38                 move.w  #$7AE4,d0
ROM:00025F3C                 move.w  #4,d1
ROM:00025F40                 move.w  #1,d2
ROM:00025F44                 jmp     FixRelated3
ROM:00025F44
ROM:00025F44
ROM:00025F4A
ROM:00025F4A
ROM:00025F4A
ROM:00025F4A
