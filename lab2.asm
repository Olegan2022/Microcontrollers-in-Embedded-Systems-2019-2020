
;init
ldi r17, 0b00100001
ldi r18, 0b11111011
ldi r19, 0x05
ldi r20, 0xF0
ldi r21, 0x0F
ldi r26, 0x50
ldi r27, 0x02
ldi r28, 0x60
ldi r29, 0x02
ldi r30, 0x70
ldi r31, 0x02
nop
;operation
onemore:
ld r20, X+
ld r21, Y+
sub r20, r21
st Z+, r20
nop
dec r19
BREQ M1
JMP onemore
nop
M1:
cpi r20, 0
BRNE M2
out $12, r18
M2:
out $12, r17
nop




