ROM:0009B43E ProcBlastCrate:
ROM:0009B43E                 move.w  #$102E,d0
ROM:0009B442                 jsr     (PlaySFX).l
ROM:0009B448                 lea     (unk_2F773C).l,a0
ROM:0009B44E                 jsr     ChangeAnimation
ROM:0009B454                 lea     loc_9B45A,a1
ROM:0009B458                 move.l  a1,(a6)
ROM:0009B45A
ROM:0009B45A loc_9B45A:
ROM:0009B45A                 jsr     ObjectRelated
ROM:0009B460                 jsr     Animate
ROM:0009B466                 bcc.w   loc_9B470
ROM:0009B46A                 lea     loc_9B474,a1
ROM:0009B46E                 move.l  a1,(a6)
ROM:0009B470
ROM:0009B470 loc_9B470:
ROM:0009B470                 bra.w   loc_9A76A
ROM:0009B474
ROM:0009B474
ROM:0009B474 loc_9B474:
ROM:0009B474                 jmp     (SetDying).l
ROM:0009B47A
ROM:0009B47A                 rts
ROM:0009B47C
ROM:0009B47C
ROM:0009B47C loc_9B47C:
ROM:0009B47C
ROM:0009B47C                 jsr     (ClearObjChilds?).l
ROM:0009B482                 jmp     (SetDying).l
ROM:0009B488
ROM:0009B488                 rts
ROM:0009B48A
ROM:0009B48A
ROM:0009B48A loc_9B48A:
ROM:0009B48A                 move.b  $68(a6),$6E(a6)
ROM:0009B490                 move.b  $98(a6),d1
ROM:0009B494                 lea     (off_2F79A4).l,a1
ROM:0009B49A                 andi.w  #3,d1
ROM:0009B49E                 lsl.w   #2,d1
ROM:0009B4A0                 movea.l (a1,d1.w),a1
ROM:0009B4A4                 move.b  (a1),d1
ROM:0009B4A6                 addq.l  #1,a1
ROM:0009B4A8                 move.l  a1,$5C(a6)
ROM:0009B4AC                 move.b  d1,$72(a6)
ROM:0009B4B0                 move.b  d1,$21(a6)
ROM:0009B4B4                 andi.w  #$F,d1
ROM:0009B4B8                 move.w  #8,d0
ROM:0009B4BC                 muls.w  d1,d0
ROM:0009B4BE                 add.w   d0,$22(a6)
ROM:0009B4C2                 clr.b   $3A(a6)
ROM:0009B4C6                 jsr     GetRand2?
ROM:0009B4CC                 andi.w  #$E,d0
ROM:0009B4D0                 addi.w  #9,d0
ROM:0009B4D4                 add.w   d0,$24(a6)
ROM:0009B4D8
ROM:0009B4D8 loc_9B4D8:
ROM:0009B4D8                 lea     loc_9B66A,a1
ROM:0009B4DC                 jsr     (SpawnObj).l
ROM:0009B4E2                 jsr     InitSamePositions
ROM:0009B4E8                 move.b  $68(a6),$68(a0)
ROM:0009B4EE                 subq.w  #8,$22(a6)
ROM:0009B4F2                 movea.l $5C(a6),a1
ROM:0009B4F6                 addq.l  #1,$5C(a6)
ROM:0009B4FA                 move.b  (a1),d0
ROM:0009B4FC                 move.w  d0,$74(a0)
ROM:0009B500                 move.b  $72(a6),d0
ROM:0009B504                 andi.w  #7,d0
ROM:0009B508                 lsl.w   #1,d0
ROM:0009B50A                 move.w  d0,$70(a0)
ROM:0009B50E                 subq.b  #1,$72(a6)
ROM:0009B512                 cmpi.b  #0,$72(a6)
ROM:0009B518                 bgt.s   loc_9B4D8
ROM:0009B51A                 bra.w   loc_9B5E4
ROM:0009B51A
