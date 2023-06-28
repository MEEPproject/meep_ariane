bootrom_img = bootrom.img bootrom.sv

GCC=riscv64-unknown-elf-gcc
OBJCOPY=riscv64-unknown-elf-objcopy
DTB=ariane.dtb
#PYTHON=python
PYTHON=/usr/bin/python2.7

all: $(bootrom_img)

%.img: %.bin
	dd if=$< of=$@ bs=128

%.bin: %.elf
	$(OBJCOPY) -O binary $< $@

%.elf: %.S linker.ld $(DTB)
	$(GCC) -Tlinker.ld $< -nostdlib -static -Wl,--no-gc-sections -o $@

%.dtb: %.dts
	dtc -I dts $< -O dtb -o $@

%.sv: %.img
	python3 gen_rom.py $<

clean:
	rm -f $(bootrom_img) $(DTB)
