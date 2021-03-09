#!/usr/bin/env make

INSTALLDIR=/usr/local/bin
SCRIPT=mkproj

.PHONY: install

install: $(SCRIPT)
	cp -f $^ $(INSTALLDIR)

