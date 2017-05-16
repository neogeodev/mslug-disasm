ROM:0005DC1C InitObjPointers:
ROM:0005DC1C
ROM:0005DC1C                 move.w  #$9C,d0
ROM:0005DC20
ROM:0005DC20 loc_5DC20:
ROM:0005DC20                 move.l  #$FFFFFFFF,(a0,d0.w)
ROM:0005DC28                 subi.w  #4,d0
ROM:0005DC2C                 cmpi.w  #$10,d0
ROM:0005DC30                 bcc.s   loc_5DC20
ROM:0005DC32                 rts
ROM:0005DC32
ROM:0005DC32
ROM:0005DC34
ROM:0005DC34
ROM:0005DC34
ROM:0005DC34
