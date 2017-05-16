ROM:0004F6C6 ProcChicken:
ROM:0004F6C6                 jsr     sub_27A92
ROM:0004F6CC                 jsr     Animate
ROM:0004F6D2                 jsr     sub_27EBA
ROM:0004F6D8                 bcc.w   loc_4F6E2
ROM:0004F6DC                 lea     loc_4F64C,a1
ROM:0004F6E0                 move.l  a1,(a6)
ROM:0004F6E2
ROM:0004F6E2 loc_4F6E2:
ROM:0004F6E2                 jsr     GetRand2?
ROM:0004F6E8                 andi.w  #$F,d0
ROM:0004F6EC                 bne.w   loc_4F6F6
ROM:0004F6F0                 lea     loc_4F64C,a1
ROM:0004F6F4                 move.l  a1,(a6)
ROM:0004F6F6
ROM:0004F6F6 loc_4F6F6:
ROM:0004F6F6                 lea     (off_29624A).l,a0
ROM:0004F6FC                 jsr     CheckObjectOOB
ROM:0004F702                 bcc.w   locret_4F70C
ROM:0004F706                 jmp     (SetDying).l
ROM:0004F70C
ROM:0004F70C
ROM:0004F70C locret_4F70C:
ROM:0004F70C                 rts
ROM:0004F70E
ROM:0004F70E                 move.w  #$186,d1
ROM:0004F712                 jsr     (sub_236E).l
ROM:0004F718                 lea     (off_2949AE).l,a0
ROM:0004F71E                 jsr     ChangeAnimation
ROM:0004F724                 move.w  #0,$38(a6)
ROM:0004F72A                 jsr     ObjectRelated
ROM:0004F730                 lea     (unk_295F6E).l,a1
ROM:0004F736                 jsr     sub_43FAC
ROM:0004F73C                 lea     ProcBoulder,a1
ROM:0004F740                 move.l  a1,(a6)
ROM:0004F742
