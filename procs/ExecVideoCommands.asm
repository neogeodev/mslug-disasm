ROM:0005B52E ExecVideoCommands:
ROM:0005B52E
ROM:0005B52E                 move.w  6(a3),d7
ROM:0005B532                 addq.b  #1,d7
ROM:0005B534                 sne     d6
ROM:0005B536                 andi.b  #4,d6
ROM:0005B53A                 rol.w   #7,d7
ROM:0005B53C                 andi.w  #8,d7
ROM:0005B540                 or.b    d6,d7
ROM:0005B542                 jmp     loc_5B546(pc,d7.w)
ROM:0005B542
ROM:0005B542
ROM:0005B546
ROM:0005B546
ROM:0005B546 loc_5B546:
ROM:0005B546                 bra.w   SetNSpriteX
ROM:0005B54A
ROM:0005B54A                 bra.w   SetNSpriteMapX
ROM:0005B54E
ROM:0005B54E                 bra.w   loc_5B75C
ROM:0005B552
ROM:0005B552                 bra.w   loc_5BC6C
ROM:0005B556
ROM:0005B556
