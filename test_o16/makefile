################################################################
#
#       $File: Makefile $
#
#       Copyright (c) Nokia Networks 2001-2002
#
################################################################
#
#	Makefile of fszgs 
#
################################################################
#
#
#
################################################################

include $(VOBTAG)/build/path.mk	# Path definitions
include $(BT)/builtin.mk	# General building definitions
include $(BT)/stddefs.mk	# Standard definitions for building

#################### System settings ###########################
SS_DEBUGUTILS := $(VOBTAG)/SS_DebugUtils
#include $(SS_DEBUGUTILS_PARENT)/build/config.mk
#include $(SS_DEBUGUTILS)/build/config.mk
include ${PRODUCT_ROOT}/build/config.mk

CINCFLAGS = -I../include $(SYSINCSPEC) -I $(RH_KERNEL_HOME)/include


#################### Program ###################################

PROGRAM = test_main 

#################### Objects ###################################

CLOCALOPTS = -W -Wall  
LOCALDEBUGOPTS = 

ifeq ($(SVNENV),true)
SDPATH=../../
else
SDPATH=../../SS_DebugUtils
endif

#CINCFLAGS = -I../include -I${SDPATH}/include

OBJS = test_main.o

################### libraries to be build first ################

LIBRARIES = 

################### Libraries ##################################

APPLIBS =  \
$(PLATFORM_LIBDIRS) \

STD_LIBS = -lz 

        
################### Target #####################################

all: build

clean:
	rm -f *.o

################### Default Targets ############################

include $(BT)/rpm.mk    # Targets for building RPM:s

include $(BT)/stdtargets.mk	# Compiling target for C++ code