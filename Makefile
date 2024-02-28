.PHONY: build
default: run

run:
	@qemu-system-i386 -drive file=./build/jOS.img,format=raw,index=0,if=floppy

build:
	@echo "Building OS"
	@mkdir -p ./bin ./build
	@nasm ./src/boot.asm -f bin -o ./bin/boot.bin
	@cp ./bin/boot.bin ./build/jOS.img
	@truncate -s 1440k ./build/jOS.img

linux-deps:
	@echo "Installing linux dependencies"
	@sudo apt install qemu nasm xxd build-essential

macos-deps:
	@echo "Installing macOS dependencies"
	@brew install qemu nasm
	@xcode-select --install

clean:
	@echo "Cleaning project"
	@rm -rf ./bin ./build