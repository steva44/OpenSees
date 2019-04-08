


#UMFPACK is a set of routines for solving unsymmetric sparse linear systems of the form Ax=b, using the Unsymmetric MultiFrontal method (Matrix A is not required to be symmetric).
#Written in ANSI/ISO C
contains (DEFINES, _UMFPACK){

#Need to define this so we dont get a strange compilation error due to the sparse-suite cs.h include
DEFINES += NCOMPLEX

INCLUDEPATH += \
    $$PWD/SRC/system_of_eqn/linearSOE/umfGEN \

HEADERS += \
   $$PWD/SRC/system_of_eqn/linearSOE/umfGEN/UmfpackGenLinSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/umfGEN/UmfpackGenLinSolver.h \

SOURCES += \
   $$PWD/SRC/system_of_eqn/linearSOE/umfGEN/UmfpackGenLinSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/umfGEN/UmfpackGenLinSolver.cpp \


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/OpenSeesLibs/suite-sparse/5.3.0/lib/release/ -lumfpack.5.7.7
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/OpenSeesLibs/suite-sparse/5.3.0/lib/debug/ -lumfpack.5.7.7
else:unix: LIBS += -L$$PWD/OpenSeesLibs/suite-sparse/5.3.0/lib/ -lumfpack.5.7.7 -lcxsparse.3.2.0

INCLUDEPATH += $$PWD/OpenSeesLibs/suite-sparse/5.3.0/include
DEPENDPATH += $$PWD/OpenSeesLibs/suite-sparse/5.3.0/include

}

#ITPACK, developed at the Center for Numerical Analysis, the University of Texas at Austin, is a collection of
#subroutines for solving large sparse linear systems by adaptive accelerated iterative algorithms.
#currently not using ITPACK in OTHER folder due to fortran useage.No brew formula.
#website: https://web.ma.utexas.edu/CNA/ITPACK/ gives ITPACK2C that could be implemented in the future
contains (DEFINES, _ITPACK){

INCLUDEPATH += \
    $$PWD/SRC/system_of_eqn/linearSOE/itpack \

HEADERS += \
   $$PWD/SRC/system_of_eqn/linearSOE/itpack/ItpackLinSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/itpack/ItpackLinSolver.h \

SOURCES += \
   $$PWD/SRC/system_of_eqn/linearSOE/itpack/ItpackLinSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/itpack/ItpackLinSolver.cpp \

}

contains (DEFINES, _SUPERLU){

HEADERS += \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/SuperLU.h \


SOURCES += \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/SuperLU.cpp \

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/OpenSeesLibs/superlu/5.2.1/lib/release/ -lsuperlu
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/OpenSeesLibs/superlu/5.2.1/lib/debug/ -lsuperlu
else:unix: LIBS += -L$$PWD/OpenSeesLibs/superlu/5.2.1/lib/ -lsuperlu

INCLUDEPATH += $$PWD/OpenSeesLibs/superlu/5.2.1/include \
               $$PWD/OpenSeesLibs/superlu/5.2.1/include/superlu \

DEPENDPATH += $$PWD/OpenSeesLibs/superlu/5.2.1/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/OpenSeesLibs/superlu/5.2.1/lib/release/libsuperlu.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/OpenSeesLibs/superlu/5.2.1/lib/debug/libsuperlu.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/OpenSeesLibs/superlu/5.2.1/lib/release/superlu.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/OpenSeesLibs/superlu/5.2.1/lib/debug/superlu.lib
else:unix: PRE_TARGETDEPS += $$PWD/OpenSeesLibs/superlu/5.2.1/lib/libsuperlu.a

}

