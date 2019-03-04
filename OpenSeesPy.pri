

HEADERS += \
     ./SRC/interpreter/PythonModule.h \
     ./SRC/interpreter/PythonWrapper.h \
     #./SRC/interpreter/PythonInterpreter.h \
     #./SRC/interpreter/PythonModelBuilder.h \
     #./SRC/interpreter/PythonAnalysisBuilder.h \
     ./SRC/interpreter/OpenSeesCommands.h \
     ./SRC/interpreter/DL_Interpreter.h \

SOURCES += \
   ./SRC/interpreter/PythonModule.cpp \
   ./SRC/interpreter/PythonWrapper.cpp \
   #./SRC/interpreter/PythonInterpreter.cpp \
   #./SRC/interpreter/pythonMain.cpp \
   #./SRC/interpreter/OpenSeesCommandsPython.cpp \
   #./SRC/interpreter/PythonModelBuilder.cpp \
   #./SRC/interpreter/PythonAnalysisBuilder.cpp \
   ./SRC/interpreter/OpenSeesCommands.cpp \
   ./SRC/interpreter/OpenSeesBeamIntegrationCommands.cpp \
   ./SRC/interpreter/OpenSeesCrdTransfCommands.cpp \
   ./SRC/interpreter/OpenSeesElementCommands.cpp \
   ./SRC/interpreter/OpenSeesFrictionModelCommands.cpp \
   ./SRC/interpreter/OpenSeesNDMaterialCommands.cpp \
   ./SRC/interpreter/OpenSeesMiscCommands.cpp \
   ./SRC/interpreter/OpenSeesOutputCommands.cpp \
   ./SRC/interpreter/OpenSeesPatternCommands.cpp \
   ./SRC/interpreter/OpenSeesSectionCommands.cpp \
   ./SRC/interpreter/OpenSeesTimeSeriesCommands.cpp \
   ./SRC/interpreter/OpenSeesUniaxialMaterialCommands.cpp \
   ./SRC/interpreter/DL_Interpreter.cpp \


contains (DEFINES, _RELIABILITY){

HEADERS += \
   ./SRC/interpreter/OpenSeesReliabilityCommands.h \


SOURCES += \
   ./SRC/interpreter/OpenSeesReliabilityCommands.cpp \
   ./SRC/interpreter/OpenSeesParameterCommands.cpp \
}
