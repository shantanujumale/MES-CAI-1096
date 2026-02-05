ORG 0000H

; -------- Clear Accumulator --------
CLR A              ; A = 00H

; -------- Form 19 logically --------
ORL A, #11H        ; A = 11H (17)
ORL A, #03H        ; A = 13H (19)

; -------- Multiply by 100 --------
MOV B, #64H        ; B = 100 (64H)
MUL AB             ; AB = 19 × 100 = 1900

; -------- Add 4 logically --------
ADD A, #04H        ; A = lower byte + 4

; -------- Store Result --------
MOV 60H, A         ; Store lower byte
MOV 61H, B         ; Store higher byte

HERE:
SJMP HERE

END
