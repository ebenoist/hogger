; Disassembly of ./Frogger.bin
; Disassembled Thu Mar 13 19:10:23 2025
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ./distella -paf -cfrogger.cfg ./Frogger.bin
;
; frogger.cfg contents:
;
;      GFX F1F5 F212
;      GFX FCFD FFF9

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMOVE   =  $2A
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI
       CLD
       LDX    #$00
       TXA
LF005: STA    VSYNC,X
       TXS
       STX    $D8
       STX    $E0
       INX
       BNE    LF005
       JSR    LFCE2
       LDA    #$1D
       STA    $BC
       LDA    #$FE
       STA    $BD
       STA    $BF
       STA    $C5
       STA    $C1
       STA    $C3
       STA    $BB
       STA    $B9
       LDA    #$28
       STA    $BE
       LDA    #$95
       STA    $CA
       LDA    #$73
       STA    $C9
       STA    $C8
       LDA    #$50
       STA    $B0
       LDA    #$0C
       STA    $F8
       LDA    #$FD
       STA    $E9
       LDA    #$FD
       STA    $D5
       STA    $D7
       LDA    #$1E
       STA    $B3
       LDA    #$01
       STA    $DE
       STA    $DD
       STA    $D2
       STA    $D3
       JSR    LFC84
       JSR    LFCEB
       LDA    #$04
       STA    $D0
       STA    $D1
       STA    $E3
       LDX    #$0A
LF064: LDA    LFDE1,X
       STA    $80,X
       LDA    LFDEC,X
       STA    $8B,X
       DEX
       BPL    LF064
LF071: STA    WSYNC
       LDA    #$02
       STA    WSYNC
       STA    VBLANK
       STA    WSYNC
       STA    WSYNC
       LDA    $DB
       BNE    LF093
       INC    $C6
       LDA    $C6
       CMP    #$04
       BNE    LF08D
       LDA    #$00
       STA    $C6
LF08D: TAX
       LDA    LFCFD,X
       STA    $BE
LF093: LDA    #$02
       STA    WSYNC
       STA    VSYNC
       STA    WSYNC
       STA    WSYNC
       LDA    #$00
       STA    WSYNC
       STA    VSYNC
       LDA    #$9A
       STA    TIM64T
       INC    $DB
       LDA    $DE
       CMP    #$10
       BNE    LF0E9
       LDA    INPT4
       BMI    LF0C0
       LDA    $DD
       ROR
       BCS    LF0BD
       LDA    INPT5
       BMI    LF0C0
LF0BD: JMP    LF654
LF0C0: LDA    $DB
       BNE    LF0E2
       LDA    $DD
       ROR
       BCS    LF0CF
       LDA    $E6
       EOR    #$01
       STA    $E6
LF0CF: LDA    $B3
       BNE    LF0E5
       INC    $E8
       BEQ    LF0DD
       LDA    #$80
       CMP    $E8
       BNE    LF0E2
LF0DD: LDA    #$9A
       JSR    LFCF6
LF0E2: JMP    LF595
LF0E5: DEC    $B3
       BPL    LF0E2
LF0E9: CMP    #$01
       BNE    LF0F7
       DEC    $AF
       BNE    LF10E
       DEC    $B3
       BNE    LF10E
       BEQ    LF140
LF0F7: CMP    #$08
       BEQ    LF102
       CMP    #$80
       BNE    LF0E2
       JMP    LF20D
LF102: LDA    $E1
       BEQ    LF10A
       DEC    $E1
       BPL    LF10E
LF10A: LDA    $D9
       BMI    LF111
LF10E: JMP    LF40A
LF111: LDA    $C8
       CMP    #$8E
       BNE    LF169
       LDA    $DD
       ROR
       LDA    $E6
       BCS    LF136
       EOR    #$01
       STA    $E6
       LDA    #$00
       STA    $C7
       STA    $E5
       LDA    #$1F
       STA    $AE
       AND    $E3
       STA    $E3
       LDA    #$04
       STA    $B3
       LDA    $E6
LF136: TAX
       LDY    $D0,X
       BPL    LF172
       LDA    $DD
       ROR
       BCC    LF15F
LF140: LDA    #$10
       STA    $DE
       LDA    #$28
       STA    $B3
       LDA    #$00
       STA    $E5
       LDA    #$04
       STA    $D2
       STA    $D3
       JSR    LFC84
       LDA    #$B8
       JSR    LFCF6
       JSR    LFCE2
       BNE    LF1A5
LF15F: TXA
       EOR    #$01
       STA    $E6
       TAX
       LDY    $D0,X
       BMI    LF140
LF169: JSR    LFCD9
       BNE    LF172
       LDA    #$00
       STA    $E3,X
LF172: JSR    LFC84
       LDA    #$80
       STA    $DE
       LDA    #$73
       STA    $C8
       LDA    #$1E
       STA    $E0
       LDA    #$5B
       STA    $FB
       LDA    #$FF
       STA    $AC
       LDA    #$50
       STA    $B0
       LDA    #$28
       STA    $B4
       LDA    #$0C
       STA    $F8
       LDA    $AD
       CMP    #$07
       BEQ    LF1A5
       LDA    $F9
       AND    #$3F
       STA    $F9
       LDA    #$00
       STA    $FA
LF1A5: JMP    LF40A
LF1A8: STA    $ED
       LSR
       LSR
       LSR
       LSR
       SEC
       ADC    $ED
       LSR
       LSR
       LSR
       LSR
       STA    $EE
       CLC
       ADC    $ED
       EOR    #$FF
       ASL
       ASL
       ASL
       ASL
       ORA    $EE
       CLC
       ADC    #$83
       RTS

LF1C6: LDX    $E6
       SED
       CLC
       ADC    $CE,X
       STA    $CE,X
       LDA    #$00
       ADC    $CC,X
       CLD
       LDY    $CC,X
       STA    $CC,X
       AND    #$F0
       STA    $F4
       TYA
       AND    #$F0
       CMP    $F4
       BEQ    LF1EA
       LDA    $D0,X
       CMP    #$04
       BCS    LF1EA
       INC    $D0,X
LF1EA: RTS

LF1EB: LDA    #$00
       LDX    #$03
LF1EF: STA    $CC,X
       DEX
       BPL    LF1EF
       RTS

       .byte $08 ; |    X   | $F1F5
       .byte $08 ; |    X   | $F1F6
       .byte $FF; strip
       .byte $08 ; |    X   | $F1F8
       .byte $08 ; |    X   | $F1F9
       .byte $10 ; |   X    | $F1FA
       .byte $08 ; |    X   | $F1FB
       .byte $20 ; |  X     | $F1FC
       .byte $01 ; |       X| $F1FD
       .byte $02 ; |      X | $F1FE
       .byte $02 ; |      X | $F1FF
       .byte $03 ; |      XX| $F200
       .byte $02 ; |      X | $F201
       .byte $FF; strip
       .byte $03 ; |      XX| $F203
       .byte $01 ; |       X| $F204
       .byte $00 ; |        | $F205
       .byte $08 ; |    X   | $F206
       .byte $18 ; |   XX   | $F207
       .byte $08 ; |    X   | $F208
       .byte $FF; strip
       .byte $00 ; |        | $F20A
       .byte $18 ; |   XX   | $F20B
       .byte $00 ; |        | $F20C
LF20D: .byte $A5 ; |X X  X X| $F20D
       .byte $DB ; |XX XX XX| $F20E
       .byte $6A ; | XX X X | $F20F
       .byte $FF; strip
       .byte $03 ; |      XX| $F211
       .byte $4C ; | X  XX  | $F212
       ORA    $A4F3,X
       LDY    $0310
       JMP    LF317
LF21C: .byte $A9,$01,$85,$EE,$C0,$05,$F0,$6C,$B9,$80,$00,$85,$EA,$B1,$B8,$AA
       .byte $BD,$F5,$F1,$85,$EB,$BD,$FD,$F1,$85,$EC,$BD,$05,$F2,$85,$ED,$A5
       .byte $B0,$C5,$EA,$B0,$16,$69,$07,$C5,$EA,$B0,$62,$A5,$EA,$65,$EB,$C9
       .byte $A1,$90,$1D,$E9,$A0,$C5,$B0,$B0,$54,$90,$15,$A5,$EA,$18,$65,$EB
       .byte $C5,$B0,$B0,$49,$A5,$EA,$C9,$08,$B0,$06,$69,$98,$C5,$B0,$90,$3D
       .byte $C6,$EC,$F0,$0E,$A5,$EA,$18,$65,$EB,$A6,$ED,$20,$A8,$FC,$85,$EA
       .byte $D0,$BD,$C6,$EE,$10,$03,$4C,$11,$F3,$A4,$AC,$B9,$8B,$00,$85,$EA
       .byte $B1,$BA,$10,$9B,$B1,$C2,$C9,$50,$F0,$7B,$A5,$90,$18,$69,$0F,$85
       .byte $EA,$A5,$B0,$C5,$EA,$B0,$6E,$69,$08,$C5,$EA,$90,$68,$A5,$EE,$F0
       .byte $28,$C0,$0A,$D0,$37,$B1,$C0,$C9,$B8,$F0,$31,$A5,$8A,$A2,$20,$20
       .byte $A8,$FC,$85,$EA,$C5,$B0,$B0,$03,$4C,$E8,$F2,$A2,$0A,$A5,$B0,$20
       .byte $A8,$FC,$C5,$EA,$90,$16,$4C,$11,$F3,$A9,$06,$C5,$AC,$F0,$06,$A9
       .byte $09,$C5,$AC,$D0,$07,$A8,$B1,$BE,$C9,$0B,$F0,$29,$A4,$AC,$C0,$06
       .byte $B0,$05,$20,$61,$FC,$F0,$2A,$A9,$40,$A6,$E6,$F0,$02,$A9,$80,$25
       .byte $DF,$F0,$0A,$A5,$B0,$C9,$93,$B0,$E9,$C9,$04,$90,$E5,$A9,$80,$05
       .byte $E7,$85,$E7,$D0,$0C,$A4,$AC,$C0,$06,$B0,$D7
