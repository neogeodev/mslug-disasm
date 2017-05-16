ROM:000617D2 Set?FromXSpeed:
ROM:000617D2
ROM:000617D2                 move.w  ObjLLItem.XSpeed(a6),d0
ROM:000617D6                 btst    #0,ObjLLItem.field_3A(a6)
ROM:000617DC                 beq.w   loc_61848
ROM:000617E0                 cmpi.w  #$FF40,d0
ROM:000617E4                 bge.w   loc_617F0
ROM:000617E8                 move.b  #6,ObjLLItem.field_71(a6)
ROM:000617EE                 rts
ROM:000617F0
ROM:000617F0
ROM:000617F0 loc_617F0:
ROM:000617F0                 cmpi.w  #$FF80,d0
ROM:000617F4                 bge.w   loc_61800
ROM:000617F8                 move.b  #5,ObjLLItem.field_71(a6)
ROM:000617FE                 rts
ROM:00061800
ROM:00061800
ROM:00061800 loc_61800:
ROM:00061800                 cmpi.w  #$FFC0,d0
ROM:00061804                 bge.w   loc_61810
ROM:00061808                 move.b  #4,ObjLLItem.field_71(a6)
ROM:0006180E                 rts
ROM:00061810
ROM:00061810
ROM:00061810 loc_61810:
ROM:00061810                 cmpi.w  #$40,d0
ROM:00061814                 bge.w   loc_61820
ROM:00061818                 move.b  #3,$71(a6)
ROM:0006181E                 rts
ROM:00061820
ROM:00061820
ROM:00061820 loc_61820:
ROM:00061820                 cmpi.w  #$80,d0
ROM:00061824                 bge.w   loc_61830
ROM:00061828                 move.b  #2,$71(a6)
ROM:0006182E                 rts
ROM:00061830
ROM:00061830
ROM:00061830 loc_61830:
ROM:00061830                 cmpi.w  #$C0,d0
ROM:00061834                 bge.w   loc_61840
ROM:00061838                 move.b  #1,$71(a6)
ROM:0006183E                 rts
ROM:00061840
ROM:00061840
ROM:00061840 loc_61840:
ROM:00061840                 move.b  #0,$71(a6)
ROM:00061846                 rts
ROM:00061848
ROM:00061848
ROM:00061848 loc_61848:
ROM:00061848                 cmpi.w  #$FF40,d0
ROM:0006184C                 bge.w   loc_61858
ROM:00061850                 move.b  #0,$71(a6)
ROM:00061856                 rts
ROM:00061858
ROM:00061858
ROM:00061858 loc_61858:
ROM:00061858                 cmpi.w  #$FF80,d0
ROM:0006185C                 bge.w   loc_61868
ROM:00061860                 move.b  #1,$71(a6)
ROM:00061866                 rts
ROM:00061868
ROM:00061868
ROM:00061868 loc_61868:
ROM:00061868                 cmpi.w  #$FFC0,d0
ROM:0006186C                 bge.w   loc_61878
ROM:00061870                 move.b  #2,$71(a6)
ROM:00061876                 rts
ROM:00061878
ROM:00061878
ROM:00061878 loc_61878:
ROM:00061878                 cmpi.w  #$40,d0
ROM:0006187C                 bge.w   loc_61888
ROM:00061880                 move.b  #3,$71(a6)
ROM:00061886                 rts
ROM:00061888
ROM:00061888
ROM:00061888 loc_61888:
ROM:00061888                 cmpi.w  #$80,d0
ROM:0006188C                 bge.w   loc_61898
ROM:00061890                 move.b  #4,$71(a6)
ROM:00061896                 rts
ROM:00061898
ROM:00061898
ROM:00061898 loc_61898:
ROM:00061898                 cmpi.w  #$C0,d0
ROM:0006189C                 bge.w   loc_618A8
ROM:000618A0                 move.b  #5,$71(a6)
ROM:000618A6                 rts
ROM:000618A8
ROM:000618A8
ROM:000618A8 loc_618A8:
ROM:000618A8                 move.b  #6,$71(a6)
ROM:000618AE                 rts
ROM:000618AE
ROM:000618AE
ROM:000618B0
ROM:000618B0