contains (DEFINES, _SUPERLUMT){

HEADERS += \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/SuperLU_MT_util.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/ThreadedSuperLU.h \

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/OpenSeesLibs/superlu_mt/3.0/lib/release/ -lsuperlu_mt_PTHREAD
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/OpenSeesLibs/superlu_mt/3.0/lib/debug/ -lsuperlu_mt_PTHREAD
else:unix: LIBS += -L$$PWD/OpenSeesLibs/superlu_mt/3.0/lib/ -lsuperlu_mt_PTHREAD

INCLUDEPATH += $$PWD/OpenSeesLibs/superlu_mt/3.0/include \
               $$PWD/OpenSeesLibs/superlu_mt/3.0/include/superlu_mt \

DEPENDPATH += $$PWD/OpenSeesLibs/superlu_mt/3.0/include

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/OpenSeesLibs/superlu_mt/3.0/lib/release/libsuperlu_mt_PTHREAD.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/OpenSeesLibs/superlu_mt/3.0/lib/debug/libsuperlu_mt_PTHREAD.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/OpenSeesLibs/superlu_mt/3.0/lib/release/superlu_mt_PTHREAD.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/OpenSeesLibs/superlu_mt/3.0/lib/debug/superlu_mt_PTHREAD.lib
else:unix: PRE_TARGETDEPS += $$PWD/OpenSeesLibs/superlu_mt/3.0/lib/libsuperlu_mt_PTHREAD.a

}

contains (DEFINES, _SUPERLUDIST){

HEADERS += \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/DistributedSuperLU.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/DistributedSparseGenColLinSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/DistributedSparseGenRowLinSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/DistributedSparseGenRowLinSolver.h \

SOURCES += \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/DistributedSuperLU.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/DistributedSparseGenColLinSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/DistributedSparseGenRowLinSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/DistributedSparseGenRowLinSolver.cpp \


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/OpenSeesLibs/superlu_dist/5.1.0/lib/release/ -lsuperlu_dist.5.1.0
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/OpenSeesLibs/superlu_dist/5.1.0/lib/debug/ -lsuperlu_dist.5.1.0
else:unix: LIBS += -L$$PWD/OpenSeesLibs/superlu_dist/5.1.0/lib/ -lsuperlu_dist.5.1.0

INCLUDEPATH += $$PWD/OpenSeesLibs/superlu_dist/5.1.0/include
DEPENDPATH += $$PWD/OpenSeesLibs/superlu_dist/5.1.0/include

}


#'METIS' is a type of GraphPartitioner and numberer
#Unstructured Graph Partitioning And Sparse Matrix Ordering System', developed by G. Karypis and V. Kumar at the University of Minnesota.
contains (DEFINES, _METIS){

INCLUDEPATH += \
    $$PWD/OTHER/METIS \

HEADERS += \
   $$PWD/SRC/graph/partitioner/Metis.h \
   #$$PWD/SRC/graph/numberer/MetisNumberer.h \


SOURCES += \
   $$PWD/SRC/graph/partitioner/Metis.cpp \
   #$$PWD/SRC/graph/numberer/MetisNumberer.cpp \


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/OpenSeesLibs/metis/5.1.0/lib/release/ -lmetis
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/OpenSeesLibs/metis/5.1.0/lib/debug/ -lmetis
else:unix: LIBS += -L$$PWD/OpenSeesLibs/metis/5.1.0/lib/ -lmetis

INCLUDEPATH += $$PWD/OpenSeesLibs/metis/5.1.0/include
DEPENDPATH += $$PWD/OpenSeesLibs/metis/5.1.0/include

}


# A Two-Dimensional Quality Mesh Generator and Delaunay Triangulator.
# Go to triangle.c for more info
contains (DEFINES, _TRIANGLE){

INCLUDEPATH += \
    $$PWD/OTHER/Triangle \

SOURCES += \
   #$$PWD/OTHER/Triangle/showme.c \
   $$PWD/OTHER/Triangle/triangle.c \
   #$$PWD/OTHER/Triangle/tricall.c \ #main function

}


