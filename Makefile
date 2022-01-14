#!/usr/bin/env false

# vim: set tabstop=8 shiftwidth=8 noexpandtab:

.DELETE_ON_ERROR:
.NOTPARALLEL:

PARTS := \
    01-Einleitung.md \
    02-Virus.md \
    03-Impfung.md \
    04-Schaden.md \
    05-Medien.md \
    07-Ende.md

build:: spaces README.md

README.md: $(PARTS) Makefile
	cat $(filter %.md, $^) > $@

spaces::
	convert-whitespace -x $(PARTS)

# ***** end of source *****
