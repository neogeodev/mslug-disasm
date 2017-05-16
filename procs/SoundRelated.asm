ROM:00002230 SoundRelated:
ROM:00002230
ROM:00002230                 move.b  #$FF,(byte_1081AA).l
ROM:00002238                 rts
ROM:00002238
ROM:00002238
ROM:0000223A
ROM:0000223A                 clr.b   (byte_1081AA).l
ROM:00002240                 rts
ROM:00002242
ROM:00002242                 move.b  (Z80ReplyCode).l,d0
ROM:00002248                 cmp.b   (byte_1081A9).l,d0
ROM:0000224E                 beq.w   loc_2264
ROM:00002252                 move.b  d0,(byte_1081A9).l
ROM:00002258                 bpl.w   loc_2264
ROM:0000225C                 subi.b  #$80,d0
ROM:00002260                 lsr.b   #1,d0
ROM:00002262                 rts
ROM:00002264
ROM:00002264
ROM:00002264 loc_2264:
ROM:00002264
ROM:00002264                 move.b  #$FF,d0
ROM:00002268                 rts
ROM:0000226A
ROM:0000226A
ROM:0000226A
ROM:0000226A
