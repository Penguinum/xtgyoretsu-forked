CC?=		gcc
CFLAGS?=	#empty

all:
	${CC} ${CFLAGS} -o xtgyoretsu xtgyoretsu.c -lcurses -lm
	strip --strip-unneeded xtgyoretsu

install:
	cp xtgyoretsu /usr/bin

clean:
	rm xtgyoretsu

uninstall:
	rm /usr/bin/xtgyoretsu
