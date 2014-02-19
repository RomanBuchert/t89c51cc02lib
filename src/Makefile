
include ../Makefile.rules

LIBNAME = t89c51cc02

LIBOBJECTS =  adc.rel \
              isrvectors.rel \
			  pca.rel \
			  sysCfg.rel \
			  timer0.rel \
			  timer1.rel \
			  timer2.rel \
			  usart.rel \

				  
all: clean t89c51cc02lib

t89c51cc02lib: $(LIBOBJECTS)
	sdar -rc $(LIBNAME)_$(MODEL).lib $(LIBOBJECTS)	
	sdranlib $(LIBNAME)_$(MODEL).lib
	mv $(LIBNAME)_$(MODEL).lib ../lib/

count:
	wc *.c *.cc *.C *.cpp *.h *.hpp

clean:
	rm -f core *~ \#* *.asm *.cdb *.rel *.hex *.ihx *.lst *.map \
		*.rst *.sym *.lnk *.lib *.bin *.adb *.mem *.dump* *.bak

.PHONY: all
.PHONY: count
.PHONY: clean
