.PHONY: all clean

all: priv priv/hello

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

priv:
	mkdir -p priv

priv/hello: src/hello.o
	$(CC) $^ $(LDFLAGS) -o $@

clean:
	rm -f priv/hello src/*.o
