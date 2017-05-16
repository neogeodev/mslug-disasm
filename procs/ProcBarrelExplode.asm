ROM:0004F344 ProcBarrelExplode:
ROM:0004F344                 lea     (unk_295FBA).l,a0
ROM:0004F34A                 move.l  a0,$4C(a6)
ROM:0004F34E                 jsr     sub_283CA
ROM:0004F354                 jsr     sub_283CA
ROM:0004F35A                 jsr     loc_283D8
ROM:0004F360                 lea     (unk_29426A).l,a0
ROM:0004F366                 jsr     ChangeAnimation
ROM:0004F36C                 lea     loc_4F372,a1
ROM:0004F370                 move.l  a1,(a6)
ROM:0004F372
ROM:0004F372 loc_4F372:
ROM:0004F372                 jsr     ObjectRelated
ROM:0004F378                 jsr     Animate
ROM:0004F37E                 bcc.w   locret_4F3AC
ROM:0004F382                 lea     ($FFFFFFFF).w,a0
ROM:0004F386                 move.l  a0,ObjLLItem.field_4C(a6)
ROM:0004F38A                 jsr     sub_283CA
ROM:0004F390                 move.w  #$1028,d0
ROM:0004F394                 jsr     (PlaySFX).l
ROM:0004F39A                 lea     (unk_295BD8).l,a1
ROM:0004F3A0                 jsr     SpawnDebris?
ROM:0004F3A6                 lea     loc_4F2A4,a1
ROM:0004F3AA                 move.l  a1,(a6)
ROM:0004F3AC
ROM:0004F3AC locret_4F3AC:
ROM:0004F3AC                 rts
ROM:0004F3AE
ROM:0004F3AE
ROM:0004F3AE loc_4F3AE:
ROM:0004F3AE                 move.w  #$1E,d1
ROM:0004F3B2                 move.w  #$111,d2
ROM:0004F3B6                 move.w  #$FFFF,d3
ROM:0004F3BA                 move.w  #1,d4
ROM:0004F3BE                 jsr     (sub_2C26).l
ROM:0004F3C4                 move.w  #1,$72(a6)
ROM:0004F3CA                 lea     loc_4F3D0,a1
ROM:0004F3CE                 move.l  a1,(a6)
ROM:0004F3D0
ROM:0004F3D0 loc_4F3D0:
ROM:0004F3D0                 subq.w  #1,$72(a6)
ROM:0004F3D4                 bne.w   loc_4F3DE
ROM:0004F3D8                 lea     loc_4F40C,a1
ROM:0004F3DC                 move.l  a1,(a6)
ROM:0004F3DE
ROM:0004F3DE loc_4F3DE:
ROM:0004F3DE                 move.l  (dword_106F5C).l,d0
ROM:0004F3E4                 swap    d0
ROM:0004F3E6                 cmpi.w  #$280,d0
ROM:0004F3EA                 blt.w   locret_4F40A
ROM:0004F3EE                 move.w  #$1E,d1
ROM:0004F3F2                 move.w  #$CE,d2
ROM:0004F3F6                 move.w  #$FFFF,d3
ROM:0004F3FA                 move.w  #1,d4
ROM:0004F3FE                 jsr     (sub_2C26).l
ROM:0004F404                 jmp     (SetDying).l
ROM:0004F40A
ROM:0004F40A
ROM:0004F40A locret_4F40A:
ROM:0004F40A                 rts
ROM:0004F40C
ROM:0004F40C
ROM:0004F40C loc_4F40C:
ROM:0004F40C                 move.w  #$1E,d1
ROM:0004F410                 move.w  #$CE,d2
ROM:0004F414                 move.w  #$FFFF,d3
ROM:0004F418                 move.w  #1,d4
ROM:0004F41C                 jsr     (sub_2C26).l
ROM:0004F422                 move.w  #1,$72(a6)
ROM:0004F428                 lea     loc_4F42E,a1
ROM:0004F42C                 move.l  a1,(a6)
ROM:0004F42E
ROM:0004F42E loc_4F42E:
ROM:0004F42E                 subq.w  #1,$72(a6)
ROM:0004F432                 bne.w   loc_4F43C
ROM:0004F436                 lea     loc_4F3AE,a1
ROM:0004F43A                 move.l  a1,(a6)
ROM:0004F43C
ROM:0004F43C loc_4F43C:
ROM:0004F43C                 move.l  (dword_106F5C).l,d0
ROM:0004F442                 swap    d0
ROM:0004F444                 cmpi.w  #$280,d0
ROM:0004F448                 blt.w   locret_4F468
ROM:0004F44C                 move.w  #$1E,d1
ROM:0004F450                 move.w  #$CE,d2
ROM:0004F454                 move.w  #$FFFF,d3
ROM:0004F458                 move.w  #1,d4
ROM:0004F45C                 jsr     (sub_2C26).l
ROM:0004F462                 jmp     (SetDying).l
ROM:0004F468
ROM:0004F468
ROM:0004F468 locret_4F468:
ROM:0004F468                 rts
ROM:0004F46A
ROM:0004F46A                 movea.l $3C(a6),a1
ROM:0004F46E                 jsr     loc_2942A
ROM:0004F474                 move.w  #$90,$70(a6)
ROM:0004F47A
ROM:0004F47A loc_4F47A:
ROM:0004F47A                 lea     loc_4F480,a1
ROM:0004F47E                 move.l  a1,(a6)
ROM:0004F480
ROM:0004F480 loc_4F480:
ROM:0004F480                 jsr     ObjectRelated
ROM:0004F486                 lea     (unk_295FB0).l,a0
ROM:0004F48C                 jsr     sub_5E086
ROM:0004F492                 bcs.w   loc_4F4A6
ROM:0004F496                 jsr     loc_31FC2
ROM:0004F49C                 beq.w   loc_4F4A6
ROM:0004F4A0                 lea     loc_4F4B6,a1
ROM:0004F4A4                 move.l  a1,(a6)
ROM:0004F4A6
ROM:0004F4A6 loc_4F4A6:
ROM:0004F4A6
ROM:0004F4A6                 jsr     CheckOutOfScreen
ROM:0004F4AA                 bcc.w   locret_4F4B4
ROM:0004F4AE                 jmp     (SetDying).l
ROM:0004F4B4
ROM:0004F4B4
ROM:0004F4B4 locret_4F4B4:
ROM:0004F4B4                 rts
ROM:0004F4B6
ROM:0004F4B6
ROM:0004F4B6 loc_4F4B6:
ROM:0004F4B6                 lea     (unk_2948A6).l,a0
ROM:0004F4BC                 jsr     ChangeAnimation
ROM:0004F4C2                 lea     loc_4F4C8,a1
ROM:0004F4C6                 move.l  a1,(a6)
ROM:0004F4C8
ROM:0004F4C8 loc_4F4C8:
ROM:0004F4C8                 jsr     ObjectRelated
ROM:0004F4CE                 jsr     Animate
ROM:0004F4D4                 bcc.w   loc_4F4DE
ROM:0004F4D8                 lea     loc_4F47A,a1
ROM:0004F4DC                 move.l  a1,(a6)
ROM:0004F4DE
ROM:0004F4DE loc_4F4DE:
ROM:0004F4DE                 jsr     CheckOutOfScreen
ROM:0004F4E2                 bcc.w   locret_4F4EC
ROM:0004F4E6                 jmp     (SetDying).l
ROM:0004F4EC
ROM:0004F4EC
ROM:0004F4EC locret_4F4EC:
ROM:0004F4EC                 rts
ROM:0004F4EE
ROM:0004F4EE                 movea.l $3C(a6),a1
ROM:0004F4F2                 jsr     loc_2942A
ROM:0004F4F8                 move.w  #$20,$70(a6)
ROM:0004F4FE                 move.b  #$FF,$32(a6)
ROM:0004F504                 move.b  #$FF,$33(a6)
ROM:0004F50A                 move.b  #0,$3A(a6)
ROM:0004F510                 move.w  #$14,$66(a6)
ROM:0004F516                 lea     (off_295160).l,a0
ROM:0004F51C                 move.l  a0,$48(a6)
ROM:0004F520                 lea     loc_4F526,a1
ROM:0004F524                 move.l  a1,(a6)
ROM:0004F526
ROM:0004F526 loc_4F526:
ROM:0004F526                 jsr     ObjectRelated
ROM:0004F52C                 jsr     CheckShot?
ROM:0004F532                 bcc.w   loc_4F548
ROM:0004F536                 lea     (SoundCodeGunFire).l,a0
ROM:0004F53C                 jsr     SoundRelated_0
ROM:0004F542                 bclr    #3,$13(a6)
ROM:0004F548
ROM:0004F548 loc_4F548:
ROM:0004F548                 jsr     CheckIfDead
ROM:0004F54E                 bcc.w   loc_4F5A6
ROM:0004F552                 lea     ($78066).l,a1
ROM:0004F558                 jsr     (SpawnObj).l
ROM:0004F55E                 jsr     sub_5DD22
ROM:0004F564                 addi.w  #$28,$22(a0)
ROM:0004F56A                 lea     (stru_2957AE).l,a2
ROM:0004F570                 jsr     InitObjectGFX?
ROM:0004F574                 lea     (off_295F5E).l,a1
ROM:0004F57A                 jsr     sub_43FAC
ROM:0004F580                 lea     (unk_29605E).l,a0
ROM:0004F586                 move.l  a0,$4C(a6)
ROM:0004F58A                 jsr     sub_283CA
ROM:0004F590                 jsr     sub_283CA
ROM:0004F596                 jsr     loc_283D8
ROM:0004F59C                 lea     loc_4F5B6,a1
ROM:0004F5A0                 move.l  a1,(a6)
ROM:0004F5A2                 bra.w   locret_4F5B4
ROM:0004F5A6
ROM:0004F5A6
ROM:0004F5A6 loc_4F5A6:
ROM:0004F5A6                 jsr     CheckOutOfScreen
ROM:0004F5AA                 bcc.w   locret_4F5B4
ROM:0004F5AE                 jmp     (SetDying).l
ROM:0004F5B4
ROM:0004F5B4
ROM:0004F5B4 locret_4F5B4:
ROM:0004F5B4
ROM:0004F5B4                 rts
ROM:0004F5B6
ROM:0004F5B6
ROM:0004F5B6 loc_4F5B6:
ROM:0004F5B6                 jmp     (SetDying).l
ROM:0004F5BC
ROM:0004F5BC                 rts
ROM:0004F5BE
ROM:0004F5BE                 jsr     sub_5E7C0
ROM:0004F5C4                 move.w  #$126,d1
ROM:0004F5C8                 jsr     (sub_236E).l
ROM:0004F5CE                 move.b  #$FF,$32(a6)
ROM:0004F5D4                 move.b  #$FF,$33(a6)
ROM:0004F5DA                 move.b  #0,$3A(a6)
ROM:0004F5E0                 jsr     ClearObjStuff
ROM:0004F5E6                 move.w  #0,$38(a6)
ROM:0004F5EC                 lea     (off_2948F8).l,a0
ROM:0004F5F2                 jsr     ChangeAnimation
ROM:0004F5F8                 lea     loc_4F5FE,a1
ROM:0004F5FC                 move.l  a1,(a6)
ROM:0004F5FE
ROM:0004F5FE loc_4F5FE:
ROM:0004F5FE                 jsr     ObjectRelated
ROM:0004F604                 jsr     Animate
ROM:0004F60A                 jsr     sub_27EBA
ROM:0004F610                 bcc.w   loc_4F61A
ROM:0004F614                 lea     loc_4F64C,a1
ROM:0004F618                 move.l  a1,(a6)
ROM:0004F61A
ROM:0004F61A loc_4F61A:
ROM:0004F61A                 jsr     GetRand2?
ROM:0004F620                 andi.w  #7,d0
ROM:0004F624                 bne.w   loc_4F634
ROM:0004F628                 lea     (off_294936).l,a0
ROM:0004F62E                 jsr     ChangeAnimation
ROM:0004F634
ROM:0004F634 loc_4F634:
ROM:0004F634                 lea     (off_29624A).l,a0
ROM:0004F63A                 jsr     CheckObjectOOB
ROM:0004F640                 bcc.w   locret_4F64A
ROM:0004F644                 jmp     (SetDying).l
ROM:0004F64A
ROM:0004F64A
ROM:0004F64A locret_4F64A:
ROM:0004F64A                 rts
ROM:0004F64C
ROM:0004F64C
ROM:0004F64C loc_4F64C:
ROM:0004F64C
ROM:0004F64C                 move.w  #$400,ObjLLItem.YSpeed(a6)
ROM:0004F652                 lea     (off_29494E).l,a0
ROM:0004F658                 jsr     ChangeAnimation
ROM:0004F65E                 lea     loc_4F664,a1
ROM:0004F662                 move.l  a1,(a6)
ROM:0004F664
ROM:0004F664 loc_4F664:
ROM:0004F664                 jsr     sub_27C8C
ROM:0004F66A                 bcc.w   loc_4F674
ROM:0004F66E                 lea     loc_4F692,a1
ROM:0004F672                 move.l  a1,(a6)
ROM:0004F674
ROM:0004F674 loc_4F674:
ROM:0004F674                 jsr     Animate
ROM:0004F67A                 lea     (off_29624A).l,a0
ROM:0004F680                 jsr     CheckObjectOOB
ROM:0004F686                 bcc.w   locret_4F690
ROM:0004F68A                 jmp     (SetDying).l
ROM:0004F690
ROM:0004F690
ROM:0004F690 locret_4F690:
ROM:0004F690                 rts
ROM:0004F692
ROM:0004F692
ROM:0004F692 loc_4F692:
ROM:0004F692                 jsr     ClearObjStuff
ROM:0004F698                 move.w  #$80,$28(a6)
ROM:0004F69E                 lea     (off_2948F8).l,a0
ROM:0004F6A4                 jsr     ChangeAnimation
ROM:0004F6AA                 btst    #0,$3A(a6)
ROM:0004F6B0                 bne.w   loc_4F6C0
ROM:0004F6B4                 lea     (off_294936).l,a0
ROM:0004F6BA                 jsr     ChangeAnimation
ROM:0004F6C0
ROM:0004F6C0 loc_4F6C0:
ROM:0004F6C0                 lea     ProcChicken,a1
ROM:0004F6C4                 move.l  a1,(a6)
ROM:0004F6C6
