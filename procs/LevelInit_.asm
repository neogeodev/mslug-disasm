ROM:00043610 LevelInit?:
ROM:00043610                 clr.w   (dword_106F5C+2).l
ROM:00043616                 clr.l   (GeoScrollX?).l
ROM:0004361C                 clr.l   (dword_106F54).l
ROM:00043622                 clr.l   (dword_106F58).l
ROM:00043628                 clr.w   (word_108160).l
ROM:0004362E                 clr.w   (word_108162).l
ROM:00043634                 move.w  #$A0,(word_108164).l
ROM:0004363C                 move.w  #$180,(word_108166).l
ROM:00043644                 move.w  #0,(word_108168).l
ROM:0004364C                 move.w  #0,(word_10816A).l
ROM:00043654                 move.w  #$FFFF,(word_10816C).l
ROM:0004365C                 move.w  #$FFFF,(word_10816E).l
ROM:00043664                 move.w  #0,(word_108170).l
ROM:0004366C                 clr.w   (dword_106F5C).l
ROM:00043672                 clr.b   (byte_108179).l
ROM:00043678                 move.w  (dword_106F5C).l,(word_108172).l
ROM:00043682                 move.w  (GeoScrollX?).l,(word_108174).l
ROM:0004368C                 move.w  (dword_106F58).l,(word_108176).l
ROM:00043696                 lea     (word_106F6C).l,a0
ROM:0004369C                 bsr.w   sub_43EDA
ROM:000436A0                 bsr.w   sub_434EA
ROM:000436A4                 clr.b   (byte_10E39C).l
ROM:000436AA                 clr.b   (byte_10E39D).l
ROM:000436B0                 clr.w   (word_106F42).l
ROM:000436B6                 move.b  #1,(byte_106ED3).l
ROM:000436BE                 jsr     sub_7707C
ROM:000436C4                 jsr     loc_8F158
ROM:000436CA                 jsr     sub_3EE3A
ROM:000436D0                 jsr     sub_997B8
ROM:000436D6                 jsr     sub_4CB5C
ROM:000436DC                 rts
ROM:000436DC
ROM:000436DC
ROM:000436DE
ROM:000436DE
ROM:000436DE
ROM:000436DE
