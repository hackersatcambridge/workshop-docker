GDC:=gdc
CFLAGS:=
LFLAGS:=
.PHONY: all clean help

all: example3

%.o: %.d
	gdc $(CFLAGS) -o $@ -c $<
example3: example3.o
	gdc $(LFLAGS) -o $@ $<

clean:
	rm -rf *.o example3
help:
	@echo "Run `make all' in a docker container"
