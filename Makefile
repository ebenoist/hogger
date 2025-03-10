Frogger.asm: Frogger.bin
	./distella -paf ./Frogger.bin > ./Frogger.asm

play:
	stella ./Frogger.bin

Hogger.bin: Frogger.asm
	./dasm Frogger.asm -f3 -oHogger.bin
