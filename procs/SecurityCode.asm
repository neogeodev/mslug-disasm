ROM:00000186 SecurityCode:
ROM:00000186                 moveq   #0,d3
ROM:00000188                 tst.w   $A14(a5)
ROM:0000018C                 bne.w   loc_1CA
ROM:00000190
ROM:00000190 loc_190:
ROM:00000190                 movea.l $A04(a5),a0
ROM:00000194                 move.w  $A08(a5),d7
ROM:00000198
ROM:00000198 loc_198:
ROM:00000198                 move.b  d0,($300001).l
ROM:0000019E                 move.w  (a0),d1
ROM:000001A0                 cmpi.b  #$FF,d1
ROM:000001A4
ROM:000001A4 loc_1A4:
ROM:000001A4                 beq.s   loc_1C0
ROM:000001A6                 move.w  2(a0),d0
ROM:000001AA                 cmp.b   $ACE(a5),d0
ROM:000001AE                 bne.s   loc_1C0
ROM:000001B0                 move.w  4(a0),d0
ROM:000001B4                 cmp.b   $ACF(a5),d0
ROM:000001B8                 bne.s   loc_1C0
ROM:000001BA                 cmp.b   $AD0(a5),d1
ROM:000001BE                 beq.s   locret_1C8
ROM:000001C0
ROM:000001C0 loc_1C0:
ROM:000001C0
ROM:000001C0                 addq.l  #8,a0
ROM:000001C2                 dbf     d7,loc_198
ROM:000001C6                 move.w  d7,d3
ROM:000001C8
ROM:000001C8 locret_1C8:
ROM:000001C8
ROM:000001C8                 rts
ROM:000001CA
ROM:000001CA
ROM:000001CA loc_1CA:
ROM:000001CA                 movea.l $A04(a5),a0
ROM:000001CE                 move.w  $A08(a5),d7
ROM:000001D2
ROM:000001D2 loc_1D2:
ROM:000001D2                 move.w  (a0),d1
ROM:000001D4                 lsr.w   #8,d1
ROM:000001D6                 cmpi.b  #$FF,d1
ROM:000001DA                 beq.s   loc_1F6
ROM:000001DC                 move.w  (a0),d0
ROM:000001DE                 cmp.b   $ACE(a5),d0
ROM:000001E2                 bne.s   loc_1F6
ROM:000001E4                 move.w  2(a0),d0
ROM:000001E8                 lsr.w   #8,d0
ROM:000001EA                 cmp.b   $ACF(a5),d0
ROM:000001EE                 bne.s   loc_1F6
ROM:000001F0                 cmp.b   $AD0(a5),d1
ROM:000001F4
ROM:000001F4 loc_1F4:
ROM:000001F4                 beq.s   locret_1FE
ROM:000001F6
ROM:000001F6 loc_1F6:
ROM:000001F6
ROM:000001F6                 addq.l  #4,a0
ROM:000001F8                 dbf     d7,loc_1D2
ROM:000001FC                 move.w  d7,d3
ROM:000001FE
ROM:000001FE locret_1FE:
ROM:000001FE                 rts
ROM:000001FE
