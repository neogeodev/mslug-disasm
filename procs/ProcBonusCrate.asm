ROM:0009B400 ProcBonusCrate:
ROM:0009B400                 jsr     loc_9B8C0
ROM:0009B404                 jsr     loc_9B8EE
ROM:0009B408                 jsr     sub_28998
ROM:0009B40E                 move.w  #$8000,ObjLLItem.Priority(a6)
ROM:0009B414                 jsr     Animate
ROM:0009B41A                 jsr     CheckShot?
ROM:0009B420                 bcc.w   loc_9B42A
ROM:0009B424                 bclr    #3,$13(a6)
ROM:0009B42A
ROM:0009B42A loc_9B42A:
ROM:0009B42A                 jsr     CheckIfDead
ROM:0009B430                 bcc.w   loc_9B43A
ROM:0009B434                 lea     ProcBlastCrate,a1
ROM:0009B438                 move.l  a1,(a6)
ROM:0009B43A
ROM:0009B43A loc_9B43A:
ROM:0009B43A                 bra.w   loc_9A76A
ROM:0009B43E
ROM:0009B43E
