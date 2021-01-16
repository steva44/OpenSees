# Created by Stevan Gavrilovic
# University of British Columbia
# 12.18.2018

TEMPLATE = lib

TARGET = opensees
DESTDIR = ./Bin

include(./qmake.conf)

include(./OpenSees.pri)

include(./OpenSeesLibs.pri)


!contains (DEFINES, _TCL85){

TEMPLATE = lib

#Global variables so that it can compile as a lib
SOURCES += $$PWD/OpenSeesGlobalVars.cpp \

} else {

TEMPLATE = app

}
