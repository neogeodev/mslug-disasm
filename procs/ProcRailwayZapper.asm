ROM:00053A86 ProcRailwayZapper:
ROM:00053A86                 jsr     ObjectRelated
ROM:00053A8C                 jsr     Animate
ROM:00053A92                 jsr     GetRand2?
ROM:00053A98                 andi.b  #7,d0
ROM:00053A9C                 bne.w   loc_53AAA
ROM:00053AA0                 move.w  #SFXZap,d0
ROM:00053AA4                 jsr     (PlaySFX).l
ROM:00053AAA
ROM:00053AAA loc_53AAA:
ROM:00053AAA                 cmpi.w  #0,$72(a6)
ROM:00053AB0                 ble.w   loc_53ABC
ROM:00053AB4                 subq.w  #1,$72(a6)
ROM:00053AB8                 bra.w   loc_53B7A
ROM:00053ABC
ROM:00053ABC
ROM:00053ABC loc_53ABC:
ROM:00053ABC                 lea     (unk_298896).l,a0
ROM:00053AC2                 move.l  a0,ObjLLItem.field_4C(a6)
ROM:00053AC6                 jsr     sub_283CA
ROM:00053ACC                 jsr     sub_283CA
ROM:00053AD2                 jsr     loc_283D8
ROM:00053AD8                 btst    #1,ObjLLItem.Flags1(a6)
ROM:00053ADE                 beq.w   loc_53AF4
ROM:00053AE2                 bclr    #1,ObjLLItem.Flags1(a6)
ROM:00053AE8                 move.l  #$FFFFFFFF,$50(a6)
ROM:00053AF0                 bra.w   loc_53B58
ROM:00053AF4
ROM:00053AF4
ROM:00053AF4 loc_53AF4:
ROM:00053AF4                 lea     (unk_2987EE).l,a0
ROM:00053AFA                 move.l  a0,ObjLLItem.field_4C(a6)
ROM:00053AFE                 jsr     sub_283CA
ROM:00053B04                 jsr     sub_283CA
ROM:00053B0A                 jsr     loc_283D8
ROM:00053B10                 btst    #1,ObjLLItem.Flags1(a6)
ROM:00053B16                 beq.w   loc_53B28
ROM:00053B1A                 lea     (Player1Struct).l,a0
ROM:00053B20                 move.l  a0,ObjLLItem.field_50(a6)
ROM:00053B24                 bra.w   loc_53B58
ROM:00053B28
ROM:00053B28
ROM:00053B28 loc_53B28:
ROM:00053B28                 lea     (unk_298842).l,a0
ROM:00053B2E                 move.l  a0,$4C(a6)
ROM:00053B32                 jsr     sub_283CA
ROM:00053B38                 jsr     sub_283CA
ROM:00053B3E                 jsr     loc_283D8
ROM:00053B44                 btst    #1,ObjLLItem.Flags1(a6)
ROM:00053B4A                 beq.w   loc_53B7A
ROM:00053B4E                 lea     (Player2Struct).l,a0
ROM:00053B54                 move.l  a0,ObjLLItem.field_50(a6)
ROM:00053B58
ROM:00053B58 loc_53B58:
ROM:00053B58
ROM:00053B58                 bclr    #1,ObjLLItem.Flags1(a6)
ROM:00053B5E                 lea     loc_53C44,a1
ROM:00053B62                 jsr     (SpawnObj).l
ROM:00053B68                 jsr     InitSamePositions
ROM:00053B6E                 move.l  ObjLLItem.field_50(a6),$50(a0)
ROM:00053B74                 move.w  #$C,$72(a6)
ROM:00053B7A
ROM:00053B7A loc_53B7A:
ROM:00053B7A
ROM:00053B7A                 movea.l #$FFFFFFFF,a0
ROM:00053B80                 lea     (unk_298740).l,a0
ROM:00053B86                 jsr     CheckObjectOOB
ROM:00053B8C                 bcc.w   locret_53B9C
ROM:00053B90                 move.b  #$FF,ObjLLItem.field_20(a6)
ROM:00053B96                 jmp     (SetDying).l
ROM:00053B9C
ROM:00053B9C
ROM:00053B9C locret_53B9C:
ROM:00053B9C                 rts
ROM:00053B9E
ROM:00053B9E
ROM:00053B9E loc_53B9E:
ROM:00053B9E                 move.w  #$1E4,d1
ROM:00053BA2                 jsr     (sub_236E).l
ROM:00053BA8                 jsr     ClearObjStuff
ROM:00053BAE                 move.w  #$F000,$38(a6)
ROM:00053BB4                 jsr     PositionRelated
ROM:00053BBA                 lea     (off_297856).l,a0
ROM:00053BC0                 jsr     ChangeAnimation
ROM:00053BC6                 move.w  #0,$72(a6)
ROM:00053BCC                 lea     loc_53BD2,a1
ROM:00053BD0                 move.l  a1,(a6)
ROM:00053BD2
ROM:00053BD2 loc_53BD2:
ROM:00053BD2                 movea.l $C(a6),a0
ROM:00053BD6                 move.w  $22(a0),$22(a6)
ROM:00053BDC                 move.w  $24(a0),$24(a6)
ROM:00053BE2                 jsr     Animate
ROM:00053BE8                 movea.l $C(a6),a0
ROM:00053BEC                 cmpi.b  #$FF,$20(a0)
ROM:00053BF2                 bne.w   locret_53BFC
ROM:00053BF6                 jmp     (SetDying).l
ROM:00053BFC
ROM:00053BFC
ROM:00053BFC locret_53BFC:
ROM:00053BFC                 rts
ROM:00053BFE
ROM:00053BFE
ROM:00053BFE loc_53BFE:
ROM:00053BFE                 move.w  #$1E4,d1
ROM:00053C02                 jsr     (sub_236E).l
ROM:00053C08                 jsr     ClearObjStuff
ROM:00053C0E                 move.w  #$8000,$38(a6)
ROM:00053C14                 jsr     PositionRelated
ROM:00053C1A                 lea     (off_2978CC).l,a0
ROM:00053C20                 jsr     ChangeAnimation
ROM:00053C26                 lea     loc_53C2C,a1
ROM:00053C2A                 move.l  a1,(a6)
ROM:00053C2C
ROM:00053C2C loc_53C2C:
ROM:00053C2C                 jsr     ObjectRelated
ROM:00053C32                 jsr     Animate
ROM:00053C38                 bcc.w   locret_53C42
ROM:00053C3C                 jmp     (SetDying).l
ROM:00053C42
ROM:00053C42
ROM:00053C42 locret_53C42:
ROM:00053C42                 rts
ROM:00053C44
ROM:00053C44
ROM:00053C44 loc_53C44:
ROM:00053C44                 lea     loc_53BFE,a1
ROM:00053C48                 jsr     (SpawnObj).l
ROM:00053C4E                 jsr     InitSamePositions
ROM:00053C54                 lea     loc_53C5C,a1
ROM:00053C58                 move.l  a1,(a6)
ROM:00053C5A                 rts
ROM:00053C5C
ROM:00053C5C
ROM:00053C5C loc_53C5C:
ROM:00053C5C                 lea     loc_53C64,a1
ROM:00053C60                 move.l  a1,(a6)
ROM:00053C62                 rts
ROM:00053C64
ROM:00053C64
ROM:00053C64 loc_53C64:
ROM:00053C64                 movea.l $50(a6),a0
ROM:00053C68                 move.l  a0,d0
ROM:00053C6A                 cmpi.l  #$FFFFFFFF,d0
ROM:00053C70                 bne.w   loc_53C7C
ROM:00053C74                 jmp     (SetDying).l
ROM:00053C7A
ROM:00053C7A                 rts
ROM:00053C7C
ROM:00053C7C
ROM:00053C7C loc_53C7C:
ROM:00053C7C                 move.b  $45(a0),d0
ROM:00053C80                 cmpi.b  #0,d0
ROM:00053C84                 bgt.w   loc_53C9E
ROM:00053C88                 move.w  $28(a0),d0
ROM:00053C8C                 asl.w   #1,d0
ROM:00053C8E                 move.w  d0,$28(a0)
ROM:00053C92                 move.w  #$1000,$2A(a0)
ROM:00053C98                 move.w  #$19,$72(a6)
ROM:00053C9E
ROM:00053C9E loc_53C9E:
ROM:00053C9E                 lea     loc_53CA4,a1
ROM:00053CA2                 move.l  a1,(a6)
ROM:00053CA4
ROM:00053CA4 loc_53CA4:
ROM:00053CA4                 movea.l $50(a6),a0
ROM:00053CA8                 move.w  $22(a0),$22(a6)
ROM:00053CAE                 move.w  $24(a0),$24(a6)
ROM:00053CB4                 move.w  $38(a0),$38(a6)
ROM:00053CBA                 move.w  $72(a6),d0
ROM:00053CBE                 andi.w  #3,d0
ROM:00053CC2                 bne.w   loc_53CE2
ROM:00053CC6                 lea     loc_53CF2,a1
ROM:00053CCA                 jsr     (SpawnObj).l
ROM:00053CD0                 jsr     sub_5DD22
ROM:00053CD6                 addi.w  #$10,$24(a0)
ROM:00053CDC                 move.w  $38(a6),$38(a0)
ROM:00053CE2
ROM:00053CE2 loc_53CE2:
ROM:00053CE2                 subq.w  #1,$72(a6)
ROM:00053CE6                 bpl.w   locret_53CF0
ROM:00053CEA                 jmp     (SetDying).l
ROM:00053CF0
ROM:00053CF0
ROM:00053CF0 locret_53CF0:
ROM:00053CF0                 rts
ROM:00053CF2
ROM:00053CF2
ROM:00053CF2 loc_53CF2:
ROM:00053CF2                 move.w  #2,d1
ROM:00053CF6                 jsr     (sub_236E).l
ROM:00053CFC                 jsr     ClearObjStuff
ROM:00053D02                 lea     (off_297922).l,a0
ROM:00053D08                 jsr     ChangeAnimation
ROM:00053D0E                 lea     loc_53D14,a1
ROM:00053D12                 move.l  a1,(a6)
ROM:00053D14
ROM:00053D14 loc_53D14:
ROM:00053D14                 jsr     ObjectRelated
ROM:00053D1A                 jsr     Animate
ROM:00053D20                 bcc.w   locret_53D2A
ROM:00053D24                 jmp     (SetDying).l
ROM:00053D2A
ROM:00053D2A
ROM:00053D2A locret_53D2A:
ROM:00053D2A                 rts
ROM:00053D2C
ROM:00053D2C
ROM:00053D2C loc_53D2C:
ROM:00053D2C                 cmpi.b  #0,$21(a6)
ROM:00053D32                 bne.w   locret_53D4E
ROM:00053D36                 move.b  #$FF,$21(a6)
ROM:00053D3C                 jsr     loc_9BA56
ROM:00053D42                 subi.w  #$18,$22(a0)
ROM:00053D48                 addi.w  #$30,$24(a0)
ROM:00053D4E
ROM:00053D4E locret_53D4E:
ROM:00053D4E                 rts
ROM:00053D50
ROM:00053D50                 cmpi.w  #0,$72(a6)
ROM:00053D56                 ble.w   loc_53D78
ROM:00053D5A                 clr.l   d0
ROM:00053D5C                 move.w  $72(a6),d0
ROM:00053D60                 btst    #0,d0
ROM:00053D64                 beq.w   loc_53D70
ROM:00053D68                 move.w  $16(a6),$14(a6)
ROM:00053D6E                 rts
ROM:00053D70
ROM:00053D70
ROM:00053D70 loc_53D70:
ROM:00053D70                 move.w  $18(a6),$14(a6)
ROM:00053D76                 rts
ROM:00053D78
ROM:00053D78
ROM:00053D78 loc_53D78:
ROM:00053D78                 move.w  $16(a6),$14(a6)
ROM:00053D7E                 rts
ROM:00053D80
ROM:00053D80
ROM:00053D80
ROM:00053D80
