FC=ifort
NAME=fort_string
SRC=src/
all:
	${FC} -c -o ${NAME}.o ${SRC}${NAME}.f90
	${FC} -o test.out ${NAME}.o test/test.f90 -L${SRC}
	./test.out
clean:
	rm -f *.mod
	rm -f *~
	rm -f *.out
	rm -f *.o
	rm -f /src/*~
	rm -f /test/*~
