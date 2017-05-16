ROM:0005CFA8 SprayBlood:
ROM:0005CFA8
ROM:0005CFA8                 btst    #7,(DebugDIPs).l
ROM:0005CFB0                 bne.w   BloodON
ROM:0005CFB4                 lea     ($1001C0).l,a4
ROM:0005CFBA                 tst.b   $44(a4)
ROM:0005CFBE                 beq.w   BloodON
ROM:0005CFC2                 andi    #$EE,ccr
ROM:0005CFC6                 rts
ROM:0005CFC8
ROM:0005CFC8
