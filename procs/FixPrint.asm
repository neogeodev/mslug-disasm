ROM:0005DAD8 FixPrint:
ROM:0005DAD8
ROM:0005DAD8                 moveq   #0,d2
ROM:0005DADA                 move.l  a1,d1
ROM:0005DADC
ROM:0005DADC loc_5DADC:
ROM:0005DADC                 move.w  d1,-(sp)
ROM:0005DADE
ROM:0005DADE loc_5DADE:
ROM:0005DADE                 move.b  (a2)+,d2
ROM:0005DAE0                 cmpi.b  #$FE,d2
ROM:0005DAE4                 beq.w   endofstring
ROM:0005DAE8                 cmpi.b  #$FD,d2
ROM:0005DAEC                 beq.w   newline
ROM:0005DAF0                 cmpi.w  #$74FF,d1
ROM:0005DAF4                 bgt.w   loc_5DB0A
ROM:0005DAF8                 cmpi.w  #$7000,d1
ROM:0005DAFC                 blt.w   loc_5DB0A
ROM:0005DB00                 or.w    d0,d2
ROM:0005DB02                 movem.w d1-d2,($3C0000).l
ROM:0005DB0A
ROM:0005DB0A loc_5DB0A:
ROM:0005DB0A
ROM:0005DB0A                 addi.w  #$20,d1
ROM:0005DB0E                 bra.s   loc_5DADE
ROM:0005DB10
ROM:0005DB10
