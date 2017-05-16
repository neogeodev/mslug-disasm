ROM:0003E7A6 PrintPOW:
ROM:0003E7A6
ROM:0003E7A6                 cmpi.b  #0,(SysCountryCode).l
ROM:0003E7AE                 bne.w   loc_3E7BA
ROM:0003E7B2                 jsr     PrintPOWJP
ROM:0003E7B6                 bra.w   locret_3E7BE
ROM:0003E7BA
ROM:0003E7BA
ROM:0003E7BA loc_3E7BA:
ROM:0003E7BA                 jsr     PrintPOWEN
ROM:0003E7BE
ROM:0003E7BE locret_3E7BE:
ROM:0003E7BE                 rts
ROM:0003E7BE
ROM:0003E7BE
ROM:0003E7C0
ROM:0003E7C0
