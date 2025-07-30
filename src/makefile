ASSEMBLY = nasm
ASSEMBLYBIN = -f bin
SOURCES = sillycore.asm 

BIN = sillycore.bin

EMUL = qemu-system-x86_64
EMULF = -fda $(BIN)

all: $(BIN)
$(BIN): $(SOURCES)
	$(ASSEMBLY) $(ASSEMBLYBIN) $(SOURCES) -o $(BIN)

run: all
	$(EMUL) $(EMULF)

clean:
	rm -f $(BIN)