LF317: LDA    #$7F
       AND    $E7
       STA    $E7
       LDA    #$3F
       AND    $DB
       BNE    LF343
       DEC    $E0
       BEQ    LF33E
       LDA    #$98
       SEC
       SBC    $E0
       JSR    LF1A8
       STA    $FB
       LDA    #$06
       CMP    $E0
       BNE    LF343
       LDA    #$6F
       JSR    LFC7D
       BEQ    LF343
LF33E: JSR    LFC61
       DEC    $E0
LF343: LDA    $DE
       CMP    #$80
       BEQ    LF34C
       JMP    LF3DD
LF34C: JSR    LFCD9
       BNE    LF36D
       STA    $E3,X
       LDA    #$00
       STA    $E5
       LDA    #$03
       STA    $B3
       JSR    LFCEB
       LDA    #$08
       STA    $DE
       LDA    #$99
       JSR    LF1C6
       LDA    #$FF
       STA    $E1
       INC    $D2,X
LF36D: LDA    $E5
       BEQ    LF39A
       DEC    $AF
       BNE    LF3DD
       LDA    $E3
       AND    #$40
       BEQ    LF381
       LDA    $E3
       EOR    #$C0
       BNE    LF3D7
LF381: LDA    $E3
       AND    #$1F
       STA    $E3
       LDA    #$00
       STA    $E5
       LDA    $DB
       STA    $AF
       ROR
       LDX    #$04
       BCS    LF396
       LDX    #$03
LF396: STX    $B3
       BNE    LF3DD
LF39A: DEC    $AF
       BNE    LF3DD
       DEC    $B3
       BNE    LF3DD
       LDA    $DB
       AND    #$03
       TAY
       INY
       STY    $EA
       LDA    #$00
       SEC
LF3AD: ROL
       DEC    $EA
       BNE    LF3AD
       BEQ    LF3B5
LF3B4: ROL
LF3B5: LDX    $E6
       AND    $E3,X
       BEQ    LF3C7
       INY
       CPY    #$06
       CLC
       BNE    LF3B4
       LDY    #$01
       TYA
       CLC
       BCC    LF3B5
LF3C7: STY    $E5
       LDX    $E6
       LDA    $D2,X
       ROR
       LDX    #$20
       BCS    LF3D4
       LDX    #$40
LF3D4: TXA
       ORA    $E3
LF3D7: STA    $E3
       LDA    #$9D
       STA    $AF
LF3DD: LDA    #$80
       AND    $E7
       BEQ    LF403
       LDY    $AC
       BMI    LF403
       LDA    ($C4),Y
       AND    $DB
       BNE    LF403
       LDX    $B0
       LDA    LFD47,Y
       BMI    LF3FB
       LDA    #$01
       JSR    LFCA8
       BNE    LF401
LF3FB: DEX
       TXA
       BNE    LF401
       LDA    #$A0
LF401: STA    $B0
LF403: LDA    $B0
       JSR    LF1A8
       STA    $B4
LF40A: LDY    $AD
       CPY    #$07
       BNE    LF41F
       LDA    ($C4),Y
       AND    $DB
       BNE    LF418
       INC    $B1
LF418: LDA    $B1
       JSR    LF1A8
       STA    $B5
LF41F: LDY    $AE
       CPY    #$08
       BNE    LF43C
       LDA    $C7
       AND    #$40
       BNE    LF43C
       LDA    ($C4),Y
       AND    $DB
       BNE    LF43C
       INC    $B2
       INC    $B2
       LDA    $B2
       JSR    LF1A8
       STA    $B6
LF43C: LDA    $F9
       BMI    LF447
       AND    #$40
       BEQ    LF46B
       JMP    LF4DC
LF447: LDA    $DB
       AND    #$3F
       BNE    LF497
       LDA    $FA
       CMP    #$02
       LDA    $B1
       BCC    LF45A
       SBC    #$08
       JMP    LF45C
LF45A: ADC    #$08
LF45C: STA    $B1
       LDX    $FA
       INX
       CPX    #$04
       BNE    LF467
       LDX    #$00
LF467: STX    $FA
       BPL    LF4CA
LF46B: LDA    $87
       CMP    #$04
       BNE    LF4DC
       LDY    #$07
       LDA    ($C4),Y
       AND    $DB
       BNE    LF4DC
       LDA    $F9
       EOR    #$20
       STA    $F9
       AND    #$20
       BEQ    LF4DC
       LDA    #$00
       STA    $B1
       STA    $FA
       LDA    #$73
       STA    $B5
       LDA    #$07
       STA    $AD
       LDA    #$C0
       STA    $F9
       BNE    LF4DC
LF497: LDA    $AC
       CMP    #$07
       BNE    LF4CA
       LDA    $C8
       CMP    #$8E
       BEQ    LF4CA
       LDA    $B0
       CMP    $B1
       BCC    LF4B1
       SBC    #$06
       CMP    $B1
       BCC    LF4B7
       BCS    LF4CA
LF4B1: ADC    #$06
       CMP    $B1
       BCC    LF4CA
LF4B7: LDA    #$08
       STA    $F8
       LDA    #$7F
       STA    $AD
       AND    $F9
       STA    $F9
       LDA    #$68
       JSR    LFC7D
       BEQ    LF4DC
LF4CA: LDA    $B1
       CMP    #$98
       BCC    LF4DC
       LDA    #$FF
       STA    $AD
       LDA    $F9
       ORA    #$20
       AND    #$3F
       STA    $F9
LF4DC: LDX    $E6
       LDA    #$04
       CMP    $D2,X
       BCC    LF4E7
       JMP    LF595
LF4E7: LDA    #$08
       CMP    $AE
       BNE    LF569
       CMP    $AC
       BNE    LF524
       LDA    $C8
LF4F3: CMP    #$8E
       BEQ    LF524
       LDA    #$40
       AND    $C7
       STA    $EC
       LDA    $B2
       CMP    $B0
       BCS    LF516
       LDX    $EC
       BNE    LF524
       CLC
       ADC    #$0F
       CMP    $B0
       BCC    LF524
       SBC    #$08
       CMP    $B0
       BCS    LF524
       BCC    LF521
LF516: LDX    $EC
       BEQ    LF524
       SEC
       SBC    #$08
       CMP    $B0
       BCS    LF524
LF521: JSR    LFC61
LF524: LDA    $B2
       CMP    #$98
       BCS    LF55E
       LDA    #$40
       AND    $C7
       BNE    LF549
       LDA    $93
       ADC    #$14
       CMP    #$40
       BCC    LF595
       CMP    $B2
       BCS    LF595
       LDA    #$40
       ORA    $C7
       STA    $C7
       LDA    #$9C
       STA    $CA
       JMP    LF595
LF549: LDA    $88
       SBC    #$04
       CMP    $B2
       BCC    LF595
       LDA    #$BF
       AND    $C7
       STA    $C7
       LDA    #$95
       STA    $CA
       JMP    LF595
LF55E: LDA    #$80
       STA    $AE
       AND    $C7
       STA    $C7
       JMP    LF595
LF569: LDA    $88
       CMP    #$01
       BNE    LF595
       LDY    #$08
       LDA    ($C4),Y
       AND    $DB
       BNE    LF595
       LDA    $C7
       EOR    #$80
       STA    $C7
       BPL    LF595
       LDA    #$00
       STA    $B2
       LDA    #$73
       STA    $B6
       LDA    #$08
       STA    $AE
       LDA    #$95
       STA    $CA
       LDA    #$BF
       AND    $C7
       STA    $C7
LF595: LDX    $E6
       LDA    $D2,X
       STA    $EA
       CMP    #$01
       BEQ    LF5E2
       LDA    $DB
       AND    #$40
       BEQ    LF5A9
       LDA    #$A8
       BNE    LF5AB
LF5A9: LDA    #$B3
LF5AB: STA    $C0
       LDA    #$03
       CMP    $EA
       BCS    LF5E2
       LDA    $DB
       AND    #$10
       BNE    LF5BD
       LDA    #$C9
       BNE    LF5BF
LF5BD: LDA    #$BE
LF5BF: STA    $C2
       LDA    $DB
       AND    #$10
       BNE    LF5D6
       LDX    #$95
       LDA    $C7
       AND    #$40
       BEQ    LF5D1
       LDX    #$9C
LF5D1: STX    $CA
       JMP    LF5E2
LF5D6: LDX    #$5C
       LDA    $C7
       AND    #$40
       BEQ    LF5E0
       LDX    #$62
LF5E0: STX    $CA
LF5E2: LDY    $D9
       BMI    LF61D
       BNE    LF60E
       LDA    ($D6),Y
       BEQ    LF617
       PHA
       LDX    #$01
       AND    #$0F
LF5F1: TAY
       LDA    LFD8F,Y
       STA    AUDF0,X
       BMI    LF5FD
       LDA    #$05
       BNE    LF5FF
LF5FD: LDA    #$0C
LF5FF: STA    AUDC0,X
       DEX
       BMI    LF60A
       PLA
       JSR    LFCD4
       BPL    LF5F1
LF60A: INC    $D6
       LDY    #$0F
LF60E: DEY
       STY    AUDV0
       STY    AUDV1
       STY    $D9
       BPL    LF643
LF617: DEC    $D9
       DEC    $D8
       BMI    LF643
LF61D: LDY    $D8
       BMI    LF643
       BNE    LF641
       LDA    ($D4),Y
       STA    AUDV0
       BEQ    LF641
       JSR    LFCD4
       TAX
       LDA    LFD58,X
       STA    AUDC0
       INY
       LDA    ($D4),Y
       STA    AUDF0
       JSR    LFCD4
       LSR
       STA    $D8
       INC    $D4
       INC    $D4
