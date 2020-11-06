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



win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../../../usr/local/Cellar/libomp/11.0.0/lib/release/ -lomp
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../../../usr/local/Cellar/libomp/11.0.0/lib/debug/ -lomp
else:unix: LIBS += -L$$PWD/../../../../../../usr/local/Cellar/libomp/11.0.0/lib/ -lomp

INCLUDEPATH += $$PWD/../../../../../../usr/local/Cellar/libomp/11.0.0/include
DEPENDPATH += $$PWD/../../../../../../usr/local/Cellar/libomp/11.0.0/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../../../usr/local/Cellar/gcc/10.2.0/lib/gcc/10/release/ -lgfortran.5
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../../../usr/local/Cellar/gcc/10.2.0/lib/gcc/10/debug/ -lgfortran.5
else:unix: LIBS += -L$$PWD/../../../../../../usr/local/Cellar/gcc/10.2.0/lib/gcc/10/ -lgfortran.5

INCLUDEPATH += $$PWD/../../../../../../usr/local/Cellar/gcc/10.2.0/lib/gcc/10
DEPENDPATH += $$PWD/../../../../../../usr/local/Cellar/gcc/10.2.0/lib/gcc/10
