ROM:00002152 QueueSound:
ROM:00002152
ROM:00002152                 cmpi.b  #$20,d0
ROM:00002156                 bcc.w   loc_216A
ROM:0000215A                 cmp.b   (SoundFIFOLevel).l,d0
ROM:00002160                 beq.w   locret_2190
ROM:00002164                 move.b  d0,(SoundFIFOLevel).l
ROM:0000216A
ROM:0000216A loc_216A:
ROM:0000216A                 lea     (SoundCmdFIFO).l,a0
ROM:00002170                 move.w  (SoundFIFOGet+2).l,d1
ROM:00002176                 move.b  d0,(a0,d1.w)
ROM:0000217A                 addq.w  #1,d1
ROM:0000217C                 andi.w  #$1F,d1
ROM:00002180                 cmp.w   (SoundFIFOGet).l,d1
ROM:00002186                 beq.w   loc_2192
ROM:0000218A                 move.w  d1,(SoundFIFOGet+2).l
ROM:00002190
ROM:00002190 locret_2190:
ROM:00002190                 rts
ROM:00002192
ROM:00002192
ROM:00002192 loc_2192:
ROM:00002192                 move.b  #$FF,(SoundFIFOLevel).l
ROM:0000219A                 rts
ROM:0000219A
ROM:0000219A
ROM:0000219C
ROM:0000219C
ROM:0000219C
ROM:0000219C
