ROM:00027CEE PositionRelated:
ROM:00027CEE
ROM:00027CEE                 movea.l #LifePointsBuffer?,a5
ROM:00027CF4                 move.w  $22(a6),-$1148(a5)
ROM:00027CFA                 move.w  $24(a6),-$1146(a5)
ROM:00027D00                 move.b  $26(a6),-$1144(a5)
ROM:00027D06                 move.b  $27(a6),-$1143(a5)
ROM:00027D0C                 jsr     sub_277C4
ROM:00027D10                 bcs.w   loc_27D32
ROM:00027D14                 move.w  -$1148(a5),$22(a6)
ROM:00027D1A                 move.w  -$1146(a5),$24(a6)
ROM:00027D20                 move.b  -$1144(a5),$26(a6)
ROM:00027D26                 move.b  -$1143(a5),$27(a6)
ROM:00027D2C                 andi    #$EE,ccr
ROM:00027D30                 rts
ROM:00027D32
ROM:00027D32
ROM:00027D32 loc_27D32:
ROM:00027D32                 move.w  -$1148(a5),$22(a6)
ROM:00027D38                 move.w  -$1146(a5),$24(a6)
ROM:00027D3E                 move.b  -$1144(a5),$26(a6)
ROM:00027D44                 move.b  -$1143(a5),$27(a6)
ROM:00027D4A                 ori     #$11,ccr
ROM:00027D4E                 rts
ROM:00027D4E
ROM:00027D4E
ROM:00027D50
ROM:00027D50
ROM:00027D50
ROM:00027D50
