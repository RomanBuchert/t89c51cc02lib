
include ../Makefile.rules
OBJECTS = sdcc_test2.rel \


all: clean sdcc_test2

sdcc_test2: $(OBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(LIBS) $(OBJECTS)
	packihx $@.ihx > $@.hex
	
count:
	wc *.c *.cc *.C *.cpp *.h *.hpp

clean:
	rm -f core *~ \#* *.asm *.cdb *.rel *.hex *.ihx *.lst *.map \
		*.rst *.sym *.lnk *.lib *.bin *.adb *.mem *.dump* *.bak

.PHONY: all
.PHONY: count
.PHONY: clean
