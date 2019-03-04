
message( "Building OpenSees with Parallel Processing" )

DEFINES += _OPENMPI

INCLUDEPATH += \
    $$PWD/SRC/actor/actor \
    $$PWD/SRC/actor/address \
    $$PWD/SRC/actor/channel \
    $$PWD/SRC/actor/machineBroker \
    $$PWD/SRC/actor/message \
    $$PWD/SRC/actor/objectBroker \
    $$PWD/SRC/actor/shadow \

HEADERS += \
   $$PWD/SRC/actor/actor/Actor.h \
   $$PWD/SRC/actor/actor/MovableObject.h \
   $$PWD/SRC/actor/address/ChannelAddress.h \
   $$PWD/SRC/actor/address/MPI_ChannelAddress.h \
   $$PWD/SRC/actor/address/SocketAddress.h \
   $$PWD/SRC/actor/channel/Channel.h \
   #$$PWD/SRC/actor/channel/FileChannel.h \
   $$PWD/SRC/actor/channel/MPI_Channel.h \
   $$PWD/SRC/actor/channel/Socket.h \
   $$PWD/SRC/actor/channel/TCP_Socket.h \
   #$$PWD/SRC/actor/channel/TCP_SocketNoDelay.h \
   #$$PWD/SRC/actor/channel/TCP_SocketSSL.h \
   $$PWD/SRC/actor/channel/UDP_Socket.h \
   $$PWD/SRC/actor/machineBroker/AlphaMachineBroker.h \
   $$PWD/SRC/actor/machineBroker/DecMachineBroker.h \
   $$PWD/SRC/actor/machineBroker/MachineBroker.h \
   $$PWD/SRC/actor/machineBroker/MillMachineBroker.h \
   $$PWD/SRC/actor/machineBroker/MPI_MachineBroker.h \
   $$PWD/SRC/actor/message/Message.h \
   $$PWD/SRC/actor/objectBroker/FEM_ObjectBroker.h \
   $$PWD/SRC/actor/objectBroker/FEM_ObjectBrokerAllClasses.h \
   $$PWD/SRC/actor/objectBroker/ObjectBroker.h \
   $$PWD/SRC/actor/shadow/Shadow.h \
   $$PWD/SRC/system_of_eqn/linearSOE/diagonal/MPIDiagonalSOE.h \
   $$PWD/SRC/system_of_eqn/linearSOE/diagonal/MPIDiagonalSolver.h \
   #$$PWD/SRC/system_of_eqn/linearSOE/bandSPD/BandSPDLinThreadSolver.h \ # missing file thread.h
   #$$PWD/SRC/system_of_eqn/linearSOE/profileSPD/ProfileSPDLinDirectThreadSolver.h \ # missing file thread.h
   #$$PWD/SRC/system_of_eqn/linearSOE/profileSPD/ProfileSPDLinDirectSkypackSolver.h \ #SKYPACK library not implemented
   #$$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/CulaSparseSolverS4.h \  #Not yet implemented, available for all
   #$$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/CulaSparseSolverS5.h \  #S5 Not available yet in osx, only win & linux
   #$$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/CuSPSolver.h \          #Not yet implemented
   $$PWD/SRC/domain/domain/partitioned/PartitionedDomain.h \
   $$PWD/SRC/domain/domain/partitioned/PartitionedDomainEleIter.h \
   $$PWD/SRC/domain/domain/partitioned/PartitionedDomainSubIter.h \
   #$$PWD/SRC/domain/pattern/drm/ParallelDRMInputHandler.h \ #many errors
   #$$PWD/SRC/domain/node/DummyNode.h \  #error: no conversion from channel to int
   $$PWD/SRC/domain/subdomain/ShadowActorSubdomain.h \
   $$PWD/SRC/domain/subdomain/ShadowSubdomain.h \
   #$$PWD/SRC/remote.h \  #Purpose: To start a process running on a remote machine


