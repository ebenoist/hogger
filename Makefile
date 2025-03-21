frogger: Frogger.bin
	stella ./Frogger.bin

hogger: Hogger.bin
	stella ./Hogger.bin

reset:
	./distella -paf -cfrogger.cfg ./Frogger.bin > ./Frogger.asm

Hogger.bin: Hogger.asm
	./dasm Hogger.asm -f3 -oHogger.bin

Frogger.bin: Frogger.asm
	./dasm Frogger.asm -f3 -oFrogger.bin
