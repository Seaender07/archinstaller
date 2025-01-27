# Dinamic Compilation System, designed for 'archinstall'.

SRC=archinstall.cpp
OUT=archinstall
LOG=archinstall.log
CFLAGS=-g -Wall -O2
CPPADD=utils.cpp install.cpp part.cpp pac.cpp conf.cpp

exec_status=not_supported

comp:
	g++ -o ${OUT} ${CFLAGS} ${SRC} ${CPPADD}

clean:
	rm ${OUT} ${LOG}

start:
	@echo ${exec_status}

install:
	mv archinstall /bin/
	chmod +x /bin/archinstall

mkinstall: comp
	mv archinstall /bin/
	chmod +x /bin/archinstall