LF641: DEC    $D8
LF643: LDA    $DB
       ROR
       BCS    LF64B
       JMP    LF729
LF64B: LDA    SWCHB
       STA    $DF
       AND    #$01
       BNE    LF6B0
LF654: LDX    $DD
       LDA    #$03
       CPX    #$03
       BEQ    LF662
       CPX    #$04
       BEQ    LF662
       LDA    #$01
LF662: STA    $D2
       STA    $D3
       LDX    #$00
       STX    $E6
       STX    $E3
       STX    $E4
       STX    $F9
       STX    $FA
       STX    $E5
       DEX
       STX    $AC
       LDA    #$9A
       JSR    LFCF6
       JSR    LFC84
       LDA    #$04
       STA    $D0
       STA    $D1
       STA    $B3
       LDA    #$50
       STA    $B0
       LDA    #$28
       STA    $B4
       LDA    #$0C
       STA    $F8
       LDA    #$1E
       STA    $E0
       LDA    #$5B
       STA    $FB
       STA    $AD
       STA    $AE
       LDA    #$73
       STA    $C8
       LDA    #$2E
       STA    $E8
       JSR    LF1EB
       LDA    #$08
       STA    $DE
       BNE    LF717
LF6B0: LDA    $DF
       AND    #$02
       BEQ    LF6BF
       LDA    #$DF
       AND    $E7
       STA    $E7
       JMP    LF717
LF6BF: STA    $E6
       JSR    LF1EB
       JSR    LFCE2
       LDA    #$1E
       STA    $B3
       LDA    #$20
       AND    $E7
       BNE    LF717
       LDA    #$20
       ORA    $E7
       STA    $E7
       LDA    #$01
       STA    $DE
       LDX    $DD
       INX
       CPX    #$07
       BNE    LF6E4
       LDX    #$01
LF6E4: STX    $DD
       LDA    $DD
       LDX    #$04
       ROR
       BCS    LF6EF
       LDX    #$0A
LF6EF: STX    $E3
       LDA    #$00
       STA    $E5
       LDA    #$7B
       CPX    #$04
       BNE    LF6FD
       LDA    #$61
LF6FD: JSR    LFC7D
       STA    $E6
       LDA    $DD
       LDX    #$03
       CMP    #$03
       BEQ    LF710
       CMP    #$04
       BEQ    LF710
       LDX    #$01
LF710: STX    $D2
       STX    $D3
       JSR    LFC84
LF717: LDA    $DE
       CMP    #$10
       BEQ    LF729
       LDA    $DF
       LDY    #$2E
       AND    #$08
       BNE    LF727
       LDY    #$1F
LF727: STY    $E8
LF729: LDA    #$00
       STA    PF0
       LDY    #$00
       LDA    ($E8),Y
       STA    COLUBK
LF733: LDA    INTIM
       BMI    LF733
       LDA    #$40
       STA    WSYNC
       STA    VBLANK
       LDA    #$8C
       STA    TIM64T
       LDA    $DB
       ROR
       BCC    LF79F
       LDA    $E5
       BEQ    LF79F
       LDA    $E3
       LDX    #$00
LF750: ROL
       BCS    LF757
       INX
       INX
       BNE    LF750
LF757: LDA    LFE14,X
       STA    $F3
       LDA    LFE15,X
       STA    $F4
       LDA    #$00
       STA    $EF
       STA    $F0
       LDA    #$50
       STA    $F5
       LDA    #$FF
       STA    $F6
       LDA    $E5
       CMP    #$04
       BCC    LF777
       SBC    #$03
LF777: TAX
       LDA    #$00
       SEC
LF77B: ROL
       DEX
       BNE    LF77B
       ROL
       TAX
       LDY    $E5
       LDA    LFE0C,X
       CPY    #$04
       BCS    LF78D
       LDA    LFDFC,X
LF78D: STA    $F1
       LDX    $E5
       LDA    #$A3
       CPX    #$04
       BCS    LF799
       LDA    #$3A
LF799: STA    $F2
       LDA    #$0C
       BNE    LF7E9
LF79F: LDX    $E6
       LDA    $E3,X
       AND    #$1F
       STA    $EA
       AND    #$07
       BNE    LF7B1
       LDX    #$50
       LDY    #$FF
       BNE    LF7B5
LF7B1: LDX    #$D5
       LDY    #$FD
LF7B5: STX    $F3
       STY    $F4
       CLC
       ROL
       TAX
       LDA    LFDFC,X
       STA    $F1
       LDA    LFDFD,X
       STA    $EF
       LDA    $EA
       ROR
       ROR
       AND    #$06
       BNE    LF7D4
       LDX    #$50
       LDY    #$FF
       BNE    LF7D8
LF7D4: LDX    #$D5
       LDY    #$FD
LF7D8: STX    $F5
       STY    $F6
       TAX
       LDA    LFE0C,X
       STA    $F2
       LDA    LFE0D,X
       STA    $F0
       LDA    #$04
LF7E9: STA    $F7
       LDX    $E6
       LDA    $DE
       CMP    #$01
       BNE    LF7F5
       LDX    #$02
LF7F5: LDA    LFD55,X
       STA    $EB
       LDA    LFFF9,X
       STA    $EE
       LDA    LFD52,X
       STA    $EA
       LDX    #$00
       JSR    LFCB4
       LDA    $EB
       INX
       JSR    LFCC3
       LDY    #$02
       LDA    ($E8),Y
       STA    COLUP0
       STA    COLUP1
       LDX    #$01
       STX    NUSIZ0
       STX    NUSIZ1
       STX    CTRLPF
       LDX    #$07
       TXS
       STA    WSYNC
       LDA    $DE
       CMP    #$01
       BEQ    LF85D
       LDX    $E6
       LDY    #$00
LF82E: LDA    $CC,X
       AND    #$0F
       ASL
       ASL
       ASL
       STA.wy $00EB,Y
       LDA    $CC,X
       AND    #$F0
       LSR
       STA.wy $00EA,Y
       INX
       INX
       INY
       INY
       CPY    #$04
       BNE    LF82E
       STA    WSYNC
       LDX    #$00
LF84C: LDA    $EA,X
       BEQ    LF852
       BNE    LF86E
LF852: LDA    #$50
       STA    $EA,X
       INX
       CPX    #$03
       BNE    LF84C
       BEQ    LF86E
LF85D: STA    WSYNC
       LDY    #$50
       STY    $EB
       STY    $EC
       STY    $ED
       LDA    $DD
       ASL
       ASL
       ASL
       STA    $EA
LF86E: LDA    INTIM
       BMI    LF86E
       STA    WSYNC
       LDY    $EE
LF877: DEY
       BPL    LF877
LF87A: LDY    $EA
       LDA    LFF01,Y
       STA    GRP0
       LDY    $EB
       LDA    LFF01,Y
       STA    GRP1
       LDY    $EC
       LDA    LFF01,Y
       TAX
       LDY    $ED
       LDA    LFF01,Y
       STX    GRP0
       STA    GRP1
       INC    $EA
       INC    $EB
       INC    $EC
       INC    $ED
       INC    $EE
       TSX
       DEX
       TXS
       BPL    LF87A
       LDA    #$05
       STA    CTRLPF
       LDX    #$01
       LDA    $F0
       STA    NUSIZ1
       LDA    $F2
       JSR    LFCB4
       LDY    #$04
       LDA    ($E8),Y
       STA    COLUBK
       STA    COLUPF
       LDY    $F7
       LDA    ($E8),Y
       STA    COLUP0
       STA    COLUP1
       DEX
       LDA    $EF
       STA    NUSIZ0
       LDA    $F1
       JSR    LFCC3
       LDY    #$0B
       LDA    ($E8),Y
       STA    COLUBK
       LDA    #$30
       STA    PF0
       LDA    #$3C
       STA    PF1
       STA    PF2
       LDY    #$0B
LF8E1: LDA    ($F3),Y
       STA    WSYNC
       STA    GRP0
       LDA    ($F5),Y
       STA    GRP1
       DEY
       BNE    LF8E1
       STY    WSYNC
       STY    GRP0
       STY    GRP1
       STY    PF1
       STY    PF2
       LDY    #$0A
       LDA    #$FF
       STA    $EC
       STA    $EE
LF900: STY    $EA
       CPY    #$05
       BEQ    LF910
       STA    WSYNC
       LDA    $DB
       ROR
       BCC    LF910
       JMP    LF9CA
LF910: LDA    ($BA),Y
       STA    NUSIZ1
       LDA    ($C2),Y
       STA    $ED
       LDA.wy $00A1,Y
       LDX    #$01
       JSR    LFCB4
       LDY    $EA
       CPY    #$05
       BNE    LF947
       LDY    #$03
       LDA    ($E8),Y
       STA    COLUBK
       LDY    #$05
       CPY    $AC
       BNE    LF947
       LDY    $F8
       LDA    ($E8),Y
       STA    COLUP0
       LDA    $C8
       STA    $EB
       LDA    $B4
       LDX    #$00
       STX    NUSIZ0
       JSR    LFCC3
       BMI    LF95F
LF947: LDA    ($B8),Y
       STA    NUSIZ0
       LDA    ($C0),Y
       STA    $EB
       LDA.wy $0096,Y
       DEX
       JSR    LFCC3
       LDY    $EA
       LDA    ($BC),Y
       TAY
       LDA    ($E8),Y
       STA    COLUP0
LF95F: LDY    $EA
       LDA    ($BE),Y
       TAY
       LDA    ($E8),Y
       STA    COLUP1
LF968: LDY    #$07
LF96A: STA    WSYNC
       LDA    ($EB),Y
       STA    GRP0
       LDA    ($ED),Y
       STA    GRP1
       DEY
       BNE    LF96A
       STA    WSYNC
       STY    GRP0
       STY    GRP1
       LDY    $EA
       DEY
       BMI    LF993
       CPY    #$04
       BNE    LF990
       LDY    #$00
       STA    WSYNC
       LDA    ($E8),Y
       STA    COLUBK
       LDY    #$04
