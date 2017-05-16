ROM:00051F94 SetSprAttr?:
ROM:00051F94                 move.w  #$8201,d0
ROM:00051F98                 add.w   $28(a6),d0
ROM:00051F9C                 move.w  $2A(a6),d1
ROM:00051FA0                 move.w  $30(a6),d2
ROM:00051FA4                 move.w  d0,d5
ROM:00051FA6                 add.w   d1,d5
ROM:00051FA8                 move.w  d5,(LSPCVRAMAddr).l
ROM:00051FAE                 move.w  d5,($3C0000).l
ROM:00051FB4                 move.w  #0,($3C0002).l
ROM:00051FBC                 addq.b  #1,d1
ROM:00051FBE                 andi.b  #$1F,d1
ROM:00051FC2                 moveq   #$B,d4
ROM:00051FC4                 move.w  d1,d3
ROM:00051FC6                 lsl.w   d4,d3
ROM:00051FC8                 add.w   $2E(a6),d3
ROM:00051FCC
ROM:00051FCC loc_51FCC:
ROM:00051FCC                 cmp.w   $2C(a6),d1
ROM:00051FD0                 beq.w   loc_52018
ROM:00051FD4                 move.w  d0,d5
ROM:00051FD6                 add.w   d1,d5
ROM:00051FD8                 move.w  d5,(LSPCVRAMAddr).l
ROM:00051FDE                 move.w  d5,($3C0000).l
ROM:00051FE4                 move.b  $52(a6,d1.w),d6
ROM:00051FE8                 lsl.w   d4,d6
ROM:00051FEA                 add.w   d2,d6
ROM:00051FEC                 or.b    $32(a6,d1.w),d6
ROM:00051FF0                 move.w  d6,($3C0002).l
ROM:00051FF6                 addi.w  #$200,d5
ROM:00051FFA                 move.w  d5,(LSPCVRAMAddr).l
ROM:00052000                 move.w  d5,($3C0000).l
ROM:00052006                 addq.b  #1,d1
ROM:00052008                 andi.w  #$1F,d1
ROM:0005200C                 move.w  d3,($3C0002).l
ROM:00052012                 addi.w  #$800,d3
ROM:00052016                 bra.s   loc_51FCC
ROM:00052018
ROM:00052018
ROM:00052018 loc_52018:
ROM:00052018                 move.w  d0,d4
ROM:0005201A                 add.w   d1,d4
ROM:0005201C                 move.w  d4,(LSPCVRAMAddr).l
ROM:00052022                 move.w  d4,($3C0000).l
ROM:00052028                 move.w  #0,($3C0002).l
ROM:00052030                 rts
ROM:00052030
ROM:00052030
ROM:00052032
ROM:00052032                 movea.l 8(a6),a1
ROM:00052036                 move.b  $10(a6),d0
ROM:0005203A                 cmp.b   $10(a1),d0
ROM:0005203E                 bcs.w   loc_52048
ROM:00052042                 andi    #$EE,ccr
ROM:00052046                 rts
ROM:00052048
ROM:00052048
ROM:00052048 loc_52048:
ROM:00052048                 ori     #$11,ccr
ROM:0005204C                 rts
ROM:0005204E
ROM:0005204E                 rts
ROM:00052050
ROM:00052050
ROM:00052050
ROM:00052050
