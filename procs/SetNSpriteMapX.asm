ROM:0005B962 SetNSpriteMapX:
ROM:0005B962                 move.w  #$40,d7
ROM:0005B966                 add.w   d1,d7
ROM:0005B968                 move.w  d7,d5
ROM:0005B96A                 addq.w  #1,d5
ROM:0005B96C                 swap    d5
ROM:0005B96E                 move.w  4(a3),d5
ROM:0005B972                 swap    d7
ROM:0005B974                 moveq   #2,d4
ROM:0005B976                 swap    d4
ROM:0005B978                 movea.l (a3),a6
ROM:0005B97A                 move.w  $A(a3),d6
ROM:0005B97E                 subq.b  #1,d6
ROM:0005B980                 andi.w  #$1F,d6
ROM:0005B984                 add.w   d6,d6
ROM:0005B986                 add.w   d6,d6
ROM:0005B988                 jmp     loc_5B98C(pc,d6.w)
ROM:0005B98C
ROM:0005B98C
ROM:0005B98C loc_5B98C:
ROM:0005B98C                 bra.w   loc_5BB3E
ROM:0005B990
ROM:0005B990                 bra.w   loc_5BB34
ROM:0005B994
ROM:0005B994                 bra.w   loc_5BB2A
ROM:0005B998
ROM:0005B998                 bra.w   loc_5BB20
ROM:0005B99C
ROM:0005B99C                 bra.w   loc_5BB16
ROM:0005B9A0
ROM:0005B9A0                 bra.w   loc_5BB0C
ROM:0005B9A4
ROM:0005B9A4                 bra.w   loc_5BB02
ROM:0005B9A8
ROM:0005B9A8                 bra.w   loc_5BAF8
ROM:0005B9AC
ROM:0005B9AC                 bra.w   loc_5BAEE
ROM:0005B9B0
ROM:0005B9B0                 bra.w   loc_5BAE4
ROM:0005B9B4
ROM:0005B9B4                 bra.w   loc_5BADA
ROM:0005B9B8
ROM:0005B9B8                 bra.w   loc_5BAD0
ROM:0005B9BC
ROM:0005B9BC                 bra.w   loc_5BAC6
ROM:0005B9C0
ROM:0005B9C0                 bra.w   loc_5BABC
ROM:0005B9C4
ROM:0005B9C4                 bra.w   loc_5BAB2
ROM:0005B9C8
ROM:0005B9C8                 bra.w   loc_5BAA8
ROM:0005B9CC
ROM:0005B9CC                 bra.w   loc_5BA9E
ROM:0005B9D0
ROM:0005B9D0                 bra.w   loc_5BA94
ROM:0005B9D4
ROM:0005B9D4                 bra.w   loc_5BA8A
ROM:0005B9D8
ROM:0005B9D8                 bra.w   loc_5BA80
ROM:0005B9DC
ROM:0005B9DC                 bra.w   loc_5BA76
ROM:0005B9E0
ROM:0005B9E0                 bra.w   loc_5BA6C
ROM:0005B9E4
ROM:0005B9E4                 bra.w   loc_5BA62
ROM:0005B9E8
ROM:0005B9E8                 bra.w   loc_5BA58
ROM:0005B9EC
ROM:0005B9EC                 bra.w   loc_5BA4E
ROM:0005B9F0
ROM:0005B9F0                 bra.w   loc_5BA44
ROM:0005B9F4
ROM:0005B9F4                 bra.w   loc_5BA3A
ROM:0005B9F8
ROM:0005B9F8                 bra.w   loc_5BA30
ROM:0005B9FC
ROM:0005B9FC                 bra.w   loc_5BA26
ROM:0005BA00
ROM:0005BA00                 bra.w   loc_5BA1C
ROM:0005BA04
ROM:0005BA04                 bra.w   loc_5BA12
ROM:0005BA08
ROM:0005BA08                 move.w  (a6)+,d7
ROM:0005BA0A                 move.l  d7,(a4)
ROM:0005BA0C                 add.l   d4,d7
ROM:0005BA0E                 move.l  d5,(a4)
ROM:0005BA10                 add.l   d4,d5
ROM:0005BA12
ROM:0005BA12 loc_5BA12:
ROM:0005BA12                 move.w  (a6)+,d7
ROM:0005BA14                 move.l  d7,(a4)
ROM:0005BA16                 add.l   d4,d7
ROM:0005BA18                 move.l  d5,(a4)
ROM:0005BA1A                 add.l   d4,d5
ROM:0005BA1C
ROM:0005BA1C loc_5BA1C:
ROM:0005BA1C                 move.w  (a6)+,d7
ROM:0005BA1E                 move.l  d7,(a4)
ROM:0005BA20                 add.l   d4,d7
ROM:0005BA22                 move.l  d5,(a4)
ROM:0005BA24                 add.l   d4,d5
ROM:0005BA26
ROM:0005BA26 loc_5BA26:
ROM:0005BA26                 move.w  (a6)+,d7
ROM:0005BA28                 move.l  d7,(a4)
ROM:0005BA2A                 add.l   d4,d7
ROM:0005BA2C                 move.l  d5,(a4)
ROM:0005BA2E                 add.l   d4,d5
ROM:0005BA30
ROM:0005BA30 loc_5BA30:
ROM:0005BA30                 move.w  (a6)+,d7
ROM:0005BA32                 move.l  d7,(a4)
ROM:0005BA34                 add.l   d4,d7
ROM:0005BA36                 move.l  d5,(a4)
ROM:0005BA38                 add.l   d4,d5
ROM:0005BA3A
ROM:0005BA3A loc_5BA3A:
ROM:0005BA3A                 move.w  (a6)+,d7
ROM:0005BA3C                 move.l  d7,(a4)
ROM:0005BA3E                 add.l   d4,d7
ROM:0005BA40                 move.l  d5,(a4)
ROM:0005BA42                 add.l   d4,d5
ROM:0005BA44
ROM:0005BA44 loc_5BA44:
ROM:0005BA44                 move.w  (a6)+,d7
ROM:0005BA46                 move.l  d7,(a4)
ROM:0005BA48                 add.l   d4,d7
ROM:0005BA4A                 move.l  d5,(a4)
ROM:0005BA4C                 add.l   d4,d5
ROM:0005BA4E
ROM:0005BA4E loc_5BA4E:
ROM:0005BA4E                 move.w  (a6)+,d7
ROM:0005BA50                 move.l  d7,(a4)
ROM:0005BA52                 add.l   d4,d7
ROM:0005BA54                 move.l  d5,(a4)
ROM:0005BA56                 add.l   d4,d5
ROM:0005BA58
ROM:0005BA58 loc_5BA58:
ROM:0005BA58                 move.w  (a6)+,d7
ROM:0005BA5A                 move.l  d7,(a4)
ROM:0005BA5C                 add.l   d4,d7
ROM:0005BA5E                 move.l  d5,(a4)
ROM:0005BA60                 add.l   d4,d5
ROM:0005BA62
ROM:0005BA62 loc_5BA62:
ROM:0005BA62                 move.w  (a6)+,d7
ROM:0005BA64                 move.l  d7,(a4)
ROM:0005BA66                 add.l   d4,d7
ROM:0005BA68                 move.l  d5,(a4)
ROM:0005BA6A                 add.l   d4,d5
ROM:0005BA6C
ROM:0005BA6C loc_5BA6C:
ROM:0005BA6C                 move.w  (a6)+,d7
ROM:0005BA6E                 move.l  d7,(a4)
ROM:0005BA70                 add.l   d4,d7
ROM:0005BA72                 move.l  d5,(a4)
ROM:0005BA74                 add.l   d4,d5
ROM:0005BA76
ROM:0005BA76 loc_5BA76:
ROM:0005BA76                 move.w  (a6)+,d7
ROM:0005BA78                 move.l  d7,(a4)
ROM:0005BA7A                 add.l   d4,d7
ROM:0005BA7C                 move.l  d5,(a4)
ROM:0005BA7E                 add.l   d4,d5
ROM:0005BA80
ROM:0005BA80 loc_5BA80:
ROM:0005BA80                 move.w  (a6)+,d7
ROM:0005BA82                 move.l  d7,(a4)
ROM:0005BA84                 add.l   d4,d7
ROM:0005BA86                 move.l  d5,(a4)
ROM:0005BA88                 add.l   d4,d5
ROM:0005BA8A
ROM:0005BA8A loc_5BA8A:
ROM:0005BA8A                 move.w  (a6)+,d7
ROM:0005BA8C                 move.l  d7,(a4)
ROM:0005BA8E                 add.l   d4,d7
ROM:0005BA90                 move.l  d5,(a4)
ROM:0005BA92                 add.l   d4,d5
ROM:0005BA94
ROM:0005BA94 loc_5BA94:
ROM:0005BA94                 move.w  (a6)+,d7
ROM:0005BA96                 move.l  d7,(a4)
ROM:0005BA98                 add.l   d4,d7
ROM:0005BA9A                 move.l  d5,(a4)
ROM:0005BA9C                 add.l   d4,d5
ROM:0005BA9E
ROM:0005BA9E loc_5BA9E:
ROM:0005BA9E                 move.w  (a6)+,d7
ROM:0005BAA0                 move.l  d7,(a4)
ROM:0005BAA2                 add.l   d4,d7
ROM:0005BAA4                 move.l  d5,(a4)
ROM:0005BAA6                 add.l   d4,d5
ROM:0005BAA8
ROM:0005BAA8 loc_5BAA8:
ROM:0005BAA8                 move.w  (a6)+,d7
ROM:0005BAAA                 move.l  d7,(a4)
ROM:0005BAAC                 add.l   d4,d7
ROM:0005BAAE                 move.l  d5,(a4)
ROM:0005BAB0                 add.l   d4,d5
ROM:0005BAB2
ROM:0005BAB2 loc_5BAB2:
ROM:0005BAB2                 move.w  (a6)+,d7
ROM:0005BAB4                 move.l  d7,(a4)
ROM:0005BAB6                 add.l   d4,d7
ROM:0005BAB8                 move.l  d5,(a4)
ROM:0005BABA                 add.l   d4,d5
ROM:0005BABC
ROM:0005BABC loc_5BABC:
ROM:0005BABC                 move.w  (a6)+,d7
ROM:0005BABE                 move.l  d7,(a4)
ROM:0005BAC0                 add.l   d4,d7
ROM:0005BAC2                 move.l  d5,(a4)
ROM:0005BAC4                 add.l   d4,d5
ROM:0005BAC6
ROM:0005BAC6 loc_5BAC6:
ROM:0005BAC6                 move.w  (a6)+,d7
ROM:0005BAC8                 move.l  d7,(a4)
ROM:0005BACA                 add.l   d4,d7
ROM:0005BACC                 move.l  d5,(a4)
ROM:0005BACE                 add.l   d4,d5
ROM:0005BAD0
ROM:0005BAD0 loc_5BAD0:
ROM:0005BAD0                 move.w  (a6)+,d7
ROM:0005BAD2                 move.l  d7,(a4)
ROM:0005BAD4                 add.l   d4,d7
ROM:0005BAD6                 move.l  d5,(a4)
ROM:0005BAD8                 add.l   d4,d5
ROM:0005BADA
ROM:0005BADA loc_5BADA:
ROM:0005BADA                 move.w  (a6)+,d7
ROM:0005BADC                 move.l  d7,(a4)
ROM:0005BADE                 add.l   d4,d7
ROM:0005BAE0                 move.l  d5,(a4)
ROM:0005BAE2                 add.l   d4,d5
ROM:0005BAE4
ROM:0005BAE4 loc_5BAE4:
ROM:0005BAE4                 move.w  (a6)+,d7
ROM:0005BAE6                 move.l  d7,(a4)
ROM:0005BAE8                 add.l   d4,d7
ROM:0005BAEA                 move.l  d5,(a4)
ROM:0005BAEC                 add.l   d4,d5
ROM:0005BAEE
ROM:0005BAEE loc_5BAEE:
ROM:0005BAEE                 move.w  (a6)+,d7
ROM:0005BAF0                 move.l  d7,(a4)
ROM:0005BAF2                 add.l   d4,d7
ROM:0005BAF4                 move.l  d5,(a4)
ROM:0005BAF6                 add.l   d4,d5
ROM:0005BAF8
ROM:0005BAF8 loc_5BAF8:
ROM:0005BAF8                 move.w  (a6)+,d7
ROM:0005BAFA                 move.l  d7,(a4)
ROM:0005BAFC                 add.l   d4,d7
ROM:0005BAFE                 move.l  d5,(a4)
ROM:0005BB00                 add.l   d4,d5
ROM:0005BB02
ROM:0005BB02 loc_5BB02:
ROM:0005BB02                 move.w  (a6)+,d7
ROM:0005BB04                 move.l  d7,(a4)
ROM:0005BB06                 add.l   d4,d7
ROM:0005BB08                 move.l  d5,(a4)
ROM:0005BB0A                 add.l   d4,d5
ROM:0005BB0C
ROM:0005BB0C loc_5BB0C:
ROM:0005BB0C                 move.w  (a6)+,d7
ROM:0005BB0E                 move.l  d7,(a4)
ROM:0005BB10                 add.l   d4,d7
ROM:0005BB12                 move.l  d5,(a4)
ROM:0005BB14                 add.l   d4,d5
ROM:0005BB16
ROM:0005BB16 loc_5BB16:
ROM:0005BB16                 move.w  (a6)+,d7
ROM:0005BB18                 move.l  d7,(a4)
ROM:0005BB1A                 add.l   d4,d7
ROM:0005BB1C                 move.l  d5,(a4)
ROM:0005BB1E                 add.l   d4,d5
ROM:0005BB20
ROM:0005BB20 loc_5BB20:
ROM:0005BB20                 move.w  (a6)+,d7
ROM:0005BB22                 move.l  d7,(a4)
ROM:0005BB24                 add.l   d4,d7
ROM:0005BB26                 move.l  d5,(a4)
ROM:0005BB28                 add.l   d4,d5
ROM:0005BB2A
ROM:0005BB2A loc_5BB2A:
ROM:0005BB2A                 move.w  (a6)+,d7
ROM:0005BB2C                 move.l  d7,(a4)
ROM:0005BB2E                 add.l   d4,d7
ROM:0005BB30                 move.l  d5,(a4)
ROM:0005BB32                 add.l   d4,d5
ROM:0005BB34
ROM:0005BB34 loc_5BB34:
ROM:0005BB34                 move.w  (a6)+,d7
ROM:0005BB36                 move.l  d7,(a4)
ROM:0005BB38                 add.l   d4,d7
ROM:0005BB3A                 move.l  d5,(a4)
ROM:0005BB3C                 add.l   d4,d5
ROM:0005BB3E
ROM:0005BB3E loc_5BB3E:
ROM:0005BB3E                 move.w  (a6)+,d7
ROM:0005BB40                 move.l  d7,(a4)
ROM:0005BB42                 add.l   d4,d7
ROM:0005BB44                 move.l  d5,(a4)
ROM:0005BB46                 add.l   d4,d5
ROM:0005BB48                 clr.w   d7
ROM:0005BB4A                 moveq   #1,d4
ROM:0005BB4C                 swap    d4
ROM:0005BB4E                 add.w   d6,d6
ROM:0005BB50                 jmp     loc_5BB54(pc,d6.w)
ROM:0005BB54
ROM:0005BB54
ROM:0005BB54 loc_5BB54:
ROM:0005BB54                 move.l  d7,(a4)
ROM:0005BB56                 add.l   d4,d7
ROM:0005BB58                 move.l  d7,(a4)
ROM:0005BB5A                 add.l   d4,d7
ROM:0005BB5C                 move.l  d7,(a4)
ROM:0005BB5E                 add.l   d4,d7
ROM:0005BB60                 move.l  d7,(a4)
ROM:0005BB62                 add.l   d4,d7
ROM:0005BB64                 move.l  d7,(a4)
ROM:0005BB66                 add.l   d4,d7
ROM:0005BB68                 move.l  d7,(a4)
ROM:0005BB6A                 add.l   d4,d7
ROM:0005BB6C                 move.l  d7,(a4)
ROM:0005BB6E                 add.l   d4,d7
ROM:0005BB70                 move.l  d7,(a4)
ROM:0005BB72                 add.l   d4,d7
ROM:0005BB74                 move.l  d7,(a4)
ROM:0005BB76                 add.l   d4,d7
ROM:0005BB78                 move.l  d7,(a4)
ROM:0005BB7A                 add.l   d4,d7
ROM:0005BB7C                 move.l  d7,(a4)
ROM:0005BB7E                 add.l   d4,d7
ROM:0005BB80                 move.l  d7,(a4)
ROM:0005BB82                 add.l   d4,d7
ROM:0005BB84                 move.l  d7,(a4)
ROM:0005BB86                 add.l   d4,d7
ROM:0005BB88                 move.l  d7,(a4)
ROM:0005BB8A                 add.l   d4,d7
ROM:0005BB8C                 move.l  d7,(a4)
ROM:0005BB8E                 add.l   d4,d7
ROM:0005BB90                 move.l  d7,(a4)
ROM:0005BB92                 add.l   d4,d7
ROM:0005BB94                 move.l  d7,(a4)
ROM:0005BB96                 add.l   d4,d7
ROM:0005BB98                 move.l  d7,(a4)
ROM:0005BB9A                 add.l   d4,d7
ROM:0005BB9C                 move.l  d7,(a4)
ROM:0005BB9E                 add.l   d4,d7
ROM:0005BBA0                 move.l  d7,(a4)
ROM:0005BBA2                 add.l   d4,d7
ROM:0005BBA4                 move.l  d7,(a4)
ROM:0005BBA6                 add.l   d4,d7
ROM:0005BBA8                 move.l  d7,(a4)
ROM:0005BBAA                 add.l   d4,d7
ROM:0005BBAC                 move.l  d7,(a4)
ROM:0005BBAE                 add.l   d4,d7
ROM:0005BBB0                 move.l  d7,(a4)
ROM:0005BBB2                 add.l   d4,d7
ROM:0005BBB4                 move.l  d7,(a4)
ROM:0005BBB6                 add.l   d4,d7
ROM:0005BBB8                 move.l  d7,(a4)
ROM:0005BBBA                 add.l   d4,d7
ROM:0005BBBC                 move.l  d7,(a4)
ROM:0005BBBE                 add.l   d4,d7
ROM:0005BBC0                 move.l  d7,(a4)
ROM:0005BBC2                 add.l   d4,d7
ROM:0005BBC4                 move.l  d7,(a4)
ROM:0005BBC6                 add.l   d4,d7
ROM:0005BBC8                 move.l  d7,(a4)
ROM:0005BBCA                 add.l   d4,d7
ROM:0005BBCC                 move.l  d7,(a4)
ROM:0005BBCE                 add.l   d4,d7
ROM:0005BBD0                 move.l  d7,(a4)
ROM:0005BBD2                 add.l   d4,d7
ROM:0005BBD4                 move.l  d7,(a4)
ROM:0005BBD6                 add.l   d4,d7
ROM:0005BBD8                 move.l  d7,(a4)
ROM:0005BBDA                 add.l   d4,d7
ROM:0005BBDC                 move.l  d7,(a4)
ROM:0005BBDE                 add.l   d4,d7
ROM:0005BBE0                 move.l  d7,(a4)
ROM:0005BBE2                 add.l   d4,d7
ROM:0005BBE4                 move.l  d7,(a4)
ROM:0005BBE6                 add.l   d4,d7
ROM:0005BBE8                 move.l  d7,(a4)
ROM:0005BBEA                 add.l   d4,d7
ROM:0005BBEC                 move.l  d7,(a4)
ROM:0005BBEE                 add.l   d4,d7
ROM:0005BBF0                 move.l  d7,(a4)
ROM:0005BBF2                 add.l   d4,d7
ROM:0005BBF4                 move.l  d7,(a4)
ROM:0005BBF6                 add.l   d4,d7
ROM:0005BBF8                 move.l  d7,(a4)
ROM:0005BBFA                 add.l   d4,d7
ROM:0005BBFC                 move.l  d7,(a4)
ROM:0005BBFE                 add.l   d4,d7
ROM:0005BC00                 move.l  d7,(a4)
ROM:0005BC02                 add.l   d4,d7
ROM:0005BC04                 move.l  d7,(a4)
ROM:0005BC06                 add.l   d4,d7
ROM:0005BC08                 move.l  d7,(a4)
ROM:0005BC0A                 add.l   d4,d7
ROM:0005BC0C                 move.l  d7,(a4)
ROM:0005BC0E                 add.l   d4,d7
ROM:0005BC10                 move.l  d7,(a4)
ROM:0005BC12                 add.l   d4,d7
ROM:0005BC14                 move.l  d7,(a4)
ROM:0005BC16                 add.l   d4,d7
ROM:0005BC18                 move.l  d7,(a4)
ROM:0005BC1A                 add.l   d4,d7
ROM:0005BC1C                 move.l  d7,(a4)
ROM:0005BC1E                 add.l   d4,d7
ROM:0005BC20                 move.l  d7,(a4)
ROM:0005BC22                 add.l   d4,d7
ROM:0005BC24                 move.l  d7,(a4)
ROM:0005BC26                 add.l   d4,d7
ROM:0005BC28                 move.l  d7,(a4)
ROM:0005BC2A                 add.l   d4,d7
ROM:0005BC2C                 move.l  d7,(a4)
ROM:0005BC2E                 add.l   d4,d7
ROM:0005BC30                 move.l  d7,(a4)
ROM:0005BC32                 add.l   d4,d7
ROM:0005BC34                 move.l  d7,(a4)
ROM:0005BC36                 add.l   d4,d7
ROM:0005BC38                 move.l  d7,(a4)
ROM:0005BC3A                 add.l   d4,d7
ROM:0005BC3C                 move.l  d7,(a4)
ROM:0005BC3E                 add.l   d4,d7
ROM:0005BC40                 move.l  d7,(a4)
ROM:0005BC42                 add.l   d4,d7
ROM:0005BC44                 move.l  d7,(a4)
ROM:0005BC46                 add.l   d4,d7
ROM:0005BC48                 move.l  d7,(a4)
ROM:0005BC4A                 add.l   d4,d7
ROM:0005BC4C                 move.w  #$8401,d6
ROM:0005BC50                 add.w   d0,d6
ROM:0005BC52                 swap    d6
ROM:0005BC54                 move.w  $A(a3),d6
ROM:0005BC58                 move.l  #$2000000,d5
ROM:0005BC5E                 move.l  d6,(a4)
ROM:0005BC60                 sub.l   d5,d6
ROM:0005BC62                 sub.l   d5,d6
ROM:0005BC64                 move.w  6(a3),d6
ROM:0005BC68                 move.l  d6,(a4)
ROM:0005BC6A                 rts
ROM:0005BC6C
ROM:0005BC6C
ROM:0005BC6C loc_5BC6C:
ROM:0005BC6C                 move.w  #$40,d7
ROM:0005BC70                 add.w   d1,d7
ROM:0005BC72                 move.w  d7,d5
ROM:0005BC74                 addq.w  #1,d5
ROM:0005BC76                 swap    d5
ROM:0005BC78                 move.w  4(a3),d5
ROM:0005BC7C                 swap    d7
ROM:0005BC7E                 moveq   #2,d4
ROM:0005BC80                 swap    d4
ROM:0005BC82                 movea.l (a3),a6
ROM:0005BC84                 move.w  $A(a3),d6
ROM:0005BC88                 subq.b  #1,d6
ROM:0005BC8A                 andi.w  #$1F,d6
ROM:0005BC8E                 add.w   d6,d6
ROM:0005BC90                 add.w   d6,d6
ROM:0005BC92                 jmp     loc_5BC96(pc,d6.w)
ROM:0005BC96
ROM:0005BC96
ROM:0005BC96 loc_5BC96:
ROM:0005BC96                 bra.w   loc_5BE48
ROM:0005BC9A
ROM:0005BC9A                 bra.w   loc_5BE3E
ROM:0005BC9E
ROM:0005BC9E                 bra.w   loc_5BE34
ROM:0005BCA2
ROM:0005BCA2                 bra.w   loc_5BE2A
ROM:0005BCA6
ROM:0005BCA6                 bra.w   loc_5BE20
ROM:0005BCAA
ROM:0005BCAA                 bra.w   loc_5BE16
ROM:0005BCAE
ROM:0005BCAE                 bra.w   loc_5BE0C
ROM:0005BCB2
ROM:0005BCB2                 bra.w   loc_5BE02
ROM:0005BCB6
ROM:0005BCB6                 bra.w   loc_5BDF8
ROM:0005BCBA
ROM:0005BCBA                 bra.w   loc_5BDEE
ROM:0005BCBE
ROM:0005BCBE                 bra.w   loc_5BDE4
ROM:0005BCC2
ROM:0005BCC2                 bra.w   loc_5BDDA
ROM:0005BCC6
ROM:0005BCC6                 bra.w   loc_5BDD0
ROM:0005BCCA
ROM:0005BCCA                 bra.w   loc_5BDC6
ROM:0005BCCE
ROM:0005BCCE                 bra.w   loc_5BDBC
ROM:0005BCD2
ROM:0005BCD2                 bra.w   loc_5BDB2
ROM:0005BCD6
ROM:0005BCD6                 bra.w   loc_5BDA8
ROM:0005BCDA
ROM:0005BCDA                 bra.w   loc_5BD9E
ROM:0005BCDE
ROM:0005BCDE                 bra.w   loc_5BD94
ROM:0005BCE2
ROM:0005BCE2                 bra.w   loc_5BD8A
ROM:0005BCE6
ROM:0005BCE6                 bra.w   loc_5BD80
ROM:0005BCEA
ROM:0005BCEA                 bra.w   loc_5BD76
ROM:0005BCEE
ROM:0005BCEE                 bra.w   loc_5BD6C
ROM:0005BCF2
ROM:0005BCF2                 bra.w   loc_5BD62
ROM:0005BCF6
ROM:0005BCF6                 bra.w   loc_5BD58
ROM:0005BCFA
ROM:0005BCFA                 bra.w   loc_5BD4E
ROM:0005BCFE
ROM:0005BCFE                 bra.w   loc_5BD44
ROM:0005BD02
ROM:0005BD02                 bra.w   loc_5BD3A
ROM:0005BD06
ROM:0005BD06                 bra.w   loc_5BD30
ROM:0005BD0A
ROM:0005BD0A                 bra.w   loc_5BD26
ROM:0005BD0E
ROM:0005BD0E                 bra.w   loc_5BD1C
ROM:0005BD12
ROM:0005BD12                 move.w  -(a6),d7
ROM:0005BD14                 move.l  d7,(a4)
ROM:0005BD16                 add.l   d4,d7
ROM:0005BD18                 move.l  d5,(a4)
ROM:0005BD1A                 add.l   d4,d5
ROM:0005BD1C
ROM:0005BD1C loc_5BD1C:
ROM:0005BD1C                 move.w  -(a6),d7
ROM:0005BD1E                 move.l  d7,(a4)
ROM:0005BD20                 add.l   d4,d7
ROM:0005BD22                 move.l  d5,(a4)
ROM:0005BD24                 add.l   d4,d5
ROM:0005BD26
ROM:0005BD26 loc_5BD26:
ROM:0005BD26                 move.w  -(a6),d7
ROM:0005BD28                 move.l  d7,(a4)
ROM:0005BD2A                 add.l   d4,d7
ROM:0005BD2C                 move.l  d5,(a4)
ROM:0005BD2E                 add.l   d4,d5
ROM:0005BD30
ROM:0005BD30 loc_5BD30:
ROM:0005BD30                 move.w  -(a6),d7
ROM:0005BD32                 move.l  d7,(a4)
ROM:0005BD34                 add.l   d4,d7
ROM:0005BD36                 move.l  d5,(a4)
ROM:0005BD38                 add.l   d4,d5
ROM:0005BD3A
ROM:0005BD3A loc_5BD3A:
ROM:0005BD3A                 move.w  -(a6),d7
ROM:0005BD3C                 move.l  d7,(a4)
ROM:0005BD3E                 add.l   d4,d7
ROM:0005BD40                 move.l  d5,(a4)
ROM:0005BD42                 add.l   d4,d5
ROM:0005BD44
ROM:0005BD44 loc_5BD44:
ROM:0005BD44                 move.w  -(a6),d7
ROM:0005BD46                 move.l  d7,(a4)
ROM:0005BD48                 add.l   d4,d7
ROM:0005BD4A                 move.l  d5,(a4)
ROM:0005BD4C                 add.l   d4,d5
ROM:0005BD4E
ROM:0005BD4E loc_5BD4E:
ROM:0005BD4E                 move.w  -(a6),d7
ROM:0005BD50                 move.l  d7,(a4)
ROM:0005BD52                 add.l   d4,d7
ROM:0005BD54                 move.l  d5,(a4)
ROM:0005BD56                 add.l   d4,d5
ROM:0005BD58
ROM:0005BD58 loc_5BD58:
ROM:0005BD58                 move.w  -(a6),d7
ROM:0005BD5A                 move.l  d7,(a4)
ROM:0005BD5C                 add.l   d4,d7
ROM:0005BD5E                 move.l  d5,(a4)
ROM:0005BD60                 add.l   d4,d5
ROM:0005BD62
ROM:0005BD62 loc_5BD62:
ROM:0005BD62                 move.w  -(a6),d7
ROM:0005BD64                 move.l  d7,(a4)
ROM:0005BD66                 add.l   d4,d7
ROM:0005BD68                 move.l  d5,(a4)
ROM:0005BD6A                 add.l   d4,d5
ROM:0005BD6C
ROM:0005BD6C loc_5BD6C:
ROM:0005BD6C                 move.w  -(a6),d7
ROM:0005BD6E                 move.l  d7,(a4)
ROM:0005BD70                 add.l   d4,d7
ROM:0005BD72                 move.l  d5,(a4)
ROM:0005BD74                 add.l   d4,d5
ROM:0005BD76
ROM:0005BD76 loc_5BD76:
ROM:0005BD76                 move.w  -(a6),d7
ROM:0005BD78                 move.l  d7,(a4)
ROM:0005BD7A                 add.l   d4,d7
ROM:0005BD7C                 move.l  d5,(a4)
ROM:0005BD7E                 add.l   d4,d5
ROM:0005BD80
ROM:0005BD80 loc_5BD80:
ROM:0005BD80                 move.w  -(a6),d7
ROM:0005BD82                 move.l  d7,(a4)
ROM:0005BD84                 add.l   d4,d7
ROM:0005BD86                 move.l  d5,(a4)
ROM:0005BD88                 add.l   d4,d5
ROM:0005BD8A
ROM:0005BD8A loc_5BD8A:
ROM:0005BD8A                 move.w  -(a6),d7
ROM:0005BD8C                 move.l  d7,(a4)
ROM:0005BD8E                 add.l   d4,d7
ROM:0005BD90                 move.l  d5,(a4)
ROM:0005BD92                 add.l   d4,d5
ROM:0005BD94
ROM:0005BD94 loc_5BD94:
ROM:0005BD94                 move.w  -(a6),d7
ROM:0005BD96                 move.l  d7,(a4)
ROM:0005BD98                 add.l   d4,d7
ROM:0005BD9A                 move.l  d5,(a4)
ROM:0005BD9C                 add.l   d4,d5
ROM:0005BD9E
ROM:0005BD9E loc_5BD9E:
ROM:0005BD9E                 move.w  -(a6),d7
ROM:0005BDA0                 move.l  d7,(a4)
ROM:0005BDA2                 add.l   d4,d7
ROM:0005BDA4                 move.l  d5,(a4)
ROM:0005BDA6                 add.l   d4,d5
ROM:0005BDA8
ROM:0005BDA8 loc_5BDA8:
ROM:0005BDA8                 move.w  -(a6),d7
ROM:0005BDAA                 move.l  d7,(a4)
ROM:0005BDAC                 add.l   d4,d7
ROM:0005BDAE                 move.l  d5,(a4)
ROM:0005BDB0                 add.l   d4,d5
ROM:0005BDB2
ROM:0005BDB2 loc_5BDB2:
ROM:0005BDB2                 move.w  -(a6),d7
ROM:0005BDB4                 move.l  d7,(a4)
ROM:0005BDB6                 add.l   d4,d7
ROM:0005BDB8                 move.l  d5,(a4)
ROM:0005BDBA                 add.l   d4,d5
ROM:0005BDBC
ROM:0005BDBC loc_5BDBC:
ROM:0005BDBC                 move.w  -(a6),d7
ROM:0005BDBE                 move.l  d7,(a4)
ROM:0005BDC0                 add.l   d4,d7
ROM:0005BDC2                 move.l  d5,(a4)
ROM:0005BDC4                 add.l   d4,d5
ROM:0005BDC6
ROM:0005BDC6 loc_5BDC6:
ROM:0005BDC6                 move.w  -(a6),d7
ROM:0005BDC8                 move.l  d7,(a4)
ROM:0005BDCA                 add.l   d4,d7
ROM:0005BDCC                 move.l  d5,(a4)
ROM:0005BDCE                 add.l   d4,d5
ROM:0005BDD0
ROM:0005BDD0 loc_5BDD0:
ROM:0005BDD0                 move.w  -(a6),d7
ROM:0005BDD2                 move.l  d7,(a4)
ROM:0005BDD4                 add.l   d4,d7
ROM:0005BDD6                 move.l  d5,(a4)
ROM:0005BDD8                 add.l   d4,d5
ROM:0005BDDA
ROM:0005BDDA loc_5BDDA:
ROM:0005BDDA                 move.w  -(a6),d7
ROM:0005BDDC                 move.l  d7,(a4)
ROM:0005BDDE                 add.l   d4,d7
ROM:0005BDE0                 move.l  d5,(a4)
ROM:0005BDE2                 add.l   d4,d5
ROM:0005BDE4
ROM:0005BDE4 loc_5BDE4:
ROM:0005BDE4                 move.w  -(a6),d7
ROM:0005BDE6                 move.l  d7,(a4)
ROM:0005BDE8                 add.l   d4,d7
ROM:0005BDEA                 move.l  d5,(a4)
ROM:0005BDEC                 add.l   d4,d5
ROM:0005BDEE
ROM:0005BDEE loc_5BDEE:
ROM:0005BDEE                 move.w  -(a6),d7
ROM:0005BDF0                 move.l  d7,(a4)
ROM:0005BDF2                 add.l   d4,d7
ROM:0005BDF4                 move.l  d5,(a4)
ROM:0005BDF6                 add.l   d4,d5
ROM:0005BDF8
ROM:0005BDF8 loc_5BDF8:
ROM:0005BDF8                 move.w  -(a6),d7
ROM:0005BDFA                 move.l  d7,(a4)
ROM:0005BDFC                 add.l   d4,d7
ROM:0005BDFE                 move.l  d5,(a4)
ROM:0005BE00                 add.l   d4,d5
ROM:0005BE02
ROM:0005BE02 loc_5BE02:
ROM:0005BE02                 move.w  -(a6),d7
ROM:0005BE04                 move.l  d7,(a4)
ROM:0005BE06                 add.l   d4,d7
ROM:0005BE08                 move.l  d5,(a4)
ROM:0005BE0A                 add.l   d4,d5
ROM:0005BE0C
ROM:0005BE0C loc_5BE0C:
ROM:0005BE0C                 move.w  -(a6),d7
ROM:0005BE0E                 move.l  d7,(a4)
ROM:0005BE10                 add.l   d4,d7
ROM:0005BE12                 move.l  d5,(a4)
ROM:0005BE14                 add.l   d4,d5
ROM:0005BE16
ROM:0005BE16 loc_5BE16:
ROM:0005BE16                 move.w  -(a6),d7
ROM:0005BE18                 move.l  d7,(a4)
ROM:0005BE1A                 add.l   d4,d7
ROM:0005BE1C                 move.l  d5,(a4)
ROM:0005BE1E                 add.l   d4,d5
ROM:0005BE20
ROM:0005BE20 loc_5BE20:
ROM:0005BE20                 move.w  -(a6),d7
ROM:0005BE22                 move.l  d7,(a4)
ROM:0005BE24                 add.l   d4,d7
ROM:0005BE26                 move.l  d5,(a4)
ROM:0005BE28                 add.l   d4,d5
ROM:0005BE2A
ROM:0005BE2A loc_5BE2A:
ROM:0005BE2A                 move.w  -(a6),d7
ROM:0005BE2C                 move.l  d7,(a4)
ROM:0005BE2E                 add.l   d4,d7
ROM:0005BE30                 move.l  d5,(a4)
ROM:0005BE32                 add.l   d4,d5
ROM:0005BE34
ROM:0005BE34 loc_5BE34:
ROM:0005BE34                 move.w  -(a6),d7
ROM:0005BE36                 move.l  d7,(a4)
ROM:0005BE38                 add.l   d4,d7
ROM:0005BE3A                 move.l  d5,(a4)
ROM:0005BE3C                 add.l   d4,d5
ROM:0005BE3E
ROM:0005BE3E loc_5BE3E:
ROM:0005BE3E                 move.w  -(a6),d7
ROM:0005BE40                 move.l  d7,(a4)
ROM:0005BE42                 add.l   d4,d7
ROM:0005BE44                 move.l  d5,(a4)
ROM:0005BE46                 add.l   d4,d5
ROM:0005BE48
ROM:0005BE48 loc_5BE48:
ROM:0005BE48                 move.w  -(a6),d7
ROM:0005BE4A                 move.l  d7,(a4)
ROM:0005BE4C                 add.l   d4,d7
ROM:0005BE4E                 move.l  d5,(a4)
ROM:0005BE50                 add.l   d4,d5
ROM:0005BE52                 clr.w   d7
ROM:0005BE54                 moveq   #1,d4
ROM:0005BE56                 swap    d4
ROM:0005BE58                 add.w   d6,d6
ROM:0005BE5A                 jmp     loc_5BE5E(pc,d6.w)
ROM:0005BE5E
ROM:0005BE5E
ROM:0005BE5E loc_5BE5E:
ROM:0005BE5E                 move.l  d7,(a4)
ROM:0005BE60                 add.l   d4,d7
ROM:0005BE62                 move.l  d7,(a4)
ROM:0005BE64                 add.l   d4,d7
ROM:0005BE66                 move.l  d7,(a4)
ROM:0005BE68                 add.l   d4,d7
ROM:0005BE6A                 move.l  d7,(a4)
ROM:0005BE6C                 add.l   d4,d7
ROM:0005BE6E                 move.l  d7,(a4)
ROM:0005BE70                 add.l   d4,d7
ROM:0005BE72                 move.l  d7,(a4)
ROM:0005BE74                 add.l   d4,d7
ROM:0005BE76                 move.l  d7,(a4)
ROM:0005BE78                 add.l   d4,d7
ROM:0005BE7A                 move.l  d7,(a4)
ROM:0005BE7C                 add.l   d4,d7
ROM:0005BE7E                 move.l  d7,(a4)
ROM:0005BE80                 add.l   d4,d7
ROM:0005BE82                 move.l  d7,(a4)
ROM:0005BE84                 add.l   d4,d7
ROM:0005BE86                 move.l  d7,(a4)
ROM:0005BE88                 add.l   d4,d7
ROM:0005BE8A                 move.l  d7,(a4)
ROM:0005BE8C                 add.l   d4,d7
ROM:0005BE8E                 move.l  d7,(a4)
ROM:0005BE90                 add.l   d4,d7
ROM:0005BE92                 move.l  d7,(a4)
ROM:0005BE94                 add.l   d4,d7
ROM:0005BE96                 move.l  d7,(a4)
ROM:0005BE98                 add.l   d4,d7
ROM:0005BE9A                 move.l  d7,(a4)
ROM:0005BE9C                 add.l   d4,d7
ROM:0005BE9E                 move.l  d7,(a4)
ROM:0005BEA0                 add.l   d4,d7
ROM:0005BEA2                 move.l  d7,(a4)
ROM:0005BEA4                 add.l   d4,d7
ROM:0005BEA6                 move.l  d7,(a4)
ROM:0005BEA8                 add.l   d4,d7
ROM:0005BEAA                 move.l  d7,(a4)
ROM:0005BEAC                 add.l   d4,d7
ROM:0005BEAE                 move.l  d7,(a4)
ROM:0005BEB0                 add.l   d4,d7
ROM:0005BEB2                 move.l  d7,(a4)
ROM:0005BEB4                 add.l   d4,d7
ROM:0005BEB6                 move.l  d7,(a4)
ROM:0005BEB8                 add.l   d4,d7
ROM:0005BEBA                 move.l  d7,(a4)
ROM:0005BEBC                 add.l   d4,d7
ROM:0005BEBE                 move.l  d7,(a4)
ROM:0005BEC0                 add.l   d4,d7
ROM:0005BEC2                 move.l  d7,(a4)
ROM:0005BEC4                 add.l   d4,d7
ROM:0005BEC6                 move.l  d7,(a4)
ROM:0005BEC8                 add.l   d4,d7
ROM:0005BECA                 move.l  d7,(a4)
ROM:0005BECC                 add.l   d4,d7
ROM:0005BECE                 move.l  d7,(a4)
ROM:0005BED0                 add.l   d4,d7
ROM:0005BED2                 move.l  d7,(a4)
ROM:0005BED4                 add.l   d4,d7
ROM:0005BED6                 move.l  d7,(a4)
ROM:0005BED8                 add.l   d4,d7
ROM:0005BEDA                 move.l  d7,(a4)
ROM:0005BEDC                 add.l   d4,d7
ROM:0005BEDE                 move.l  d7,(a4)
ROM:0005BEE0                 add.l   d4,d7
ROM:0005BEE2                 move.l  d7,(a4)
ROM:0005BEE4                 add.l   d4,d7
ROM:0005BEE6                 move.l  d7,(a4)
ROM:0005BEE8                 add.l   d4,d7
ROM:0005BEEA                 move.l  d7,(a4)
ROM:0005BEEC                 add.l   d4,d7
ROM:0005BEEE                 move.l  d7,(a4)
ROM:0005BEF0                 add.l   d4,d7
ROM:0005BEF2                 move.l  d7,(a4)
ROM:0005BEF4                 add.l   d4,d7
ROM:0005BEF6                 move.l  d7,(a4)
ROM:0005BEF8                 add.l   d4,d7
ROM:0005BEFA                 move.l  d7,(a4)
ROM:0005BEFC                 add.l   d4,d7
ROM:0005BEFE                 move.l  d7,(a4)
ROM:0005BF00                 add.l   d4,d7
ROM:0005BF02                 move.l  d7,(a4)
ROM:0005BF04                 add.l   d4,d7
ROM:0005BF06                 move.l  d7,(a4)
ROM:0005BF08                 add.l   d4,d7
ROM:0005BF0A                 move.l  d7,(a4)
ROM:0005BF0C                 add.l   d4,d7
ROM:0005BF0E                 move.l  d7,(a4)
ROM:0005BF10                 add.l   d4,d7
ROM:0005BF12                 move.l  d7,(a4)
ROM:0005BF14                 add.l   d4,d7
ROM:0005BF16                 move.l  d7,(a4)
ROM:0005BF18                 add.l   d4,d7
ROM:0005BF1A                 move.l  d7,(a4)
ROM:0005BF1C                 add.l   d4,d7
ROM:0005BF1E                 move.l  d7,(a4)
ROM:0005BF20                 add.l   d4,d7
ROM:0005BF22                 move.l  d7,(a4)
ROM:0005BF24                 add.l   d4,d7
ROM:0005BF26                 move.l  d7,(a4)
ROM:0005BF28                 add.l   d4,d7
ROM:0005BF2A                 move.l  d7,(a4)
ROM:0005BF2C                 add.l   d4,d7
ROM:0005BF2E                 move.l  d7,(a4)
ROM:0005BF30                 add.l   d4,d7
ROM:0005BF32                 move.l  d7,(a4)
ROM:0005BF34                 add.l   d4,d7
ROM:0005BF36                 move.l  d7,(a4)
ROM:0005BF38                 add.l   d4,d7
ROM:0005BF3A                 move.l  d7,(a4)
ROM:0005BF3C                 add.l   d4,d7
ROM:0005BF3E                 move.l  d7,(a4)
ROM:0005BF40                 add.l   d4,d7
ROM:0005BF42                 move.l  d7,(a4)
ROM:0005BF44                 add.l   d4,d7
ROM:0005BF46                 move.l  d7,(a4)
ROM:0005BF48                 add.l   d4,d7
ROM:0005BF4A                 move.l  d7,(a4)
ROM:0005BF4C                 add.l   d4,d7
ROM:0005BF4E                 move.l  d7,(a4)
ROM:0005BF50                 add.l   d4,d7
ROM:0005BF52                 move.l  d7,(a4)
ROM:0005BF54                 add.l   d4,d7
ROM:0005BF56                 move.w  #$8401,d6
ROM:0005BF5A                 add.w   d0,d6
ROM:0005BF5C                 swap    d6
ROM:0005BF5E                 move.w  $A(a3),d6
ROM:0005BF62                 move.l  #$2000000,d5
ROM:0005BF68                 move.l  d6,(a4)
ROM:0005BF6A                 sub.l   d5,d6
ROM:0005BF6C                 sub.l   d5,d6
ROM:0005BF6E                 move.w  6(a3),d6
ROM:0005BF72                 move.l  d6,(a4)
ROM:0005BF74                 rts
ROM:0005BF76
ROM:0005BF76
ROM:0005BF76
ROM:0005BF76
