ROM:0005E9B6 GetRand2?:
ROM:0005E9B6
ROM:0005E9B6                 lea     (unk_10E230).l,a4
ROM:0005E9BC                 move.w  (word_10E270).l,d7
ROM:0005E9C2                 addi.w  #2,d7
ROM:0005E9C6                 move.w  #$3E,d6
ROM:0005E9CA                 and.w   d6,d7
ROM:0005E9CC                 move.w  d7,(word_10E270).l
ROM:0005E9D2                 move.w  (a4,d7.w),d0
ROM:0005E9D6                 subi.w  #$15,d7
ROM:0005E9DA                 and.w   d6,d7
ROM:0005E9DC                 adda.w  d7,a4
ROM:0005E9DE                 eor.w   d0,(a4)
ROM:0005E9E0                 move.w  (a4),d0
ROM:0005E9E2                 rts
ROM:0005E9E2
ROM:0005E9E2
ROM:0005E9E4
ROM:0005E9E4
ROM:0005E9E4
ROM:0005E9E4
