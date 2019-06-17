
INCLUDEPATH += \
    $$PWD/SRC/tcl \
    $$PWD/SRC/tcl/include \
    $$PWD/SRC/modelbuilder/tcl \
    $$PWD/SRC/optimization/tcl \


HEADERS += \
   $$PWD/SRC/tcl/include/regex.h \
   $$PWD/SRC/tcl/include/tclRegexp.h \
   $$PWD/SRC/tcl/TclFeViewer.h \
   $$PWD/SRC/tcl/tkConfig.h \
   $$PWD/SRC/modelbuilder/tcl/TclModelBuilder.h \
   $$PWD/SRC/element/UWelements/EmbeddedBeamInterfaceL.h \   #Elements only work with Tcl
   $$PWD/SRC/element/UWelements/EmbeddedBeamInterfaceP.h \   #Elements only work with Tcl
   $$PWD/SRC/element/UWelements/EmbeddedEPBeamInterface.h \  #Elements only work with Tcl
   $$PWD/SRC/tcl/commands.h \
   $$PWD/SRC/database/TclDatabaseCommands.cpp \
   $$PWD/SRC/renderer/PlainMap.h \
   $$PWD/SRC/element/UWelements/Tcl_generateInterfacePoints.h \
   $$PWD/SRC/interpreter/OpenSeesCommands.h \
   $$PWD/SRC/recorder/MPCORecorder.h \
   $$PWD/SRC/interpreter/DL_Interpreter.h \
   $$PWD/SRC/material/uniaxial/limitState/limitCurve/WrapperLimitCurve.h \
   $$PWD/SRC/recorder/GmshRecorder.h \ #throws errors if not compiled with tcl
   $$PWD/SRC/material/uniaxial/limitState/limitCurve/AxialCurve.h \
   $$PWD/SRC/optimization/domain/component/ConstraintFunction.h \
   $$PWD/SRC/optimization/domain/component/ObjectiveFunction.h \
   #$$PWD/SRC/modelbuilder/tcl/TclPlaneStressMaterialTester.h \
   #$$PWD/SRC/modelbuilder/tcl/TclSectionTester.h \
   #$$PWD/SRC/modelbuilder/tcl/TclUniaxialMaterialTester.h \
   #$$PWD/SRC/optimization/tcl/TclOptimizationBuilder.h \
   #$$PWD/SRC/tcl/tclInt.h \
   #$$PWD/SRC/tcl/TclVideoPlayer.h \
   #$$PWD/SRC/tcl/include/tclIntDecls.h \
   #$$PWD/SRC/tcl/include/tkConfig.h \
   #$$PWD/SRC/tcl/include/tkInt.h \
   #$$PWD/SRC/tcl/include/tkIntDecls.h \
   #$$PWD/SRC/tcl/include/tkIntPlatDecls.h \
   #$$PWD/SRC/tcl/include/tkPlatDecls.h \
   #$$PWD/SRC/tcl/include/tkPort.h \
   #$$PWD/SRC/tcl/include/tkUnixPort.h \
   #$$PWD/SRC/tcl/include/tkWin.h \
   #$$PWD/SRC/tcl/include/tkWinInt.h \
   #$$PWD/SRC/tcl/include/tkWinPort.h \
   #$$PWD/SRC/interpreter/TclInterpreter.h \
   #$$PWD/SRC/interpreter/TclWrapper.h \


