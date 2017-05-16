ROM:00013600 ProcessObj?List:
ROM:00013600
ROM:00013600                 tst.w   ObjLLItem.Item?Count(a6)
ROM:00013604                 beq.w   locret_13622
ROM:00013608                 subq.w  #1,ObjLLItem.Item?Count(a6)
ROM:0001360C                 move.w  ObjLLItem.Item?Count(a6),d2
ROM:00013610                 add.w   d2,d2
ROM:00013612                 move.w  ObjLLItem.wItemListStart(a6,d2.w),d1
ROM:00013616                 clr.w   ObjLLItem.wItemListStart(a6,d2.w)
ROM:0001361A                 jsr     (sub_2BC4).l
ROM:00013620                 bra.s   ProcessObj?List
ROM:00013622
ROM:00013622
ROM:00013622 locret_13622:
ROM:00013622                 rts
ROM:00013622
ROM:00013622
ROM:00013624
ROM:00013624
ROM:00013624 loc_13624:
ROM:00013624
ROM:00013624                 move.l  d0,-(sp)
ROM:00013626                 movem.l d5-d6/a0-a1,-(sp)
ROM:0001362A                 clr.w   d5
ROM:0001362C                 lea     $12F30,a1
ROM:00013630                 clr.w   d0
ROM:00013632                 move.b  d2,d0
ROM:00013634                 add.w   d0,d0
ROM:00013636                 add.w   d0,d0
ROM:00013638                 movea.l (a1,d0.w),a0
ROM:0001363C                 clr.w   d6
ROM:0001363E                 move.b  (byte_10A2CA).l,d6
ROM:00013644                 move.b  (a0,d6.w),d6
ROM:00013648                 sub.b   d6,d2
ROM:0001364A                 move.b  d2,d5
ROM:0001364C                 lsl.w   #5,d5
ROM:0001364E                 clr.w   d0
ROM:00013650                 move.b  d3,d0
ROM:00013652                 add.w   d0,d0
ROM:00013654                 add.w   d0,d0
ROM:00013656                 movea.l (a1,d0.w),a0
ROM:0001365A                 clr.w   d6
ROM:0001365C                 move.b  (byte_10A2CB).l,d6
ROM:0001365C