contains (DEFINES, _ARPACK){


HEADERS += \
   $$PWD/SRC/system_of_eqn/eigenSOE/ArpackSOE.h \
   $$PWD/SRC/system_of_eqn/eigenSOE/ArpackSolver.h \
   $$PWD/SRC/system_of_eqn/eigenSOE/BandArpackSOE.h \
   $$PWD/SRC/system_of_eqn/eigenSOE/BandArpackSolver.h \
   $$PWD/SRC/system_of_eqn/eigenSOE/SymArpackSOE.h \
   $$PWD/SRC/system_of_eqn/eigenSOE/SymArpackSolver.h \

SOURCES += \
   $$PWD/SRC/system_of_eqn/eigenSOE/ArpackSOE.cpp \
   $$PWD/SRC/system_of_eqn/eigenSOE/ArpackSolver.cpp \
   $$PWD/SRC/system_of_eqn/eigenSOE/BandArpackSOE.cpp \
   $$PWD/SRC/system_of_eqn/eigenSOE/BandArpackSolver.cpp \
   $$PWD/SRC/system_of_eqn/eigenSOE/SymArpackSOE.cpp \
   $$PWD/SRC/system_of_eqn/eigenSOE/SymArpackSolver.cpp \


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/OpenSeesLibs/arpack/3.6.3/libexec/lib/release/ -larpack.2
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/OpenSeesLibs/arpack/3.6.3/libexec/lib/debug/ -larpack.2
else:unix: LIBS += -L$$PWD/OpenSeesLibs/arpack/3.6.3/libexec/lib/ -larpack.2

INCLUDEPATH += $$PWD/OpenSeesLibs/arpack/3.6.3/libexec/include
DEPENDPATH += $$PWD/OpenSeesLibs/arpack/3.6.3/libexec/include

}


#An AMD degree-of-freedom numbering object to provide the mapping between the degrees-of-freedom at the nodes and the equation numbers.
#The AMD numberer uses the approximate minimum degree scheme to order the matrix equations.
#Algorithm 837: AMD, An approximate minimum degree ordering algorithm, P. Amestoy, T. A. Davis, and I. S. Duff, ACM Transactions on Mathematical Software, vol 30, no. 3, Sept. 2004, pp. 381-388.
#An approximate minimum degree ordering algorithm, P. Amestoy, T. A. Davis, and I. S. Duff, SIAM Journal on Matrix Analysis and Applications, vol 17, no. 4, pp. 886-905, Dec. 1996.
#Direct Methods for Sparse Linear Systems, T. A. Davis, SIAM, Philadelphia, Sept. 2006. Part of the SIAM Book Series on the Fundamentals of Algorithms.
contains (DEFINES, _AMD){

INCLUDEPATH += \
    $$PWD/OTHER/AMD \

HEADERS += \
   $$PWD/OTHER/AMD/amd.h \
   $$PWD/OTHER/AMD/amd_internal.h \
   $$PWD/OTHER/AMD/SuiteSparse_config.h \
   $$PWD/OTHER/AMD/UFconfig.h \
   $$PWD/SRC/graph/numberer/AMDNumberer.h \

SOURCES += \
   $$PWD/OTHER/AMD/amd_1.c \
   $$PWD/OTHER/AMD/amd_2.c \
   $$PWD/OTHER/AMD/amd_aat.c \
   $$PWD/OTHER/AMD/amd_control.c \
   $$PWD/OTHER/AMD/amd_defaults.c \
   $$PWD/OTHER/AMD/amd_dump.c \
   $$PWD/OTHER/AMD/amd_global.c \
   $$PWD/OTHER/AMD/amd_info.c \
   $$PWD/OTHER/AMD/amd_order.c \
   $$PWD/OTHER/AMD/amd_post_tree.c \
   $$PWD/OTHER/AMD/amd_postorder.c \
   $$PWD/OTHER/AMD/amd_preprocess.c \
   $$PWD/OTHER/AMD/amd_valid.c \
   $$PWD/OTHER/AMD/SuiteSparse_config.c \
   $$PWD/SRC/graph/numberer/AMDNumberer.cpp \

}


