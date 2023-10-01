.PHONY: clean flash

main.bin: main.elf
	arm-none-eabi-objcopy -O binary $< $@
main.elf: main.o linker.ld
	arm-none-eabi-ld -T linker.ld $< -o $@

main.o: main.c
	arm-none-eabi-gcc -c -mcpu=cortex-m7 -mthumb $< -o $@

clean:
	-rm -f *.o *.elf *.bin

flash:
	st-flash --reset write main.bin 0x08000000
