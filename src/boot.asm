; diz pro montador(assembler)
; tornar todos os rótulos relativos
; ao endereço de boot
org 0x7c00

; diz pro montador(assembler)
; que é pra gerar código de 16 bits
bits 16

main:

; para a cpu
halt:
  hlt
  jmp halt

; preenche o restante dos bytes
; com zero
times 510-($-$$) db 0

; define a assinatura de boot
; nos últimos bytes
dw 0xaa55
