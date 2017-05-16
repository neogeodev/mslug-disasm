ROM:00054A64 ProcCeilingFan:
ROM:00054A64                 jsr     ObjectRelated
ROM:00054A6A                 jsr     Animate
ROM:00054A70                 bcc.w   loc_54A80
ROM:00054A74                 lea     (dword_298B9E).l,a0
ROM:00054A7A                 jsr     ChangeAnimation
ROM:00054A80
ROM:00054A80 loc_54A80:
ROM:00054A80                 jsr     CheckShot?
ROM:00054A86                 bcc.w   loc_54ABC
ROM:00054A8A                 lea     (SoundCodeGunFire).l,a0
ROM:00054A90                 jsr     SoundRelated_0
ROM:00054A96                 bclr    #3,$13(a6)
ROM:00054A9C                 move.w  $72(a6),d0
ROM:00054AA0                 movea.l #off_298C46,a0
ROM:00054AA6                 lsl.w   #2,d0
ROM:00054AA8                 movea.l (a0,d0.w),a0
ROM:00054AAC                 cmpa.l  #$FFFFFFFF,a0
ROM:00054AB2                 beq.w   loc_54ABC
ROM:00054AB6                 jsr     ChangeAnimation
ROM:00054ABC
ROM:00054ABC loc_54ABC:
ROM:00054ABC
ROM:00054ABC                 jsr     CheckIfDead
ROM:00054AC2                 bcc.w   loc_54B0A
ROM:00054AC6                 move.l  #$300,d0
ROM:00054ACC                 jsr     sub_51A28
ROM:00054AD2                 bclr    #0,ObjLLItem.Flags1(a6)
ROM:00054AD8                 move.w  #$1023,d0
ROM:00054ADC                 jsr     (PlaySFX).l
ROM:00054AE2                 lea     (unk_29A386).l,a1
ROM:00054AE8                 jsr     SpawnDebris?
ROM:00054AEE                 lea     (unk_29A398).l,a1
ROM:00054AF4                 jsr     SpawnDebris?
ROM:00054AFA                 lea     (unk_29A45E).l,a1
ROM:00054B00                 jsr     SpawnDebris?
ROM:00054B06                 bra.w   loc_54B14
ROM:00054B0A
ROM:00054B0A
ROM:00054B0A loc_54B0A:
ROM:00054B0A                 jsr     CheckOutOfScreen
ROM:00054B10                 bcc.w   locret_54B1A
ROM:00054B14
ROM:00054B14 loc_54B14:
ROM:00054B14                 jmp     (SetDying).l
ROM:00054B1A
ROM:00054B1A
ROM:00054B1A locret_54B1A:
ROM:00054B1A                 rts
ROM:00054B1C
ROM:00054B1C                 movea.l $3C(a6),a1
ROM:00054B20                 jsr     loc_2942A
ROM:00054B26                 move.w  #$94,d1
ROM:00054B2A                 jsr     (sub_236E).l
ROM:00054B30                 move.w  #$50,$70(a6)
ROM:00054B36                 move.b  #$FF,$32(a6)
ROM:00054B3C                 move.b  #$FF,$33(a6)
ROM:00054B42                 move.b  #0,$3A(a6)
ROM:00054B48                 move.w  #$28,$66(a6)
ROM:00054B4E                 lea     (unk_299050).l,a0
ROM:00054B54                 jsr     ChangeAnimation
ROM:00054B5A                 lea     loc_54B60,a1
ROM:00054B5E                 move.l  a1,(a6)
ROM:00054B60
ROM:00054B60 loc_54B60:
ROM:00054B60                 jsr     ObjectRelated
ROM:00054B66                 jsr     Animate
ROM:00054B6C                 jsr     CheckShot?
ROM:00054B72                 bcc.w   loc_54B88
ROM:00054B76                 lea     (SoundCodeGunFire).l,a0
ROM:00054B7C                 jsr     SoundRelated_0
ROM:00054B82                 bclr    #3,$13(a6)
ROM:00054B88
ROM:00054B88 loc_54B88:
ROM:00054B88                 jsr     CheckIfDead
ROM:00054B8E                 bcc.w   loc_54BCC
ROM:00054B92                 bclr    #0,$13(a6)
ROM:00054B98                 move.w  #$102E,d0
ROM:00054B9C                 jsr     (PlaySFX).l
ROM:00054BA2                 lea     (unk_29A3AA).l,a1
ROM:00054BA8                 jsr     SpawnDebris?
ROM:00054BAE                 lea     (unk_29A3BC).l,a1
ROM:00054BB4                 jsr     SpawnDebris?
ROM:00054BBA                 lea     (unk_29A470).l,a1
ROM:00054BC0                 jsr     SpawnDebris?
ROM:00054BC6                 lea     loc_54BDE,a1
ROM:00054BCA                 move.l  a1,(a6)
ROM:00054BCC
ROM:00054BCC loc_54BCC:
ROM:00054BCC                 jsr     CheckOutOfScreen
ROM:00054BD2                 bcc.w   locret_54BDC
ROM:00054BD6                 jmp     (SetDying).l
ROM:00054BDC
ROM:00054BDC
ROM:00054BDC locret_54BDC:
ROM:00054BDC                 rts
ROM:00054BDE
ROM:00054BDE
ROM:00054BDE loc_54BDE:
ROM:00054BDE                 lea     (unk_299066).l,a0
ROM:00054BE4                 jsr     ChangeAnimation
ROM:00054BEA                 lea     loc_54BF0,a1
ROM:00054BEE                 move.l  a1,(a6)
ROM:00054BF0
ROM:00054BF0 loc_54BF0:
ROM:00054BF0                 jsr     ObjectRelated
ROM:00054BF6                 jsr     Animate
ROM:00054BFC                 jsr     CheckOutOfScreen
ROM:00054C02                 bcc.w   locret_54C0C
ROM:00054C06                 jmp     (SetDying).l
ROM:00054C0C
ROM:00054C0C
ROM:00054C0C locret_54C0C:
ROM:00054C0C                 rts
ROM:00054C0E
ROM:00054C0E                 movea.l $3C(a6),a1
ROM:00054C12                 jsr     loc_2942A
ROM:00054C18                 jsr     ObjectRelated
ROM:00054C1E                 lea     (off_29B31A).l,a1
ROM:00054C24                 jsr     sub_43FAC
ROM:00054C2A                 move.w  #$60,$70(a6)
ROM:00054C30                 lea     (off_2C0196).l,a0
ROM:00054C36                 jsr     GetParamDifficulty
ROM:00054C3C                 move.w  d0,$66(a6)
ROM:00054C40                 lea     (unk_298A52).l,a0
ROM:00054C46                 jsr     ChangeAnimation
ROM:00054C4C                 lea     loc_54C52,a1
ROM:00054C50                 move.l  a1,(a6)
ROM:00054C52
ROM:00054C52 loc_54C52:
ROM:00054C52                 clr.b   (byte_10E39A).l
ROM:00054C58                 jsr     ObjectRelated
ROM:00054C5E                 jsr     Animate
ROM:00054C64                 jsr     CheckShot?
ROM:00054C6A                 bcc.w   loc_54C80
ROM:00054C6E                 lea     (SoundCodeGunFire).l,a0
ROM:00054C74                 jsr     SoundRelated_0
ROM:00054C7A                 bclr    #3,$13(a6)
ROM:00054C80
ROM:00054C80 loc_54C80:
ROM:00054C80                 jsr     CheckIfDead
ROM:00054C86                 bcc.w   loc_54CE0
ROM:00054C8A                 move.l  #$1000,d0
ROM:00054C90                 jsr     sub_51A28
ROM:00054C96                 move.w  #$102B,d0
ROM:00054C9A                 jsr     (PlaySFX).l
ROM:00054CA0                 lea     (off_29B32E).l,a1
ROM:00054CA6                 jsr     sub_43FAC
ROM:00054CAC                 lea     (off_29A606).l,a2
ROM:00054CB2                 jsr     InitObjectGFX?
ROM:00054CB8                 lea     (unk_29A308).l,a1
ROM:00054CBE                 jsr     SpawnDebris?
ROM:00054CC4                 lea     (unk_29A308).l,a1
ROM:00054CCA                 jsr     SpawnDebris?
ROM:00054CD0                 lea     (unk_29A416).l,a1
ROM:00054CD6                 jsr     SpawnDebris?
ROM:00054CDC                 bra.w   loc_54CEA
ROM:00054CE0
ROM:00054CE0
ROM:00054CE0 loc_54CE0:
ROM:00054CE0                 jsr     CheckOutOfScreen
ROM:00054CE6                 bcc.w   locret_54CF0
ROM:00054CEA
ROM:00054CEA loc_54CEA:
ROM:00054CEA                 jmp     (SetDying).l
ROM:00054CF0
ROM:00054CF0
ROM:00054CF0 locret_54CF0:
ROM:00054CF0                 rts
ROM:00054CF2
ROM:00054CF2                 movea.l $3C(a6),a1
ROM:00054CF6                 jsr     loc_2942A
ROM:00054CFC                 move.w  #0,$72(a6)
ROM:00054D02                 lea     (unk_2990B8).l,a0
ROM:00054D08                 jsr     ChangeAnimation
ROM:00054D0E                 bra.w   loc_54D8E
ROM:00054D12
ROM:00054D12                 movea.l $3C(a6),a1
ROM:00054D16                 jsr     loc_2942A
ROM:00054D1C                 move.w  #1,$72(a6)
ROM:00054D22                 lea     (unk_2990B8).l,a0
ROM:00054D28                 jsr     ChangeAnimation
ROM:00054D2E                 bra.w   loc_54D8E
ROM:00054D32
ROM:00054D32                 movea.l $3C(a6),a1
ROM:00054D36                 jsr     loc_2942A
ROM:00054D3C                 move.w  #2,$72(a6)
ROM:00054D42                 lea     (unk_2990B8).l,a0
ROM:00054D48                 jsr     ChangeAnimation
ROM:00054D4E                 bra.w   loc_54D8E
ROM:00054D52
ROM:00054D52                 movea.l $3C(a6),a1
ROM:00054D56                 jsr     loc_2942A
ROM:00054D5C                 move.w  #3,$72(a6)
ROM:00054D62                 lea     (unk_2990B8).l,a0
ROM:00054D68                 jsr     ChangeAnimation
ROM:00054D6E                 bra.w   loc_54D8E
ROM:00054D72
ROM:00054D72                 movea.l $3C(a6),a1
ROM:00054D76                 jsr     loc_2942A
ROM:00054D7C                 move.w  #4,$72(a6)
ROM:00054D82                 lea     (off_299D6E).l,a0
ROM:00054D88                 jsr     ChangeAnimation
ROM:00054D8E
ROM:00054D8E loc_54D8E:
ROM:00054D8E
ROM:00054D8E                 move.w  #$95,d1
ROM:00054D92                 jsr     (sub_236E).l
ROM:00054D98                 cmpi.w  #4,$72(a6)
ROM:00054D9E                 beq.w   loc_54DC2
ROM:00054DA2                 lea     ($6293E).l,a1
ROM:00054DA8                 jsr     (SpawnObj).l
ROM:00054DAE                 jsr     sub_5DD22
ROM:00054DB4                 move.w  $72(a6),d0
ROM:00054DB8                 move.b  d0,$62(a0)
ROM:00054DBC                 addi.w  #$40,$22(a0)
ROM:00054DC2
ROM:00054DC2 loc_54DC2:
ROM:00054DC2                 move.w  #$80,$70(a6)
ROM:00054DC8                 move.b  #$FF,$32(a6)
ROM:00054DCE                 move.b  #$FF,$33(a6)
ROM:00054DD4                 move.b  #0,$3A(a6)
ROM:00054DDA                 lea     (off_2C0114).l,a0
ROM:00054DE0                 jsr     GetParamDifficulty
ROM:00054DE6                 move.w  d0,$66(a6)
ROM:00054DEA                 addi.w  #$140,$66(a6)
ROM:00054DF0                 move.b  #0,$20(a6)
ROM:00054DF6                 move.w  $72(a6),d0
ROM:00054DFA                 cmpi.w  #4,$72(a6)
ROM:00054E00                 bne.w   loc_54E0C
ROM:00054E04                 lea     ($FFFFFFFF).w,a0
ROM:00054E08                 move.l  a0,$48(a6)
ROM:00054E0C
ROM:00054E0C loc_54E0C:
ROM:00054E0C                 lea     ProcCliffUndamaged,a1
ROM:00054E10                 move.l  a1,(a6)
ROM:00054E12