LF990: JMP    LF900
LF993: LDY    #$03
       LDA    ($E8),Y
       STA    $F7
       LDX    #$00
       LDA    $B4
       JSR    LFCC3
       LDA    $F7
       STA    COLUBK
       LDY    $F8
       LDA    ($E8),Y
       STA    COLUP0
       LDA    #$00
       STA    NUSIZ0
       LDA    $C8
       LDX    $AC
       BMI    LF9B6
       LDA    #$50
LF9B6: STA    $EB
       LDY    #$07
LF9BA: STA    WSYNC
       LDA    ($EB),Y
       STA    GRP0
       DEY
       BNE    LF9BA
       STA    WSYNC
       STY    GRP0
       JMP    LFA3D
LF9CA: CPY    $AD
       BEQ    LF9D9
       CPY    $AE
       BEQ    LFA0F
       CPY    $AC
       BEQ    LFA1B
       JMP    LF910
LF9D9: LDX    #$00
       STX    NUSIZ1
       LDY    #$01
       LDX    $C9
       LDA    $B5
LF9E3: STX    $ED
       STY    $EF
       LDX    #$01
       JSR    LFCB4
       LDA    #$50
       LDY    $AC
       CPY    $EA
       BNE    LF9F6
       LDA    $C8
LF9F6: STA    $EB
       DEX
       STX    NUSIZ0
       LDA    $B4
       JSR    LFCC3
       LDY    $EF
       LDA    ($E8),Y
       STA    COLUP1
       LDY    $F8
       LDA    ($E8),Y
       STA    COLUP0
       JMP    LF968
LFA0F: LDA    #$05
       STA    NUSIZ1
       LDX    $CA
       LDA    $B6
       LDY    #$0E
       BNE    LF9E3
LFA1B: LDY    $F8
       LDA    ($E8),Y
       STA    COLUP0
       LDA    #$00
       STA    NUSIZ0
       LDA    $C8
       STA    $EB
       LDA    $B4
       LDX    #$00
       JSR    LFCB4
       LDA    #$50
       STA    $ED
       LDA    $B4
       INX
       JSR    LFCC3
       JMP    LF968
LFA3D: LDX    #$07
       LDA    $E0
       CMP    #$10
       BCS    LFA47
       LDX    #$05
LFA47: STX    NUSIZ0
       LDY    #$00
       LDA    #$06
       CMP    $E0
       BCC    LFA53
       LDY    #$09
LFA53: LDA    ($E8),Y
       STA    COLUP0
       LDA    #$05
       STA    NUSIZ1
       LDA    #$44
       LDX    #$01
       JSR    LFCB4
       LDY    #$04
       LDA    ($E8),Y
       STA    COLUBK
       LDY    #$01
       LDA    ($E8),Y
       STA    COLUP1
       LDY    #$FF
       LDA    $E0
       BPL    LFA75
       INY
LFA75: STY    $EF
       LDA    $FB
       DEX
       JSR    LFCC3
       LDX    $E6
       LDA    $D0,X
       BPL    LFA87
       LDY    #$00
       BEQ    LFA8E
LFA87: AND    #$07
       TAX
       LDA    LFDF7,X
       TAY
LFA8E: LDX    #$05
LFA90: STA    WSYNC
       STY    GRP1
       LDA    $EF
       STA    GRP0
       DEX
       BNE    LFA90
       STX    GRP0
       STX    GRP1
       LDY    #$A7
       STY    TIM64T
       LDA    $DB
       ROR
       BCC    LFAAF
       LDA    $DE
       CMP    #$80
       BEQ    LFAB2
LFAAF: JMP    LFBF9
LFAB2: LDA    SWCHA
       LDX    $E6
       BEQ    LFABD
       ASL
       ASL
       ASL
       ASL
LFABD: EOR    #$FF
       AND    #$F0
       CMP    $CB
       STA    $CB
       BNE    LFAD3
       LDA    $DB
       AND    #$06
       BNE    LFAAF
       LDX    $DD
       CPX    #$05
       BCC    LFAAF
LFAD3: LDA    $CB
       CMP    #$10
       BEQ    LFB0B
       CMP    #$20
       BEQ    LFB01
       CMP    #$40
       BEQ    LFAF3
       CMP    #$80
       BNE    LFAAF
       LDA    $B0
       ADC    #$07
       CMP    #$93
       BCS    LFAAF
       STA    $B0
       LDA    #$80
       BCC    LFB20
LFAF3: LDA    $B0
       SBC    #$08
       CMP    #$06
       BCC    LFAAF
       STA    $B0
       LDA    #$87
       BNE    LFB20
LFB01: LDA    $AC
       BMI    LFAAF
       DEC    $AC
       LDA    #$79
       BNE    LFB20
LFB0B: INC    $AC
       LDX    $AC
       CPX    #$0B
       BEQ    LFB2A
       CPX    $DA
       BCC    LFB1E
       INC    $DA
       LDA    #$01
       JSR    LF1C6
LFB1E: LDA    #$73
LFB20: STA    $C8
       LDA    #$61
       JSR    LFC7D
       JMP    LFBF9
LFB2A: DEC    $AC
       LDA    #$0B
       STA    $EA
       LDX    #$05
       LDY    $B0
LFB34: CPY    $EA
       BCC    LFB4E
       LDA    #$07
       ADC    $EA
       STA    $EA
       CPY    $EA
       BCC    LFB54
       DEX
       BEQ    LFB4E
       LDA    #$18
       CLC
       ADC    $EA
       STA    $EA
       BNE    LFB34
LFB4E: JSR    LFC61
       JMP    LFBF9
LFB54: STX    $EB
       LDA    #$06
       SEC
       SBC    $EB
       STA    $EB
       CMP    $E5
       BNE    LFB7C
       LDA    $E3
       STA    $EC
       AND    #$1F
       STA    $E3
       LDA    #$00
       STA    $E5
       LDA    #$02
       STA    $B3
       BIT    $EC
       BMI    LFB4E
       BVS    LFB7C
       LDA    #$20
       JSR    LF1C6
LFB7C: LDX    $E6
       LDA    $E3,X
       AND    #$1F
       STA    $EA
       SEC
       LDA    #$00
       LDX    $EB
LFB89: ROL
       DEX
       BNE    LFB89
       BIT    $EA
       BEQ    LFB94
       JMP    LFBF9
LFB94: LDX    $E6
       ORA    $E3,X
       STA    $E3,X
       LDA    $F9
       BMI    LFBA6
       AND    #$40
       BEQ    LFBA6
       LDA    #$25
       BNE    LFBA8
LFBA6: LDA    #$05
LFBA8: JSR    LF1C6
       LDY    #$00
       STY    $DA
       LDA    #$49
       STA    $AC
       INY
       LDA    $DB
       AND    #$03
       TAX
LFBB9: LDA    LFDE1,X
       STA    $80,X
       LDA    LFDEC,X
       STA    $8B,X
       DEY
       BMI    LFBC9
       INX
       BNE    LFBB9
LFBC9: JSR    LFCD9
       BEQ    LFBD6
       LDA    #$08
       STA    $E1
       LDA    #$08
       STA    $DE
LFBD6: SEC
       LDX    #$FF
       LDA    $E0
LFBDB: INX
       SBC    #$0A
       BCS    LFBDB
       ADC    #$0A
       STA    $EA
       TXA
       ASL
       ASL
       ASL
       ASL
       ORA    $EA
       STA    $EA
       SED
       ADC    $EA
       CLD
       JSR    LF1C6
       LDA    #$81
       JSR    LFC7D
LFBF9: LDY    #$0A
LFBFB: LDA    #$01
       STA    $EE
       LDA    ($C4),Y
       AND    $DB
       BNE    LFC56
       LDX    $80,Y
       BNE    LFC0B
LFC09: LDX    $8B,Y
LFC0B: LDA    LFD47,Y
       BMI    LFC19
       INX
       CPX    #$A1
       BNE    LFC1E
       LDX    #$01
       BNE    LFC1E
LFC19: DEX
       BNE    LFC1E
       LDX    #$A0
LFC1E: LDA    $EE
       BNE    LFC26
       STX    $8B,Y
       BEQ    LFC28
LFC26: STX    $80,Y
LFC28: TXA
       STA    $EA
       LSR
       LSR
       LSR
       LSR
       SEC
       ADC    $EA
       LSR
       LSR
       LSR
       LSR
       STA    $EB
       CLC
       ADC    $EA
       EOR    #$FF
       ASL
       ASL
       ASL
       ASL
       ORA    $EB
       CLC
       ADC    #$83
       LDX    $EE
       BNE    LFC4F
       STA.wy $00A1,Y
       BEQ    LFC52
LFC4F: STA.wy $0096,Y
LFC52: DEC    $EE
       BPL    LFC09
LFC56: DEY
       BPL    LFBFB
LFC59: LDA    INTIM
       BMI    LFC59
       JMP    LF071
LFC61: LDA    #$08
       STA    $DE
       LDA    #$46
       STA    $E1
       LDA    #$8E
       STA    $C8
       LDA    #$7F
       AND    $E7
       STA    $E7
       LDX    $E6
       DEC    $D0,X
       LDA    #$00
       STA    $DA
       LDA    #$88
LFC7D: STA    $D4
       LDA    #$00
       STA    $D8
       RTS

LFC84: LDX    $E6
       LDA    $D2,X
LFC88: CMP    #$0B
       BCC    LFC90
       SBC    #$0A
       BNE    LFC88
LFC90: TAY
       LDX    LFD3C,Y
       STX    $B8
       STX    $BA
       LDA    LFD00,Y
       STA    $C4
       LDA    LFD0A,Y
       STA    $C0
       LDA    LFD14,Y
       STA    $C2
       RTS

