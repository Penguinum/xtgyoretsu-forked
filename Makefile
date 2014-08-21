CC?=		gcc
CFLAGS?=	#empty

DESTDIR?=	#empty
PREFIX?=	/usr

all:
	${CC} ${CFLAGS} -o xtgyoretsu xtgyoretsu.c -lcurses -lm
	strip --strip-unneeded xtgyoretsu

install:
	cp xtgyoretsu ${DESTDIR}${PREFIX}/bin

clean:
	rm xtgyoretsu

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/xtgyoretsu