SOURCES += \
   $$PWD/SRC/tcl/tclAppInit.cpp \
   $$PWD/SRC/tcl/TclFeViewer.cpp \
   $$PWD/SRC/tcl/tclMain.cpp \
   $$PWD/SRC/tcl/commands.cpp \
   $$PWD/SRC/modelbuilder/tcl/myCommands.cpp \
   $$PWD/SRC/modelbuilder/tcl/TclModelBuilder.cpp \
   $$PWD/SRC/modelbuilder/tcl/TclPlaneStressMaterialTester.cpp \
   $$PWD/SRC/modelbuilder/tcl/TclSectionTester.cpp \
   $$PWD/SRC/modelbuilder/tcl/TclUniaxialMaterialTester.cpp \
   $$PWD/SRC/material/section/yieldSurface/TclModelBuilderYS_SectionCommand.cpp \
   $$PWD/SRC/material/nD/TclModelBuilderNDMaterialCommand.cpp \
   $$PWD/SRC/element/frictionBearing/TclFlatSliderCommand.cpp \
   $$PWD/SRC/element/frictionBearing/TclRJWatsonEQSCommand.cpp \
   $$PWD/SRC/element/frictionBearing/TclSingleFPCommand.cpp \
   $$PWD/SRC/element/generic/TclGenericClientCommand.cpp \
   $$PWD/SRC/element/generic/TclGenericCopyCommand.cpp \
   $$PWD/SRC/element/joint/TclBeamColumnJointCommand.cpp \
   $$PWD/SRC/element/joint/TclJoint2dCommand.cpp \
   $$PWD/SRC/element/joint/TclJoint3dCommand.cpp \
   $$PWD/SRC/element/brick/TclBrickCommand.cpp \
   $$PWD/SRC/element/elasticBeamColumn/TclElasticBeamCommand.cpp \
   $$PWD/SRC/element/brick/TclTwenty_Node_BrickCommand.cpp \
   $$PWD/SRC/element/beamWithHinges/TclBeamWithHingesBuilder.cpp \
   $$PWD/SRC/element/dispBeamColumnInt/TclDispBeamColumnIntCommand.cpp \
   $$PWD/SRC/element/adapter/TclActuatorCommand.cpp \
   $$PWD/SRC/element/adapter/TclActuatorCorotCommand.cpp \
   $$PWD/SRC/element/adapter/TclAdapterCommand.cpp \
   $$PWD/SRC/domain/region/TclRegionCommands.cpp \
   $$PWD/SRC/domain/pattern/TclPatternCommand.cpp \