LFCA8: STX    $F3
       CLC
       ADC    $F3
       CMP    #$A1
       BCC    LFCB3
       SBC    #$A0
LFCB3: RTS

LFCB4: STA    HMP0,X
       AND    #$0F
       TAY
       STA    WSYNC
LFCBB: DEY
       BPL    LFCBB
       STA    RESP0,X
       STA    WSYNC
       RTS

LFCC3: STA    HMP0,X
       AND    #$0F
       TAY
       STA    WSYNC
LFCCA: DEY
       BPL    LFCCA
       STA    RESP0,X
       STA    WSYNC
       STA    HMOVE
       RTS

LFCD4: LSR
       LSR
       LSR
       LSR
       RTS

LFCD9: LDX    $E6
       LDA    $E3,X
       AND    #$1F
       CMP    #$1F
       RTS

LFCE2: LDX    #$40
       STX    $AC
       STX    $AD
       STX    $AE
       RTS

LFCEB: LDX    $E6
       LDA    $D2,X
       ROR
       LDA    #$9A
       BCC    LFCF6
       LDA    #$B8
LFCF6: STA    $D6
       LDA    #$00
       STA    $D9
       RTS

LFCFD: .byte $28 ; |  X X   | $FCFD
       .byte $33 ; |  XX  XX| $FCFE
       .byte $3E ; |  XXXXX | $FCFF
LFD00: .byte $49 ; | X  X  X| $FD00
       .byte $54 ; | X X X  | $FD01
       .byte $5E ; | X XXXX | $FD02
       .byte $68 ; | XX X   | $FD03
       .byte $73 ; | XXX  XX| $FD04
       .byte $92 ; |X  X  X | $FD05
       .byte $87 ; |X    XXX| $FD06
       .byte $73 ; | XXX  XX| $FD07
       .byte $5E ; | X XXXX | $FD08
       .byte $87 ; |X    XXX| $FD09
LFD0A: .byte $7D ; | XXXXX X| $FD0A
       .byte $9D ; |X  XXX X| $FD0B
       .byte $B3 ; |X XX  XX| $FD0C
       .byte $A8 ; |X X X   | $FD0D
       .byte $A8 ; |X X X   | $FD0E
       .byte $B3 ; |X XX  XX| $FD0F
       .byte $B3 ; |X XX  XX| $FD10
       .byte $B3 ; |X XX  XX| $FD11
       .byte $B3 ; |X XX  XX| $FD12
       .byte $B3 ; |X XX  XX| $FD13
LFD14: .byte $B3 ; |X XX  XX| $FD14
       .byte $9D ; |X  XXX X| $FD15
       .byte $9D ; |X  XXX X| $FD16
       .byte $9D ; |X  XXX X| $FD17
       .byte $BE ; |X XXXXX | $FD18
       .byte $C9 ; |XX  X  X| $FD19
       .byte $BE ; |X XXXXX | $FD1A
       .byte $B3 ; |X XX  XX| $FD1B
       .byte $B3 ; |X XX  XX| $FD1C
       .byte $B3 ; |X XX  XX| $FD1D
       .byte $B3 ; |X XX  XX| $FD1E
       .byte $00 ; |        | $FD1F
       .byte $FF; strip
       .byte $0C ; |    XX  | $FD21
       .byte $08 ; |    X   | $FD22
       .byte $02 ; |      X | $FD23
       .byte $03 ; |      XX| $FD24
       .byte $00 ; |        | $FD25
       .byte $0D ; |    XX X| $FD26
       .byte $0E ; |    XXX | $FD27
       .byte $00 ; |        | $FD28
       .byte $0A ; |    X X | $FD29
       .byte $04 ; |     X  | $FD2A
       .byte $0E ; |    XXX | $FD2B
       .byte $0C ; |    XX  | $FD2C
       .byte $0E ; |    XXX | $FD2D
       .byte $00 ; |        | $FD2E
       .byte $0E ; |    XXX | $FD2F
       .byte $28 ; |  X X   | $FD30
       .byte $1C ; |   XXX  | $FD31
       .byte $D4 ; |XX X X  | $FD32
       .byte $90 ; |X  X    | $FD33
       .byte $12 ; |   X  X | $FD34
       .byte $68 ; | XX X   | $FD35
       .byte $16 ; |   X XX | $FD36
       .byte $22 ; |  X   X | $FD37
       .byte $96 ; |X  X XX | $FD38
       .byte $90 ; |X  X    | $FD39
       .byte $D6 ; |XX X XX | $FD3A
       .byte $58 ; | X XX   | $FD3B
LFD3C: .byte $D4 ; |XX X X  | $FD3C
       .byte $EA ; |XXX X X | $FD3D
       .byte $F5 ; |XXXX X X| $FD3E
       .byte $D4 ; |XX X X  | $FD3F
       .byte $F5 ; |XXXX X X| $FD40
       .byte $EA ; |XXX X X | $FD41
       .byte $F5 ; |XXXX X X| $FD42
       .byte $EA ; |XXX X X | $FD43
       .byte $DF ; |XX XXXXX| $FD44
       .byte $D4 ; |XX X X  | $FD45
       .byte $FF; strip
LFD47: .byte $9F ; |X  XXXXX| $FD47
       .byte $00 ; |        | $FD48
       .byte $9F ; |X  XXXXX| $FD49
       .byte $00 ; |        | $FD4A
       .byte $9F ; |X  XXXXX| $FD4B
       .byte $00 ; |        | $FD4C
       .byte $9F ; |X  XXXXX| $FD4D
       .byte $00 ; |        | $FD4E
       .byte $00 ; |        | $FD4F
       .byte $9F ; |X  XXXXX| $FD50
       .byte $00 ; |        | $FD51
LFD52: .byte $C5 ; |XX   X X| $FD52
       .byte $C9 ; |XX  X  X| $FD53
       .byte $C7 ; |XX   XXX| $FD54
LFD55: .byte $36 ; |  XX XX | $FD55
       .byte $3A ; |  XXX X | $FD56
       .byte $38 ; |  XXX   | $FD57
LFD58: .byte $04 ; |     X  | $FD58
       .byte $08 ; |    X   | $FD59
       .byte $0D ; |    XX X| $FD5A
       .byte $ED ; |XXX XX X| $FD5B
       .byte $0E ; |    XXX | $FD5C
       .byte $0E ; |    XXX | $FD5D
       .byte $A1 ; |X X    X| $FD5E
       .byte $02 ; |      X | $FD5F
       .byte $1F ; |   XXXXX| $FD60
       .byte $09 ; |    X  X| $FD61
       .byte $6D ; | XX XX X| $FD62
       .byte $08 ; |    X   | $FD63
       .byte $67 ; | XX  XXX| $FD64
       .byte $FF; strip
       .byte $70 ; | XXX    | $FD66
       .byte $00 ; |        | $FD67
       .byte $0C ; |    XX  | $FD68
       .byte $A8 ; |X X X   | $FD69
       .byte $0C ; |    XX  | $FD6A
       .byte $A4 ; |X X  X  | $FD6B
       .byte $0C ; |    XX  | $FD6C
       .byte $FF; strip
       .byte $00 ; |        | $FD6E
       .byte $2E ; |  X XXX | $FD6F
       .byte $42 ; | X    X | $FD70
       .byte $28 ; |  X X   | $FD71
       .byte $43 ; | X    XX| $FD72
       .byte $22 ; |  X   X | $FD73
       .byte $45 ; | X   X X| $FD74
       .byte $2E ; |  X XXX | $FD75
       .byte $62 ; | XX   X | $FD76
       .byte $28 ; |  X X   | $FD77
       .byte $43 ; | X    XX| $FD78
       .byte $FF; strip
       .byte $45 ; | X   X X| $FD7A
       .byte $2E ; |  X XXX | $FD7B
       .byte $42 ; | X    X | $FD7C
       .byte $28 ; |  X X   | $FD7D
       .byte $43 ; | X    XX| $FD7E
       .byte $22 ; |  X   X | $FD7F
       .byte $45 ; | X   X X| $FD80
       .byte $FF; strip
       .byte $42 ; | X    X | $FD82
       .byte $28 ; |  X X   | $FD83
       .byte $43 ; | X    XX| $FD84
       .byte $22 ; |  X   X | $FD85
       .byte $45 ; | X   X X| $FD86
       .byte $00 ; |        | $FD87
       .byte $1E ; |   XXXX | $FD88
       .byte $FF; strip
       .byte $26 ; |  X  XX | $FD8A
       .byte $45 ; | X   X X| $FD8B
       .byte $18 ; |   XX   | $FD8C
       .byte $9E ; |X  XXXX | $FD8D
       .byte $00 ; |        | $FD8E
