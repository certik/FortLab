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
FC=gfortran

#BLAS library name
#  blas:     standard
#  openblas: for the open blas project
#  atlas:    ATLAS Blas
BLAS=blas

#Optimization level set this to override the complier default
FCOPT=-O3

#Source code folder you should not need to change this
SRC=src/

#Folder there mod file is placed, if you have a default location for mod files
#you sould change this path
INCPATH=header/

#Library extension
LIBEXT=.a

#Library prefix
LIBPREFIX=lib

#Folder where the library file is placed
LIBPATH=lib/

#Project name
NAME=fort_arrange

#Find OS
#UNAME=$(shell uname)

#Set known configuration flag
#PROCEED=1

#Executable file extension
EXEEXT=.out

#Set Complier Specific Variables
ifdef FCOPT
  else
    ifeq (${FC},ifort)
      FCOPT=-O3
    else
      ifeq (${FC},gfortran)
        FCOPT=-03
    endif
  endif
endif

#Add more to Fortran Flags
ifdef FCFLAGS
else
  FCFLAGS=-Wall ${FCOPT}
endif
all: 
	@echo "Using BLAS library named ${BLAS}"
	@echo "Compling moddule ${NAME}"
	${FC} ${FCFLAGS} -c -o ${NAME}.o ${SRC}fort_arrange.f90 -l${BLAS}
	@echo "Making library ${NAME}${LIBEXT}"
	ar rc ${NAME}${LIBEXT} ${NAME}.o
	@echo "Moving library to ${LIBPATH}"
	mv ${NAME}${LIBEXT} ${LIBPATH}${LIBPREFIX}${NAME}${LIBEXT}	
	@echo "Moving mod file to ${INCPATH}"
	mv ${NAME}.mod ${INCPATH}${NAME}.mod
	@echo "Cleaning up"
	rm "${NAME}.o"
test_1:
	@echo "Building test"
	${FC} ${FCFLAGS} -o test/src/test_sort_speed_1${EXEEXT} test/src/test_sort_speed_1.f90 -J${INCPATH} -L${LIBPATH} -l${NAME} -l${BLAS}
	test/src/test_sort_speed_1${EXEEXT}
clean:
	rm -f *~
	rm -f *.o
	rm -f ${SRC}*~
	rm -f ${SRC}*.o
	rm -f ${LIBPATH}${NAME}*
	rm -f ${INCPATH}${NAME}* 
