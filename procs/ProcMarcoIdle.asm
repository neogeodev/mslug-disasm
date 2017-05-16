ROM:00034806 ProcMarcoIdle:
ROM:00034806                 jsr     sub_32FF2
ROM:0003480A                 jsr     sub_32D32
ROM:0003480E                 bcc.w   loc_34818
ROM:00034812                 lea     loc_345B8,a1
ROM:00034816                 move.l  a1,(a6)
ROM:00034818
ROM:00034818 loc_34818:
ROM:00034818                 jsr     sub_27A92
ROM:0003481E                 jsr     sub_32AA8
ROM:00034822                 bcc.w   loc_34944
ROM:00034826                 move.w  #0,$7C(a6)
ROM:0003482C                 move.w  #0,$7E(a6)
ROM:00034832                 bclr    #2,$8C(a6)
ROM:00034838                 bclr    #1,$8C(a6)
ROM:0003483E                 bclr    #3,$8C(a6)
ROM:00034844                 cmpi.b  #4,$78(a6)
ROM:0003484A                 bne.w   loc_34890
ROM:0003484E                 move.w  #1,$72(a6)
ROM:00034854                 jsr     sub_2ABCC
ROM:0003485A                 bcs.w   loc_34874
ROM:0003485E                 move.b  #$10,$70(a6)
ROM:00034864                 lea     ($2796C4).l,a0
ROM:0003486A                 move.l  -4(a0),$74(a6)
ROM:00034870                 bra.w   loc_34886
ROM:00034874
ROM:00034874
ROM:00034874 loc_34874:
ROM:00034874                 move.b  #$10,$70(a6)
ROM:0003487A                 lea     ($27991C).l,a0
ROM:00034880                 move.l  -4(a0),$74(a6)
ROM:00034886
ROM:00034886 loc_34886:
ROM:00034886                 bset    #5,$69(a6)
ROM:0003488C                 bra.w   loc_348F0
ROM:00034890
ROM:00034890
ROM:00034890 loc_34890:
ROM:00034890                 move.w  #0,$72(a6)
ROM:00034896                 jsr     sub_2ABCC
ROM:0003489C                 bcs.w   loc_348C8
ROM:000348A0                 move.b  #$10,$70(a6)
ROM:000348A6                 lea     ($2796A4).l,a0
ROM:000348AC                 move.l  -4(a0),$74(a6)
ROM:000348B2                 move.b  #$FF,$21(a6)
ROM:000348B8                 lea     (off_2796A4).l,a0
ROM:000348BE                 jsr     ChangeAnimation
ROM:000348C4                 bra.w   loc_348EC
ROM:000348C8
ROM:000348C8
ROM:000348C8 loc_348C8:
ROM:000348C8                 move.b  #$10,$70(a6)
ROM:000348CE                 lea     ($279926).l,a0
ROM:000348D4                 move.l  -4(a0),$74(a6)
ROM:000348DA                 move.b  #$FF,$21(a6)
ROM:000348E0                 lea     (unk_279926).l,a0
ROM:000348E6                 jsr     ChangeAnimation
ROM:000348EC
ROM:000348EC loc_348EC:
ROM:000348EC                 bra.w   *+4
ROM:000348F0
ROM:000348F0
ROM:000348F0 loc_348F0:
ROM:000348F0
ROM:000348F0                 btst    #0,$88(a6)
ROM:000348F6                 beq.w   loc_34900
ROM:000348FA                 lea     $33A5E,a1
ROM:000348FE                 move.l  a1,(a6)
ROM:00034900
ROM:00034900 loc_34900:
ROM:00034900                 cmpi.b  #0,$85(a6)
ROM:00034906                 bne.w   loc_3491A
ROM:0003490A                 cmpi.b  #1,$71(a6)
ROM:00034910                 bne.w   loc_3491A
ROM:00034914                 lea     $33B9A,a1
ROM:00034918                 move.l  a1,(a6)
ROM:0003491A
ROM:0003491A loc_3491A:
ROM:0003491A
ROM:0003491A                 jsr     GetRand2?
ROM:00034920                 andi.w  #7,d0
ROM:00034924                 moveq   #4,d0
ROM:00034926                 cmp.w   $82(a6),d0
ROM:0003492A                 bne.w   loc_34934
ROM:0003492E                 lea     $33AFC,a1
ROM:00034932                 move.l  a1,(a6)
ROM:00034934
ROM:00034934 loc_34934:
ROM:00034934                 cmpi.w  #0,$82(a6)
ROM:0003493A                 bne.w   loc_34944
ROM:0003493E                 lea     $33D64,a1
ROM:00034942                 move.l  a1,(a6)
ROM:00034944
ROM:00034944 loc_34944:
ROM:00034944
ROM:00034944                 cmpi.b  #$10,$70(a6)
ROM:0003494A                 bne.w   loc_34A00
ROM:0003494E                 cmpi.b  #4,$78(a6)
ROM:00034954                 bne.w   loc_349AE
ROM:00034958                 cmpi.w  #1,$72(a6)
ROM:0003495E                 beq.w   loc_349AA
ROM:00034962                 move.w  #1,$72(a6)
ROM:00034968                 jsr     sub_2ABCC
ROM:0003496E                 bcs.w   loc_34988
ROM:00034972                 move.b  #$10,$70(a6)
ROM:00034978                 lea     ($2796C4).l,a0
ROM:0003497E                 move.l  -4(a0),$74(a6)
ROM:00034984                 bra.w   loc_3499A
ROM:00034988
ROM:00034988
ROM:00034988 loc_34988:
ROM:00034988                 move.b  #$10,$70(a6)
ROM:0003498E                 lea     ($27991C).l,a0
ROM:00034994                 move.l  off_279918-unk_27991C(a0),$74(a6)
ROM:0003499A
ROM:0003499A loc_3499A:
ROM:0003499A                 cmpi.b  #$14,$79(a6)
ROM:000349A0                 bne.w   loc_349AA
ROM:000349A4                 bset    #5,$69(a6)
ROM:000349AA
ROM:000349AA loc_349AA:
ROM:000349AA
ROM:000349AA                 bra.w   loc_34A00
ROM:000349AE
ROM:000349AE
ROM:000349AE loc_349AE:
ROM:000349AE                 cmpi.w  #0,$72(a6)
ROM:000349B4                 beq.w   loc_34A00
ROM:000349B8                 move.w  #0,$72(a6)
ROM:000349BE                 jsr     sub_2ABCC
ROM:000349C4                 bcs.w   loc_349DE
ROM:000349C8                 move.b  #$10,$70(a6)
ROM:000349CE                 lea     ($2796A4).l,a0
ROM:000349D4                 move.l  dword_2796A0-off_2796A4(a0),$74(a6)
ROM:000349DA                 bra.w   loc_349F0
ROM:000349DE
ROM:000349DE
ROM:000349DE loc_349DE:
ROM:000349DE                 move.b  #$10,$70(a6)
ROM:000349E4                 lea     ($279926).l,a0
ROM:000349EA                 move.l  off_279922-unk_279926(a0),$74(a6)
ROM:000349F0
ROM:000349F0 loc_349F0:
ROM:000349F0                 cmpi.b  #$41,$79(a6)
ROM:000349F6                 bne.w   loc_34A00
ROM:000349FA                 bset    #5,$69(a6)
ROM:00034A00
ROM:00034A00 loc_34A00:
ROM:00034A00
ROM:00034A00                 btst    #2,$8C(a6)
ROM:00034A06                 bne.w   loc_34A5E
ROM:00034A0A                 btst    #0,$3A(a6)
ROM:00034A10                 bne.w   loc_34A34
ROM:00034A14                 jsr     sub_32E3C
ROM:00034A18                 bcc.w   loc_34A22
ROM:00034A1C                 lea     $34B38,a1
ROM:00034A20                 move.l  a1,(a6)
ROM:00034A22
ROM:00034A22 loc_34A22:
ROM:00034A22                 jsr     sub_32E42
ROM:00034A26                 bcc.w   loc_34A30
ROM:00034A2A                 lea     $35BF8,a1
ROM:00034A2E                 move.l  a1,(a6)
ROM:00034A30
ROM:00034A30 loc_34A30:
ROM:00034A30                 bra.w   loc_34A50
ROM:00034A34
ROM:00034A34
ROM:00034A34 loc_34A34:
ROM:00034A34                 jsr     sub_32E3C
ROM:00034A38                 bcc.w   loc_34A42
ROM:00034A3C                 lea     $35ABA,a1
ROM:00034A40                 move.l  a1,(a6)
ROM:00034A42
ROM:00034A42 loc_34A42:
ROM:00034A42                 jsr     sub_32E42
ROM:00034A46                 bcc.w   loc_34A50
ROM:00034A4A                 lea     $34D32,a1
ROM:00034A4E                 move.l  a1,(a6)
ROM:00034A50
ROM:00034A50 loc_34A50:
ROM:00034A50
ROM:00034A50                 jsr     sub_32E90
ROM:00034A54                 bcc.w   loc_34A5E
ROM:00034A58                 lea     loc_37C74,a1
ROM:00034A5C                 move.l  a1,(a6)
ROM:00034A5E
ROM:00034A5E loc_34A5E:
ROM:00034A5E
ROM:00034A5E                 cmpi.b  #4,$71(a6)
ROM:00034A64                 bne.w   loc_34A6C
ROM:00034A68                 bra.w   loc_34A76
ROM:00034A6C
ROM:00034A6C
ROM:00034A6C loc_34A6C:
ROM:00034A6C                 btst    #2,$8C(a6)
ROM:00034A72                 bne.w   loc_34ADA
ROM:00034A76
ROM:00034A76 loc_34A76:
ROM:00034A76                 jsr     sub_330D0
ROM:00034A7A                 bcc.w   loc_34ADA
ROM:00034A7E                 btst    #3,$8C(a6)
ROM:00034A84                 bne.w   loc_34ABE
ROM:00034A88                 cmpi.b  #$FF,d1
ROM:00034A8C                 bne.w   loc_34A9A
ROM:00034A90                 lea     loc_35D34,a1
ROM:00034A94                 move.l  a1,(a6)
ROM:00034A96                 bra.w   loc_34ADA
ROM:00034A9A
ROM:00034A9A
ROM:00034A9A loc_34A9A:
ROM:00034A9A                 cmpi.b  #3,d1
ROM:00034A9E                 bne.w   loc_34AAC
ROM:00034AA2                 lea     unk_360BC,a1
ROM:00034AA6                 move.l  a1,(a6)
ROM:00034AA8                 bra.w   loc_34ADA
ROM:00034AAC
ROM:00034AAC
ROM:00034AAC loc_34AAC:
ROM:00034AAC                 cmpi.b  #4,d1
ROM:00034AB0                 bne.w   loc_34ABE
ROM:00034AB4                 lea     unk_3873C,a1
ROM:00034AB8                 move.l  a1,(a6)
ROM:00034ABA                 bra.w   loc_34ADA
ROM:00034ABE
ROM:00034ABE
ROM:00034ABE loc_34ABE:
ROM:00034ABE
ROM:00034ABE                 cmpi.b  #1,d1
ROM:00034AC2                 bne.w   loc_34AD0
ROM:00034AC6                 lea     loc_3437E,a1
ROM:00034ACA                 move.l  a1,(a6)
ROM:00034ACC                 bra.w   loc_34ADA
ROM:00034AD0
ROM:00034AD0
ROM:00034AD0 loc_34AD0:
ROM:00034AD0                 lea     loc_342C4,a1
ROM:00034AD4                 move.l  a1,(a6)
ROM:00034AD6                 bra.w   *+4
ROM:00034ADA
ROM:00034ADA
ROM:00034ADA loc_34ADA:
ROM:00034ADA
ROM:00034ADA                 jsr     sub_27EBA
ROM:00034AE0                 bcc.w   loc_34AEA
ROM:00034AE4                 lea     unk_36D64,a1
ROM:00034AE8                 move.l  a1,(a6)
ROM:00034AEA
ROM:00034AEA loc_34AEA:
ROM:00034AEA                 jsr     sub_33034
ROM:00034AEE                 bcc.w   loc_34AF8
ROM:00034AF2                 lea     dword_36914,a1
ROM:00034AF6                 move.l  a1,(a6)
ROM:00034AF8
ROM:00034AF8 loc_34AF8:
ROM:00034AF8                 jsr     sub_33522
ROM:00034AFC                 cmpi.b  #3,(byte_106ECE).l
ROM:00034B04                 beq.w   loc_34B1C
ROM:00034B08                 movea.l #$FFFFFFFF,a0
ROM:00034B0E                 lea     unk_324C6,a0
ROM:00034B12                 jsr     CheckObjectOOB?
ROM:00034B18                 bra.w   loc_34B2C
ROM:00034B1C
ROM:00034B1C
ROM:00034B1C loc_34B1C:
ROM:00034B1C                 movea.l #$FFFFFFFF,a0
ROM:00034B22                 lea     unk_324BC,a0
ROM:00034B26                 jsr     CheckObjectOOB?
ROM:00034B2C
ROM:00034B2C loc_34B2C:
ROM:00034B2C                 bcc.w   locret_34B36
ROM:00034B30                 lea     loc_37B8E,a1
ROM:00034B34                 move.l  a1,(a6)
ROM:00034B36
ROM:00034B36 locret_34B36:
ROM:00034B36                 rts
ROM:00034B38
ROM:00034B38
ROM:00034B38 loc_34B38:
ROM:00034B38
ROM:00034B38                 move.w  #0,$7C(a6)
ROM:00034B3E                 move.w  #$FFFF,$7E(a6)
ROM:00034B44                 cmpi.b  #$13,$70(a6)
ROM:00034B4A                 bcs.w   loc_34B6E
ROM:00034B4E                 cmpi.b  #$24,$70(a6)
ROM:00034B54                 bcc.w   loc_34B6E
ROM:00034B58                 lea     (off_279882).l,a0
ROM:00034B5E                 jsr     ChangeAnimation
ROM:00034B64                 bclr    #5,$69(a6)
ROM:00034B6A                 bra.w   loc_34BA4
ROM:00034B6E
ROM:00034B6E
ROM:00034B6E loc_34B6E:
ROM:00034B6E
ROM:00034B6E                 bclr    #2,$8C(a6)
ROM:00034B74                 bclr    #1,$8C(a6)
ROM:00034B7A                 bclr    #3,$8C(a6)
ROM:00034B80                 move.b  #$11,$70(a6)
ROM:00034B86                 lea     ($279882).l,a0
ROM:00034B8C                 move.l  off_27987E-off_279882(a0),$74(a6)
ROM:00034B92                 move.b  #$FF,$21(a6)
ROM:00034B98                 lea     (off_279882).l,a0
ROM:00034B9E                 jsr     ChangeAnimation
ROM:00034BA4
ROM:00034BA4 loc_34BA4:
ROM:00034BA4
ROM:00034BA4                 move.w  #$300,$28(a6)
ROM:00034BAA                 clr.w   $2C(a6)
ROM:00034BAE                 move.l  #loc_32500,$60(a6)
ROM:00034BB6                 lea     loc_326E0,a0
ROM:00034BBA                 move.l  a0,$48(a6)
ROM:00034BBE                 bclr    #0,$3A(a6)
ROM:00034BC4                 lea     loc_34BCA,a1
ROM:00034BC8                 move.l  a1,(a6)
ROM:00034BCA
ROM:00034BCA loc_34BCA:
ROM:00034BCA                 jsr     sub_32FF2
ROM:00034BCE                 jsr     sub_32D32
ROM:00034BD2                 bcc.w   loc_34BDC
ROM:00034BD6                 lea     loc_345B8,a1
ROM:00034BDA                 move.l  a1,(a6)
ROM:00034BDC
ROM:00034BDC loc_34BDC:
ROM:00034BDC                 move.w  #$300,$28(a6)
ROM:00034BE2                 jsr     sub_27A92
ROM:00034BE8                 jsr     sub_32AA8
ROM:00034BEC                 bcc.w   loc_34BF6
ROM:00034BF0                 lea     loc_351D8,a1
ROM:00034BF4                 move.l  a1,(a6)
ROM:00034BF6
ROM:00034BF6 loc_34BF6:
ROM:00034BF6                 cmpi.b  #4,$78(a6)
ROM:00034BFC                 bne.w   loc_34C28
ROM:00034C00                 cmpi.l  #loc_3A058,$74(a6)
ROM:00034C08                 bne.w   loc_34C24
ROM:00034C0C                 move.w  #1,$72(a6)
ROM:00034C12                 move.b  #$11,$70(a6)
ROM:00034C18                 lea     ($279878).l,a0
ROM:00034C1E                 move.l  off_279874-unk_279878(a0),$74(a6)
ROM:00034C24
ROM:00034C24 loc_34C24:
ROM:00034C24                 bra.w   loc_34C4C
ROM:00034C28
ROM:00034C28
ROM:00034C28 loc_34C28:
ROM:00034C28                 cmpi.l  #loc_3A058,$74(a6)
ROM:00034C30                 bne.w   loc_34C4C
ROM:00034C34                 move.w  #0,$72(a6)
ROM:00034C3A                 move.b  #$11,$70(a6)
ROM:00034C40                 lea     ($279882).l,a0
ROM:00034C46                 move.l  off_27987E-off_279882(a0),$74(a6)
ROM:00034C4C
ROM:00034C4C loc_34C4C:
ROM:00034C4C
ROM:00034C4C                 btst    #2,$8C(a6)
ROM:00034C52                 bne.w   loc_34CCC
ROM:00034C56                 jsr     sub_32E3C
ROM:00034C5A                 bcs.w   loc_34C64
ROM:00034C5E                 lea     loc_345FA,a1
ROM:00034C62                 move.l  a1,(a6)
ROM:00034C64
ROM:00034C64 loc_34C64:
ROM:00034C64                 jsr     sub_32E42
ROM:00034C68                 bcc.w   loc_34C72
ROM:00034C6C                 lea     $35BF8,a1
ROM:00034C70                 move.l  a1,(a6)
ROM:00034C72
ROM:00034C72 loc_34C72:
ROM:00034C72                 jsr     sub_330D0
ROM:00034C76                 bcc.w   loc_34CCC
ROM:00034C7A                 cmpi.b  #$FF,d1
ROM:00034C7E                 bne.w   loc_34C8C
ROM:00034C82                 lea     loc_35D34,a1
ROM:00034C86                 move.l  a1,(a6)
ROM:00034C88                 bra.w   loc_34CCC
ROM:00034C8C
ROM:00034C8C
ROM:00034C8C loc_34C8C:
ROM:00034C8C                 cmpi.b  #3,d1
ROM:00034C90                 bne.w   loc_34C9E
ROM:00034C94                 lea     unk_360BC,a1
ROM:00034C98                 move.l  a1,(a6)
ROM:00034C9A                 bra.w   loc_34CCC
ROM:00034C9E
ROM:00034C9E
ROM:00034C9E loc_34C9E:
ROM:00034C9E                 cmpi.b  #4,d1
ROM:00034CA2                 bne.w   loc_34CB0
ROM:00034CA6                 lea     unk_3873C,a1
ROM:00034CAA                 move.l  a1,(a6)
ROM:00034CAC                 bra.w   loc_34CCC
ROM:00034CB0
ROM:00034CB0
ROM:00034CB0 loc_34CB0:
ROM:00034CB0                 cmpi.b  #1,d1
ROM:00034CB4                 bne.w   loc_34CC2
ROM:00034CB8                 lea     loc_3503E,a1
ROM:00034CBC                 move.l  a1,(a6)
ROM:00034CBE                 bra.w   loc_34CCC
ROM:00034CC2
ROM:00034CC2
ROM:00034CC2 loc_34CC2:
ROM:00034CC2                 lea     loc_34ECA,a1
ROM:00034CC6                 move.l  a1,(a6)
ROM:00034CC8                 bra.w   *+4
ROM:00034CCC
ROM:00034CCC
ROM:00034CCC loc_34CCC:
ROM:00034CCC
ROM:00034CCC                 jsr     sub_32E90
ROM:00034CD0                 bcc.w   loc_34CDA
ROM:00034CD4                 lea     loc_37C74,a1
ROM:00034CD8                 move.l  a1,(a6)
ROM:00034CDA
ROM:00034CDA loc_34CDA:
ROM:00034CDA                 cmpi.b  #0,$85(a6)
ROM:00034CE0                 bne.w   loc_34CF4
ROM:00034CE4                 cmpi.b  #1,$71(a6)
ROM:00034CEA                 bne.w   loc_34CF4
ROM:00034CEE                 lea     $33B9A,a1
ROM:00034CF2                 move.l  a1,(a6)
ROM:00034CF4
ROM:00034CF4 loc_34CF4:
ROM:00034CF4
ROM:00034CF4                 cmpi.w  #0,$82(a6)
ROM:00034CFA                 bne.w   loc_34D0E
ROM:00034CFE                 cmpi.b  #0,$71(a6)
ROM:00034D04                 beq.w   loc_34D0E
ROM:00034D08                 lea     $33D64,a1
ROM:00034D0C                 move.l  a1,(a6)
ROM:00034D0E
ROM:00034D0E loc_34D0E:
ROM:00034D0E
ROM:00034D0E                 jsr     sub_27EBA
ROM:00034D14                 bcc.w   loc_34D1E
ROM:00034D18                 lea     unk_36D64,a1
ROM:00034D1C                 move.l  a1,(a6)
ROM:00034D1E
ROM:00034D1E loc_34D1E:
ROM:00034D1E                 jsr     sub_33034
ROM:00034D22                 bcc.w   loc_34D2C
ROM:00034D26                 lea     dword_36914,a1
ROM:00034D2A                 move.l  a1,(a6)
ROM:00034D2C
ROM:00034D2C loc_34D2C:
ROM:00034D2C                 jsr     sub_33522
ROM:00034D30                 rts
ROM:00034D32
ROM:00034D32
ROM:00034D32 loc_34D32:
ROM:00034D32
ROM:00034D32                 move.w  #0,$7C(a6)
ROM:00034D38                 move.w  #$FFFF,$7E(a6)
ROM:00034D3E                 cmpi.b  #$13,$70(a6)
ROM:00034D44                 bcs.w   loc_34D68
ROM:00034D48                 cmpi.b  #$24,$70(a6)
ROM:00034D4E                 bcc.w   loc_34D68
ROM:00034D52                 lea     (off_279882).l,a0
ROM:00034D58                 jsr     ChangeAnimation
ROM:00034D5E                 bclr    #5,$69(a6)
ROM:00034D64                 bra.w   loc_34D9E
ROM:00034D68
ROM:00034D68
ROM:00034D68 loc_34D68:
ROM:00034D68
ROM:00034D68                 bclr    #2,$8C(a6)
ROM:00034D6E                 bclr    #1,$8C(a6)
ROM:00034D74                 bclr    #3,$8C(a6)
ROM:00034D7A                 move.b  #$11,$70(a6)
ROM:00034D80                 lea     ($279882).l,a0
ROM:00034D86                 move.l  off_27987E-off_279882(a0),$74(a6)
ROM:00034D8C                 move.b  #$FF,$21(a6)
ROM:00034D92                 lea     (off_279882).l,a0
ROM:00034D98                 jsr     ChangeAnimation
ROM:00034D9E
ROM:00034D9E loc_34D9E:
ROM:00034D9E
ROM:00034D9E                 move.w  #$FD00,$28(a6)
ROM:00034DA4                 clr.w   $2C(a6)
ROM:00034DA8                 move.l  #loc_32500,$60(a6)
ROM:00034DB0                 lea     loc_326E0,a0
ROM:00034DB4                 move.l  a0,$48(a6)
ROM:00034DB8                 bset    #0,$3A(a6)
ROM:00034DBE                 lea     loc_34DC4,a1
ROM:00034DC2                 move.l  a1,(a6)
ROM:00034DC4
ROM:00034DC4 loc_34DC4:
ROM:00034DC4                 jsr     sub_32FF2
ROM:00034DC8                 jsr     sub_32D32
ROM:00034DCC                 bcc.w   loc_34DD6
ROM:00034DD0                 lea     loc_345B8,a1
ROM:00034DD4                 move.l  a1,(a6)
ROM:00034DD6
ROM:00034DD6 loc_34DD6:
ROM:00034DD6                 move.w  #$FD00,$28(a6)
ROM:00034DDC                 jsr     sub_27A92
ROM:00034DE2                 jsr     sub_32AA8
ROM:00034DE6                 bcc.w   loc_34DF0
ROM:00034DEA                 lea     unk_354F2,a1
ROM:00034DEE                 move.l  a1,(a6)
ROM:00034DF0
ROM:00034DF0 loc_34DF0:
ROM:00034DF0                 cmpi.b  #4,$78(a6)
ROM:00034DF6                 bne.w   loc_34E22
ROM:00034DFA                 cmpi.l  #loc_3A058,$74(a6)
ROM:00034E02                 bne.w   loc_34E1E
ROM:00034E06                 move.w  #1,$72(a6)
ROM:00034E0C                 move.b  #$11,$70(a6)
ROM:00034E12                 lea     ($279878).l,a0
ROM:00034E18                 move.l  off_279874-unk_279878(a0),$74(a6)
ROM:00034E1E
ROM:00034E1E loc_34E1E:
ROM:00034E1E                 bra.w   loc_34E46
ROM:00034E22
ROM:00034E22
ROM:00034E22 loc_34E22:
ROM:00034E22                 cmpi.l  #loc_3A058,$74(a6)
ROM:00034E2A                 bne.w   loc_34E46
ROM:00034E2E                 move.w  #0,$72(a6)
ROM:00034E34                 move.b  #$11,$70(a6)
ROM:00034E3A                 lea     ($279882).l,a0
ROM:00034E40                 move.l  off_27987E-off_279882(a0),$74(a6)
ROM:00034E46
ROM:00034E46 loc_34E46:
ROM:00034E46
ROM:00034E46                 btst    #2,$8C(a6)
ROM:00034E4C                 bne.w   loc_34EC6
ROM:00034E50                 jsr     sub_32E42
ROM:00034E54                 bcs.w   loc_34E5E
ROM:00034E58                 lea     loc_345FA,a1
ROM:00034E5C                 move.l  a1,(a6)
ROM:00034E5E
ROM:00034E5E loc_34E5E:
ROM:00034E5E                 jsr     sub_32E3C
ROM:00034E62                 bcc.w   loc_34E6C
ROM:00034E66                 lea     $35ABA,a1
ROM:00034E6A                 move.l  a1,(a6)
ROM:00034E6C
ROM:00034E6C loc_34E6C:
ROM:00034E6C                 jsr     sub_330D0
ROM:00034E70                 bcc.w   loc_34EC6
ROM:00034E74                 cmpi.b  #$FF,d1
ROM:00034E78                 bne.w   loc_34E86
ROM:00034E7C                 lea     loc_35D34,a1
ROM:00034E80                 move.l  a1,(a6)
ROM:00034E82                 bra.w   loc_34EC6
ROM:00034E86
ROM:00034E86
ROM:00034E86 loc_34E86:
ROM:00034E86                 cmpi.b  #3,d1
ROM:00034E8A                 bne.w   loc_34E98
ROM:00034E8E                 lea     unk_360BC,a1
ROM:00034E92                 move.l  a1,(a6)
ROM:00034E94                 bra.w   loc_34EC6
ROM:00034E98
ROM:00034E98
ROM:00034E98 loc_34E98:
ROM:00034E98                 cmpi.b  #4,d1
ROM:00034E9C                 bne.w   loc_34EAA
ROM:00034EA0                 lea     unk_3873C,a1
ROM:00034EA4                 move.l  a1,(a6)
ROM:00034EA6                 bra.w   loc_3548C
ROM:00034EAA
ROM:00034EAA
ROM:00034EAA loc_34EAA:
ROM:00034EAA                 cmpi.b  #1,d1
ROM:00034EAE                 bne.w   loc_34EBC
ROM:00034EB2                 lea     loc_351C4,a1
ROM:00034EB6                 move.l  a1,(a6)
ROM:00034EB8                 bra.w   loc_34EC6
ROM:00034EBC
ROM:00034EBC
ROM:00034EBC loc_34EBC:
ROM:00034EBC                 lea     loc_351B0,a1
ROM:00034EC0                 move.l  a1,(a6)
ROM:00034EC2                 bra.w   *+4
ROM:00034EC6
ROM:00034EC6
ROM:00034EC6 loc_34EC6:
ROM:00034EC6
ROM:00034EC6                 bra.w   loc_34CCC
ROM:00034ECA
ROM:00034ECA
ROM:00034ECA loc_34ECA:
ROM:00034ECA                 move.w  #0,$7C(a6)
ROM:00034ED0                 move.w  #$FFFF,$7E(a6)
ROM:00034ED6                 jsr     sub_34EDE
ROM:00034EDA                 bra.w   loc_34BA4
ROM:00034EDE
ROM:00034EDE
ROM:00034EDE
ROM:00034EDE