contains (DEFINES, _TETGEN){

INCLUDEPATH += \
    $$PWD/OTHER/Tetgen \
    $$PWD/OTHER/tetgen1.4.3 \

HEADERS += \

SOURCES += \
   #$$PWD/OTHER/Tetgen/predicates.cxx \   #Use these two or the two below
   #$$PWD/OTHER/Tetgen/tetgen.cxx \       #Use these two or the two below
   $$PWD/OTHER/tetgen1.4.3/predicates.cxx \
   $$PWD/OTHER/tetgen1.4.3/tetgen.cxx \
}

#LAPACK — Linear Algebra PACKage
#LAPACK is written in Fortran 90 and provides routines for solving systems of simultaneous linear equations, least-squares solutions of linear systems of equations, eigenvalue problems, and singular value problems.
#The associated matrix factorizations (LU, Cholesky, QR, SVD, Schur, generalized Schur) are also provided, as are related computations such as reordering of the Schur factorizations and estimating condition numbers.
#Dense and banded matrices are handled, but not general sparse matrices. In all areas, similar functionality is provided for real and complex matrices, in both single and double precision.
#Using OS X built in library for LAPACK
contains (DEFINES, _LAPACK){

HEADERS += \
   $$PWD/SRC/system_of_eqn/linearSOE/bandGEN/BandGenLinLapackSolver.h \
   $$PWD/SRC/system_of_eqn/linearSOE/fullGEN/FullGenLinLapackSolver.h \
   $$PWD/SRC/system_of_eqn/linearSOE/bandSPD/BandSPDLinLapackSolver.h \
   $$PWD/SRC/system_of_eqn/linearSOE/bandGEN/DistributedBandGenLinSOE.h \
   $$PWD/SRC/analysis/integrator/KRAlphaExplicit_TP.h \
   $$PWD/SRC/analysis/integrator/KRAlphaExplicit.h \
   $$PWD/SRC/analysis/algorithm/equiSolnAlgo/accelerator/DifferenceAccelerator.h \
   $$PWD/SRC/analysis/algorithm/equiSolnAlgo/accelerator/DifferenceAccelerator2.h \
   $$PWD/SRC/analysis/algorithm/equiSolnAlgo/accelerator/KrylovAccelerator.h \
   $$PWD/SRC/analysis/algorithm/equiSolnAlgo/accelerator/KrylovAccelerator2.h \
   $$PWD/SRC/analysis/algorithm/equiSolnAlgo/KrylovNewton.h \
   $$PWD/SRC/system_of_eqn/eigenSOE/FullGenEigenSolver.h \
   $$PWD/SRC/system_of_eqn/eigenSOE/SymBandEigenSolver.h \


SOURCES += \
   $$PWD/SRC/system_of_eqn/linearSOE/bandGEN/BandGenLinLapackSolver.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/fullGEN/FullGenLinLapackSolver.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/bandSPD/BandSPDLinLapackSolver.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/bandGEN/DistributedBandGenLinSOE.cpp \
   $$PWD/SRC/analysis/integrator/KRAlphaExplicit_TP.cpp \
   $$PWD/SRC/analysis/integrator/KRAlphaExplicit.cpp \
   $$PWD/SRC/analysis/algorithm/equiSolnAlgo/accelerator/DifferenceAccelerator.cpp \
   $$PWD/SRC/analysis/algorithm/equiSolnAlgo/accelerator/DifferenceAccelerator2.cpp \
   $$PWD/SRC/analysis/algorithm/equiSolnAlgo/accelerator/KrylovAccelerator.cpp \
   $$PWD/SRC/analysis/algorithm/equiSolnAlgo/accelerator/KrylovAccelerator2.cpp \
   $$PWD/SRC/analysis/algorithm/equiSolnAlgo/KrylovNewton.cpp \
   $$PWD/SRC/system_of_eqn/eigenSOE/FullGenEigenSolver.cpp \
   $$PWD/SRC/system_of_eqn/eigenSOE/SymBandEigenSolver.cpp \


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/OpenSeesLibs/scalapack/2.0.2_13/lib/release/ -lscalapack
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/OpenSeesLibs/scalapack/2.0.2_13/lib/debug/ -lscalapack
else:unix: LIBS += -L$$PWD/OpenSeesLibs/scalapack/2.0.2_13/lib/ -lscalapack

INCLUDEPATH += $$PWD/OpenSeesLibs/scalapack/2.0.2_13
DEPENDPATH += $$PWD/OpenSeesLibs/scalapack/2.0.2_13



}

