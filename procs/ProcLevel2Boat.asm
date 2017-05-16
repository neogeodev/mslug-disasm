ROM:0007E138 ProcLevel2Boat:
ROM:0007E138                 jsr     loc_7FEE8
ROM:0007E13C                 jsr     PositionRelated
ROM:0007E142                 move.w  $22(a6),d0
ROM:0007E146                 move.w  $24(a6),d1
ROM:0007E14A                 addi.w  #-$58,d0
ROM:0007E14E                 addi.w  #$20,d1
ROM:0007E152                 move.w  #$30,d2
ROM:0007E156                 jsr     loc_99812
ROM:0007E15C                 move.w  $22(a6),d0
ROM:0007E160                 move.w  $24(a6),d1
ROM:0007E164                 addi.w  #$38,d0
ROM:0007E168                 addi.w  #$20,d1
ROM:0007E16C                 move.w  #$30,d2
ROM:0007E170                 jsr     loc_99812
ROM:0007E176                 move.w  $22(a6),d0
ROM:0007E17A                 move.w  $24(a6),d1
ROM:0007E17E                 addi.w  #-$30,d0
ROM:0007E182                 addq.w  #8,d1
ROM:0007E184                 move.w  #$70,d2
ROM:0007E188                 jsr     loc_99812
ROM:0007E18E                 addq.w  #1,$72(a6)
ROM:0007E192                 move.w  $72(a6),d0
ROM:0007E196                 cmp.w   $70(a6),d0
ROM:0007E19A                 blt.w   loc_7E1D4
ROM:0007E19E                 jsr     GetRand2?
ROM:0007E1A4                 andi.w  #3,d0
ROM:0007E1A8                 add.w   d0,d0
ROM:0007E1AA                 lea     (off_2E1D4A).l,a0
ROM:0007E1B0                 move.w  (a0,d0.w),d0
ROM:0007E1B4                 move.w  d0,$72(a6)
ROM:0007E1B8                 lea     $7EAC2,a1
ROM:0007E1BC                 jsr     (SpawnObj).l
ROM:0007E1C2                 jsr     InitSamePositions
ROM:0007E1C8                 addi.w  #$38,$22(a0)
ROM:0007E1CE                 addi.w  #$48,$24(a0)
ROM:0007E1D4
ROM:0007E1D4 loc_7E1D4:
ROM:0007E1D4                 jsr     CheckShot?
ROM:0007E1DA                 bcc.w   loc_7E1F0
ROM:0007E1DE                 lea     (SoundCodeGunFire).l,a0
ROM:0007E1E4                 jsr     SoundRelated_0
ROM:0007E1EA                 bclr    #3,$13(a6)
ROM:0007E1F0
ROM:0007E1F0 loc_7E1F0:
ROM:0007E1F0                 jsr     sub_7FEB4
ROM:0007E1F4                 jsr     CheckIfDead
ROM:0007E1FA                 bcc.w   loc_7E254
ROM:0007E1FE                 move.b  #3,$20(a6)
ROM:0007E204                 subq.w  #1,$7A(a6)
ROM:0007E208                 bne.w   loc_7E254
ROM:0007E20C                 move.b  #1,$21(a6)
ROM:0007E212                 move.w  #0,$76(a6)
ROM:0007E218                 lea     ($FFFFFFFF).w,a0
ROM:0007E21C                 move.l  a0,$48(a6)
ROM:0007E220                 lea     $7F674,a1
ROM:0007E224                 jsr     (SpawnObj).l
ROM:0007E22A                 jsr     InitSamePositions
ROM:0007E230                 lea     loc_7E602,a1
ROM:0007E234                 jsr     (SpawnObj).l
ROM:0007E23A                 jsr     InitSamePositions
ROM:0007E240                 move.b  $9A(a6),d0
ROM:0007E244                 move.w  #$9B,d1
ROM:0007E248                 jsr     sub_9A7AA
ROM:0007E24E                 lea     loc_7E264,a1
ROM:0007E252                 move.l  a1,(a6)
ROM:0007E254
ROM:0007E254 loc_7E254:
ROM:0007E254
ROM:0007E254                 jsr     sub_7FDC4
ROM:0007E258                 bcc.w   locret_7E262
ROM:0007E25C                 lea     $7FDB6,a1
ROM:0007E260                 move.l  a1,(a6)
ROM:0007E262
ROM:0007E262 locret_7E262:
ROM:0007E262                 rts
ROM:0007E264
ROM:0007E264
ROM:0007E264 loc_7E264:
ROM:0007E264                 jsr     ObjectRelated
ROM:0007E26A                 cmpi.b  #4,$20(a6)
ROM:0007E270                 bne.w   loc_7E286
ROM:0007E274                 bclr    #1,$12(a6)
ROM:0007E27A                 move.b  #2,$21(a6)
ROM:0007E280                 lea     loc_7E29A,a1
ROM:0007E284                 move.l  a1,(a6)
ROM:0007E286
ROM:0007E286 loc_7E286:
ROM:0007E286                 jsr     sub_7FEB4
ROM:0007E28A                 jsr     sub_7FDC4
ROM:0007E28E                 bcc.w   locret_7E298
ROM:0007E292                 lea     $7FDB6,a1
ROM:0007E296                 move.l  a1,(a6)
ROM:0007E298
ROM:0007E298 locret_7E298:
ROM:0007E298                 rts
ROM:0007E29A
ROM:0007E29A
ROM:0007E29A loc_7E29A:
ROM:0007E29A                 cmpi.b  #5,$20(a6)
ROM:0007E2A0                 bne.w   loc_7E2B8
ROM:0007E2A4                 move.b  #3,$21(a6)
ROM:0007E2AA                 lea     ($FFFFFFFF).w,a0
ROM:0007E2AE                 move.l  a0,$48(a6)
ROM:0007E2B2                 lea     loc_7E2D2,a1
ROM:0007E2B6                 move.l  a1,(a6)
ROM:0007E2B8
ROM:0007E2B8 loc_7E2B8:
ROM:0007E2B8                 jsr     ObjectRelated
ROM:0007E2BE                 jsr     sub_7FEB4
ROM:0007E2C2                 jsr     sub_7FDC4
ROM:0007E2C6                 bcc.w   locret_7E2D0
ROM:0007E2CA                 lea     $7FDB6,a1
ROM:0007E2CE                 move.l  a1,(a6)
ROM:0007E2D0
ROM:0007E2D0 locret_7E2D0:
ROM:0007E2D0                 rts
ROM:0007E2D2
ROM:0007E2D2
ROM:0007E2D2 loc_7E2D2:
ROM:0007E2D2                 cmpi.b  #$FF,$21(a6)
ROM:0007E2D8                 bne.w   loc_7E2E2
ROM:0007E2DC                 lea     $7FDBC,a1
ROM:0007E2E0                 move.l  a1,(a6)
ROM:0007E2E2
ROM:0007E2E2 loc_7E2E2:
ROM:0007E2E2                 jsr     sub_7FDC4
ROM:0007E2E6                 bcc.w   locret_7E2F0
ROM:0007E2EA                 lea     $7FDB6,a1
ROM:0007E2EE                 move.l  a1,(a6)
ROM:0007E2F0
ROM:0007E2F0 locret_7E2F0:
ROM:0007E2F0                 rts
ROM:0007E2F2
ROM:0007E2F2
ROM:0007E2F2 loc_7E2F2:
ROM:0007E2F2
ROM:0007E2F2                 clr.b   (byte_10E39A).l
ROM:0007E2F8                 movea.l $C(a6),a0
ROM:0007E2FC                 cmpi.b  #2,$21(a0)
ROM:0007E302                 bne.w   locret_7E30C
ROM:0007E306                 jmp     (SetDying).l
ROM:0007E30C
ROM:0007E30C
ROM:0007E30C locret_7E30C:
ROM:0007E30C                 rts
ROM:0007E30E
ROM:0007E30E
ROM:0007E30E loc_7E30E:
ROM:0007E30E                 move.w  #$24,d1
ROM:0007E312                 jsr     (sub_236E).l
ROM:0007E318                 clr.b   $20(a6)
ROM:0007E31C                 clr.b   $21(a6)
ROM:0007E320                 movea.l $C(a6),a0
ROM:0007E324                 move.w  $66(a0),d0
ROM:0007E328                 divu.w  #3,d0
ROM:0007E32C                 move.w  d0,$66(a6)
ROM:0007E330                 move.w  d0,$72(a6)
ROM:0007E334                 move.w  #$FFFF,$70(a6)
ROM:0007E33A
ROM:0007E33A loc_7E33A:
ROM:0007E33A                 bclr    #3,$13(a6)
ROM:0007E340                 jsr     loc_7FFFC
ROM:0007E344                 cmp.w   $70(a6),d0
ROM:0007E348                 beq.w   loc_7E3AC
ROM:0007E34C                 move.w  d0,$70(a6)
ROM:0007E350                 lea     (off_2E1D52).l,a0
ROM:0007E356                 add.w   d0,d0
ROM:0007E358                 add.w   d0,d0
ROM:0007E35A                 movea.l (a0,d0.w),a0
ROM:0007E35E                 jsr     ChangeAnimation
ROM:0007E364                 lea     ($77F6A).l,a1
ROM:0007E36A                 jsr     (SpawnObj).l
ROM:0007E370                 jsr     InitSamePositions
ROM:0007E376                 addi.w  #$28,$38(a0)
ROM:0007E37C                 subi.w  #$48,$22(a0)
ROM:0007E382                 move.w  $54(a6),$22(a0)
ROM:0007E388                 move.w  $56(a6),$24(a0)
ROM:0007E38E                 lea     (off_2E2B0C).l,a1
ROM:0007E394                 jsr     SpawnDebris?
ROM:0007E39A                 move.w  $54(a6),$22(a0)
ROM:0007E3A0                 move.w  $56(a6),$24(a0)
ROM:0007E3A6                 addi.w  #$28,$38(a0)
ROM:0007E3AC
ROM:0007E3AC loc_7E3AC:
ROM:0007E3AC                 lea     loc_7E3B2,a1
ROM:0007E3B0                 move.l  a1,(a6)
ROM:0007E3B2
ROM:0007E3B2 loc_7E3B2:
ROM:0007E3B2                 movea.l $C(a6),a0
ROM:0007E3B6                 move.w  $22(a0),$22(a6)
ROM:0007E3BC                 move.w  $24(a0),$24(a6)
ROM:0007E3C2                 jsr     Animate
ROM:0007E3C8                 jsr     CheckShot?
ROM:0007E3CE                 bcc.w   loc_7E3D8
ROM:0007E3D2                 lea     loc_7E33A,a1
ROM:0007E3D6                 move.l  a1,(a6)
ROM:0007E3D8
ROM:0007E3D8 loc_7E3D8:
ROM:0007E3D8                 movea.l $C(a6),a0
ROM:0007E3DC                 cmpi.b  #3,$20(a0)
ROM:0007E3E2                 bne.w   loc_7E3EC
ROM:0007E3E6                 lea     $7FC38,a1
ROM:0007E3EA                 move.l  a1,(a6)
ROM:0007E3EC
ROM:0007E3EC loc_7E3EC:
ROM:0007E3EC                 jsr     CheckIfDead
ROM:0007E3F2                 bcc.w   loc_7E3FC
ROM:0007E3F6                 lea     $7FC1A,a1
ROM:0007E3FA                 move.l  a1,(a6)
ROM:0007E3FC
ROM:0007E3FC loc_7E3FC:
ROM:0007E3FC                 jsr     sub_7FDE0
ROM:0007E400                 bcc.w   locret_7E40A
ROM:0007E404                 lea     $7FDBC,a1
ROM:0007E408                 move.l  a1,(a6)
ROM:0007E40A
ROM:0007E40A locret_7E40A:
ROM:0007E40A                 rts
ROM:0007E40C
ROM:0007E40C
ROM:0007E40C loc_7E40C:
ROM:0007E40C                 move.w  #$24,d1
ROM:0007E410                 jsr     (sub_236E).l
ROM:0007E416                 clr.b   $20(a6)
ROM:0007E41A                 clr.b   $21(a6)
ROM:0007E41E                 movea.l $C(a6),a0
ROM:0007E422                 move.w  $66(a0),d0
ROM:0007E426                 divu.w  #3,d0
ROM:0007E42A                 move.w  d0,$66(a6)
ROM:0007E42E                 move.w  d0,$72(a6)
ROM:0007E432                 move.w  #$FFFF,$70(a6)
ROM:0007E438
ROM:0007E438 loc_7E438:
ROM:0007E438                 bclr    #3,$13(a6)
ROM:0007E43E                 jsr     loc_7FFFC
ROM:0007E442                 cmp.w   $70(a6),d0
ROM:0007E446                 beq.w   loc_7E4A4
ROM:0007E44A                 move.w  d0,$70(a6)
ROM:0007E44E                 lea     (off_2E1DE4).l,a0
ROM:0007E454                 add.w   d0,d0
ROM:0007E456                 add.w   d0,d0
ROM:0007E458                 movea.l (a0,d0.w),a0
ROM:0007E45C                 jsr     ChangeAnimation
ROM:0007E462                 lea     ($77F6A).l,a1
ROM:0007E468                 jsr     (SpawnObj).l
ROM:0007E46E                 jsr     InitSamePositions
ROM:0007E474                 move.w  $54(a6),$22(a0)
ROM:0007E47A                 move.w  $56(a6),$24(a0)
ROM:0007E480                 addi.w  #$28,$38(a0)
ROM:0007E486                 lea     (off_2E2B0C).l,a1
ROM:0007E48C                 jsr     SpawnDebris?
ROM:0007E492                 move.w  $54(a6),$22(a0)
ROM:0007E498                 move.w  $56(a6),$24(a0)
ROM:0007E49E                 addi.w  #$28,$38(a0)
ROM:0007E4A4
ROM:0007E4A4 loc_7E4A4:
ROM:0007E4A4                 lea     loc_7E4AA,a1
ROM:0007E4A8                 move.l  a1,(a6)
ROM:0007E4AA
ROM:0007E4AA loc_7E4AA:
ROM:0007E4AA                 movea.l $C(a6),a0
ROM:0007E4AE                 move.w  $22(a0),$22(a6)
ROM:0007E4B4                 move.w  $24(a0),$24(a6)
ROM:0007E4BA                 jsr     Animate
ROM:0007E4C0                 jsr     CheckShot?
ROM:0007E4C6                 bcc.w   loc_7E4D0
ROM:0007E4CA                 lea     loc_7E438,a1
ROM:0007E4CE                 move.l  a1,(a6)
ROM:0007E4D0
ROM:0007E4D0 loc_7E4D0:
ROM:0007E4D0                 movea.l $C(a6),a0
ROM:0007E4D4                 cmpi.b  #3,$20(a0)
ROM:0007E4DA                 bne.w   loc_7E4E4
ROM:0007E4DE                 lea     $7FC6C,a1
ROM:0007E4E2                 move.l  a1,(a6)
ROM:0007E4E4
ROM:0007E4E4 loc_7E4E4:
ROM:0007E4E4                 jsr     CheckIfDead
ROM:0007E4EA                 bcc.w   loc_7E4F4
ROM:0007E4EE                 lea     $7FC54,a1
ROM:0007E4F2                 move.l  a1,(a6)
ROM:0007E4F4
ROM:0007E4F4 loc_7E4F4:
ROM:0007E4F4                 jsr     sub_7FDE0
ROM:0007E4F8                 bcc.w   locret_7E502
ROM:0007E4FC                 lea     $7FDBC,a1
ROM:0007E500                 move.l  a1,(a6)
ROM:0007E502
ROM:0007E502 locret_7E502:
ROM:0007E502                 rts
ROM:0007E504
ROM:0007E504
ROM:0007E504 loc_7E504:
ROM:0007E504                 move.w  #$24,d1
ROM:0007E508                 jsr     (sub_236E).l
ROM:0007E50E                 clr.b   $20(a6)
ROM:0007E512                 clr.b   $21(a6)
ROM:0007E516                 movea.l $C(a6),a0
ROM:0007E51A                 move.w  $66(a0),d0
ROM:0007E51E                 divu.w  #3,d0
ROM:0007E522                 move.w  d0,$66(a6)
ROM:0007E526                 move.w  d0,$72(a6)
ROM:0007E52A                 move.w  #$FFFF,$70(a6)
ROM:0007E530
ROM:0007E530 loc_7E530:
ROM:0007E530                 bclr    #3,$13(a6)
ROM:0007E536                 jsr     loc_7FFFC
ROM:0007E53A                 cmp.w   $70(a6),d0
ROM:0007E53E                 beq.w   loc_7E5A2
ROM:0007E542                 move.w  d0,$70(a6)
ROM:0007E546                 lea     (off_2E1E76).l,a0
ROM:0007E54C                 add.w   d0,d0
ROM:0007E54E                 add.w   d0,d0
ROM:0007E550                 movea.l (a0,d0.w),a0
ROM:0007E554                 jsr     ChangeAnimation
ROM:0007E55A                 lea     ($77F6A).l,a1
ROM:0007E560                 jsr     (SpawnObj).l
ROM:0007E566                 jsr     InitSamePositions
ROM:0007E56C                 addi.w  #$40,$22(a0)
ROM:0007E572                 move.w  $54(a6),$22(a0)
ROM:0007E578                 move.w  $56(a6),$24(a0)
ROM:0007E57E                 addi.w  #$28,$38(a0)
ROM:0007E584                 lea     (off_2E2B0C).l,a1
ROM:0007E58A                 jsr     SpawnDebris?
ROM:0007E590                 move.w  $54(a6),$22(a0)
ROM:0007E596                 move.w  $56(a6),$24(a0)
ROM:0007E59C                 addi.w  #$28,$38(a0)
ROM:0007E5A2
ROM:0007E5A2 loc_7E5A2:
ROM:0007E5A2                 lea     loc_7E5A8,a1
ROM:0007E5A6                 move.l  a1,(a6)
ROM:0007E5A8
ROM:0007E5A8 loc_7E5A8:
ROM:0007E5A8                 movea.l $C(a6),a0
ROM:0007E5AC                 move.w  $22(a0),$22(a6)
ROM:0007E5B2                 move.w  $24(a0),$24(a6)
ROM:0007E5B8                 jsr     Animate
ROM:0007E5BE                 jsr     CheckShot?
ROM:0007E5C4                 bcc.w   loc_7E5CE
ROM:0007E5C8                 lea     loc_7E530,a1
ROM:0007E5CC                 move.l  a1,(a6)
ROM:0007E5CE
ROM:0007E5CE loc_7E5CE:
ROM:0007E5CE                 movea.l $C(a6),a0
ROM:0007E5D2                 cmpi.b  #3,$20(a0)
ROM:0007E5D8                 bne.w   loc_7E5E2
ROM:0007E5DC                 lea     $7FCA6,a1
ROM:0007E5E0                 move.l  a1,(a6)
ROM:0007E5E2
ROM:0007E5E2 loc_7E5E2:
ROM:0007E5E2                 jsr     CheckIfDead
ROM:0007E5E8                 bcc.w   loc_7E5F2
ROM:0007E5EC                 lea     $7FC88,a1
ROM:0007E5F0                 move.l  a1,(a6)
ROM:0007E5F2
ROM:0007E5F2 loc_7E5F2:
ROM:0007E5F2                 jsr     sub_7FDE0
ROM:0007E5F6                 bcc.w   locret_7E600
ROM:0007E5FA                 lea     $7FDBC,a1
ROM:0007E5FE                 move.l  a1,(a6)
ROM:0007E600
ROM:0007E600 locret_7E600:
ROM:0007E600                 rts
ROM:0007E602
ROM:0007E602
ROM:0007E602 loc_7E602:
ROM:0007E602                 move.w  #$24,d1
ROM:0007E606                 jsr     (sub_236E).l
ROM:0007E60C                 bset    #1,$12(a6)
ROM:0007E612                 clr.b   $20(a6)
ROM:0007E616                 clr.b   $21(a6)
ROM:0007E61A                 move.w  #$5000,$38(a6)
ROM:0007E620                 movea.l $C(a6),a0
ROM:0007E624                 tst.b   $82(a0)
ROM:0007E628                 bne.w   loc_7E640
ROM:0007E62C                 lea     (off_2BCBC4).l,a0
ROM:0007E632                 jsr     GetParamDifficulty
ROM:0007E638                 move.w  d0,$66(a6)
ROM:0007E63C                 bra.w   loc_7E650
ROM:0007E640
ROM:0007E640
ROM:0007E640 loc_7E640:
ROM:0007E640                 lea     (off_2BCCC8).l,a0
ROM:0007E646                 jsr     GetParamDifficulty
ROM:0007E64C                 move.w  d0,$66(a6)
ROM:0007E650
ROM:0007E650 loc_7E650:
ROM:0007E650                 lea     (unk_2E1F08).l,a0
ROM:0007E656                 jsr     ChangeAnimation
ROM:0007E65C                 lea     $7E8B4,a1
ROM:0007E660                 jsr     (SpawnObj).l
ROM:0007E666                 jsr     InitSamePositions
ROM:0007E66C                 lea     loc_7E674,a1
ROM:0007E670                 move.l  a1,(a6)
ROM:0007E672                 rts
ROM:0007E674
ROM:0007E674
ROM:0007E674 loc_7E674:
ROM:0007E674                 movea.l $C(a6),a0
ROM:0007E678                 move.w  $22(a0),$22(a6)
ROM:0007E67E                 move.w  $24(a0),$24(a6)
ROM:0007E684                 subq.w  #4,$24(a6)
ROM:0007E688                 move.w  $22(a6),$78(a0)
ROM:0007E68E                 move.w  $24(a6),$7A(a0)
ROM:0007E694                 jsr     Animate
ROM:0007E69A                 move.w  $22(a6),d0
ROM:0007E69E                 move.w  $24(a6),d1
ROM:0007E6A2                 addi.w  #-$28,d0
ROM:0007E6A6                 addi.w  #$30,d1
ROM:0007E6AA                 move.w  #$28,d2
ROM:0007E6AE                 jsr     loc_99812
ROM:0007E6B4                 move.w  $22(a6),d0
ROM:0007E6B8                 move.w  $24(a6),d1
ROM:0007E6BC                 addi.w  #-$38,d0
ROM:0007E6C0                 move.w  #$58,d2
ROM:0007E6C4                 jsr     loc_99812
ROM:0007E6CA                 move.w  $22(a6),d0
ROM:0007E6CE                 move.w  $24(a6),d1
ROM:0007E6D2                 addi.w  #$10,d0
ROM:0007E6D6                 addi.w  #$10,d1
ROM:0007E6DA                 move.w  #$20,d2
ROM:0007E6DE                 jsr     loc_99812
ROM:0007E6E4                 jsr     CheckShot?
ROM:0007E6EA                 bcc.w   loc_7E700
ROM:0007E6EE                 bclr    #3,$13(a6)
ROM:0007E6F4                 lea     (SoundCodeGunFire).l,a0
ROM:0007E6FA                 jsr     SoundRelated_0
ROM:0007E700
ROM:0007E700 loc_7E700:
ROM:0007E700                 tst.w   $66(a6)
ROM:0007E704                 bne.w   loc_7E70E
ROM:0007E708                 bset    #0,$13(a6)
ROM:0007E70E
ROM:0007E70E loc_7E70E:
ROM:0007E70E                 jsr     CheckIfDead
ROM:0007E714                 bcc.w   loc_7E71E
ROM:0007E718                 lea     loc_7E72E,a1
ROM:0007E71C                 move.l  a1,(a6)
ROM:0007E71E
ROM:0007E71E loc_7E71E:
ROM:0007E71E                 jsr     sub_7FDE0
ROM:0007E722                 bcc.w   locret_7E72C
ROM:0007E726                 lea     $7FDB6,a1
ROM:0007E72A                 move.l  a1,(a6)
ROM:0007E72C
ROM:0007E72C locret_7E72C:
ROM:0007E72C                 rts
ROM:0007E72E
ROM:0007E72E
ROM:0007E72E loc_7E72E:
ROM:0007E72E                 movea.l $C(a6),a0
ROM:0007E732                 move.w  $22(a0),$22(a6)
ROM:0007E738                 move.w  $24(a0),$24(a6)
ROM:0007E73E                 subq.w  #4,$24(a6)
ROM:0007E742                 move.b  #4,$20(a0)
ROM:0007E748                 jsr     ClearObjStuff
ROM:0007E74E                 move.w  #$FF40,$2A(a6)
ROM:0007E754                 moveq   #0,d0
ROM:0007E756                 move.b  d0,$21(a6)
ROM:0007E75A                 move.w  d0,$66(a6)
ROM:0007E75E                 move.w  d0,$74(a6)
ROM:0007E762                 move.w  d0,$76(a6)
ROM:0007E766                 jsr     nullsub_2
ROM:0007E76C                 bclr    #1,$12(a6)
ROM:0007E772                 lea     (unk_2E1F1E).l,a0
ROM:0007E778                 jsr     ChangeAnimation
ROM:0007E77E                 lea     ($77FD6).l,a1
ROM:0007E784                 jsr     (SpawnObj).l
ROM:0007E78A                 jsr     InitSamePositions
ROM:0007E790                 lea     loc_7E796,a1
ROM:0007E794                 move.l  a1,(a6)
ROM:0007E796
ROM:0007E796 loc_7E796:
ROM:0007E796                 jsr     PositionRelated
ROM:0007E79C                 movea.l $C(a6),a0
ROM:0007E7A0                 move.w  $22(a6),$78(a0)
ROM:0007E7A6                 move.w  $24(a6),$7A(a0)
ROM:0007E7AC                 move.l  #unk_2E23CA,$60(a6)
ROM:0007E7B4                 jsr     sub_28998
ROM:0007E7BA                 move.l  #unk_2E2416,$60(a6)
ROM:0007E7C2                 jsr     sub_28998
ROM:0007E7C8                 move.l  #unk_2E2462,$60(a6)
ROM:0007E7D0                 jsr     sub_28998
ROM:0007E7D6                 jsr     Animate
ROM:0007E7DC                 move.w  $22(a6),d0
ROM:0007E7E0                 move.w  $24(a6),d1
ROM:0007E7E4                 addi.w  #-$28,d0
ROM:0007E7E8                 addi.w  #$30,d1
ROM:0007E7EC                 move.w  #$28,d2
ROM:0007E7F0                 jsr     loc_99812
ROM:0007E7F6                 move.w  $22(a6),d0
ROM:0007E7FA                 move.w  $24(a6),d1
ROM:0007E7FE                 addi.w  #-$38,d0
ROM:0007E802                 move.w  #$58,d2
ROM:0007E806                 jsr     loc_99812
ROM:0007E80C                 move.w  $22(a6),d0
ROM:0007E810                 move.w  $24(a6),d1
ROM:0007E814                 addi.w  #$10,d0
ROM:0007E818                 addi.w  #$10,d1
ROM:0007E81C                 move.w  #$20,d2
ROM:0007E820                 jsr     loc_99812
ROM:0007E826                 jsr     sub_7FEB4
ROM:0007E82A                 cmpi.w  #$D0,$24(a6)
ROM:0007E830                 bgt.w   loc_7E844
ROM:0007E834                 movea.l $C(a6),a0
ROM:0007E838                 move.b  #5,$20(a0)
ROM:0007E83E                 move.w  #$FBC0,$2A(a6)
ROM:0007E844
ROM:0007E844 loc_7E844:
ROM:0007E844                 jsr     sub_7FDE0
ROM:0007E848                 bcc.w   locret_7E852
ROM:0007E84C                 lea     loc_7FDB6,a1
ROM:0007E850                 move.l  a1,(a6)
ROM:0007E852
ROM:0007E852 locret_7E852:
ROM:0007E852                 rts
ROM:0007E854
ROM:0007E854                 move.l  #unk_2E2332,$60(a6)
ROM:0007E85C                 move.w  #$FFC8,$70(a6)
ROM:0007E862                 lea     loc_7E880,a1
ROM:0007E866                 move.l  a1,(a6)
ROM:0007E868                 rts
ROM:0007E86A
ROM:0007E86A                 move.l  #unk_2E237E,$60(a6)
ROM:0007E872                 move.w  #$48,$70(a6)
ROM:0007E878                 lea     loc_7E880,a1
ROM:0007E87C                 move.l  a1,(a6)
ROM:0007E87E                 rts
ROM:0007E880
ROM:0007E880
ROM:0007E880 loc_7E880:
ROM:0007E880
ROM:0007E880                 movea.l $C(a6),a0
ROM:0007E884                 move.w  $22(a0),$22(a6)
ROM:0007E88A                 move.w  $24(a0),$24(a6)
ROM:0007E890                 move.w  $70(a6),d0
ROM:0007E894                 add.w   d0,$22(a6)
ROM:0007E898                 jsr     sub_28998
ROM:0007E89E                 movea.l $C(a6),a0
ROM:0007E8A2                 cmpi.b  #1,$21(a0)
ROM:0007E8A8                 bne.w   locret_7E8B2
ROM:0007E8AC                 jmp     (SetDying).l
ROM:0007E8B2
ROM:0007E8B2
ROM:0007E8B2 locret_7E8B2:
ROM:0007E8B2                 rts
ROM:0007E8B4
ROM:0007E8B4                 move.l  #unk_2E24AE,$60(a6)
ROM:0007E8BC                 lea     loc_7E8C2,a1
ROM:0007E8C0                 move.l  a1,(a6)
ROM:0007E8C2
ROM:0007E8C2 loc_7E8C2:
ROM:0007E8C2                 movea.l $C(a6),a0
ROM:0007E8C6                 move.w  $22(a0),$22(a6)
ROM:0007E8CC                 move.w  $24(a0),$24(a6)
ROM:0007E8D2                 addi.w  #$20,$22(a6)
ROM:0007E8D8                 jsr     sub_28998
ROM:0007E8DE                 movea.l $C(a6),a0
ROM:0007E8E2                 tst.b   $21(a0)
ROM:0007E8E6                 beq.w   locret_7E8F0
ROM:0007E8EA                 jmp     (SetDying).l
ROM:0007E8F0
ROM:0007E8F0
ROM:0007E8F0 locret_7E8F0:
ROM:0007E8F0                 rts
ROM:0007E8F2
ROM:0007E8F2                 move.w  #$25,d1
ROM:0007E8F6                 jsr     (sub_236E).l
ROM:0007E8FC                 movea.l $C(a6),a0
ROM:0007E900                 move.w  $38(a0),$38(a6)
ROM:0007E906                 addi.w  #$18,$38(a6)
ROM:0007E90C                 clr.b   $20(a6)
ROM:0007E910                 clr.b   $21(a6)
ROM:0007E914                 clr.w   $7C(a6)
ROM:0007E918                 lea     (unk_2E1F42).l,a0
ROM:0007E91E                 jsr     ChangeAnimation
ROM:0007E924                 lea     loc_7E92A,a1
ROM:0007E928                 move.l  a1,(a6)
ROM:0007E92A
ROM:0007E92A loc_7E92A:
ROM:0007E92A                 movea.l $C(a6),a0
ROM:0007E92E                 move.w  $22(a0),$22(a6)
ROM:0007E934                 move.w  $24(a0),$24(a6)
ROM:0007E93A                 move.w  $76(a0),d0
ROM:0007E93E                 sub.w   d0,$24(a6)
ROM:0007E942                 jsr     off_80024+2
ROM:0007E946                 move.w  $7C(a6),d0
ROM:0007E94A                 andi.w  #3,d0
ROM:0007E94E                 lea     (off_2E1F7A).l,a0
ROM:0007E954                 asl.w   #2,d0
ROM:0007E956                 move.l  (a0,d0.w),$5C(a6)
ROM:0007E95C                 jsr     Animate
ROM:0007E962                 movea.l $C(a6),a0
ROM:0007E966                 cmpi.b  #1,$21(a0)
ROM:0007E96C                 bne.w   loc_7E976
ROM:0007E970                 lea     loc_7E986,a1
ROM:0007E974                 move.l  a1,(a6)
ROM:0007E976
ROM:0007E976 loc_7E976:
ROM:0007E976                 jsr     sub_7FDE0
ROM:0007E97A                 bcc.w   locret_7E984
ROM:0007E97E                 lea     loc_7FDBC,a1
ROM:0007E982                 move.l  a1,(a6)
ROM:0007E984
ROM:0007E984 locret_7E984:
ROM:0007E984                 rts
ROM:0007E986
ROM:0007E986
ROM:0007E986 loc_7E986:
ROM:0007E986                 lea     (unk_2E1F9C).l,a0
ROM:0007E98C                 jsr     ChangeAnimation
ROM:0007E992                 lea     loc_7E998,a1
ROM:0007E996                 move.l  a1,(a6)
ROM:0007E998
ROM:0007E998 loc_7E998:
ROM:0007E998                 movea.l $C(a6),a0
ROM:0007E99C                 move.w  $22(a0),$22(a6)
ROM:0007E9A2                 move.w  $24(a0),$24(a6)
ROM:0007E9A8                 move.w  $76(a0),d0
ROM:0007E9AC                 sub.w   d0,$24(a6)
ROM:0007E9B0                 jsr     Animate
ROM:0007E9B6                 movea.l $C(a6),a0
ROM:0007E9BA                 cmpi.b  #2,$21(a0)
ROM:0007E9C0                 bne.w   loc_7E9CA
ROM:0007E9C4                 lea     loc_7E9DA,a1
ROM:0007E9C8                 move.l  a1,(a6)
ROM:0007E9CA
ROM:0007E9CA loc_7E9CA:
ROM:0007E9CA                 jsr     sub_7FDE0
ROM:0007E9CE                 bcc.w   locret_7E9D8
ROM:0007E9D2                 lea     loc_7FDBC,a1
ROM:0007E9D6                 move.l  a1,(a6)
ROM:0007E9D8
ROM:0007E9D8 locret_7E9D8:
ROM:0007E9D8                 rts
ROM:0007E9DA
ROM:0007E9DA
ROM:0007E9DA loc_7E9DA:
ROM:0007E9DA                 lea     (unk_2E1FF8).l,a0
ROM:0007E9E0                 jsr     ChangeAnimation
ROM:0007E9E6                 lea     loc_7E9EC,a1
ROM:0007E9EA                 move.l  a1,(a6)
ROM:0007E9EC
ROM:0007E9EC loc_7E9EC:
ROM:0007E9EC                 movea.l $C(a6),a0
ROM:0007E9F0                 move.w  $22(a0),$22(a6)
ROM:0007E9F6                 move.w  $24(a0),$24(a6)
ROM:0007E9FC                 move.w  $76(a0),d0
ROM:0007EA00                 sub.w   d0,$24(a6)
ROM:0007EA04                 jsr     Animate
ROM:0007EA0A                 movea.l $C(a6),a0
ROM:0007EA0E                 cmpi.b  #3,$21(a0)
ROM:0007EA14                 bne.w   loc_7EA1E
ROM:0007EA18                 lea     loc_7EA2E,a1
ROM:0007EA1C                 move.l  a1,(a6)
ROM:0007EA1E
ROM:0007EA1E loc_7EA1E:
ROM:0007EA1E                 jsr     sub_7FDE0
ROM:0007EA22                 bcc.w   locret_7EA2C
ROM:0007EA26                 lea     loc_7FDBC,a1
ROM:0007EA2A                 move.l  a1,(a6)
ROM:0007EA2C
ROM:0007EA2C locret_7EA2C:
ROM:0007EA2C                 rts
ROM:0007EA2E
ROM:0007EA2E
ROM:0007EA2E loc_7EA2E:
ROM:0007EA2E                 lea     (unk_2E202C).l,a0
ROM:0007EA34                 jsr     ChangeAnimation
ROM:0007EA3A                 lea     loc_7EA40,a1
ROM:0007EA3E                 move.l  a1,(a6)
ROM:0007EA40
ROM:0007EA40 loc_7EA40:
ROM:0007EA40                 movea.l $C(a6),a0
ROM:0007EA44                 move.w  $22(a0),$22(a6)
ROM:0007EA4A                 move.w  $24(a0),$24(a6)
ROM:0007EA50                 move.w  $76(a0),d0
ROM:0007EA54                 sub.w   d0,$24(a6)
ROM:0007EA58                 move.w  $78(a6),d0
ROM:0007EA5C                 sub.w   d0,$22(a6)
ROM:0007EA60                 jsr     Animate
ROM:0007EA66                 bcc.w   loc_7EA70
ROM:0007EA6A                 lea     loc_7EA80,a1
ROM:0007EA6E                 move.l  a1,(a6)
ROM:0007EA70
ROM:0007EA70 loc_7EA70:
ROM:0007EA70                 jsr     sub_7FDE0
ROM:0007EA74                 bcc.w   locret_7EA7E
ROM:0007EA78                 lea     loc_7FDBC,a1
ROM:0007EA7C                 move.l  a1,(a6)
ROM:0007EA7E
ROM:0007EA7E locret_7EA7E:
ROM:0007EA7E                 rts
ROM:0007EA80
ROM:0007EA80
ROM:0007EA80 loc_7EA80:
ROM:0007EA80                 move.w  #$C,d1
ROM:0007EA84                 jsr     (sub_236E).l
ROM:0007EA8A                 movea.l $C(a6),a0
ROM:0007EA8E                 move.b  #$FF,$21(a0)
ROM:0007EA94                 subq.w  #4,$24(a6)
ROM:0007EA98                 lea     (off_2DE6E0).l,a0
ROM:0007EA9E                 jsr     ChangeAnimation
ROM:0007EAA4                 lea     loc_7EAAA,a1
ROM:0007EAA8                 move.l  a1,(a6)
ROM:0007EAAA
ROM:0007EAAA loc_7EAAA:
ROM:0007EAAA                 jsr     ObjectRelated
ROM:0007EAB0                 jsr     Animate
ROM:0007EAB6                 bcc.w   locret_7EAC0
ROM:0007EABA                 lea     loc_7FDBC,a1
ROM:0007EABE                 move.l  a1,(a6)
ROM:0007EAC0
ROM:0007EAC0 locret_7EAC0:
ROM:0007EAC0                 rts
ROM:0007EAC0
