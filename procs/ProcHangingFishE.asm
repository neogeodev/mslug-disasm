ROM:0008E9D4 ProcHangingFishE:
ROM:0008E9D4                 jsr     ObjectRelated
ROM:0008E9DA                 jsr     Animate
ROM:0008E9E0                 jsr     sub_8D184
ROM:0008E9E4                 bcc.w   loc_8E9F6
ROM:0008E9E8                 jsr     (ClearObjChilds?).l
ROM:0008E9EE                 jmp     (SetDying).l
ROM:0008E9F4
ROM:0008E9F4                 rts
ROM:0008E9F6
ROM:0008E9F6
ROM:0008E9F6 loc_8E9F6:
ROM:0008E9F6                 jsr     loc_8EA50
ROM:0008E9FA                 rts
ROM:0008E9FC
ROM:0008E9FC                 lea     ($FFFFFFFF).w,a0
ROM:0008EA00                 move.l  a0,$48(a6)
ROM:0008EA04                 move.w  #$FF80,ObjLLItem.YSpeed(a6)
ROM:0008EA0A                 move.w  #$FFC0,ObjLLItem.Weight(a6)
ROM:0008EA10                 lea     $8EA16,a1
ROM:0008EA14                 move.l  a1,(a6)
ROM:0008EA16
ROM:0008EA16 loc_8EA16:
ROM:0008EA16                 jsr     sub_27C8C
ROM:0008EA1C                 bcc.w   loc_8EA2C
ROM:0008EA20                 jsr     (ClearObjChilds?).l
ROM:0008EA26                 jmp     (SetDying).l
ROM:0008EA2C
ROM:0008EA2C
ROM:0008EA2C loc_8EA2C:
ROM:0008EA2C                 jsr     ObjectRelated
ROM:0008EA32                 jsr     Animate
ROM:0008EA38                 jsr     sub_8D184
ROM:0008EA3C                 bcc.w   locret_8EA4E
ROM:0008EA40                 jsr     (ClearObjChilds?).l
ROM:0008EA46                 jmp     (SetDying).l
ROM:0008EA4C
ROM:0008EA4C                 rts
ROM:0008EA4E
ROM:0008EA4E
ROM:0008EA4E locret_8EA4E:
ROM:0008EA4E                 rts
ROM:0008EA50
ROM:0008EA50
ROM:0008EA50 loc_8EA50:
ROM:0008EA50
ROM:0008EA50                 cmpi.w  #0,$5C(a6)
ROM:0008EA56                 beq.w   loc_8EA5C
ROM:0008EA5A                 rts
ROM:0008EA5C
ROM:0008EA5C
ROM:0008EA5C loc_8EA5C:
ROM:0008EA5C                 movea.l $C(a6),a1
ROM:0008EA60                 cmpi.l  #$FFFFFFFF,$48(a1)
ROM:0008EA68                 bne.w   locret_8EA72
ROM:0008EA6C                 lea     loc_8EA16,a1
ROM:0008EA70                 move.l  a1,(a6)
ROM:0008EA72
ROM:0008EA72 locret_8EA72:
ROM:0008EA72                 rts
ROM:0008EA74
ROM:0008EA74                 jsr     sub_8F108
ROM:0008EA78                 lea     (off_2F419E).l,a0
ROM:0008EA7E                 move.l  a0,$48(a6)
ROM:0008EA82                 bclr    #3,$13(a6)
ROM:0008EA88                 move.w  #$64,$66(a6)
ROM:0008EA8E                 clr.b   $20(a6)
ROM:0008EA92
ROM:0008EA92 loc_8EA92:
ROM:0008EA92                 subq.b  #1,$98(a6)
ROM:0008EA96                 cmpi.b  #0,$98(a6)
ROM:0008EA9C                 blt.w   loc_8EAB2
ROM:0008EAA0                 lea     $8EB56,a1
ROM:0008EAA4                 jsr     (SpawnObj).l
ROM:0008EAAA                 jsr     InitSamePositions
ROM:0008EAB0                 bra.s   loc_8EA92
ROM:0008EAB2
ROM:0008EAB2
ROM:0008EAB2 loc_8EAB2:
ROM:0008EAB2                 lea     loc_8EAB8,a1
ROM:0008EAB6                 move.l  a1,(a6)
ROM:0008EAB8
ROM:0008EAB8 loc_8EAB8:
ROM:0008EAB8                 jsr     ObjectRelated
ROM:0008EABE                 jsr     CheckShot?
ROM:0008EAC4                 bcc.w   loc_8EACE
ROM:0008EAC8                 lea     $8EAEE,a1
ROM:0008EACC                 move.l  a1,(a6)
ROM:0008EACE
ROM:0008EACE loc_8EACE:
ROM:0008EACE                 jsr     sub_8D184
ROM:0008EAD2                 bcc.w   off_8EAEC
ROM:0008EAD6                 lea     ($FFFFFFFF).w,a0
ROM:0008EADA                 move.l  a0,$48(a6)
ROM:0008EADE                 jsr     (ClearObjChilds?).l
ROM:0008EADE
