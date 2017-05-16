ROM:0003FD42 ProcFreedPOW?:
ROM:0003FD42                 lea     $3F190,a0
ROM:0003FD46                 jsr     ChangeAnimation
ROM:0003FD4C                 lea     loc_3FD52,a1
ROM:0003FD50                 move.l  a1,(a6)
ROM:0003FD52
ROM:0003FD52 loc_3FD52:
ROM:0003FD52                 jsr     sub_3FECE
ROM:0003FD56                 tst.b   $70(a6)
ROM:0003FD5A                 beq.w   loc_3FD64
ROM:0003FD5E                 lea     loc_3FD6E,a1
ROM:0003FD62                 move.l  a1,(a6)
ROM:0003FD64
ROM:0003FD64 loc_3FD64:
ROM:0003FD64                 jsr     Animate
ROM:0003FD6A                 jmp     loc_3EFCE
ROM:0003FD6E
ROM:0003FD6E
ROM:0003FD6E loc_3FD6E:
ROM:0003FD6E                 lea     off_3F20A,a0
ROM:0003FD72                 jsr     ChangeAnimation
ROM:0003FD78                 lea     loc_3FD7E,a1
ROM:0003FD7C                 move.l  a1,(a6)
ROM:0003FD7E
ROM:0003FD7E loc_3FD7E:
ROM:0003FD7E                 jsr     ObjectRelated
ROM:0003FD84                 jsr     Animate
ROM:0003FD8A                 bcc.w   loc_3FD94
ROM:0003FD8E                 lea     loc_3FF14,a1
ROM:0003FD92                 move.l  a1,(a6)
ROM:0003FD94
ROM:0003FD94 loc_3FD94:
ROM:0003FD94                 jmp     loc_3EFCE
ROM:0003FD98
ROM:0003FD98
ROM:0003FD98 loc_3FD98:
ROM:0003FD98                 move.w  #$182,d1
ROM:0003FD9C                 jsr     (sub_236E).l
ROM:0003FDA2                 moveq   #0,d0
ROM:0003FDA4                 move.b  $5C(a6),d0
ROM:0003FDA8                 lsl.w   #4,d0
ROM:0003FDAA                 move.w  d0,d1
ROM:0003FDAC                 add.w   d1,d0
ROM:0003FDAE                 add.w   d1,d0
ROM:0003FDB0                 movea.l $C(a6),a0
ROM:0003FDB4                 move.w  $32(a0),$32(a6)
ROM:0003FDBA                 move.w  $22(a0),$22(a6)
ROM:0003FDC0                 add.w   $24(a0),d0
ROM:0003FDC4                 move.w  d0,$24(a6)
ROM:0003FDC8                 lea     loc_3FDD0,a1
ROM:0003FDCC                 move.l  a1,(a6)
ROM:0003FDCE                 rts
ROM:0003FDD0
ROM:0003FDD0
ROM:0003FDD0 loc_3FDD0:
ROM:0003FDD0                 jsr     ObjectRelated
ROM:0003FDD6                 movea.l $C(a6),a0
ROM:0003FDDA                 cmpi.l  #$52A,(a0)
ROM:0003FDE0                 bne.w   loc_3FDEA
ROM:0003FDE4                 jmp     (SetDying).l
ROM:0003FDEA
ROM:0003FDEA
ROM:0003FDEA loc_3FDEA:
ROM:0003FDEA                 btst    #3,$13(a0)
ROM:0003FDF0                 beq.w   loc_3FDFA
ROM:0003FDF4                 lea     loc_3FE1A,a1
ROM:0003FDF8                 move.l  a1,(a6)
ROM:0003FDFA
ROM:0003FDFA loc_3FDFA:
ROM:0003FDFA                 move.l  $5C(a0),$3C(a6)
ROM:0003FE00                 jsr     sub_5CA2A
ROM:0003FE06                 move.w  $22(a6),d0
ROM:0003FE0A                 addi.w  #$10,d0
ROM:0003FE0E                 bpl.w   locret_3FE18
ROM:0003FE12                 jmp     (SetDying).l
ROM:0003FE18
ROM:0003FE18
ROM:0003FE18 locret_3FE18:
ROM:0003FE18                 rts
ROM:0003FE1A
ROM:0003FE1A
ROM:0003FE1A loc_3FE1A:
ROM:0003FE1A                 tst.b   $5C(a6)
ROM:0003FE1E                 bne.w   loc_3FE30
ROM:0003FE22                 lea     off_3F216,a0
ROM:0003FE26                 jsr     ChangeAnimation
ROM:0003FE2C                 bra.w   loc_3FE3A
ROM:0003FE30
ROM:0003FE30
ROM:0003FE30 loc_3FE30:
ROM:0003FE30                 lea     off_3F25E,a0
ROM:0003FE34                 jsr     ChangeAnimation
ROM:0003FE3A
ROM:0003FE3A loc_3FE3A:
ROM:0003FE3A                 lea     loc_3FE40,a1
ROM:0003FE3E                 move.l  a1,(a6)
ROM:0003FE40
ROM:0003FE40 loc_3FE40:
ROM:0003FE40                 jsr     ObjectRelated
ROM:0003FE46                 jsr     Animate
ROM:0003FE4C                 bcc.w   loc_3FE56
ROM:0003FE50                 jmp     (SetDying).l
ROM:0003FE56
ROM:0003FE56
ROM:0003FE56 loc_3FE56:
ROM:0003FE56                 jmp     loc_3EFCE
ROM:0003FE5A
ROM:0003FE5A
ROM:0003FE5A loc_3FE5A:
ROM:0003FE5A
ROM:0003FE5A                 bsr.w   sub_3F9B8
ROM:0003FE5E                 lea     loc_3FE66,a1
ROM:0003FE62                 move.l  a1,(a6)
ROM:0003FE64                 rts
ROM:0003FE66
ROM:0003FE66
ROM:0003FE66 loc_3FE66:
ROM:0003FE66                 lea     unk_3F070,a0
ROM:0003FE6A                 jsr     ChangeAnimation
ROM:0003FE70                 clr.w   $28(a6)
ROM:0003FE74                 clr.w   $2A(a6)
ROM:0003FE78                 lea     ProcPOWTiedUpGround,a1
ROM:0003FE7C                 move.l  a1,(a6)
ROM:0003FE7E
