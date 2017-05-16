ROM:0000052A ProcExploding:
ROM:0000052A                 movea.l ObjLLItem.LLNextPtr(a6),a1
ROM:0000052E                 move.b  ObjLLItem.Counter?(a6),d0
ROM:00000532                 cmp.b   ObjLLItem.Counter?(a1),d0
ROM:00000536                 bcs.w   loc_542
ROM:0000053A                 jsr     FreeObject
ROM:0000053E                 jmp     loc_6E2
ROM:00000542
ROM:00000542
ROM:00000542 loc_542:
ROM:00000542                 jmp     loc_6CA
ROM:00000542
ROM:00000546
ROM:00000546
ROM:00000546
ROM:00000546
