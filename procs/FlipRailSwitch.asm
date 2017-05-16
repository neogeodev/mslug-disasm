ROM:00053D80 FlipRailSwitch:
ROM:00053D80                 movea.l $50(a6),a0
ROM:00053D84                 clr.l   d0
ROM:00053D86                 move.w  ObjLLItem.XSpeed(a0),d0
ROM:00053D8A                 cmpi.w  #0,d0
ROM:00053D8E                 beq.w   locret_53DC8
ROM:00053D92                 cmpi.b  #0,ObjLLItem.field_20(a6)
ROM:00053D98                 beq.w   SwitchStateA
ROM:00053D9C                 btst    #$F,d0
ROM:00053DA0                 beq.w   locret_53DC8
ROM:00053DA4                 lea     (RailSwitchAnimA).l,a0
ROM:00053DAA                 jsr     ChangeAnimation
ROM:00053DB0                 bra.w   locret_53DC8
ROM:00053DB4
ROM:00053DB4
