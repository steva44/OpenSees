# Created by Stevan Gavrilovic
# University of California Berkeley
# 01.27.2021

message("Building OpenSees with Python")

TEMPLATE = lib

TARGET = opensees

DESTDIR = ./Bin

include(./qmake.conf)

#use plugin so that only one library file gets built and turn off Qt
#CONFIG += staticlib
CONFIG += plugin
CONFIG -= app_bundle
CONFIG -= qt

include(./OpenSees.pri)

include(./OpenSeesLibs.pri)

include(./OpenSeesPy.pri)


#Need to add the python libraries at the very end

#Do not use automatic config as on OS X it includes the python2 library as default
#PYTHON_INC=$$system(python-config --includes)
#PYTHON_LIBS=$$system(python-config --ldflags)
#PYTHON_CFLAGS=$$system(python-config --cflags)

#message( $$PYTHON_LIBS)
#message( $$PYTHON_INC)
#message( $$PYTHON_CFLAGS)

#Change these variables to match the location of your Python installation
#macx: {

#LIBS += -L/Library/Frameworks/Python.framework/Versions/3.8/lib/ -lpython3.8

INCLUDEPATH += /Library/Frameworks/Python.framework/Versions/3.8/include/python3.8  \
               /Library/Frameworks/Python.framework/Versions/3.8/include/python3.8/internal

#}

# MPI Settings
contains (DEFINES, _WITHMPI){

QMAKE_CXX = mpicxx
QMAKE_CXX_RELEASE = $$QMAKE_CXX
QMAKE_CXX_DEBUG = $$QMAKE_CXX
QMAKE_LINK = $$QMAKE_CXX
QMAKE_CC = mpicc

QMAKE_CFLAGS += $$system(mpicc --showme:compile)
QMAKE_LFLAGS += $$system(mpicxx --showme:link)
QMAKE_CXXFLAGS += $$system(mpicxx --showme:compile) -DMPICH_IGNORE_CXX_SEEK
QMAKE_CXXFLAGS_RELEASE += $$system(mpicxx --showme:compile) -DMPICH_IGNORE_CXX_SEEK

}


QMAKE_LFLAGS_RELEASE -= -O1
QMAKE_CXXFLAGS_RELEASE -= -O2
QMAKE_CXXFLAGS_RELEASE += -O3

CONFIG(release, debug|release) {
 CONFIG += optimize_full
}

QMAKE_CFLAGS += -fPIC
QMAKE_CXXFLAGS += -fPIC #-Xpreprocessor -fopenmp -undefined dynamic_lookup

QMAKE_LFLAGS += -Wl,-undefined,dynamic_lookup
