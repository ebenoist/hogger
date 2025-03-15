I'm replacing some of the graphics in the original 1982 Frogger for Atari 2600. You are my coding assistant. I have the original assembly code in 6502. I've specifically given you ONLY the sections where I believe there are graphics. I've annotated these with comments to represent the ASCII representation of each of the sprites.

I've identified the frog and it's different representations (left, right, top, bottom, and splat), but I'm having trouble identifying the sprites for the other obstacles in the game (specifically the logs, the longer truck, the alligator, etc...). Can you identify the start and end of each sprite as comments in the original assembly.

DO NOT rewrite any code. DO NOT replace any existing comments. If you need to add a comment, add it above or below the line.

## Load Section 1

```
       .byte $08 ; |    X   | This is where our graphics start
       .byte $08 ; |    X   | the start of the line:
       .byte $08 ; |    X   |
       .byte $08 ; |    X   | .byte $08 loads that value into RAM
       .byte $08 ; |    X   | everything following the semi-colon
       .byte $10 ; |   X    | is a comment and just notes for you.
       .byte $08 ; |    X   |
       .byte $20 ; |  X     | Each X represents a pixel of a sprite
       .byte $01 ; |       X| that is used in gameplay (e.g. the frog)
       .byte $02 ; |      X |
       .byte $02 ; |      X | Some graphics are easy to decipher like
       .byte $03 ; |      XX| the numbers in the lines below. Others
       .byte $02 ; |      X | like the one to the left is much harder
       .byte $01 ; |       X| to see.
       .byte $03 ; |      XX|
       .byte $01 ; |       X| Let's take the frog as an example. Follow
       .byte $00 ; |        | me to line 2299 ->
       .byte $08 ; |    X   |
       .byte $18 ; |   XX   |
       .byte $08 ; |    X   |
       .byte $38 ; |  XXX   |
       .byte $00 ; |        |
       .byte $18 ; |   XX   |
       .byte $00 ; |        |
LF20D: .byte $A5 ; |X X  X X|
       .byte $DB ; |XX XX XX|
       .byte $6A ; | XX X X |
       .byte $B0 ; |X XX    |
       .byte $03 ; |      XX|
       .byte $4C ; | X  XX  |
```

### Load Section 2

