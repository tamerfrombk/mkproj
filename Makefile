#!/usr/bin/env make

INSTALLDIR=/usr/local/bin
SCRIPT=mkproj

.PHONY: install uninstall

install: $(SCRIPT)
	cp -f $^ $(INSTALLDIR)

uninstall:
	rm -fv $(INSTALLDIR)/$(SCRIPT)
