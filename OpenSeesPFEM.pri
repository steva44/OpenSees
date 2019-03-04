
INCLUDEPATH += \
    $$PWD/SRC/element/PFEMElement \

HEADERS += \
   $$PWD/SRC/element/PFEMElement/BackgroundDef.h \
   $$PWD/SRC/element/PFEMElement/BackgroundFixData.h \
   $$PWD/SRC/element/PFEMElement/BackgroundGrid.h \
   $$PWD/SRC/element/PFEMElement/BackgroundMesh.h \
   $$PWD/SRC/element/PFEMElement/BackgroundStructure.h \
   $$PWD/SRC/element/PFEMElement/HigherOrder.h \
   $$PWD/SRC/element/PFEMElement/LineMesh.h \
   $$PWD/SRC/element/PFEMElement/LineMeshGenerator.h \
   $$PWD/SRC/element/PFEMElement/Mesh.h \
   $$PWD/SRC/element/PFEMElement/MINI.h \
   $$PWD/SRC/element/PFEMElement/Particle.h \
   $$PWD/SRC/element/PFEMElement/ParticleGroup.h \
   $$PWD/SRC/element/PFEMElement/PFEMElement2D.h \
   $$PWD/SRC/element/PFEMElement/PFEMElement2DBubble.h \
   $$PWD/SRC/element/PFEMElement/PFEMElement2DCompressible.h \
   $$PWD/SRC/element/PFEMElement/PFEMElement2DFIC.h \
   $$PWD/SRC/element/PFEMElement/PFEMElement2Dmini.h \
   $$PWD/SRC/element/PFEMElement/PFEMElement2DQuasi.h \
   $$PWD/SRC/element/PFEMElement/PFEMElement3D.h \
   $$PWD/SRC/element/PFEMElement/PFEMElement3DBubble.h \
   #$$PWD/SRC/element/PFEMElement/PFEMElement3Dmini.h \
   #$$PWD/SRC/element/PFEMElement/PFEMMesher2D.h \
   $$PWD/SRC/element/PFEMElement/PFEMMesher3D.h \
   $$PWD/SRC/element/PFEMElement/QuadMesh.h \
   $$PWD/SRC/element/PFEMElement/QuadMeshGenerator.h \
   $$PWD/SRC/element/PFEMElement/TaylorHood2D.h \
   $$PWD/SRC/element/PFEMElement/TetMesh.h \
   $$PWD/SRC/element/PFEMElement/TetMeshGenerator.h \
   $$PWD/SRC/element/PFEMElement/TriangleMeshGenerator.h \
   $$PWD/SRC/element/PFEMElement/TriGaussPoints.h \
   $$PWD/SRC/element/PFEMElement/TriMesh.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMCompressibleLinSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMCompressibleSolver.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMDiaLinSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMDiaSolver.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMLinSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMQuasiLinSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMQuasiSolver.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMSolver.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMSolver_Laplace.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMSolver_LumpM.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMSolver_Umfpack.h \
   $$PWD/SRC/convergenceTest/CTestPFEM.h \
   $$PWD/SRC/analysis/integrator/PFEMIntegrator.h \
   $$PWD/SRC/analysis/analysis/PFEMAnalysis.h \
   $$PWD/SRC/recorder/PVDRecorder.h \
   #$$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMGeneralLinSOE.h \ #No CUDA support in OSX Mojave as of yet...
   #$$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMUnifiedLinSOE.h \ #No CUDA support in OSX Mojave as of yet...
   #$$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMUnifiedSolver.h \ #No CUDA support in OSX Mojave as of yet...

