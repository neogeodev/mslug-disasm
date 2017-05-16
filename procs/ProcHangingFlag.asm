ROM:00052A6A ProcHangingFlag:
ROM:00052A6A                 jsr     ObjectRelated
ROM:00052A70                 jsr     Animate
ROM:00052A76                 jsr     CheckShot?
ROM:00052A7C                 bcc.w   loc_52ACC
ROM:00052A80                 bclr    #3,ObjLLItem.Flags1(a6)
ROM:00052A86                 move.w  #$10BB,d0
ROM:00052A8A                 jsr     (PlaySFX).l
ROM:00052A90                 addq.b  #1,ObjLLItem.DestructionLevel?(a6)
ROM:00052A94                 andi.b  #3,ObjLLItem.DestructionLevel?(a6)
ROM:00052A9A                 lea     ProcFlagBits,a1
ROM:00052A9E                 jsr     (SpawnObject?).l
ROM:00052AA4                 jsr     InitSamePositions
ROM:00052AAA                 move.l  #$10,d0
ROM:00052AB0                 jsr     sub_51A28
ROM:00052AB6                 btst    #3,ObjLLItem.Flags1(a6)
ROM:00052ABC                 bne.w   loc_52ACC
ROM:00052AC0                 lea     (off_2973CC).l,a0
ROM:00052AC6                 jsr     ChangeAnimation
ROM:00052ACC
ROM:00052ACC loc_52ACC:
ROM:00052ACC
ROM:00052ACC                 jsr     CheckIfDead
ROM:00052AD2                 bcc.w   loc_52AE2
ROM:00052AD6                 bclr    #0,ObjLLItem.Flags1(a6)
ROM:00052ADC                 lea     loc_52AF4,a1
ROM:00052AE0                 move.l  a1,(a6)
ROM:00052AE2
ROM:00052AE2 loc_52AE2:
ROM:00052AE2                 jsr     CheckOutOfScreen
ROM:00052AE8                 bcc.w   locret_52AF2
ROM:00052AEC                 jmp     (SetDying).l
ROM:00052AF2
ROM:00052AF2
ROM:00052AF2 locret_52AF2:
ROM:00052AF2                 rts
ROM:00052AF4
ROM:00052AF4
ROM:00052AF4 loc_52AF4:
ROM:00052AF4                 move.w  #$3C,$66(a6)
ROM:00052AFA                 lea     (off_297458).l,a0
ROM:00052B00                 jsr     ChangeAnimation
ROM:00052B06                 lea     loc_52B0C,a1
ROM:00052B0A                 move.l  a1,(a6)
ROM:00052B0C
ROM:00052B0C loc_52B0C:
ROM:00052B0C                 jsr     ObjectRelated
ROM:00052B12                 jsr     Animate
ROM:00052B18                 btst    #0,$13(a6)
ROM:00052B1E                 bne.w   loc_52B78
ROM:00052B22                 jsr     CheckShot?
ROM:00052B28                 bcc.w   loc_52B78
ROM:00052B2C                 bclr    #3,$13(a6)
ROM:00052B32                 move.w  #$10BB,d0
ROM:00052B36                 jsr     (PlaySFX).l
ROM:00052B3C                 addq.b  #1,$47(a6)
ROM:00052B40                 andi.b  #3,$47(a6)
ROM:00052B46                 lea     ProcFlagBits,a1
ROM:00052B4A                 jsr     (SpawnObject?).l
ROM:00052B50                 jsr     InitSamePositions
ROM:00052B56                 move.l  #$10,d0
ROM:00052B5C                 jsr     sub_51A28
ROM:00052B62                 btst    #3,$13(a6)
ROM:00052B68                 bne.w   loc_52B78
ROM:00052B6C                 lea     (off_297474).l,a0
ROM:00052B72                 jsr     ChangeAnimation
ROM:00052B78
ROM:00052B78 loc_52B78:
ROM:00052B78
ROM:00052B78                 jsr     CheckOutOfScreen
ROM:00052B7E                 bcc.w   locret_52B88
ROM:00052B82                 jmp     (SetDying).l
ROM:00052B88
ROM:00052B88
ROM:00052B88 locret_52B88:
ROM:00052B88                 rts
ROM:00052B8A
ROM:00052B8A                 movea.l $3C(a6),a1
ROM:00052B8E                 jsr     loc_2942A
ROM:00052B94                 move.w  #$31,d1
ROM:00052B98                 jsr     (sub_236E).l
ROM:00052B9E                 move.w  #$10,$70(a6)
ROM:00052BA4                 move.b  #$FF,$32(a6)
ROM:00052BAA                 move.b  #$FF,$33(a6)
ROM:00052BB0                 move.b  #0,$3A(a6)
ROM:00052BB6                 move.w  #$64,$66(a6)
ROM:00052BBC                 move.b  #0,$75(a6)
ROM:00052BC2                 lea     ($77228).l,a1
ROM:00052BC8                 jsr     (SpawnObj).l
ROM:00052BCE                 jsr     sub_5DD22
ROM:00052BD4                 addi.w  #8,$22(a0)
ROM:00052BDA                 move.b  #$81,$98(a0)
ROM:00052BE0                 move.b  #$75,$99(a0)
ROM:00052BE6                 lea     (unk_297500).l,a0
ROM:00052BEC                 jsr     ChangeAnimation
ROM:00052BF2                 lea     loc_52BF8,a1
ROM:00052BF6                 move.l  a1,(a6)
ROM:00052BF8
ROM:00052BF8 loc_52BF8:
ROM:00052BF8                 jsr     ObjectRelated
ROM:00052BFE                 jsr     Animate
ROM:00052C04                 jsr     CheckShot?
ROM:00052C0A                 bcc.w   loc_52C5C
ROM:00052C0E                 lea     (SoundCodeGunFire).l,a0
ROM:00052C14                 jsr     SoundRelated_0
ROM:00052C1A                 bclr    #3,$13(a6)
ROM:00052C20                 lea     ($77E10).l,a1
ROM:00052C26                 jsr     (SpawnObj).l
ROM:00052C2C                 jsr     sub_5DD22
ROM:00052C32                 move.w  $54(a6),$22(a0)
ROM:00052C38                 move.w  $56(a6),$24(a0)
ROM:00052C3E                 move.b  (LevelSubTimer?).l,d0
ROM:00052C44                 btst    #0,d0
ROM:00052C48                 beq.w   loc_52C5C
ROM:00052C4C                 lea     loc_53894,a1
ROM:00052C50                 jsr     (SpawnObj).l
ROM:00052C56                 jsr     sub_5DD22
ROM:00052C5C
ROM:00052C5C loc_52C5C:
ROM:00052C5C
ROM:00052C5C                 jsr     CheckIfDead
ROM:00052C62                 bcc.w   loc_52C88
ROM:00052C66                 bclr    #0,$13(a6)
ROM:00052C6C                 move.w  #$1024,d0
ROM:00052C70                 jsr     (PlaySFX).l
ROM:00052C76                 lea     (unk_297FE4).l,a1
ROM:00052C7C                 jsr     SpawnDebris?
ROM:00052C82                 lea     loc_52CA0,a1
ROM:00052C86                 move.l  a1,(a6)
ROM:00052C88
ROM:00052C88 loc_52C88:
ROM:00052C88                 jsr     CheckOutOfScreen
ROM:00052C8E                 bcc.w   locret_52C9E
ROM:00052C92                 move.b  #$FF,$75(a6)
ROM:00052C98                 jmp     (SetDying).l
ROM:00052C9E
ROM:00052C9E
ROM:00052C9E locret_52C9E:
ROM:00052C9E                 rts
ROM:00052CA0
ROM:00052CA0
ROM:00052CA0 loc_52CA0:
ROM:00052CA0                 move.l  #$1000,d0
ROM:00052CA6                 jsr     sub_51A28
ROM:00052CAC                 lea     ($FFFFFFFF).w,a0
ROM:00052CB0                 move.l  a0,$48(a6)
ROM:00052CB4                 move.b  #$FF,$75(a6)
ROM:00052CBA                 lea     (off_297516).l,a0
ROM:00052CC0                 jsr     ChangeAnimation
ROM:00052CC6                 lea     loc_52CCC,a1
ROM:00052CCA                 move.l  a1,(a6)
ROM:00052CCC
ROM:00052CCC loc_52CCC:
ROM:00052CCC                 jsr     ObjectRelated
ROM:00052CD2                 jsr     Animate
ROM:00052CD8                 jsr     CheckOutOfScreen
ROM:00052CDE                 bcc.w   locret_52CE8
ROM:00052CE2                 jmp     (SetDying).l
ROM:00052CE8
ROM:00052CE8
ROM:00052CE8 locret_52CE8:
ROM:00052CE8                 rts
ROM:00052CEA
ROM:00052CEA                 movea.l $3C(a6),a1
ROM:00052CEE                 jsr     loc_2942A
ROM:00052CF4                 move.w  #$30,d1
ROM:00052CF8                 jsr     (sub_236E).l
ROM:00052CFE                 move.w  #$10,$70(a6)
ROM:00052D04                 move.b  #$FF,$32(a6)
ROM:00052D0A                 move.b  #$FF,$33(a6)
ROM:00052D10                 move.b  #0,$3A(a6)
ROM:00052D16                 move.w  #$14,$66(a6)
ROM:00052D1C                 lea     (unk_297526).l,a0
ROM:00052D22                 jsr     ChangeAnimation
ROM:00052D28                 lea     ProcLampPost,a1
ROM:00052D2C                 move.l  a1,(a6)
ROM:00052D2E
