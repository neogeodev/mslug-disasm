ROM:0000212E ResetSound?:
ROM:0000212E
ROM:0000212E                 clr.l   (SoundFIFOGet).l
ROM:00002134                 clr.b   (Z80ReplyCode).l
ROM:0000213A                 clr.b   (byte_1081A9).l
ROM:00002140                 clr.b   (byte_1081AA).l
ROM:00002146                 move.b  #$FF,(SoundFIFOLevel).l
ROM:0000214E                 move.b  #4,d0
ROM:0000214E
ROM:0000214E
ROM:00002152
ROM:00002152
ROM:00002152
ROM:00002152