# The BLAS (Basic Linear Algebra Subprograms) are routines that provide standard building blocks for performing basic vector and matrix operations.
# Using OS X built in library for BLAS
contains (DEFINES, _CBLAS){

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/OpenSeesLibs/openblas/0.3.5/lib/release/ -lopenblasp-r0.3.5
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/OpenSeesLibs/openblas/0.3.5/lib/debug/ -lopenblasp-r0.3.5
else:unix: LIBS += -L$$PWD/OpenSeesLibs/openblas/0.3.5/lib/ -lopenblasp-r0.3.5

INCLUDEPATH += $$PWD/OpenSeesLibs/openblas/0.3.5/include
DEPENDPATH += $$PWD/OpenSeesLibs/openblas/0.3.5/include

}

#MUMPS : a parallel sparse direct solver
#MUMPS: MUltifrontal Massively Parallel sparse direct Solver
contains (DEFINES, _MUMPS){

INCLUDEPATH += \
    $$PWD/SRC/system_of_eqn/linearSOE/mumps \

HEADERS += \
   $$PWD/SRC/system_of_eqn/linearSOE/mumps/MumpsParallelSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/mumps/MumpsParallelSolver.h \
   $$PWD/SRC/system_of_eqn/linearSOE/mumps/MumpsSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/mumps/MumpsSolver.h \

SOURCES += \
   $$PWD/SRC/system_of_eqn/linearSOE/mumps/MumpsParallelSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/mumps/MumpsParallelSolver.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/mumps/MumpsSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/mumps/MumpsSolver.cpp \
   #$$PWD/SRC/system_of_eqn/linearSOE/mumps/c_example.c \
   #$$PWD/SRC/system_of_eqn/linearSOE/mumps/c_example1.cpp \
   #$$PWD/SRC/system_of_eqn/linearSOE/mumps/example.cpp \


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/OpenSeesLibs/mumps/5.1.2_2/lib/release/ -ldmumps -lmumps_common -lpord
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/OpenSeesLibs/mumps/5.1.2_2/lib/debug/ -ldmumps -lmumps_common -lpord
else:unix: LIBS += -L$$PWD/OpenSeesLibs/mumps/5.1.2_2/lib/ -ldmumps -lmumps_common -lpord

INCLUDEPATH += $$PWD/OpenSeesLibs/mumps/5.1.2_2/include
DEPENDPATH += $$PWD/OpenSeesLibs/mumps/5.1.2_2/include
}

