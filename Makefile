frogger: Frogger.asm
	stella ./Frogger.bin

hogger: Hogger.asm
	stella ./Hogger.bin

#Frogger.asm: Frogger.bin
	./distella -paf -cfrogger.cfg ./Frogger.bin > ./Frogger.asm

Hogger.bin: Hogger.asm
	./dasm Hogger.asm -f3 -oHogger.bin

Frogger.bin: Frogger.asm
	./dasm Frogger.asm -f3 -oFrogger.bin
