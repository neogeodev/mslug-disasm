ROM:0005CFC8 BloodON:
ROM:0005CFC8
ROM:0005CFC8                 lea     loc_5CC08,a2
ROM:0005CFCC                 cmpi.b  #1,$6D(a6)
ROM:0005CFD2                 bne.w   loc_5CFE0
ROM:0005CFD6                 lea     ($100300).l,a1
ROM:0005CFDC                 movea.l $72(a1),a2
ROM:0005CFE0
ROM:0005CFE0 loc_5CFE0:
ROM:0005CFE0                 cmpi.b  #2,$6D(a6)
ROM:0005CFE6                 bne.w   loc_5CFF4
ROM:0005CFEA                 lea     ($1003A0).l,a1
ROM:0005CFF0                 movea.l $72(a1),a2
ROM:0005CFF4
ROM:0005CFF4 loc_5CFF4:
ROM:0005CFF4                 jsr     sub_5D674
ROM:0005CFF8
ROM:0005CFF8 loc_5CFF8:
ROM:0005CFF8
ROM:0005CFF8                 move.b  (a2,d0.w),d0
ROM:0005CFFC                 and.b   d1,d0
ROM:0005CFFE                 bne.w   loc_5D008
ROM:0005D002                 andi    #$EE,ccr
ROM:0005D006                 rts
ROM:0005D008
ROM:0005D008
ROM:0005D008 loc_5D008:
ROM:0005D008                 ori     #$11,ccr
ROM:0005D00C                 rts
ROM:0005D00C
ROM:0005D00C
ROM:0005D00E
ROM:0005D00E
ROM:0005D00E
ROM:0005D00E
