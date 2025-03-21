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
    06-Politik.md \
    07-Ende.md \
    08-Anhang.md

build:: spaces README.md

README.md: $(PARTS) Makefile
	cat $(filter %.md, $^) > $@

spaces::
	convert-whitespace -x Makefile $(wildcard *.md)

lines::
	wc -l *.md

# ***** end of source *****
