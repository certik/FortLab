#===============================================================================
#Summary
#-------------------------------------------------------------------------------
#This is the make file for the Fort Arrange library.  It is set up for ifort and
#gfortran on a MacOSX this will be expanded in the future to work with more OSs
#and compliers.
#===============================================================================

#Fortran complier, currently the following compliers are supported by this make
#file; however, this is not a limitation on the list of compliers the library
#will work with.
#  ifort
#  gfortran
FC=ifort
#FC=gfortran

CPPC=g++

#BLAS library name
#  blas:     standard
#  openblas: for the open blas project
#  atlas:    ATLAS Blas
BLAS=blas

#Name
NAME=fort_arrange

#Optimization level set this to override the complier default
FCOPT=-O3
CPPCOPT=-O3

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
FCWARN=-Wall
ifeq ($(FC),ifort)
FCWARN=-warn
endif

#SRC
SRC=src/

#Fortran debug
FCDEBUG=

#Make library
MAKELIB=1

#Set Fortran flags
FCFLAGS=${FCOPT} ${FCWARN} ${FCDEBUG} 
CPPCFLAGS=${CPPCOPT}
all: build
build:
	mkdir -p ${LIBPATH}
	mkdir -p ${OBJPATH}
	mkdir -p ${INCPATH}
	mkdir -p test/${OBJPATH}
	mkdir -p test/exec
	@echo "${NAME}"
	@echo "====================================================" 
	@echo "Compiling ${NAME}"
	${FC} ${FCFLAGS} -c -o ${OBJPATH}${NAME}.o ${SRC}${NAME}.f90 -l${BLAS}
ifeq (${MAKELIB},0)
else
	@echo "Making ${NAME}"
	ar rc ${NAME}${LIBEXT} ${OBJPATH}${NAME}.o
	@echo "Moving library"
	mv ${NAME}${LIBEXT} ${LIBPATH}${LIBPREFIX}${NAME}${LIBEXT}	
endif
	@echo "Moving mod file"
	mv ${NAME}.mod ${INCPATH}${NAME}.mod
test: build test_sort test_c_qsort

test_sort:
	@echo "Building test"
	${FC} ${FCFLAGS} -o test/exec/test_sort${EXEEXT} test/src/test_sort.f90 -I${INCPATH} -L${LIBPATH} -l${NAME} -l${BLAS}
	test/exec/test_sort${EXEEXT}

test_c_qsort:
	${CPPC} ${CPPCFLAGS} -c -o test/exec/test_c_qsort.o test/${SRC}test_c_qsort.cpp
	${FC} ${FCFLAGS} -o test/exec/test_c_qsort${EXEEXT} test/${SRC}test_c_qsort.f90 test/exec/test_c_qsort.o -L${LIBPATH} -I${INCPATH} -lstdc++ -l${NAME} -l${BLAS}
	test/exec/test_c_qsort${EXEEXT}
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
