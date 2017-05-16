ROM:0009A854 SetWeaponD1?:
ROM:0009A854
ROM:0009A854                 move.b  $98(a6),d2
ROM:0009A858
ROM:0009A858 loc_9A858:
ROM:0009A858                 jsr     loc_32B58
ROM:0009A85E                 cmpi.b  #2,$70(a1)
ROM:0009A864                 bne.w   loc_9A876
ROM:0009A868                 move.l  a1,-(sp)
ROM:0009A86A                 move.w  #SFXBombPickupBonus,d0
ROM:0009A86E                 jsr     (PlaySFX).l
ROM:0009A874                 movea.l (sp)+,a1
ROM:0009A876
ROM:0009A876 loc_9A876:
ROM:0009A876                 jsr     loc_32CBA
ROM:0009A87C                 rts
ROM:0009A87C
ROM:0009A87C
ROM:0009A87E
ROM:0009A87E
ROM:0009A87E
ROM:0009A87E
