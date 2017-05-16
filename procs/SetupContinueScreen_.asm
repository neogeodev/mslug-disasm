ROM:00025B66 SetupContinueScreen?:
ROM:00025B66                 lea     (loc_9B872).l,a1
ROM:00025B6C                 jsr     loc_4498E
ROM:00025B72                 move.w  $70(a6),$98(a0)
ROM:00025B78                 move.b  #2,d0
ROM:00025B7C                 jsr     sub_25E74
ROM:00025B80                 move.b  #1,d2
ROM:00025B84                 move.w  $70(a6),d1
ROM:00025B88                 jsr     sub_26752
ROM:00025B8E                 bcs.w   loc_25C44
ROM:00025B92                 lea     loc_25B2C,a4
ROM:00025B96                 move.w  $70(a6),d1
ROM:00025B9A                 lsl.w   #2,d1
ROM:00025B9C                 movea.l (a4,d1.w),a1
ROM:00025BA0                 jsr     (SpawnObj).l
ROM:00025BA6                 move.b  #$FF,$21(a6)
ROM:00025BAC                 move.b  #$FF,$20(a6)
ROM:00025BB2                 lea     loc_25CCE,a1
ROM:00025BB6                 jsr     (SpawnObj).l
ROM:00025BBC                 move.b  $21(a6),$21(a0)
ROM:00025BC2                 move.b  $20(a6),$20(a0)
ROM:00025BC8                 lea     loc_25BCE,a1
ROM:00025BCC                 move.l  a1,(a6)
ROM:00025BCE
ROM:00025BCE loc_25BCE:
ROM:00025BCE                 jsr     (loc_1E4C).l
ROM:00025BD4                 bsr.w   sub_25E84
ROM:00025BD8                 cmpi.b  #1,d0
ROM:00025BDC                 bne.w   loc_25BFC
ROM:00025BE0                 lea     loc_259B8,a1
ROM:00025BE4                 move.l  a1,(a6)
ROM:00025BE6                 clr.b   $20(a6)
ROM:00025BEA                 lea     loc_2594A,a0
ROM:00025BEE                 bsr.w   sub_25EAC
ROM:00025BF2                 jsr     sub_51A86
ROM:00025BF8                 bra.w   locret_25C42
ROM:00025BFC
ROM:00025BFC
ROM:00025BFC loc_25BFC:
ROM:00025BFC                 move.b  #1,d2
ROM:00025C00                 move.w  $70(a6),d1
ROM:00025C04                 jsr     sub_26752
ROM:00025C0A                 bcc.w   loc_25C1C
ROM:00025C0E                 lea     loc_25C44,a1
ROM:00025C12                 move.l  a1,(a6)
ROM:00025C14                 clr.b   $20(a6)
ROM:00025C18                 bra.w   locret_25C42
ROM:00025C1C
ROM:00025C1C
ROM:00025C1C loc_25C1C:
ROM:00025C1C                 bsr.w   sub_25E84
ROM:00025C20                 cmpi.b  #1,d0
ROM:00025C24                 beq.w   locret_25C42
ROM:00025C28                 tst.b   $21(a6)
ROM:00025C2C                 bne.w   locret_25C42
ROM:00025C30                 lea     loc_25D64,a1
ROM:00025C34                 move.l  a1,(a6)
ROM:00025C36                 move.b  #1,d0
ROM:00025C3A                 jsr     sub_25E74
ROM:00025C3E                 bra.w   *+4
ROM:00025C42
ROM:00025C42
ROM:00025C42 locret_25C42:
ROM:00025C42
ROM:00025C42                 rts
ROM:00025C44
ROM:00025C44
ROM:00025C44 loc_25C44:
ROM:00025C44
ROM:00025C44                 move.w  $70(a6),d1
ROM:00025C48                 lea     loc_25B2C,a4
ROM:00025C4C                 lsl.w   #2,d1
ROM:00025C4E                 movea.l (a4,d1.w),a1
ROM:00025C52                 jsr     (SpawnObj).l
ROM:00025C58                 move.b  #$FF,$21(a6)
ROM:00025C5E                 move.b  #$FF,$20(a6)
ROM:00025C64                 lea     $25CCE,a1
ROM:00025C68                 jsr     (SpawnObj).l
ROM:00025C6E                 move.b  $21(a6),$21(a0)
ROM:00025C74                 move.b  $20(a6),$20(a0)
ROM:00025C7A                 lea     loc_25C80,a1
ROM:00025C7E                 move.l  a1,(a6)
ROM:00025C80
ROM:00025C80 loc_25C80:
ROM:00025C80                 jsr     (loc_1E4C).l
ROM:00025C86                 bsr.w   sub_25E84
ROM:00025C8A                 cmpi.b  #1,d0
ROM:00025C8E                 bne.w   loc_25CAE
ROM:00025C92                 clr.b   $20(a6)
ROM:00025C96                 lea     loc_2594A,a0
ROM:00025C9A                 bsr.w   sub_25EAC
ROM:00025C9E                 jsr     sub_51A86
ROM:00025CA4                 lea     loc_259B8,a1
ROM:00025CA8                 move.l  a1,(a6)
ROM:00025CAA                 bra.w   locret_25CC4
ROM:00025CAE
ROM:00025CAE
ROM:00025CAE loc_25CAE:
ROM:00025CAE                 tst.b   $21(a6)
ROM:00025CB2                 bne.w   locret_25CC4
ROM:00025CB6                 move.b  #1,d0
ROM:00025CBA                 bsr.w   sub_25E74
ROM:00025CBE                 lea     loc_25D64,a1
ROM:00025CC2                 move.l  a1,(a6)
ROM:00025CC4
ROM:00025CC4 locret_25CC4:
ROM:00025CC4
ROM:00025CC4                 rts
ROM:00025CC6
ROM:00025CC6
ROM:00025CC6 loc_25CC6:
ROM:00025CC6                 ori.b   #$F6,d4
ROM:00025CC6
