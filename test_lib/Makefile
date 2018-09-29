.PHONY: all clean

all: priv priv/hello

%.o: %.c
	$(CC) -D MIX_TARGET="\"$(MIX_TARGET)\"" -c $(CFLAGS) -o $@ $<

priv:
	mkdir -p priv

priv/hello: src/hello.o
	$(CC) $^ $(LDFLAGS) -o $@

clean:
	rm -f priv/hello src/*.o