LFD8F: .byte $97 ; |X  X XXX| $FD8F
       .byte $94 ; |X  X X  | $FD90
       .byte $91 ; |X  X   X| $FD91
       .byte $8F ; |X   XXXX| $FD92
       .byte $1A ; |   XX X | $FD93
       .byte $17 ; |   X XXX| $FD94
       .byte $FF; strip
       .byte $13 ; |   X  XX| $FD96
       .byte $11 ; |   X   X| $FD97
       .byte $0F ; |    XXXX| $FD98
       .byte $00 ; |        | $FD99
       .byte $62 ; | XX   X | $FD9A
       .byte $42 ; | X    X | $FD9B
       .byte $40 ; | X      | $FD9C
       .byte $42 ; | X    X | $FD9D
       .byte $62 ; | XX   X | $FD9E
       .byte $42 ; | X    X | $FD9F
       .byte $40 ; | X      | $FDA0
       .byte $FF; strip
       .byte $73 ; | XXX  XX| $FDA2
       .byte $73 ; | XXX  XX| $FDA3
       .byte $61 ; | XX    X| $FDA4
       .byte $63 ; | XX   XX| $FDA5
       .byte $53 ; | X X  XX| $FDA6
       .byte $A3 ; |X X   XX| $FDA7
       .byte $A0 ; |X X     | $FDA8
       .byte $A3 ; |X X   XX| $FDA9
       .byte $FF; strip
       .byte $73 ; | XXX  XX| $FDAB
       .byte $60 ; | XX     | $FDAC
       .byte $63 ; | XX   XX| $FDAD
       .byte $53 ; | X X  XX| $FDAE
       .byte $53 ; | X X  XX| $FDAF
       .byte $90 ; |X  X    | $FDB0
       .byte $93 ; |X  X  XX| $FDB1
       .byte $83 ; |X     XX| $FDB2
       .byte $73 ; | XXX  XX| $FDB3
       .byte $FF; strip
       .byte $53 ; | X X  XX| $FDB5
       .byte $42 ; | X    X | $FDB6
       .byte $00 ; |        | $FDB7
       .byte $42 ; | X    X | $FDB8
       .byte $50 ; | X X    | $FDB9
       .byte $62 ; | XX   X | $FDBA
       .byte $70 ; | XXX    | $FDBB
       .byte $82 ; |X     X | $FDBC
       .byte $FF; strip
       .byte $60 ; | XX     | $FDB4
       .byte $A0 ; |X X     | $FDBF
       .byte $42 ; | X    X | $FDC0
       .byte $50 ; | X X    | $FDC1
       .byte $62 ; | XX   X | $FDC2
       .byte $50 ; | X X    | $FDC3
       .byte $42 ; | X    X | $FDC4
       .byte $FF; strip
       .byte $42 ; | X    X | $FDC6
       .byte $A0 ; |X X     | $FDC7
       .byte $42 ; | X    X | $FDC8
       .byte $50 ; | X X    | $FDC9
       .byte $62 ; | XX   X | $FDCA
       .byte $70 ; | XXX    | $FDCB
       .byte $82 ; |X     X | $FDCC
       .byte $A0 ; |X X     | $FDCD
       .byte $62 ; | XX   X | $FDCE
       .byte $FF; strip
       .byte $83 ; |X     XX| $FDD0
       .byte $70 ; | XXX    | $FDD1
       .byte $63 ; | XX   XX| $FDD2
       .byte $50 ; | X X    | $FDD3
       .byte $42 ; | X    X | $FDD4
       .byte $00 ; |        | $FDD5
       .byte $C3 ; |XX    XX| $FDD6
       .byte $FF; strip
       .byte $3C ; |  XXXX  | $FDD8
       .byte $66 ; | XX  XX | $FDD9
       .byte $DB ; |XX XX XX| $FDDA
       .byte $FF ; |XXXXXXXX| $FDDB
       .byte $BD ; |X XXXX X| $FDDC
       .byte $3C ; |  XXXX  | $FDDD
       .byte $E7 ; |XXX  XXX| $FDDE
       .byte $A5 ; |X X  X X| $FDDF
       .byte $42 ; | X    X | $FDE0
LFDE1: .byte $01 ; |       X| $FDE1
       .byte $0B ; |    X XX| $FDE2
       .byte $FF; strip
       .byte $16 ; |   X XX | $FDE4
       .byte $0F ; |    XXXX| $FDE5
       .byte $08 ; |    X   | $FDE6
       .byte $05 ; |     X X| $FDE7
       .byte $5A ; | X XX X | $FDE8
       .byte $0A ; |    X X | $FDE9
       .byte $46 ; | X   XX | $FDEA
       .byte $02 ; |      X | $FDEB
LFDEC: .byte $51 ; | X X   X| $FDEC
       .byte $5B ; | X XX XX| $FDED
       .byte $FF; strip
       .byte $66 ; | XX  XX | $FDEF
       .byte $5F ; | X XXXXX| $FDF0
       .byte $32 ; |  XX  X | $FDF1
       .byte $46 ; | X   XX | $FDF2
       .byte $62 ; | XX   X | $FDF3
       .byte $2A ; |  X X X | $FDF4
       .byte $0A ; |    X X | $FDF5
       .byte $52 ; | X X  X | $FDF6
LFDF7: .byte $00 ; |        | $FDF7
       .byte $80 ; |X       | $FDF8
       .byte $A0 ; |X X     | $FDF9
       .byte $A8 ; |X X X   | $FDFA
       .byte $AA ; |X X X X | $FDFB
LFDFC: .byte $A3 ; |X X   XX| $FDFC
LFDFD: .byte $00 ; |        | $FDFD
       .byte $A3 ; |X X   XX| $FDFE
       .byte $00 ; |        | $FDFF
       .byte $76 ; | XXX XX | $FE00
       .byte $00 ; |        | $FE01
       .byte $A3 ; |X X   XX| $FE02
       .byte $02 ; |      X | $FE03
       .byte $FF; strip
       .byte $00 ; |        | $FE05
       .byte $A3 ; |X X   XX| $FE06
       .byte $04 ; |     X  | $FE07
       .byte $76 ; | XXX XX | $FE08
       .byte $02 ; |      X | $FE09
       .byte $A3 ; |X X   XX| $FE0A
       .byte $06 ; |     XX | $FE0B
LFE0C: .byte $3A ; |  XXX X | $FE0C
LFE0D: .byte $00 ; |        | $FE0D
       .byte $3A ; |  XXX X | $FE0E
       .byte $00 ; |        | $FE0F
       .byte $1C ; |   XXX  | $FE10
       .byte $00 ; |        | $FE11
       .byte $3A ; |  XXX X | $FE12
       .byte $02 ; |      X | $FE13
