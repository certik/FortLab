#===============================================================================
#Summary
#-------------------------------------------------------------------------------
#This is the make file for the Fort String library.
#===============================================================================

#Fortran complier, currently the following compliers are supported by this make
#file; however, this is not a limitation on the list of compliers the library
#will work with.
#  ifort
FC=ifort

#BLAS library name
#  blas:     standard
#  openblas: for the open blas project
#  atlas:    ATLAS Blas
BLAS=blas

#Name
NAME=fort_string

#Optimization level set this to override the complier default
FCOPT=-O3

#Library path
LIBPATH=lib/

#Include path
INCPATH=header/

#Library extension
LIBEXT=.a

#Library prefix
LIBPREFIX=lib

#Object files
OBJPATH=obj/

#Executable file extension
EXEEXT=.out

#Fortran warnings
FCWARN=-warn

#SRC
SRC=src/

#Fortran debug
FCDEBUG=

#Make library
MAKELIB=1

#Set Fortran flags
FCFLAGS=${FCOPT} ${FCWARN} ${FCDEBUG} 
all: 
	@echo "${NAME}"
	@echo "===================================================="
	@echo "Compiling ${NAME}"
	${FC} ${FCFLAGS} -c -o ${OBJPATH}${NAME}.o ${SRC}${NAME}.f90
ifeq (${MAKELIB},1)
	@echo "Making ${NAME}"
	ar rc ${NAME}${LIBEXT} ${OBJPATH}${NAME}.o
	@echo "Moving library"
	mv ${NAME}${LIBEXT} ${LIBPATH}${LIBPREFIX}${NAME}${LIBEXT}	
endif
	@echo "Moving mod file"
	mv ${NAME}.mod ${INCPATH}${NAME}.mod
clean:
	rm -f *~
	rm -f *#
	rm -f ${SRC}*~
	rm -f ${SRC}*#
	rm -f ${LIBPATH}*
	rm -f ${INCPATH}*
	rm -f ${OBJPATH}* 
	rm -f test/src/*.out
	rm -f test/src/*~
	rm -f test/exec/*
