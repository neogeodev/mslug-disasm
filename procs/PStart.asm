ROM:00024E76 PStart:
ROM:00024E76                 move.b  (BIOS_START_FLAG).l,d0
ROM:00024E7C                 andi.w  #3,d0
ROM:00024E80                 lsl.w   #2,d0
ROM:00024E82                 bclr    #0,(BIOS_START_FLAG).l
ROM:00024E8A                 bclr    #1,(BIOS_START_FLAG).l
ROM:00024E92                 lea     (dword_10FDB6).l,a1
ROM:00024E98                 lea     CoinLUT?,a0
ROM:00024E9C                 cmpi.b  #1,(a1)
ROM:00024EA0                 beq.w   loc_24F02
ROM:00024EA4                 cmpi.b  #3,(a1)
ROM:00024EA8                 beq.w   loc_24F02
ROM:00024EAC                 tst.b   (byte_106ECC).l
ROM:00024EB2                 bne.w   loc_24F02
ROM:00024EB6
ROM:00024EB6 loc_24EB6:
ROM:00024EB6                 tst.b   (BIOS_MVS_FLAG).l
ROM:00024EBC                 bne.w   loc_24ECA
ROM:00024EC0                 tst.b   (CreditCounter?).l
ROM:00024EC6                 beq.w   loc_24F02
ROM:00024ECA
ROM:00024ECA loc_24ECA:
ROM:00024ECA                 cmpi.b  #0,2(a0,d0.w)
ROM:00024ED0                 beq.w   loc_24F02
ROM:00024ED4                 move.b  2(a0,d0.w),(a1)
ROM:00024ED8                 beq.w   loc_24F02
ROM:00024EDC                 bset    #0,(BIOS_START_FLAG).l
ROM:00024EE4                 tst.b   (BIOS_MVS_FLAG).l
ROM:00024EEA                 bne.w   loc_24F02
ROM:00024EEE                 move.l  d0,-(sp)
ROM:00024EF0                 move.b  (CreditCounter?).l,d0
ROM:00024EF6                 jsr     BCDDec
ROM:00024EFA                 move.b  d0,(CreditCounter?).l
ROM:00024F00                 move.l  (sp)+,d0
ROM:00024F02
ROM:00024F02 loc_24F02:
ROM:00024F02
ROM:00024F02                 cmpi.b  #1,1(a1)
ROM:00024F08                 beq.w   loc_24F6E
ROM:00024F0C                 cmpi.b  #3,1(a1)
ROM:00024F12                 beq.w   loc_24F6E
ROM:00024F16                 tst.b   (byte_106ECD).l
ROM:00024F1C                 bne.w   loc_24F6E
ROM:00024F20                 tst.b   (BIOS_MVS_FLAG).l
ROM:00024F26                 bne.w   loc_24F34
ROM:00024F2A                 tst.b   (CreditCounter2?).l
ROM:00024F30                 beq.w   loc_24F6E
ROM:00024F34
ROM:00024F34 loc_24F34:
ROM:00024F34                 cmpi.b  #0,3(a0,d0.w)
ROM:00024F3A                 beq.w   loc_24F6E
ROM:00024F3E                 move.b  3(a0,d0.w),1(a1)
ROM:00024F44                 beq.w   loc_24F6E
ROM:00024F48                 bset    #1,(BIOS_START_FLAG).l
ROM:00024F50                 tst.b   (BIOS_MVS_FLAG).l
ROM:00024F56                 bne.w   loc_24F6E
ROM:00024F5A                 move.l  d0,-(sp)
ROM:00024F5C                 move.b  (CreditCounter2?).l,d0
ROM:00024F62                 jsr     BCDDec
ROM:00024F66                 move.b  d0,(CreditCounter2?).l
ROM:00024F6C                 move.l  (sp)+,d0
ROM:00024F6E
ROM:00024F6E loc_24F6E:
ROM:00024F6E
ROM:00024F6E                 move.b  (BIOS_START_FLAG).l,d1
ROM:00024F74                 andi.b  #3,d1
ROM:00024F78                 beq.w   locret_24F84
ROM:00024F7C                 move.b  (a0,d0.w),(BIOS_USER_MODE).l
ROM:00024F84
ROM:00024F84 locret_24F84:
ROM:00024F84                 rts
ROM:00024F86
ROM:00024F86
