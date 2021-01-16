# Created by Stevan Gavrilovic
# University of California Berkeley
# 6.11.2020

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

#GCC not tested yet
#QMAKE_CC = gcc
#QMAKE_CXX = g++

QMAKE_CFLAGS += -fPIC
QMAKE_CXXFLAGS += -fPIC

QMAKE_CFLAGS_SHLIB += -fPIC
QMAKE_CXXFLAGS_SHLIB += -fPIC


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
macx: {

LIBS += -L/Library/Frameworks/Python.framework/Versions/3.8/lib/ -lpython3.8

INCLUDEPATH += /Library/Frameworks/Python.framework/Versions/3.8/include/python3.8  \
               /Library/Frameworks/Python.framework/Versions/3.8/include/python3.8/internal

}


