#===============================================================================
#Summary
#-------------------------------------------------------------------------------
#This is the make file for the FortLab library.
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
NAME=FortLab

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

all:
	mkdir -p ${INCPATH}
	mkdir -p ${LIBPATH}
	mkdir -p ${OBJPATH}
	$(MAKE) -C fort_arrange/ FC=${FC} FCFLAGS="${FCFLAGS}" MAKELIB=0
	mv fort_arrange/${OBJPATH}* ${OBJPATH}
	mv fort_arrange/${INCPATH}* ${INCPATH} 
	$(MAKE) -C fort_string/ FC=${FC} FCFLAGS="${FCFLAGS}" MAKELIB=0
	mv fort_string/${OBJPATH}* ${OBJPATH}
	mv fort_string/${INCPATH}* ${INCPATH}
	@echo "Compiling ${NAME}"
	${FC} ${FCFLAGS} -c -o ${OBJPATH}${NAME}.o ${SRC}${NAME}.f90 ${OBJPATH}*.o -I${INCPATH} #-l${BLAS}
ifeq (${MAKELIB},0)
else
	@echo "Making ${NAME}"
	ar rc ${NAME}${LIBEXT} ${OBJPATH}${NAME}.o
	@echo "Moving library"
	mv ${NAME}${LIBEXT} ${LIBPATH}${LIBPREFIX}${NAME}${LIBEXT}	
endif
	@echo "Moving mod file"
	mv ${NAME}.mod ${INCPATH}${NAME}.mod
clean:
	rm -f *#
	rm -f *~
	rm -f ${OBJPATH}*
	rm -f ${LIBPATH}${LIBPREFIX}${NAME}${LIBEXT}
	rm -f ${INCPATH}${NAME}.mod
	rm -f ${SRC}*~
	rm -f ${SRC}*#
	$(MAKE) -C fort_arrange/ clean
	$(MAKE) -C fort_string/ clean