# Portable, Extensible Toolkit for Scientific Computation
# PETSc, pronounced PET-see (the S is silent), is a suite of data structures and routines for the scalable (parallel) solution of scientific applications modeled by partial differential equations.
# It supports MPI, and GPUs through CUDA or OpenCL, as well as hybrid MPI-GPU parallelism. PETSc (sometimes called PETSc/Tao) also contains the Tao optimization software library.
contains (DEFINES, _PETSC){

INCLUDEPATH += \
    $$PWD/SRC/system_of_eqn/linearSOE/petsc \

HEADERS += \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/ActorPetscSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/oldpetsc.h \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/PetscSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/PetscSolver.h \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/PetscSparseSeqSolver.h \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/ShadowPetscSOE.h \

SOURCES += \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/ActorPetscSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/badPetscSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/main.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/PetscSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/PetscSolver.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/PetscSparseSeqSolver.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/ShadowPetscSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/petsc/TclPetsc.cpp \


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/OpenSeesLibs/petsc/3.9.3_1/lib/release/ -lpetsc.3.9.3
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/OpenSeesLibs/petsc/3.9.3_1/lib/debug/ -lpetsc.3.9.3
else:unix: LIBS += -L$$PWD/OpenSeesLibs/petsc/3.9.3_1/lib/ -lpetsc.3.9.3

INCLUDEPATH += $$PWD/OpenSeesLibs/petsc/3.9.3_1/include
DEPENDPATH += $$PWD/OpenSeesLibs/petsc/3.9.3_1/include

}


#CSPARSE - A Concise Sparse Matrix Package in C
#CSPARSE is a C library which implements a number of direct methods for sparse linear systems, by Timothy Davis.
contains (DEFINES, _CSPARSE){

INCLUDEPATH += \
    $$PWD/OTHER/CSPARSE \

HEADERS += \
   $$PWD/OTHER/CSPARSE/cs.h \

SOURCES += \
   $$PWD/OTHER/CSPARSE/cs_add.c \
   $$PWD/OTHER/CSPARSE/cs_amd.c \
   $$PWD/OTHER/CSPARSE/cs_chol.c \
   $$PWD/OTHER/CSPARSE/cs_cholsol.c \
   $$PWD/OTHER/CSPARSE/cs_compress.c \
   $$PWD/OTHER/CSPARSE/cs_counts.c \
   $$PWD/OTHER/CSPARSE/cs_cumsum.c \
   $$PWD/OTHER/CSPARSE/cs_dfs.c \
   $$PWD/OTHER/CSPARSE/cs_dmperm.c \
   $$PWD/OTHER/CSPARSE/cs_droptol.c \
   $$PWD/OTHER/CSPARSE/cs_dropzeros.c \
   $$PWD/OTHER/CSPARSE/cs_dupl.c \
   $$PWD/OTHER/CSPARSE/cs_entry.c \
   $$PWD/OTHER/CSPARSE/cs_ereach.c \
   $$PWD/OTHER/CSPARSE/cs_etree.c \
   $$PWD/OTHER/CSPARSE/cs_fkeep.c \
   $$PWD/OTHER/CSPARSE/cs_gaxpy.c \
   $$PWD/OTHER/CSPARSE/cs_happly.c \
   $$PWD/OTHER/CSPARSE/cs_house.c \
   $$PWD/OTHER/CSPARSE/cs_ipvec.c \
   $$PWD/OTHER/CSPARSE/cs_leaf.c \
   $$PWD/OTHER/CSPARSE/cs_load.c \
   $$PWD/OTHER/CSPARSE/cs_lsolve.c \
   $$PWD/OTHER/CSPARSE/cs_ltsolve.c \
   $$PWD/OTHER/CSPARSE/cs_lu.c \
   $$PWD/OTHER/CSPARSE/cs_lusol.c \
   $$PWD/OTHER/CSPARSE/cs_malloc.c \
   $$PWD/OTHER/CSPARSE/cs_maxtrans.c \
   $$PWD/OTHER/CSPARSE/cs_multiply.c \
   $$PWD/OTHER/CSPARSE/cs_norm.c \
   $$PWD/OTHER/CSPARSE/cs_permute.c \
   $$PWD/OTHER/CSPARSE/cs_pinv.c \
   $$PWD/OTHER/CSPARSE/cs_post.c \
   $$PWD/OTHER/CSPARSE/cs_print.c \
   $$PWD/OTHER/CSPARSE/cs_pvec.c \
   $$PWD/OTHER/CSPARSE/cs_qr.c \
   $$PWD/OTHER/CSPARSE/cs_qrsol.c \
   $$PWD/OTHER/CSPARSE/cs_randperm.c \
   $$PWD/OTHER/CSPARSE/cs_reach.c \
   $$PWD/OTHER/CSPARSE/cs_scatter.c \
   $$PWD/OTHER/CSPARSE/cs_scc.c \
   $$PWD/OTHER/CSPARSE/cs_schol.c \
   $$PWD/OTHER/CSPARSE/cs_spsolve.c \
   $$PWD/OTHER/CSPARSE/cs_sqr.c \
   $$PWD/OTHER/CSPARSE/cs_symperm.c \
   $$PWD/OTHER/CSPARSE/cs_tdfs.c \
   $$PWD/OTHER/CSPARSE/cs_transpose.c \
   $$PWD/OTHER/CSPARSE/cs_updown.c \
   $$PWD/OTHER/CSPARSE/cs_usolve.c \
   $$PWD/OTHER/CSPARSE/cs_util.c \
   $$PWD/OTHER/CSPARSE/cs_utsolve.c \

}


