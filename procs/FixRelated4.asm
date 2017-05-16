ROM:000477FC FixRelated4:
ROM:000477FC
ROM:000477FC                 move.w  d1,d4
ROM:000477FE                 movea.l a1,a4
ROM:00047800
ROM:00047800 loc_47800:
ROM:00047800                 movea.l a2,a5
ROM:00047802
ROM:00047802 loc_47802:
ROM:00047802                 move.b  (a5)+,d0
ROM:00047804                 cmpi.b  #$FF,d0
ROM:00047808                 beq.w   endofstring
ROM:0004780C                 move.w  d4,d1
ROM:0004780E                 movea.l a4,a1
ROM:00047810                 jsr     sub_477D4
ROM:00047814                 move.l  a4,d0
ROM:00047816                 addi.l  #$20,d0
ROM:0004781C                 movea.l d0,a4
ROM:0004781E                 bra.s   loc_47802
ROM:00047820
ROM:00047820
