ROM:0005E770 SoundRelated_0:
ROM:0005E770
ROM:0005E770
ROM:0005E770
ROM:0005E770
ROM:0005E770                 btst    #0,ObjLLItem.Flags1(a6)
ROM:0005E776                 bne.w   locret_5E796
ROM:0005E77A                 move.b  $58(a6),d0
ROM:0005E77E                 andi.w  #$FF,d0
ROM:0005E782                 subq.w  #1,d0
ROM:0005E784                 cmpi.w  #5,d0
ROM:0005E788                 bcc.w   locret_5E796
ROM:0005E78C                 asl.w   #1,d0
ROM:0005E78E                 move.w  (a0,d0.w),d0
ROM:0005E792                 jmp     loc_5E728
ROM:0005E796
ROM:0005E796
ROM:0005E796 locret_5E796:
ROM:0005E796
ROM:0005E796                 rts
ROM:0005E796
ROM:0005E796
ROM:0005E798
ROM:0005E798
ROM:0005E798
ROM:0005E798
