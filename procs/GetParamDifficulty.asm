ROM:000799DE GetParamDifficulty:
ROM:000799DE
ROM:000799DE                 cmpi.w  #2,(a0)+
ROM:000799E2                 beq.w   code2
ROM:000799E6                 move.b  ObjLLItem.field_11(a6),d0
ROM:000799EA                 andi.w  #3,d0
ROM:000799EE                 add.w   d0,d0
ROM:000799F0                 add.w   d0,d0
ROM:000799F2                 move.b  (byte_106ED1).l,d1
ROM:000799F8                 andi.w  #2,d1
ROM:000799FC                 add.w   d1,d0
ROM:000799FE                 bsr.s   GetDifficulty?
ROM:00079A00                 andi.w  #7,d1
ROM:00079A04                 lsl.w   #4,d1
ROM:00079A06                 add.w   d1,d0
ROM:00079A08                 move.w  (a0,d0.w),d0
ROM:00079A0C                 rts
ROM:00079A0E
ROM:00079A0E