#High performance message passing library
#https://www.open-mpi.org/
contains (DEFINES, _OPENMPI){

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/OpenSeesLibs/open-mpi/4.0.0/lib/release/ -lmpi.40
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/OpenSeesLibs/open-mpi/4.0.0/lib/debug/ -lmpi.40
else:unix: LIBS += -L$$PWD/OpenSeesLibs/open-mpi/4.0.0/lib/ -lmpi.40 -lmca_common_sm.40 -lmca_common_monitoring.50 -lmca_common_ompio.41 -lmpi_mpifh.40 -lopen-pal.40 -lompitrace.40 -lopen-rte.40

INCLUDEPATH += $$PWD/OpenSeesLibs/open-mpi/4.0.0/include
DEPENDPATH += $$PWD/OpenSeesLibs/open-mpi/4.0.0/include

}


contains (DEFINES, _TCL85){

QMAKE_CXXFLAGS=-I/usr/local/opt/tcl-tk/include

win32:CONFIG(release, debug|release): LIBS += -L/usr/local/Cellar/tcl-tk/8.6.9/lib/release/ -ltcl8.6
else:win32:CONFIG(debug, debug|release): LIBS += -L/usr/local/Cellar/tcl-tk/8.6.9/lib/debug/ -ltcl8.6
else:unix: LIBS += -L/usr/local/Cellar/tcl-tk/8.6.9/lib/ -ltcl8.6

INCLUDEPATH += /usr/local/Cellar/tcl-tk/8.6.9/include
DEPENDPATH += /usr/local/Cellar/tcl-tk/8.6.9/include

win32:CONFIG(release, debug|release): LIBS += -L/usr/local/Cellar/tcl-tk/8.6.9/lib/release/ -ltk8.6
else:win32:CONFIG(debug, debug|release): LIBS += -L/usr/local/Cellar/tcl-tk/8.6.9/lib/debug/ -ltk8.6
else:unix: LIBS += -L/usr/local/Cellar/tcl-tk/8.6.9/lib/ -ltk8.6

INCLUDEPATH += /usr/local/Cellar/tcl-tk/8.6.9/include
DEPENDPATH += /usr/local/Cellar/tcl-tk/8.6.9/include

}

#contains (DEFINES, _USINGFORTRAN){

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../gcc/8.2.0/lib/gcc/8/release/ -lgfortran.5
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../gcc/8.2.0/lib/gcc/8/debug/ -lgfortran.5
#else:unix: LIBS += -L$$PWD/../gcc/8.2.0/lib/gcc/8/ -lgfortran.5

#INCLUDEPATH += $$PWD/../gcc/8.2.0/lib/gcc/8
#DEPENDPATH += $$PWD/../gcc/8.2.0/lib/gcc/8

#}

#contains (DEFINES, XXX){

#INCLUDEPATH += \

#HEADERS += \

#SOURCES += \
#}