SOURCES += \
   $$PWD/SRC/actor/actor/Actor.cpp \
   $$PWD/SRC/actor/actor/MovableObject.cpp \
   $$PWD/SRC/actor/address/ChannelAddress.cpp \
   $$PWD/SRC/actor/address/MPI_ChannelAddress.cpp \
   $$PWD/SRC/actor/address/SocketAddress.cpp \
   $$PWD/SRC/actor/channel/Channel.cpp \
   #$$PWD/SRC/actor/channel/FileChannel.cpp \
   $$PWD/SRC/actor/channel/HTTP.cpp \
   $$PWD/SRC/actor/channel/MPI_Channel.cpp \
   $$PWD/SRC/actor/channel/mySocket.c \
   $$PWD/SRC/actor/channel/socket.c \
   #$$PWD/SRC/actor/channel/Socket.cpp \
   $$PWD/SRC/actor/channel/TCP_Socket.cpp \
   #$$PWD/SRC/actor/channel/TCP_SocketNoDelay.cpp \
   #$$PWD/SRC/actor/channel/TCP_SocketSSL.cpp \  #has some functions which are undeclared in the latest SSL lib
   #$$PWD/SRC/actor/channel/Test.cpp \ #main functions for testing
   #$$PWD/SRC/handler/TestTCP_Stream.cpp \
   $$PWD/SRC/actor/channel/UDP_Socket.cpp \
   $$PWD/SRC/actor/machineBroker/AlphaMachineBroker.cpp \
   $$PWD/SRC/actor/machineBroker/DecMachineBroker.cpp \
   $$PWD/SRC/actor/machineBroker/MachineBroker.cpp \
   $$PWD/SRC/actor/machineBroker/MillMachineBroker.cpp \
   $$PWD/SRC/actor/machineBroker/MPI_MachineBroker.cpp \
   $$PWD/SRC/actor/message/Message.cpp \
   $$PWD/SRC/actor/objectBroker/FEM_ObjectBroker.cpp \
   $$PWD/SRC/actor/objectBroker/FEM_ObjectBrokerAllClasses.cpp \
   $$PWD/SRC/actor/objectBroker/ObjectBroker.cpp \
   $$PWD/SRC/actor/shadow/Shadow.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/diagonal/MPIDiagonalSOE.cpp \
   $$PWD/SRC/system_of_eqn/linearSOE/diagonal/MPIDiagonalSolver.cpp \
   #$$PWD/SRC/system_of_eqn/linearSOE/bandSPD/BandSPDLinThreadSolver.cpp \ # missing file thread.h\
   #$$PWD/SRC/system_of_eqn/linearSOE/profileSPD/ProfileSPDLinDirectThreadSolver.cpp \ # missing file thread.h
   #$$PWD/SRC/system_of_eqn/linearSOE/profileSPD/ProfileSPDLinDirectSkypackSolver.cpp \  #SKYPACK library not implemented
   #$$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/CulaSparseSolverS4.cpp \ #Not yet implemented, available for all
   #$$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/CulaSparseSolverS5.cpp \ #S5 Not available yet in osx, only win & linux
   #$$PWD/SRC/system_of_eqn/linearSOE/sparseGEN/CuSPSolver.cpp \         #Not yet implemented
   $$PWD/SRC/domain/domain/partitioned/PartitionedDomain.cpp \
   $$PWD/SRC/domain/domain/partitioned/PartitionedDomainEleIter.cpp \
   $$PWD/SRC/domain/domain/partitioned/PartitionedDomainSubIter.cpp \
   #$$PWD/SRC/domain/pattern/drm/ParallelDRMInputHandler.cpp \ #many errors
   #$$PWD/SRC/domain/node/DummyNode.cpp \ #error: no conversion from channel to int
   $$PWD/SRC/domain/subdomain/ShadowSubdomain.cpp \
   ##$$PWD/SRC/domain/subdomain/ShadowSubdomainActor.cpp \ #Has its own main function
   #$$PWD/SRC/remote/remote.c \  #Purpose: To start a process running on a remote machine



contains (DEFINES, _TCL85){

SOURCES += \
   #$$PWD/SRC/tcl/mpiMain.cpp \
   #$$PWD/SRC/tcl/mpiParameterMain.cpp \
   #$$PWD/SRC/tcl/mpiMainTest.cpp \ #main function to test
}

