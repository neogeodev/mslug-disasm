ROM:0005E9E4 GetRandMaxD0:
ROM:0005E9E4
ROM:0005E9E4                 move.w  d0,d5
ROM:0005E9E6                 lea     (unk_10E230).l,a4
ROM:0005E9EC                 move.w  (word_10E270).l,d7
ROM:0005E9F2                 addi.w  #2,d7
ROM:0005E9F6                 move.w  #$3E,d6
ROM:0005E9FA                 and.w   d6,d7
ROM:0005E9FC                 move.w  d7,(word_10E270).l
ROM:0005EA02                 move.w  (a4,d7.w),d0
ROM:0005EA06                 rol.w   #1,d0
ROM:0005EA08                 subi.w  #$15,d7
ROM:0005EA0C                 and.w   d6,d7
ROM:0005EA0E                 eor.w   d0,(a4,d7.w)
ROM:0005EA12                 move.w  (a4,d7.w),d0
ROM:0005EA16                 mulu.w  d5,d0
ROM:0005EA18                 swap    d0
ROM:0005EA1A                 rts
ROM:0005EA1A
ROM:0005EA1A
ROM:0005EA1C
ROM:0005EA1C
ROM:0005EA1C
ROM:0005EA1C
