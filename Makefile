.PHONY: build
default: run

run:
    @echo "Rodando OS"
	@qemu-system-i386 -drive file=./build/jOS.img,format=raw,index=0,if=floppy

build:
	@echo "Construindo OS"
	@mkdir -p ./bin ./build
	@nasm ./src/boot.asm -f bin -o ./bin/boot.bin
	@cp ./bin/boot.bin ./build/jOS.img
	@truncate -s 1440k ./build/jOS.img

linux-deps:
	@echo "Instalando dependências linux"
	@sudo apt install qemu nasm xxd build-essential

macos-deps:
	@echo "Instalando dependências macOS"
	@brew install qemu nasm
	@xcode-select --install

clean:
	@echo "Limpando projeto"
	@rm -rf ./bin ./build