```
LFCFD: .byte $28 ; |  X X   | Read more below for at the start of the frog
       .byte $33 ; |  XX  XX| These are all graphics as well, but I'm not
       .byte $3E ; |  XXXXX | sure yet what is what.
LFD00: .byte $49 ; | X  X  X|
       .byte $54 ; | X X X  | There's probably some cars, logs, and a gator?
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
       .byte $0E ; |    XXX | $FD20
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
       .byte $DF ; |XX XXXXX| $FD46
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
       .byte $06 ; |     XX | $FD65
       .byte $70 ; | XXX    | $FD66
       .byte $00 ; |        | $FD67
       .byte $0C ; |    XX  | $FD68
       .byte $A8 ; |X X X   | $FD69
       .byte $0C ; |    XX  | $FD6A
       .byte $A4 ; |X X  X  | $FD6B
       .byte $0C ; |    XX  | $FD6C
       .byte $A8 ; |X X X   | $FD6D
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
       .byte $22 ; |  X   X | $FD79
       .byte $45 ; | X   X X| $FD7A
       .byte $2E ; |  X XXX | $FD7B
       .byte $42 ; | X    X | $FD7C
       .byte $28 ; |  X X   | $FD7D
       .byte $43 ; | X    XX| $FD7E
       .byte $22 ; |  X   X | $FD7F
       .byte $45 ; | X   X X| $FD80
       .byte $2E ; |  X XXX | $FD81
       .byte $42 ; | X    X | $FD82
       .byte $28 ; |  X X   | $FD83
       .byte $43 ; | X    XX| $FD84
       .byte $22 ; |  X   X | $FD85
       .byte $45 ; | X   X X| $FD86
       .byte $00 ; |        | $FD87
       .byte $1E ; |   XXXX | $FD88
       .byte $70 ; | XXX    | $FD89
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
       .byte $14 ; |   X X  | $FD95
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
       .byte $41 ; | X     X| $FDA1
       .byte $73 ; | XXX  XX| $FDA2
       .byte $73 ; | XXX  XX| $FDA3
       .byte $61 ; | XX    X| $FDA4
       .byte $63 ; | XX   XX| $FDA5
       .byte $53 ; | X X  XX| $FDA6
       .byte $A3 ; |X X   XX| $FDA7
       .byte $A0 ; |X X     | $FDA8
       .byte $A3 ; |X X   XX| $FDA9
       .byte $73 ; | XXX  XX| $FDAA
       .byte $73 ; | XXX  XX| $FDAB
       .byte $60 ; | XX     | $FDAC
       .byte $63 ; | XX   XX| $FDAD
       .byte $53 ; | X X  XX| $FDAE
       .byte $53 ; | X X  XX| $FDAF
       .byte $90 ; |X  X    | $FDB0
       .byte $93 ; |X  X  XX| $FDB1
       .byte $83 ; |X     XX| $FDB2
       .byte $73 ; | XXX  XX| $FDB3
       .byte $60 ; | XX     | $FDB4
       .byte $53 ; | X X  XX| $FDB5
       .byte $42 ; | X    X | $FDB6
       .byte $00 ; |        | $FDB7
       .byte $42 ; | X    X | $FDB8
       .byte $50 ; | X X    | $FDB9
       .byte $62 ; | XX   X | $FDBA
       .byte $70 ; | XXX    | $FDBB
       .byte $82 ; |X     X | $FDBC
       .byte $A0 ; |X X     | $FDBD
       .byte $62 ; | XX   X | $FDBE
       .byte $A0 ; |X X     | $FDBF
       .byte $42 ; | X    X | $FDC0
       .byte $50 ; | X X    | $FDC1
       .byte $62 ; | XX   X | $FDC2
       .byte $50 ; | X X    | $FDC3
       .byte $42 ; | X    X | $FDC4
       .byte $A0 ; |X X     | $FDC5
       .byte $42 ; | X    X | $FDC6
       .byte $A0 ; |X X     | $FDC7
       .byte $42 ; | X    X | $FDC8
       .byte $50 ; | X X    | $FDC9
       .byte $62 ; | XX   X | $FDCA
       .byte $70 ; | XXX    | $FDCB
       .byte $82 ; |X     X | $FDCC
       .byte $A0 ; |X X     | $FDCD
       .byte $62 ; | XX   X | $FDCE
       .byte $A0 ; |X X     | $FDCF
       .byte $83 ; |X     XX| $FDD0
       .byte $70 ; | XXX    | $FDD1
       .byte $63 ; | XX   XX| $FDD2
       .byte $50 ; | X X    | $FDD3
       .byte $42 ; | X    X | $FDD4
       .byte $00 ; |        | $FDD5
       .byte $C3 ; |XX    XX| $FDD6
       .byte $C3 ; |XX    XX| $FDD7
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
       .byte $0E ; |    XXX | $FDE3
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
       .byte $5E ; | X XXXX | $FDEE
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
       .byte $58 ; | X XX   | $FE04
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
       .byte $00 ; |        | $FE1B
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
       .byte $02 ; |      X | $FE28
       .byte $07 ; |     XXX| $FE29
       .byte $0E ; |    XXX | $FE2A
       .byte $0D ; |    XX X| $FE2B
       .byte $01 ; |       X| $FE2C
       .byte $0E ; |    XXX | $FE2D
       .byte $09 ; |    X  X| $FE2E
       .byte $06 ; |     XX | $FE2F
       .byte $06 ; |     XX | $FE30
       .byte $0A ; |    X X | $FE31
       .byte $06 ; |     XX | $FE32
       .byte $02 ; |      X | $FE33
       .byte $07 ; |     XXX| $FE34
       .byte $0E ; |    XXX | $FE35
       .byte $0D ; |    XX X| $FE36
       .byte $01 ; |       X| $FE37
       .byte $0E ; |    XXX | $FE38
       .byte $0A ; |    X X | $FE39
       .byte $06 ; |     XX | $FE3A
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
       .byte $06 ; |     XX | $FE46
       .byte $0A ; |    X X | $FE47
       .byte $06 ; |     XX | $FE48
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
       .byte $03 ; |      XX| $FE54
       .byte $07 ; |     XXX| $FE55
       .byte $07 ; |     XXX| $FE56
       .byte $03 ; |      XX| $FE57
       .byte $07 ; |     XXX| $FE58
       .byte $01 ; |       X| $FE59
       .byte $03 ; |      XX| $FE5A
       .byte $01 ; |       X| $FE5B
       .byte $03 ; |      XX| $FE5C
       .byte $01 ; |       X| $FE5D
       .byte $01 ; |       X| $FE5E
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
       .byte $01 ; |       X| $FE69
       .byte $03 ; |      XX| $FE6A
       .byte $01 ; |       X| $FE6B
       .byte $03 ; |      XX| $FE6C
       .byte $00 ; |        | $FE6D
       .byte $01 ; |       X| $FE6E
       .byte $01 ; |       X| $FE6F
       .byte $00 ; |        | $FE70
       .byte $03 ; |      XX| $FE71
       .byte $01 ; |       X| $FE72
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
       .byte $00 ; |        | $FE7E
       .byte $01 ; |       X| $FE7F
       .byte $03 ; |      XX| $FE80
       .byte $00 ; |        | $FE81
       .byte $03 ; |      XX| $FE82
       .byte $03 ; |      XX| $FE83
       .byte $07 ; |     XXX| $FE84
       .byte $03 ; |      XX| $FE85
       .byte $01 ; |       X| $FE86
       .byte $01 ; |       X| $FE87
       .byte $00 ; |        | $FE88
       .byte $00 ; |        | $FE89
       .byte $07 ; |     XXX| $FE8A
       .byte $00 ; |        | $FE8B
       .byte $07 ; |     XXX| $FE8C
       .byte $01 ; |       X| $FE8D
       .byte $03 ; |      XX| $FE8E
       .byte $01 ; |       X| $FE8F
       .byte $03 ; |      XX| $FE90
       .byte $07 ; |     XXX| $FE91
       .byte $00 ; |        | $FE92
       .byte $03 ; |      XX| $FE93
       .byte $00 ; |        | $FE94
       .byte $03 ; |      XX| $FE95
       .byte $01 ; |       X| $FE96
       .byte $01 ; |       X| $FE97
       .byte $00 ; |        | $FE98
       .byte $01 ; |       X| $FE99
       .byte $03 ; |      XX| $FE9A
       .byte $01 ; |       X| $FE9B
       .byte $01 ; |       X| $FE9C
       .byte $C6 ; |XX   XX | $FE9D
       .byte $D4 ; |XX X X  | $FE9E
       .byte $CD ; |XX  XX X| $FE9F
       .byte $BF ; |X XXXXXX| $FEA0
       .byte $DB ; |XX XX XX| $FEA1
       .byte $50 ; | X X    | $FEA2
       .byte $B1 ; |X XX   X| $FEA3
       .byte $B8 ; |X XXX   | $FEA4
       .byte $B8 ; |X XXX   | $FEA5
       .byte $B1 ; |X XX   X| $FEA6
       .byte $B8 ; |X XXX   | $FEA7
       .byte $C6 ; |XX   XX | $FEA8
       .byte $D4 ; |XX X X  | $FEA9
       .byte $CD ; |XX  XX X| $FEAA
       .byte $BF ; |X XXXXXX| $FEAB
       .byte $DB ; |XX XX XX| $FEAC
       .byte $50 ; | X X    | $FEAD
       .byte $B1 ; |X XX   X| $FEAE
       .byte $B8 ; |X XXX   | $FEAF
       .byte $B8 ; |X XXX   | $FEB0
       .byte $B1 ; |X XX   X| $FEB1
       .byte $A3 ; |X X   XX| $FEB2
       .byte $C6 ; |XX   XX | $FEB3
       .byte $D4 ; |XX X X  | $FEB4
       .byte $CD ; |XX  XX X| $FEB5
       .byte $BF ; |X XXXXXX| $FEB6
       .byte $DB ; |XX XX XX| $FEB7
       .byte $50 ; | X X    | $FEB8
       .byte $B1 ; |X XX   X| $FEB9
       .byte $B8 ; |X XXX   | $FEBA
       .byte $B8 ; |X XXX   | $FEBB
       .byte $B1 ; |X XX   X| $FEBC
       .byte $AA ; |X X X X | $FEBD
       .byte $C6 ; |XX   XX | $FEBE
       .byte $D4 ; |XX X X  | $FEBF
       .byte $CD ; |XX  XX X| $FEC0
       .byte $BF ; |X XXXXXX| $FEC1
       .byte $DB ; |XX XX XX| $FEC2
       .byte $95 ; |X  X X X| $FEC3
       .byte $B1 ; |X XX   X| $FEC4
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
       .byte $B8 ; |X XXX   | $FED0
       .byte $B8 ; |X XXX   | $FED1
       .byte $B1 ; |X XX   X| $FED2
       .byte $B8 ; |X XXX   | $FED3
       .byte $01 ; |       X| $FED4
       .byte $06 ; |     XX | $FED5
       .byte $00 ; |        | $FED6
       .byte $03 ; |      XX| $FED7
       .byte $05 ; |     X X| $FED8
       .byte $05 ; |     X X| $FED9
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
       .byte $07 ; |     XXX| $FEE7
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
       .byte $01 ; |       X| $FEF3
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
       .byte $07 ; |     XXX| $FEFF
       .byte $00 ; |        | $FF00
LFF01: .byte $1C ; |   XXX  | These numbers are probably the easiest to visualize
       .byte $22 ; |  X   X | from the ASCII code.
       .byte $63 ; | XX   XX|
       .byte $63 ; | XX   XX| We can clearly see the 0,1,2...9 that is used in a couple
       .byte $63 ; | XX   XX| places in the game.
       .byte $22 ; |  X   X |
       .byte $1C ; |   XXX  |
       .byte $00 ; |        |
       .byte $04 ; |     X  |
       .byte $0C ; |    XX  |
       .byte $1C ; |   XXX  |
       .byte $0C ; |    XX  |
       .byte $0C ; |    XX  |
       .byte $0C ; |    XX  |
       .byte $7F ; | XXXXXXX|
       .byte $00 ; |        |
       .byte $3E ; |  XXXXX |
       .byte $03 ; |      XX|
       .byte $03 ; |      XX|
       .byte $3E ; |  XXXXX |
       .byte $60 ; | XX     |
       .byte $60 ; | XX     |
       .byte $7F ; | XXXXXXX|
       .byte $00 ; |        |
       .byte $7E ; | XXXXXX |
       .byte $03 ; |      XX|
       .byte $03 ; |      XX|
       .byte $3E ; |  XXXXX |
       .byte $03 ; |      XX|
       .byte $03 ; |      XX|
       .byte $7E ; | XXXXXX |
       .byte $00 ; |        |
       .byte $02 ; |      X |
       .byte $06 ; |     XX |
       .byte $0E ; |    XXX |
       .byte $16 ; |   X XX |
       .byte $26 ; |  X  XX |
       .byte $7F ; | XXXXXXX|
       .byte $06 ; |     XX |
       .byte $00 ; |        |
       .byte $7E ; | XXXXXX |
       .byte $60 ; | XX     |
       .byte $60 ; | XX     |
       .byte $3E ; |  XXXXX |
       .byte $03 ; |      XX|
       .byte $03 ; |      XX|
       .byte $7E ; | XXXXXX |
       .byte $00 ; |        |
       .byte $3E ; |  XXXXX |
       .byte $60 ; | XX     |
       .byte $60 ; | XX     |
       .byte $7E ; | XXXXXX |
       .byte $63 ; | XX   XX|
       .byte $63 ; | XX   XX|
       .byte $3E ; |  XXXXX |
       .byte $00 ; |        |
       .byte $7F ; | XXXXXXX|
       .byte $61 ; | XX    X|
       .byte $03 ; |      XX|
       .byte $06 ; |     XX |
       .byte $0C ; |    XX  |
       .byte $18 ; |   XX   |
       .byte $30 ; |  XX    |
       .byte $00 ; |        |
       .byte $3E ; |  XXXXX |
       .byte $63 ; | XX   XX|
       .byte $63 ; | XX   XX|
       .byte $3E ; |  XXXXX |
       .byte $63 ; | XX   XX|
       .byte $63 ; | XX   XX|
       .byte $3E ; |  XXXXX |
       .byte $00 ; |        |
       .byte $3E ; |  XXXXX |
       .byte $63 ; | XX   XX|
       .byte $63 ; | XX   XX|
       .byte $3F ; |  XXXXXX|
       .byte $03 ; |      XX|
       .byte $03 ; |      XX|
       .byte $3E ; |  XXXXX |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $08 ; |    X   |
       .byte $1D ; |   XXX X|
       .byte $BE ; |X XXXXX |
       .byte $67 ; | XX  XXX|
       .byte $02 ; |      X |
       .byte $00 ; |        |
       .byte $10 ; |   X    |
       .byte $B8 ; |X XXX   |
       .byte $7D ; | XXXXX X|
       .byte $E6 ; |XXX  XX |
       .byte $40 ; | X      |
       .byte $00 ; |        |
       .byte $F8 ; |XXXXX   |
       .byte $FF ; |XXXXXXXX|
       .byte $D5 ; |XX X X X|
       .byte $80 ; |X       |
       .byte $C0 ; |XX      |
       .byte $E0 ; |XXX     |
       .byte $F0 ; |XXXX    |
       .byte $B8 ; |X XXX   |
       .byte $5C ; | X XXX  |
       .byte $06 ; |     XX |
       .byte $82 ; |X     X | Here's our frog. I know he doesn't look like much. He
       .byte $92 ; |X  X  X | starts on line 2299 and he's facing DOWN.
       .byte $FE ; |XXXXXXX |
       .byte $38 ; |  XXX   |
       .byte $7C ; | XXXXX  |
       .byte $BA ; |X XXX X |
       .byte $92 ; |X  X  X | yup, that's his head.
       .byte $BA ; |X XXX X | Here he is again, but now he's facing UP
       .byte $7C ; | XXXXX  |
       .byte $38 ; |  XXX   |
       .byte $FE ; |XXXXXXX |
       .byte $92 ; |X  X  X |
       .byte $82 ; |X     X | This is the end of the frogs legs
       .byte $EE ; |XXX XXX | Now the frog is facing right
       .byte $38 ; |  XXX   |
       .byte $7C ; | XXXXX  |
       .byte $7E ; | XXXXXX |
       .byte $7C ; | XXXXX  |
       .byte $38 ; |  XXX   |
       .byte $EE ; |XXX XXX | End of the sprite for the frog facing right
       .byte $77 ; | XXX XXX| Start the sprint for the frog facing left
       .byte $1C ; |   XXX  |
       .byte $3E ; |  XXXXX |
       .byte $7E ; | XXXXXX |
       .byte $3E ; |  XXXXX |
       .byte $1C ; |   XXX  |
       .byte $77 ; | XXX XXX| End of the sprite for the frog facing left
       .byte $42 ; | X    X | start frog splat
       .byte $7E ; | XXXXXX |
       .byte $3C ; |  XXXX  |
       .byte $24 ; |  X  X  |
       .byte $42 ; | X    X |
       .byte $81 ; |X      X|
       .byte $88 ; |X   X   | Now we're beyond the main frog sprites
       .byte $58 ; | X XX   |
       .byte $7C ; | XXXXX  |
       .byte $25 ; |  X  X X|
       .byte $06 ; |     XX |
       .byte $03 ; |      XX|
       .byte $02 ; |      X |
       .byte $11 ; |   X   X|
       .byte $1A ; |   XX X |
       .byte $3E ; |  XXXXX |
       .byte $A4 ; |X X  X  |
       .byte $60 ; | XX     |
       .byte $C0 ; |XX      |
       .byte $40 ; | X      |
       .byte $2B ; |  X X XX|
       .byte $2E ; |  X XXX |
       .byte $FC ; |XXXXXX  |
       .byte $FC ; |XXXXXX  |
       .byte $7E ; | XXXXXX |
       .byte $3B ; |  XXX XX|
       .byte $15 ; |   X X X|
       .byte $28 ; |  X X   |
       .byte $2F ; |  X XXXX|
       .byte $FC ; |XXXXXX  |
       .byte $FF ; |XXXXXXXX|
       .byte $7E ; | XXXXXX |
       .byte $38 ; |  XXX   |
       .byte $14 ; |   X X  |
       .byte $3C ; |  XXXX  |  probably a turtle
       .byte $7E ; | XXXXXX |
       .byte $FF ; |XXXXXXXX|
       .byte $FF ; |XXXXXXXX|
       .byte $FF ; |XXXXXXXX|
       .byte $7E ; | XXXXXX |
       .byte $3C ; |  XXXX  |
       .byte $FD ; |XXXXXX X|
       .byte $DF ; |XX XXXXX|
       .byte $7F ; | XXXXXXX|
       .byte $FB ; |XXXXX XX|
       .byte $FF ; |XXXXXXXX|
       .byte $EF ; |XXX XXXX|
       .byte $FF ; |XXXXXXXX|
       .byte $C6 ; |XX   XX |
       .byte $00 ; |        |
       .byte $FF ; |XXXXXXXX|
       .byte $C7 ; |XX   XXX|
       .byte $FF ; |XXXXXXXX|
       .byte $00 ; |        |
       .byte $C6 ; |XX   XX |
       .byte $63 ; | XX   XX|
       .byte $00 ; |        |
       .byte $FF ; |XXXXXXXX|
       .byte $E3 ; |XXX   XX|
       .byte $FF ; |XXXXXXXX|
       .byte $00 ; |        |
       .byte $63 ; | XX   XX|
       .byte $66 ; | XX  XX |
       .byte $FE ; |XXXXXXX |
       .byte $C7 ; |XX   XXX|
       .byte $E6 ; |XXX  XX |
       .byte $C7 ; |XX   XXX|
       .byte $FE ; |XXXXXXX |
       .byte $66 ; | XX  XX |
       .byte $FD ; |XXXXXX X|
       .byte $79 ; | XXXX  X|
       .byte $FF ; |XXXXXXXX|
       .byte $99 ; |X  XX  X|
       .byte $FF ; |XXXXXXXX|
       .byte $79 ; | XXXX  X|
       .byte $FD ; |XXXXXX X|
       .byte $5F ; | X XXXXX|
       .byte $FF ; |XXXXXXXX|
       .byte $FF ; |XXXXXXXX|
       .byte $FF ; |XXXXXXXX|
       .byte $FF ; |XXXXXXXX|
       .byte $FF ; |XXXXXXXX|
       .byte $5F ; | X XXXXX|
       .byte $00 ; |        |
       .byte $E0 ; |XXX     |
       .byte $A0 ; |X X     |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $00 ; |        |
       .byte $80 ; |X       |
       .byte $C0 ; |XX      |
       .byte $60 ; | XX     |
       .byte $04 ; |     X  |
       .byte $0E ; |    XXX |
       .byte $1C ; |   XXX  |
       .byte $5C ; | X XXX  |
       .byte $FA ; |XXXXX X |
       .byte $F7 ; |XXXX XXX|
       .byte $FA ; |XXXXX X |
       .byte $5C ; | X XXX  |
       .byte $1C ; |   XXX  |
       .byte $0E ; |    XXX |
       .byte $04 ; |     X  |
LFFF9: .byte $0E ; |    XXX |
```