LFE14: .byte $68 ; | XX X   | $FE14
LFE15: .byte $FF ; |XXXXXXXX| $FE15
       .byte $E2 ; |XXX   X | $FE16
       .byte $FF ; |XXXXXXXX| $FE17
       .byte $ED ; |XXX XX X| $FE18
       .byte $FF ; |XXXXXXXX| $FE19
       .byte $00 ; |        | $FE1A
       .byte $FF; strip
       .byte $9A ; |X  XX X | $FE1C
       .byte $02 ; |      X | $FE1D
       .byte $07 ; |     XXX| $FE1E
       .byte $0E ; |    XXX | $FE1F
       .byte $0D ; |    XX X| $FE20
       .byte $01 ; |       X| $FE21
       .byte $0E ; |    XXX | $FE22
       .byte $09 ; |    X  X| $FE23
       .byte $06 ; |     XX | $FE24
       .byte $06 ; |     XX | $FE25
       .byte $09 ; |    X  X| $FE26
       .byte $06 ; |     XX | $FE27
       .byte $FF; strip
       .byte $07 ; |     XXX| $FE29
       .byte $0E ; |    XXX | $FE2A
       .byte $0D ; |    XX X| $FE2B
       .byte $01 ; |       X| $FE2C
       .byte $0E ; |    XXX | $FE2D
       .byte $09 ; |    X  X| $FE2E
       .byte $06 ; |     XX | $FE2F
       .byte $06 ; |     XX | $FE30
       .byte $FF; strip
       .byte $06 ; |     XX | $FE32
       .byte $02 ; |      X | $FE33
       .byte $07 ; |     XXX| $FE34
       .byte $0E ; |    XXX | $FE35
       .byte $0D ; |    XX X| $FE36
       .byte $01 ; |       X| $FE37
       .byte $0E ; |    XXX | $FE38
       .byte $0A ; |    X X | $FE39
       .byte $FF; strip
       .byte $06 ; |     XX | $FE3B
       .byte $0B ; |    X XX| $FE3C
       .byte $06 ; |     XX | $FE3D
       .byte $02 ; |      X | $FE3E
       .byte $07 ; |     XXX| $FE3F
       .byte $0E ; |    XXX | $FE40
       .byte $0D ; |    XX X| $FE41
       .byte $01 ; |       X| $FE42
       .byte $0E ; |    XXX | $FE43
       .byte $0B ; |    X XX| $FE44
       .byte $06 ; |     XX | $FE45
       .byte $06 ; |     XX | $FE3A
       .byte $0A ; |    X X | $FE47
       .byte $FF; strip
       .byte $02 ; |      X | $FE49
       .byte $07 ; |     XXX| $FE4A
       .byte $0E ; |    XXX | $FE4B
       .byte $0D ; |    XX X| $FE4C
       .byte $01 ; |       X| $FE4D
       .byte $0E ; |    XXX | $FE4E
       .byte $0A ; |    X X | $FE4F
       .byte $06 ; |     XX | $FE50
       .byte $06 ; |     XX | $FE51
       .byte $09 ; |    X  X| $FE52
       .byte $06 ; |     XX | $FE53
       .byte $FF; strip
       .byte $07 ; |     XXX| $FE55
       .byte $07 ; |     XXX| $FE56
       .byte $03 ; |      XX| $FE57
       .byte $07 ; |     XXX| $FE58
       .byte $01 ; |       X| $FE59
       .byte $03 ; |      XX| $FE5A
       .byte $01 ; |       X| $FE5B
       .byte $03 ; |      XX| $FE5C
       .byte $01 ; |       X| $FE5D
       .byte $FF; strip
       .byte $03 ; |      XX| $FE5F
       .byte $03 ; |      XX| $FE60
       .byte $01 ; |       X| $FE61
       .byte $03 ; |      XX| $FE62
       .byte $00 ; |        | $FE63
       .byte $01 ; |       X| $FE64
       .byte $03 ; |      XX| $FE65
       .byte $01 ; |       X| $FE66
       .byte $03 ; |      XX| $FE67
       .byte $03 ; |      XX| $FE68
       .byte $FF; strip
       .byte $03 ; |      XX| $FE6A
       .byte $01 ; |       X| $FE6B
       .byte $03 ; |      XX| $FE6C
       .byte $00 ; |        | $FE6D
       .byte $01 ; |       X| $FE6E
       .byte $01 ; |       X| $FE6F
       .byte $00 ; |        | $FE70
       .byte $03 ; |      XX| $FE71
       .byte $FF; strip
       .byte $00 ; |        | $FE73
       .byte $01 ; |       X| $FE74
       .byte $03 ; |      XX| $FE75
       .byte $01 ; |       X| $FE76
       .byte $00 ; |        | $FE77
       .byte $03 ; |      XX| $FE78
       .byte $07 ; |     XXX| $FE79
       .byte $03 ; |      XX| $FE7A
       .byte $01 ; |       X| $FE7B
       .byte $01 ; |       X| $FE7C
       .byte $03 ; |      XX| $FE7D
       .byte $FF; strip
       .byte $01 ; |       X| $FE7F
       .byte $03 ; |      XX| $FE80
       .byte $00 ; |        | $FE81
       .byte $03 ; |      XX| $FE82
       .byte $03 ; |      XX| $FE83
       .byte $07 ; |     XXX| $FE84
       .byte $FF; strip
       .byte $01 ; |       X| $FE86
       .byte $01 ; |       X| $FE87
       .byte $00 ; |        | $FE88
       .byte $00 ; |        | $FE89
       .byte $07 ; |     XXX| $FE8A
       .byte $00 ; |        | $FE8B
       .byte $07 ; |     XXX| $FE8C
       .byte $01 ; |       X| $FE8D
       .byte $03 ; |      XX| $FE8E
       .byte $FF; strip
       .byte $03 ; |      XX| $FE90
       .byte $07 ; |     XXX| $FE91
       .byte $00 ; |        | $FE92
       .byte $03 ; |      XX| $FE93
       .byte $00 ; |        | $FE94
       .byte $03 ; |      XX| $FE95
       .byte $01 ; |       X| $FE96
       .byte $01 ; |       X| $FE97
       .byte $FF; strip
       .byte $01 ; |       X| $FE99
       .byte $03 ; |      XX| $FE9A
       .byte $01 ; |       X| $FE9B
       .byte $01 ; |       X| $FE9C
       .byte $C6 ; |XX   XX | $FE9D
       .byte $D4 ; |XX X X  | $FE9E
       .byte $CD ; |XX  XX X| $FE9F
       .byte $BF ; |X XXXXXX| $FEA0
       .byte $FF; strip
       .byte $50 ; | X X    | $FEA2
       .byte $B1 ; |X XX   X| $FEA3
       .byte $B8 ; |X XXX   | $FEA4
       .byte $B8 ; |X XXX   | $FEA5
       .byte $B1 ; |X XX   X| $FEA6
       .byte $B8 ; |X XXX   | $FEA7
       .byte $C6 ; |XX   XX | $FEA8
       .byte $D4 ; |XX X X  | $FEA9
       .byte $CD ; |XX  XX X| $FEAA
       .byte $FF; strip
       .byte $DB ; |XX XX XX| $FEAC
       .byte $50 ; | X X    | $FEAD
       .byte $B1 ; |X XX   X| $FEAE
       .byte $B8 ; |X XXX   | $FEAF
       .byte $B8 ; |X XXX   | $FEB0
       .byte $B1 ; |X XX   X| $FEB1
       .byte $A3 ; |X X   XX| $FEB2
       .byte $FF; strip
       .byte $D4 ; |XX X X  | $FEB4
       .byte $CD ; |XX  XX X| $FEB5
       .byte $BF ; |X XXXXXX| $FEB6
       .byte $DB ; |XX XX XX| $FEB7
       .byte $50 ; | X X    | $FEB8
       .byte $B1 ; |X XX   X| $FEB9
       .byte $B8 ; |X XXX   | $FEBA
       .byte $FF; strip
       .byte $B1 ; |X XX   X| $FEBC
       .byte $AA ; |X X X X | $FEBD
       .byte $C6 ; |XX   XX | $FEBE
       .byte $D4 ; |XX X X  | $FEBF
       .byte $CD ; |XX  XX X| $FEC0
       .byte $BF ; |X XXXXXX| $FEC1
       .byte $DB ; |XX XX XX| $FEC2
       .byte $95 ; |X  X X X| $FEC3
       .byte $FF; strip
       .byte $B8 ; |X XXX   | $FEC5
       .byte $B8 ; |X XXX   | $FEC6
       .byte $B1 ; |X XX   X| $FEC7
       .byte $B8 ; |X XXX   | $FEC8
       .byte $C6 ; |XX   XX | $FEC9
       .byte $D4 ; |XX X X  | $FECA
       .byte $CD ; |XX  XX X| $FECB
       .byte $BF ; |X XXXXXX| $FECC
       .byte $DB ; |XX XX XX| $FECD
       .byte $5C ; | X XXX  | $FECE
       .byte $B1 ; |X XX   X| $FECF
       .byte $FF; strip
       .byte $B8 ; |X XXX   | $FED1
       .byte $B1 ; |X XX   X| $FED2
       .byte $B8 ; |X XXX   | $FED3
       .byte $01 ; |       X| $FED4
       .byte $06 ; |     XX | $FED5
       .byte $00 ; |        | $FED6
       .byte $03 ; |      XX| $FED7
       .byte $05 ; |     X X| $FED8
       .byte $FF; strip
       .byte $03 ; |      XX| $FEDA
       .byte $02 ; |      X | $FEDB
       .byte $07 ; |     XXX| $FEDC
       .byte $01 ; |       X| $FEDD
       .byte $07 ; |     XXX| $FEDE
       .byte $03 ; |      XX| $FEDF
       .byte $06 ; |     XX | $FEE0
       .byte $03 ; |      XX| $FEE1
       .byte $06 ; |     XX | $FEE2
       .byte $05 ; |     X X| $FEE3
       .byte $05 ; |     X X| $FEE4
       .byte $03 ; |      XX| $FEE5
       .byte $04 ; |     X  | $FEE6
       .byte $FF; strip
       .byte $01 ; |       X| $FEE8
       .byte $07 ; |     XXX| $FEE9
       .byte $00 ; |        | $FEEA
       .byte $00 ; |        | $FEEB
       .byte $02 ; |      X | $FEEC
       .byte $00 ; |        | $FEED
       .byte $05 ; |     X X| $FEEE
       .byte $05 ; |     X X| $FEEF
       .byte $03 ; |      XX| $FEF0
       .byte $06 ; |     XX | $FEF1
       .byte $07 ; |     XXX| $FEF2
       .byte $FF; strip
       .byte $07 ; |     XXX| $FEF4
       .byte $02 ; |      X | $FEF5
       .byte $01 ; |       X| $FEF6
       .byte $01 ; |       X| $FEF7
       .byte $01 ; |       X| $FEF8
       .byte $05 ; |     X X| $FEF9
       .byte $05 ; |     X X| $FEFA
       .byte $03 ; |      XX| $FEFB
       .byte $06 ; |     XX | $FEFC
       .byte $07 ; |     XXX| $FEFD
       .byte $01 ; |       X| $FEFE
       .byte $FF; strip
       .byte $00 ; |        | $FF00
