ROM:0004D782 ProcMailboxA:
ROM:0004D782
ROM:0004D782                 jsr     ObjectRelated
ROM:0004D788                 jsr     Animate
ROM:0004D78E                 jsr     CheckShot?
ROM:0004D794                 bcc.w   loc_4D7CC
ROM:0004D798                 move.w  #$10A9,d0
ROM:0004D79C                 jsr     (PlaySFX).l
ROM:0004D7A2                 jsr     GetRand2?
ROM:0004D7A8                 andi.w  #3,d0
ROM:0004D7AC                 bne.w   loc_4D7C6
ROM:0004D7B0                 lea     ProcFlyingLetter,a1
ROM:0004D7B4                 jsr     (SpawnObject?).l
ROM:0004D7BA                 jsr     InitSamePositions
ROM:0004D7C0                 addi.w  #$18,$24(a0)
ROM:0004D7C6
ROM:0004D7C6 loc_4D7C6:
ROM:0004D7C6                 lea     loc_4D7DC,a1
ROM:0004D7CA                 move.l  a1,(a6)
ROM:0004D7CC
ROM:0004D7CC loc_4D7CC:
ROM:0004D7CC                 jsr     CheckOutOfScreen
ROM:0004D7D0                 bcc.w   locret_4D7DA
ROM:0004D7D4                 jmp     (SetDying).l
ROM:0004D7DA
ROM:0004D7DA
ROM:0004D7DA locret_4D7DA:
ROM:0004D7DA                 rts
ROM:0004D7DC
ROM:0004D7DC
ROM:0004D7DC loc_4D7DC:
ROM:0004D7DC                 lea     (off_294296).l,a0
ROM:0004D7E2                 jsr     ChangeAnimation
ROM:0004D7E8                 lea     ProcMailboxB,a1
ROM:0004D7EC                 move.l  a1,(a6)
ROM:0004D7EE
