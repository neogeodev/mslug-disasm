ROM:00053DB4 SwitchStateA:
ROM:00053DB4                 btst    #$F,d0
ROM:00053DB8                 bne.w   locret_53DC8
ROM:00053DBC                 lea     (RailSwitchAnimB).l,a0
ROM:00053DC2                 jsr     ChangeAnimation
ROM:00053DC8
ROM:00053DC8 locret_53DC8:
ROM:00053DC8
ROM:00053DC8                 rts
ROM:00053DC8
ROM:00053DC8
ROM:00053DCA
ROM:00053DCA
ROM:00053DCA
ROM:00053DCA
