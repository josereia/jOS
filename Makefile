linux-deps:
	@echo "Installing linux dependencies"
	@sudo apt install qemu nasm xxd build-essential

macos-deps:
	@echo "Installing macOS dependencies"
	@brew install qemu nasm
	@xcode-select --install
