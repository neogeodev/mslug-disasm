ROM:000007CC USER:
ROM:000007CC                 lea     $8F2,a0
ROM:000007D0
ROM:000007D0 loc_7D0:
ROM:000007D0                 move.l  a0,(RLIHandler).l
ROM:000007D6                 bclr    #7,(byte_10FD80).l
ROM:000007DE                 move.w  #7,($3C000C).l
ROM:000007E6                 andi    #$F8FF,sr
ROM:000007EA                 moveq   #0,d0
ROM:000007EC                 move.b  (byte_10FDAE).l,d0
ROM:000007F2                 add.w   d0,d0
ROM:000007F4                 add.w   d0,d0
ROM:000007F6                 movea.l UserJT(pc,d0.w),a0
ROM:000007FA                 jmp     (a0)
ROM:000007FA
