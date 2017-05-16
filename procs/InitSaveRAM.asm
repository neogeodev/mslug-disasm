ROM:00024E38 InitSaveRAM:
ROM:00024E38                 jsr     (ClearCoinSoundReq).l
ROM:00024E3E                 move.b  #1,(byte_106ECC).l
ROM:00024E46                 move.b  #1,(byte_106ECD).l
ROM:00024E4E                 clr.b   (byte_10007B).l
ROM:00024E54                 jsr     loc_9773C
ROM:00024E5A                 tst.b   (BIOS_MVS_FLAG).l
ROM:00024E60                 bne.w   loc_24E6E
ROM:00024E64                 jsr     sub_99AE2
ROM:00024E6A                 bra.w   locret_24E74
ROM:00024E6E
ROM:00024E6E
ROM:00024E6E loc_24E6E:
ROM:00024E6E                 jsr     sub_99AFC
ROM:00024E74
ROM:00024E74 locret_24E74:
ROM:00024E74                 rts
ROM:00024E76
ROM:00024E76
