ROM:0009AE26 ProcBonusTaken?:
ROM:0009AE26
ROM:0009AE26                 move.w  #$1A6,d1
ROM:0009AE2A                 bra.w   loc_9AE42
ROM:0009AE2E
ROM:0009AE2E
ROM:0009AE2E loc_9AE2E:
ROM:0009AE2E                 move.w  #$1A7,d1
ROM:0009AE32                 bra.w   loc_9AE42
ROM:0009AE36
ROM:0009AE36
ROM:0009AE36 loc_9AE36:
ROM:0009AE36                 move.w  #$1A8,d1
ROM:0009AE3A                 bra.w   loc_9AE42
ROM:0009AE3E
ROM:0009AE3E
ROM:0009AE3E loc_9AE3E:
ROM:0009AE3E                 move.w  #$1A9,d1
ROM:0009AE42
ROM:0009AE42 loc_9AE42:
ROM:0009AE42
ROM:0009AE42                 jsr     (sub_236E).l
ROM:0009AE48                 move.w  #2,$70(a6)
ROM:0009AE4E                 move.w  #$C000,d0
ROM:0009AE52                 jsr     sub_28134
ROM:0009AE58                 andi.w  #$FFE3,$38(a6)
ROM:0009AE5E                 ori.w   #0,$38(a6)
ROM:0009AE64                 lea     loc_9AE6A,a1
ROM:0009AE68                 move.l  a1,(a6)
ROM:0009AE6A
ROM:0009AE6A loc_9AE6A:
ROM:0009AE6A                 jsr     ObjectRelated
ROM:0009AE70                 jsr     Animate
ROM:0009AE76                 subq.w  #1,$70(a6)
ROM:0009AE7A                 cmpi.w  #0,$70(a6)
ROM:0009AE80                 bgt.w   loc_9AE8A
ROM:0009AE84                 lea     loc_9AE8E,a1
ROM:0009AE88                 move.l  a1,(a6)
ROM:0009AE8A
ROM:0009AE8A loc_9AE8A:
ROM:0009AE8A                 bra.w   loc_9A76A
ROM:0009AE8E
ROM:0009AE8E
ROM:0009AE8E loc_9AE8E:
ROM:0009AE8E                 move.w  #$180,d1
ROM:0009AE92                 jsr     (sub_236E).l
ROM:0009AE98                 lea     (off_2F674C).l,a0
ROM:0009AE9E                 jsr     ChangeAnimation
ROM:0009AEA4                 lea     loc_9AEAA,a1
ROM:0009AEA8                 move.l  a1,(a6)
ROM:0009AEAA
ROM:0009AEAA loc_9AEAA:
ROM:0009AEAA                 jsr     ObjectRelated
ROM:0009AEB0                 jsr     Animate
ROM:0009AEB6                 bcc.w   loc_9AEC0
ROM:0009AEBA                 jmp     (SetDying).l
ROM:0009AEC0
ROM:0009AEC0
ROM:0009AEC0 loc_9AEC0:
ROM:0009AEC0                 bra.w   loc_9A76A
ROM:0009AEC4
ROM:0009AEC4
ROM:0009AEC4 loc_9AEC4:
ROM:0009AEC4                 clr.b   $9C(a6)
ROM:0009AEC8                 lea     (off_2F6B78).l,a0
ROM:0009AECE                 jsr     ChangeAnimation
ROM:0009AED4                 bra.w   loc_9B05C
ROM:0009AED8
ROM:0009AED8                 clr.b   $9C(a6)
ROM:0009AEDC                 lea     (off_2F6B22).l,a0
ROM:0009AEE2                 jsr     ChangeAnimation
ROM:0009AEE8                 bra.w   loc_9B05C
ROM:0009AEEC
ROM:0009AEEC                 move.b  #1,$9C(a6)
ROM:0009AEF2                 lea     (off_2F6AE0).l,a0
ROM:0009AEF8                 jsr     ChangeAnimation
ROM:0009AEFE                 bra.w   loc_9B05C
ROM:0009AF02
ROM:0009AF02                 clr.b   $9C(a6)
ROM:0009AF06                 lea     (unk_2F68FC).l,a0
ROM:0009AF0C                 jsr     ChangeAnimation
ROM:0009AF12                 bra.w   loc_9B05C
ROM:0009AF16
ROM:0009AF16                 clr.b   $9C(a6)
ROM:0009AF1A                 lea     (off_2F6BCE).l,a0
ROM:0009AF20                 jsr     ChangeAnimation
ROM:0009AF26                 bra.w   loc_9B064
ROM:0009AF2A
ROM:0009AF2A
ROM:0009AF2A loc_9AF2A:
ROM:0009AF2A                 clr.b   $9C(a6)
ROM:0009AF2E                 lea     (off_2F6CCA).l,a0
ROM:0009AF34                 jsr     ChangeAnimation
ROM:0009AF3A                 bra.w   loc_9B064
ROM:0009AF3E
ROM:0009AF3E                 clr.b   $9C(a6)
ROM:0009AF42                 lea     (unk_2F6E4C).l,a0
ROM:0009AF48                 jsr     ChangeAnimation
ROM:0009AF4E                 bra.w   loc_9B064
ROM:0009AF52
ROM:0009AF52                 move.b  #1,$9C(a6)
ROM:0009AF58                 lea     (off_2F7002).l,a0
ROM:0009AF5E                 jsr     ChangeAnimation
ROM:0009AF64                 bra.w   loc_9B05C
ROM:0009AF68
ROM:0009AF68
ROM:0009AF68 loc_9AF68:
ROM:0009AF68                 clr.b   $9C(a6)
ROM:0009AF6C                 lea     (off_2F706C).l,a0
ROM:0009AF72                 jsr     ChangeAnimation
ROM:0009AF78                 bra.w   loc_9B05C
ROM:0009AF7C
ROM:0009AF7C                 clr.b   $9C(a6)
ROM:0009AF80                 lea     (unk_2F70B8).l,a0
ROM:0009AF86                 jsr     ChangeAnimation
ROM:0009AF8C                 bra.w   loc_9B064
ROM:0009AF90
ROM:0009AF90                 clr.b   $9C(a6)
ROM:0009AF94                 lea     (off_2F7186).l,a0
ROM:0009AF9A                 jsr     ChangeAnimation
ROM:0009AFA0                 bra.w   loc_9B05C
ROM:0009AFA4
ROM:0009AFA4                 clr.b   $9C(a6)
ROM:0009AFA8                 lea     (unk_2F7204).l,a0
ROM:0009AFAE                 jsr     ChangeAnimation
ROM:0009AFB4                 bra.w   loc_9B05C
ROM:0009AFB8
ROM:0009AFB8                 clr.b   $9C(a6)
ROM:0009AFBC                 lea     (off_2F7290).l,a0
ROM:0009AFC2                 jsr     ChangeAnimation
ROM:0009AFC8                 bra.w   loc_9B064
ROM:0009AFCC
ROM:0009AFCC                 clr.b   $9C(a6)
ROM:0009AFD0                 lea     (off_2F73B8).l,a0
ROM:0009AFD6                 jsr     ChangeAnimation
ROM:0009AFDC                 bra.w   loc_9B064
ROM:0009AFE0
ROM:0009AFE0                 clr.b   $9C(a6)
ROM:0009AFE4                 lea     (off_2F745E).l,a0
ROM:0009AFEA                 jsr     ChangeAnimation
ROM:0009AFF0                 bra.w   loc_9B064
ROM:0009AFF4
ROM:0009AFF4                 clr.b   $9C(a6)
ROM:0009AFF8                 lea     (off_2F74A0).l,a0
ROM:0009AFFE                 jsr     ChangeAnimation
ROM:0009B004                 bra.w   loc_9B05C
ROM:0009B008
ROM:0009B008                 move.b  #2,$9C(a6)
ROM:0009B00E                 lea     (off_2F75F2).l,a0
ROM:0009B014                 jsr     ChangeAnimation
ROM:0009B01A                 bra.w   loc_9B064
ROM:0009B01E
ROM:0009B01E                 move.b  #1,$9C(a6)
ROM:0009B024                 lea     (off_2F76E8).l,a0
ROM:0009B02A                 jsr     ChangeAnimation
ROM:0009B030                 bra.w   loc_9B05C
ROM:0009B034
ROM:0009B034                 clr.b   $9C(a6)
ROM:0009B038                 lea     (off_2F755A).l,a0
ROM:0009B03E                 jsr     ChangeAnimation
ROM:0009B044                 bra.w   loc_9B05C
ROM:0009B048
ROM:0009B048                 clr.b   $9C(a6)
ROM:0009B04C                 lea     (off_2F75B0).l,a0
ROM:0009B052                 jsr     ChangeAnimation
ROM:0009B058                 bra.w   loc_9B064
ROM:0009B05C
ROM:0009B05C
ROM:0009B05C loc_9B05C:
ROM:0009B05C
ROM:0009B05C                 move.w  #$1AC,d1
ROM:0009B060                 bra.w   loc_9B068
ROM:0009B064
ROM:0009B064
ROM:0009B064 loc_9B064:
ROM:0009B064
ROM:0009B064                 move.w  #$1C6,d1
ROM:0009B068
ROM:0009B068 loc_9B068:
ROM:0009B068                 cmpi.b  #$FF,$9A(a6)
ROM:0009B06E                 beq.w   loc_9B078
ROM:0009B072                 eori.b  #1,$3A(a6)
ROM:0009B078
ROM:0009B078 loc_9B078:
ROM:0009B078                 jsr     (sub_236E).l
ROM:0009B07E                 move.b  #8,$45(a6)
ROM:0009B084                 move.w  #$8000,d0
ROM:0009B088                 jsr     sub_28134
ROM:0009B08E                 andi.w  #$FFE3,$38(a6)
ROM:0009B094                 ori.w   #0,$38(a6)
ROM:0009B09A                 jsr     loc_9BB3C
ROM:0009B09E                 move.w  d0,$70(a6)
ROM:0009B0A2                 lea     ProcScoreBonus,a1
ROM:0009B0A6                 move.l  a1,(a6)
ROM:0009B0A8
