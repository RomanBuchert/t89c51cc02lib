
## Created by Anjuta
include Makefile.rules

DIRS = include lib src test doc

all:
	for i in $(DIRS); do make -C $$i $@; done 

clean:
	rm -f *~
	for i in $(DIRS); do make -C $$i $@; done 

compile:
	for i in $(DIRS); do make -C $$i $@; done 