ROM:00002352 PlaySFX:
ROM:00002352
ROM:00002352                 cmpi.b  #1,(BIOS_USER_MODE).l
ROM:0000235A                 bne.w   gamemode
ROM:0000235E                 tst.b   (SoftDIPs.DemoSndEn).l
ROM:00002364                 beq.w   locret_236C
ROM:00002368
