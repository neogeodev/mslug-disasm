ROM:0005022A InitObjectGFX?:
ROM:0005022A
ROM:0005022A                 movea.l ObjGFXDef(a2),a0
ROM:0005022C                 movea.l ObjGFXDef.Addr2(a2),a1
ROM:00050230                 move.w  8(a2),d0
ROM:00050234                 move.w  $A(a2),d1
ROM:00050238                 move.w  $C(a2),d2
ROM:0005023C                 move.w  $E(a2),d3
ROM:00050240                 move.w  ObjGFXDef.Width(a2),d4
ROM:00050244                 move.w  ObjGFXDef.Height(a2),d5
ROM:00050248                 jsr     LoadSpriteVRAM
ROM:0005024E                 rts
ROM:0005024E
ROM:0005024E
ROM:00050250
ROM:00050250                 movea.l 8(a6),a1
ROM:00050254                 move.b  $10(a6),d0
ROM:00050258                 cmp.b   $10(a1),d0
ROM:0005025C                 bcs.w   loc_50266
ROM:00050260                 andi    #$EE,ccr
ROM:00050264                 rts
ROM:00050266
ROM:00050266
ROM:00050266 loc_50266:
ROM:00050266                 ori     #$11,ccr
ROM:0005026A                 rts
ROM:0005026C
ROM:0005026C
ROM:0005026C loc_5026C:
ROM:0005026C                 move.w  #0,d0
ROM:00050270                 move.w  #$F0,d1
ROM:00050274                 jsr     sub_44022
ROM:0005027A                 move.w  #$30,-(sp)
ROM:0005027E
ROM:0005027E loc_5027E:
ROM:0005027E                 move.w  d0,-(sp)
ROM:00050280                 move.w  d1,-(sp)
ROM:00050282                 move.b  #1,d7
ROM:00050286                 jsr     sub_43F5E
ROM:0005028C                 move.w  (sp)+,d1
ROM:0005028E                 move.w  (sp)+,d0
ROM:00050290                 addq.w  #8,d0
ROM:00050292                 subq.w  #1,(sp)
ROM:00050294                 bne.s   loc_5027E
ROM:00050296                 adda.w  #2,sp
ROM:0005029A                 rts
ROM:0005029C
ROM:0005029C
ROM:0005029C
ROM:0005029C
