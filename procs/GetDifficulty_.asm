ROM:000799A4 GetDifficulty?:
ROM:000799A4
ROM:000799A4                 move.b  (SoftDIPs.Difficulty).l,d1
ROM:000799AA                 cmpi.b  #1,(BIOS_USER_MODE).l
ROM:000799B2                 bne.w   loc_799BA
ROM:000799B6                 move.b  #4,d1
ROM:000799BA
ROM:000799BA loc_799BA:
ROM:000799BA                 move.l  a0,-(sp)
ROM:000799BC                 move.w  d0,-(sp)
ROM:000799BE                 move.b  d1,-(sp)
ROM:000799C0                 jsr     sub_2AC4C
ROM:000799C6                 scs     d1
ROM:000799C8                 neg.b   d1
ROM:000799CA                 add.b   (sp)+,d1
ROM:000799CC                 move.w  (sp)+,d0
ROM:000799CE                 movea.l (sp)+,a0
ROM:000799D0                 cmpi.b  #8,d1
ROM:000799D4                 bcs.w   locret_799DC
ROM:000799D8                 move.b  #7,d1
ROM:000799DC
ROM:000799DC locret_799DC:
ROM:000799DC                 rts
ROM:000799DC
ROM:000799DC
ROM:000799DE
ROM:000799DE
ROM:000799DE
ROM:000799DE