# ^^^^ SET ABOVE  $$PWD/SRC/domain/pattern/drm/TclPatternCommand.cpp \ drm??? ^^^^
   $$PWD/SRC/domain/groundMotion/TclGroundMotionCommand.cpp \
   $$PWD/SRC/domain/component/TclUpdateMaterialCommand.cpp \
   $$PWD/SRC/damage/TclModelBuilderDamageModelCommand.cpp \
   $$PWD/SRC/coordTransformation/TclGeomTransfCommand.cpp \
   $$PWD/SRC/element/updatedLagrangianBeamColumn/TclCyclicModelCommands.cpp \
   $$PWD/SRC/element/updatedLagrangianBeamColumn/TclElement2dGNL.cpp \
   $$PWD/SRC/element/updatedLagrangianBeamColumn/TclElement2dYS.cpp \
   $$PWD/SRC/element/twoNodeLink/TclTwoNodeLinkCommand.cpp \
   $$PWD/SRC/element/fourNodeQuad/TclFourNodeQuadCommand.cpp \
   $$PWD/SRC/element/elastomericBearing/TclElastomericBearingBoucWenCommand.cpp \
   $$PWD/SRC/element/elastomericBearing/TclElastomericBearingPlasticityCommand.cpp \
   $$PWD/SRC/element/elastomericBearing/TclElastomericBearingUFRPCommand.cpp \
   $$PWD/SRC/element/frictionBearing/frictionModel/TclModelBuilderFrictionModelCommand.cpp \
   $$PWD/SRC/element/UP-ucsd/TclFourNodeQuadUPCommand.cpp \
   $$PWD/SRC/element/UWelements/Tcl_generateInterfacePoints.cpp \
   $$PWD/SRC/element/zeroLength/TclZeroLength.cpp \
   $$PWD/SRC/material/nD/soil/TclUpdateMaterialStageCommand.cpp \
   $$PWD/SRC/material/yieldSurface/evolution/TclModelBuilderYS_EvolutionCommand.cpp \
   $$PWD/SRC/material/uniaxial/backbone/TclModelBuilderBackboneCommand.cpp \
   $$PWD/SRC/material/section/TclModelBuilderSectionCommand.cpp \
   $$PWD/SRC/material/uniaxial/fedeas/TclFedeasMaterialCommand.cpp \
   $$PWD/SRC/material/uniaxial/limitState/TclLimitState.cpp \
   $$PWD/SRC/material/uniaxial/PY/TclPyTzQzMaterialCommand.cpp \
   $$PWD/SRC/material/uniaxial/snap/TclSnapMaterialCommand.cpp \
   $$PWD/SRC/material/uniaxial/TclModelBuilderUniaxialMaterialCommand.cpp \
   $$PWD/SRC/material/yieldSurface/plasticHardeningMaterial/TclModelBuilderYSPlasticMaterialCommand.cpp \
   $$PWD/SRC/material/yieldSurface/yieldSurfaceBC/TclModelBuilderYieldSurfaceBCCommand.cpp \
   $$PWD/SRC/recorder/TclRecorderCommands.cpp \
   $$PWD/SRC/domain/component/TclParameterCommands.cpp \
   $$PWD/SRC/element/forceBeamColumn/TclForceBeamColumnCommand.cpp \
   $$PWD/SRC/element/TclElementCommands.cpp \
   $$PWD/SRC/domain/pattern/TclSeriesCommand.cpp \
   $$PWD/SRC/domain/pattern/TclSeriesIntegratorCommand.cpp \
   $$PWD/SRC/renderer/PlainMap.cpp \
   $$PWD/SRC/element/UWelements/EmbeddedBeamInterfaceL.cpp \  #Elements only work with Tcl
   $$PWD/SRC/element/UWelements/EmbeddedBeamInterfaceP.cpp \  #Elements only work with Tcl
   $$PWD/SRC/element/UWelements/EmbeddedEPBeamInterface.cpp \ #Elements only work with Tcl
   $$PWD/SRC/interpreter/DL_Interpreter.cpp \
   $$PWD/SRC/recorder/MPCORecorder.cpp \
   $$PWD/SRC/api/elementAPI_TCL.cpp \
   $$PWD/SRC/material/uniaxial/limitState/limitCurve/WrapperLimitCurve.cpp \
   $$PWD/SRC/recorder/GmshRecorder.cpp \ #throws errors if not compiled with tcl
   $$PWD/SRC/material/uniaxial/limitState/limitCurve/AxialCurve.cpp \
   $$PWD/SRC/optimization/domain/component/ConstraintFunction.cpp \
   $$PWD/SRC/optimization/domain/component/ObjectiveFunction.cpp \
   #$$PWD/SRC/optimization/tcl/TclOptimizationBuilder.cpp \
   #$$PWD/SRC/tcl/tclMain85.cpp \
   #$$PWD/SRC/tcl/tkAppInit.cpp \
   #$$PWD/SRC/tcl/tkMain.cpp \
   #$$PWD/SRC/tcl/winMain.cpp \
   #$$PWD/SRC/unittest/unittest.cpp \
   #$$PWD/SRC/tcl/tclAppInit85.cpp \
   #$$PWD/SRC/interpreter/TclInterpreter.cpp \
   #$$PWD/SRC/material/uniaxial/TclNewUniaxialMaterial.cpp \
   #$$PWD/SRC/element/nonlinearBeamColumn/tcl/TclElmtBuilder.cpp \
   #$$PWD/SRC/interpreter/tclMain.cpp \ # WARNING: DO NOT USE THIS MAIN. Use the other tcl main in folder /tcl
   #$$PWD/SRC/tcl/TclVideoPlayer.cpp \
   #$$PWD/SRC/interpreter/TclWrapper.cpp \
   #$$PWD/SRC/interpreter/OpenSeesCommandsTcl.cpp \

