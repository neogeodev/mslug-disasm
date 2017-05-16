ROM:0004784C FixRelated5:
ROM:0004784C
ROM:0004784C                 move.w  d1,d4
ROM:0004784E                 movea.l a1,a4
ROM:00047850                 movea.l a2,a5
ROM:00047852
ROM:00047852 loc_47852:
ROM:00047852                 move.b  (a5)+,d0
ROM:00047854                 cmpi.b  #$FF,d0
ROM:00047858                 beq.w   locret_47870
ROM:0004785C                 move.w  d4,d1
ROM:0004785E                 movea.l a4,a1
ROM:00047860                 jsr     sub_47822
ROM:00047864                 move.l  a4,d0
ROM:00047866                 addi.l  #$40,d0
ROM:0004786C                 movea.l d0,a4
ROM:0004786E                 bra.s   loc_47852
ROM:00047870
ROM:00047870
ROM:00047870 locret_47870:
ROM:00047870                 rts
ROM:00047870
ROM:00047870
ROM:00047872
ROM:00047872
ROM:00047872
ROM:00047872