LFF01: .byte $1C ; |   XXX  | $FF01
       .byte $22 ; |  X   X | $FF02
       .byte $63 ; | XX   XX| $FF03
       .byte $63 ; | XX   XX| $FF04
       .byte $63 ; | XX   XX| $FF05
       .byte $22 ; |  X   X | $FF06
       .byte $1C ; |   XXX  | $FF07
       .byte $00 ; |        | $FF08
       .byte $04 ; |     X  | $FF09
       .byte $0C ; |    XX  | $FF0A
       .byte $1C ; |   XXX  | $FF0B
       .byte $0C ; |    XX  | $FF0C
       .byte $FF; strip
       .byte $0C ; |    XX  | $FF0E
       .byte $7F ; | XXXXXXX| $FF0F
       .byte $00 ; |        | $FF10
       .byte $3E ; |  XXXXX | $FF11
       .byte $03 ; |      XX| $FF12
       .byte $03 ; |      XX| $FF13
       .byte $3E ; |  XXXXX | $FF14
       .byte $FF; strip
       .byte $60 ; | XX     | $FF16
       .byte $7F ; | XXXXXXX| $FF17
       .byte $00 ; |        | $FF18
       .byte $7E ; | XXXXXX | $FF19
       .byte $03 ; |      XX| $FF1A
       .byte $03 ; |      XX| $FF1B
       .byte $3E ; |  XXXXX | $FF1C
       .byte $03 ; |      XX| $FF1D
       .byte $03 ; |      XX| $FF1E
       .byte $FF; strip
       .byte $00 ; |        | $FF20
       .byte $02 ; |      X | $FF21
       .byte $06 ; |     XX | $FF22
       .byte $0E ; |    XXX | $FF23
       .byte $16 ; |   X XX | $FF24
       .byte $26 ; |  X  XX | $FF25
       .byte $7F ; | XXXXXXX| $FF26
       .byte $06 ; |     XX | $FF27
       .byte $00 ; |        | $FF28
       .byte $7E ; | XXXXXX | $FF29
       .byte $60 ; | XX     | $FF2A
       .byte $60 ; | XX     | $FF2B
       .byte $FF; strip
       .byte $03 ; |      XX| $FF2D
       .byte $03 ; |      XX| $FF2E
       .byte $7E ; | XXXXXX | $FF2F
       .byte $00 ; |        | $FF30
       .byte $3E ; |  XXXXX | $FF31
       .byte $60 ; | XX     | $FF32
       .byte $60 ; | XX     | $FF33
       .byte $7E ; | XXXXXX | $FF34
       .byte $63 ; | XX   XX| $FF35
       .byte $63 ; | XX   XX| $FF36
       .byte $FF; strip
       .byte $00 ; |        | $FF38
       .byte $7F ; | XXXXXXX| $FF39
       .byte $61 ; | XX    X| $FF3A
       .byte $03 ; |      XX| $FF3B
       .byte $06 ; |     XX | $FF3C
       .byte $0C ; |    XX  | $FF3D
       .byte $18 ; |   XX   | $FF3E
       .byte $30 ; |  XX    | $FF3F
       .byte $00 ; |        | $FF40
       .byte $3E ; |  XXXXX | $FF41
       .byte $63 ; | XX   XX| $FF42
       .byte $63 ; | XX   XX| $FF43
       .byte $FF; strip
       .byte $63 ; | XX   XX| $FF45
       .byte $63 ; | XX   XX| $FF46
       .byte $3E ; |  XXXXX | $FF47
       .byte $00 ; |        | $FF48
       .byte $3E ; |  XXXXX | $FF49
       .byte $63 ; | XX   XX| $FF4A
       .byte $63 ; | XX   XX| $FF4B
       .byte $3F ; |  XXXXXX| $FF4C
       .byte $03 ; |      XX| $FF4D
       .byte $03 ; |      XX| $FF4E
       .byte $FF; strip
       .byte $00 ; |        | $FF50
       .byte $00 ; |        | $FF51
       .byte $00 ; |        | $FF52
       .byte $00 ; |        | $FF53
       .byte $00 ; |        | $FF54
       .byte $00 ; |        | $FF55
       .byte $00 ; |        | $FF56
       .byte $00 ; |        | $FF57
       .byte $00 ; |        | $FF58
       .byte $00 ; |        | $FF59
       .byte $00 ; |        | $FF5A
       .byte $00 ; |        | $FF5B
       .byte $FF; strip
       .byte $00 ; |        | $FF5D
       .byte $08 ; |    X   | $FF5E
       .byte $1D ; |   XXX X| $FF5F
       .byte $BE ; |X XXXXX | $FF60
       .byte $67 ; | XX  XXX| $FF61
       .byte $02 ; |      X | $FF62
       .byte $00 ; |        | $FF63
       .byte $10 ; |   X    | $FF64
       .byte $B8 ; |X XXX   | $FF65
       .byte $7D ; | XXXXX X| $FF66
       .byte $E6 ; |XXX  XX | $FF67
       .byte $FF; strip
       .byte $00 ; |        | $FF69
       .byte $F8 ; |XXXXX   | $FF6A
       .byte $FF ; |XXXXXXXX| $FF6B
       .byte $D5 ; |XX X X X| $FF6C
       .byte $80 ; |X       | $FF6D
       .byte $C0 ; |XX      | $FF6E
       .byte $E0 ; |XXX     | $FF6F
       .byte $F0 ; |XXXX    | $FF70
       .byte $FF; strip
       .byte $5C ; | X XXX  | $FF72
       .byte $06 ; |     XX | $FF73
       .byte $82 ; |X     X | $FF74
       .byte $92 ; |X  X  X | $FF75
       .byte $FE ; |XXXXXXX | $FF76
       .byte $38 ; |  XXX   | $FF77
       .byte $7C ; | XXXXX  | $FF78
       .byte $BA ; |X XXX X | $FF79
       .byte $92 ; |X  X  X | $FF7A
       .byte $BA ; |X XXX X | $FF7B
       .byte $FF; strip
       .byte $38 ; |  XXX   | $FF7D
       .byte $FE ; |XXXXXXX | $FF7E
       .byte $92 ; |X  X  X | $FF7F
       .byte $82 ; |X     X | $FF80
       .byte $EE ; |XXX XXX | $FF81
       .byte $38 ; |  XXX   | $FF82
       .byte $7C ; | XXXXX  | $FF83
       .byte $7E ; | XXXXXX | $FF84
       .byte $7C ; | XXXXX  | $FF85
       .byte $38 ; |  XXX   | $FF86
       .byte $EE ; |XXX XXX | $FF87
       .byte $77 ; | XXX XXX| $FF88
       .byte $1C ; |   XXX  | $FF89
       .byte $FF; strip
       .byte $7E ; | XXXXXX | $FF8B
       .byte $3E ; |  XXXXX | $FF8C
       .byte $1C ; |   XXX  | $FF8D
       .byte $77 ; | XXX XXX| $FF8E
       .byte $81 ; |X      X| $FF8F
       .byte $42 ; | X    X | $FF90
       .byte $7E ; | XXXXXX | $FF91
       .byte $3C ; |  XXXX  | $FF92
       .byte $24 ; |  X  X  | $FF93
       .byte $42 ; | X    X | $FF94
       .byte $81 ; |X      X| $FF95
       .byte $FF; strip
       .byte $58 ; | X XX   | $FF97
       .byte $7C ; | XXXXX  | $FF98
       .byte $25 ; |  X  X X| $FF99
       .byte $06 ; |     XX | $FF9A
       .byte $03 ; |      XX| $FF9B
       .byte $02 ; |      X | $FF9C
       .byte $11 ; |   X   X| $FF9D
       .byte $1A ; |   XX X | $FF9E
       .byte $3E ; |  XXXXX | $FF9F
       .byte $A4 ; |X X  X  | $FFA0
       .byte $60 ; | XX     | $FFA1
       .byte $C0 ; |XX      | $FFA2
       .byte $FF; strip
       .byte $2B ; |  X X XX| $FFA4
       .byte $2E ; |  X XXX | $FFA5
       .byte $FC ; |XXXXXX  | $FFA6
       .byte $FC ; |XXXXXX  | $FFA7
       .byte $7E ; | XXXXXX | $FFA8
       .byte $3B ; |  XXX XX| $FFA9
       .byte $15 ; |   X X X| $FFAA
       .byte $28 ; |  X X   | $FFAB
       .byte $2F ; |  X XXXX| $FFAC
       .byte $FC ; |XXXXXX  | $FFAD
       .byte $FF ; |XXXXXXXX| $FFAE
       .byte $7E ; | XXXXXX | $FFAF
       .byte $FF; strip
       .byte $14 ; |   X X  | $FFB1
       .byte $3C ; |  XXXX  | $FFB2
       .byte $7E ; | XXXXXX | $FFB3
       .byte $FF ; |XXXXXXXX| $FFB4
       .byte $FF ; |XXXXXXXX| $FFB5
       .byte $FF ; |XXXXXXXX| $FFB6
       .byte $7E ; | XXXXXX | $FFB7
       .byte $3C ; |  XXXX  | $FFB8
       .byte $FD ; |XXXXXX X| $FFB9
       .byte $DF ; |XX XXXXX| $FFBA
       .byte $7F ; | XXXXXXX| $FFBB
       .byte $FB ; |XXXXX XX| $FFBC
       .byte $FF ; |XXXXXXXX| $FFBD
       .byte $EF ; |XXX XXXX| $FFBE
       .byte $FF ; |XXXXXXXX| $FFBF
       .byte $C6 ; |XX   XX | $FFC0
       .byte $00 ; |        | $FFC1
       .byte $FF ; |XXXXXXXX| $FFC2
       .byte $C7 ; |XX   XXX| $FFC3
       .byte $FF ; |XXXXXXXX| $FFC4
       .byte $00 ; |        | $FFC5
       .byte $C6 ; |XX   XX | $FFC6
       .byte $63 ; | XX   XX| $FFC7
       .byte $00 ; |        | $FFC8
       .byte $FF ; |XXXXXXXX| $FFC9
       .byte $E3 ; |XXX   XX| $FFCA
       .byte $FF ; |XXXXXXXX| $FFCB
       .byte $00 ; |        | $FFCC
       .byte $63 ; | XX   XX| $FFCD
       .byte $66 ; | XX  XX | $FFCE
       .byte $FE ; |XXXXXXX | $FFCF
       .byte $C7 ; |XX   XXX| $FFD0
       .byte $E6 ; |XXX  XX | $FFD1
       .byte $C7 ; |XX   XXX| $FFD2
       .byte $FE ; |XXXXXXX | $FFD3
       .byte $66 ; | XX  XX | $FFD4
       .byte $FD ; |XXXXXX X| $FFD5
       .byte $79 ; | XXXX  X| $FFD6
       .byte $FF ; |XXXXXXXX| $FFD7
       .byte $99 ; |X  XX  X| $FFD8
       .byte $FF ; |XXXXXXXX| $FFD9
       .byte $79 ; | XXXX  X| $FFDA
       .byte $FD ; |XXXXXX X| $FFDB
       .byte $5F ; | X XXXXX| $FFDC
       .byte $FF ; |XXXXXXXX| $FFDD
       .byte $FF ; |XXXXXXXX| $FFDE
       .byte $FF ; |XXXXXXXX| $FFDF
       .byte $FF ; |XXXXXXXX| $FFE0
       .byte $FF ; |XXXXXXXX| $FFE1
       .byte $5F ; | X XXXXX| $FFE2
       .byte $00 ; |        | $FFE3
       .byte $E0 ; |XXX     | $FFE4
       .byte $A0 ; |X X     | $FFE5
       .byte $00 ; |        | $FFE6
       .byte $00 ; |        | $FFE7
       .byte $00 ; |        | $FFE8
       .byte $00 ; |        | $FFE9
       .byte $00 ; |        | $FFEA
       .byte $80 ; |X       | $FFEB
       .byte $C0 ; |XX      | $FFEC
       .byte $60 ; | XX     | $FFED
       .byte $04 ; |     X  | $FFEE
       .byte $0E ; |    XXX | $FFEF
       .byte $1C ; |   XXX  | $FFF0
       .byte $5C ; | X XXX  | $FFF1
       .byte $FA ; |XXXXX X | $FFF2
       .byte $F7 ; |XXXX XXX| $FFF3
       .byte $FA ; |XXXXX X | $FFF4
       .byte $5C ; | X XXX  | $FFF5
       .byte $1C ; |   XXX  | $FFF6
       .byte $0E ; |    XXX | $FFF7
       .byte $04 ; |     X  | $FFF8
LFFF9: .byte $0E ; |    XXX | $FFF9
LFFFA: .byte $12,$10,$00,$F0,$00,$F0
