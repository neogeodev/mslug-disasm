ROM:000286EC InflictDamageToObject:
ROM:000286EC                 move.w  $66(a1),d1
ROM:000286F0                 sub.w   d0,d1
ROM:000286F2                 bgt.w   loc_286FE
ROM:000286F6                 bset    #0,ObjLLItem.Flags1(a1)
ROM:000286FC                 eor.w   d1,d1
ROM:000286FE
ROM:000286FE loc_286FE:
ROM:000286FE                 move.w  d1,$66(a1)
ROM:00028702                 jsr     sub_51914
ROM:00028708                 rts
ROM:00028708
ROM:00028708
ROM:0002870A
ROM:0002870A
ROM:0002870A
ROM:0002870A
