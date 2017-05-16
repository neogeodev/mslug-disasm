ROM:0000080C USER_INIT:
ROM:0000080C                 jsr     InitSaveRAM
ROM:00000812                 move.l  (BIOS_DEVMODE).l,d0
ROM:00000818                 bne.w   loc_826
ROM:0000081C
ROM:0000081C loc_81C:
ROM:0000081C                 clr.w   (DebugDIPs).l
ROM:00000822                 bra.w   loc_82E
ROM:00000826
ROM:00000826
ROM:00000826 loc_826:
ROM:00000826                 move.w  #0,(DebugDIPs).l
ROM:0000082E
ROM:0000082E loc_82E:
ROM:0000082E                 jmp     ReturnToBIOS
ROM:00000832
ROM:00000832
