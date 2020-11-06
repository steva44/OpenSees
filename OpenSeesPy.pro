# Created by Stevan Gavrilovic
# University of British Columbia
# 2.10.2019

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

#LIBS += -L/usr/local/Cellar/python/3.7.4_1/Frameworks/Python.framework/Versions/3.7/lib/ -lpython3.7

INCLUDEPATH += /usr/local/Cellar/python/3.7.4_1/Frameworks/Python.framework/Versions/3.7/include/python3.7m \
               /usr/local/Cellar/python/3.7.4_1/Frameworks/Python.framework/Versions/3.7/include/python3.7m/internal

#DEPENDPATH += /usr/local/Cellar/python/3.7.4_1/Frameworks/Python.framework/Versions/3.7/include

}


