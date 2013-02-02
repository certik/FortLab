#===============================================================================
#This is the make file for the Fort Arrange library.  It is set up for ifort on
#a MacOSX this will be expanded in the future to work with more OSs and
#compliers.

#Currently under development
#===============================================================================

#OS Options
#OSX: Mac OSX

#FC Options
#  ifort
#  gfortran

#BLAS Options
#  blas:     standard
#  openblas: for the open blas project
#  atlas:    ATLAS Blas

FC=ifort
BLAS=blas
LIBEXT=dylib
OPT=-O3
FCFLAGS=${OPT} -dynamiclib

NAME=fort_arrange

SRC=src/
INCPATH=header/
LIBPATH=lib/

all: 
	${FC} ${FCFLAGS} -o ${NAME}.${LIBEXT} ${SRC}fort_arrange.f90 -l${BLAS}
	mv ${NAME}.mod ${INCPATH}${NAME}.mod
	mv ${NAME}.${LIBEXT} ${LIBPATH}${NAME}.${LIBEXT}
clean:
	@rm -f *~
	@rm -f *.o
	@rm -f ${SRC}*~
	@rm -f ${SRC}*~
