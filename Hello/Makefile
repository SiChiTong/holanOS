CROSS_COMPILE ?= arm-none-eabi-
CC := $(CROSS_COMPILE)gcc

CFLAGS = -O2 -mfpu=neon-vfpv4 -mfloat-abi=hard -std=gnu99 \
	 -march=armv7-a -mtune=cortex-a7 -mthumb \
	 -T linker.ld -nostartfiles \

TARGET = kernel7.img
all: $(TARGET)

$(TARGET): hello.c startup.s
	$(CC) $(CFLAGS) $^ -o kernel.elf
	$(CROSS_COMPILE)objcopy -Obinary kernel.elf kernel7.img
	$(CROSS_COMPILE)objdump -S kernel.elf > kernel.list

qemu: $(TARGET)
	@qemu-system-arm -M ? | grep raspi2 >/dev/null || exit
	@echo "Press Ctrl-A and then X to exit QEMU"
	@echo
	qemu-system-arm -M raspi2 -nographic -kernel kernel7.img

clean:
	rm -f *.o *.bin *.elf *.list *.img