SOURCES += \
   $$PWD/SRC/element/PFEMElement/BackgroundDef.cpp \
   $$PWD/SRC/element/PFEMElement/BackgroundFixData.cpp \
   $$PWD/SRC/element/PFEMElement/BackgroundGrid.cpp \
   $$PWD/SRC/element/PFEMElement/BackgroundMesh.cpp \
   $$PWD/SRC/element/PFEMElement/BackgroundStructure.cpp \
   $$PWD/SRC/element/PFEMElement/HigherOrder.cpp \
   $$PWD/SRC/element/PFEMElement/LineMesh.cpp \
   $$PWD/SRC/element/PFEMElement/LineMeshGenerator.cpp \
   $$PWD/SRC/element/PFEMElement/Mesh.cpp \
   $$PWD/SRC/element/PFEMElement/MINI.cpp \
   $$PWD/SRC/element/PFEMElement/Particle.cpp \
   $$PWD/SRC/element/PFEMElement/ParticleGroup.cpp \
   $$PWD/SRC/element/PFEMElement/PFEMElement2D.cpp \
   $$PWD/SRC/element/PFEMElement/PFEMElement2DBubble.cpp \
   $$PWD/SRC/element/PFEMElement/PFEMElement2DCompressible.cpp \
   $$PWD/SRC/element/PFEMElement/PFEMElement2DFIC.cpp \
   $$PWD/SRC/element/PFEMElement/PFEMElement2Dmini.cpp \
   $$PWD/SRC/element/PFEMElement/PFEMElement2DQuasi.cpp \
   $$PWD/SRC/element/PFEMElement/PFEMElement3D.cpp \
   $$PWD/SRC/element/PFEMElement/PFEMElement3DBubble.cpp \
   #$$PWD/SRC/element/PFEMElement/PFEMElement3Dmini.cpp \
   #$$PWD/SRC/element/PFEMElement/PFEMMesher2D.cpp \
   $$PWD/SRC/element/PFEMElement/PFEMMesher3D.cpp \
   $$PWD/SRC/element/PFEMElement/QuadMesh.cpp \
   $$PWD/SRC/element/PFEMElement/QuadMeshGenerator.cpp \
   $$PWD/SRC/element/PFEMElement/TaylorHood2D.cpp \
   $$PWD/SRC/element/PFEMElement/TetMesh.cpp \
   $$PWD/SRC/element/PFEMElement/TetMeshGenerator.cpp \
   $$PWD/SRC/element/PFEMElement/TriangleMeshGenerator.cpp \
   $$PWD/SRC/element/PFEMElement/TriGaussPoints.cpp \
   $$PWD/SRC/element/PFEMElement/TriMesh.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMCompressibleLinSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMCompressibleSolver.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMDiaLinSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMDiaSolver.cpp \
   #$$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMGeneralLinSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMLinSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMQuasiLinSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMQuasiSolver.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMSolver.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMSolver_Laplace.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMSolver_LumpM.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMSolver_Umfpack.cpp \
   #$$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMUnifiedLinSOE.cpp \
   #$$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMUnifiedSolver.cpp \
   $$PWD/SRC/convergenceTest/CTestPFEM.cpp \
   $$PWD/SRC/analysis/integrator/PFEMIntegrator.cpp \
   $$PWD/SRC/analysis/analysis/PFEMAnalysis.cpp \
   $$PWD/SRC/recorder/PVDRecorder.cpp \

contains (DEFINES, _TCL85){

HEADERS += \
   $$PWD/SRC/element/PFEMElement/TclModelBuilder_addPFEMElement.h \

SOURCES += \
   $$PWD/SRC/element/PFEMElement/TclModelBuilder_addPFEMElement.cpp \
   $$PWD/SRC/element/PFEMElement/TclPFEMCommands.cpp \

}

contains (DEFINES, _MUMPS){

HEADERS += \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMCompressibleSolver_Mumps.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMSolver_Mumps.h \
  # $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMUnifiedSolver_Hybrid.h \ #No CUDA support in OSX Mojave as of yet...


SOURCES += \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMCompressibleSolver_Mumps.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMSolver_Mumps.cpp \
  # $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/PFEMUnifiedSolver_Hybrid.cpp \ #No CUDA support in OSX Mojave as of yet...

}





