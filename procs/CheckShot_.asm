ROM:0002870A CheckShot?:
ROM:0002870A
ROM:0002870A                 btst    #3,ObjLLItem.Flags1(a6)
ROM:00028710                 bne.w   loc_2871C
ROM:00028714                 clr.w   d0
ROM:00028716                 andi    #$EE,ccr
ROM:0002871A                 rts
ROM:0002871C
ROM:0002871C
ROM:0002871C loc_2871C:
ROM:0002871C                 movea.l $48(a6),a2
ROM:00028720                 move.w  #1,d0
ROM:00028724                 cmpa.l  #$FFFFFFFF,a2
ROM:0002872A                 beq.w   loc_28752
ROM:0002872E                 adda.l  #$A,a2
ROM:00028734                 move.w  ObjLLItem.field_54(a6),d0
ROM:00028738                 move.w  (a2),d2
ROM:0002873A                 move.w  2(a2),d3
ROM:0002873E                 add.w   ObjLLItem.XPos(a6),d2
ROM:00028742                 add.w   ObjLLItem.XPos(a6),d3
ROM:00028746                 add.w   d2,d3
ROM:00028748                 asr.w   #1,d3
ROM:0002874A                 sub.w   d3,d0
ROM:0002874C                 subx.w  d0,d0
ROM:0002874E                 addi.w  #2,d0
ROM:00028752
ROM:00028752 loc_28752:
ROM:00028752                 ori     #$11,ccr
ROM:00028756                 rts
ROM:00028756
ROM:00028756
ROM:00028758
ROM:00028758
ROM:00028758
ROM:00028758
