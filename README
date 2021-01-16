**OpenSeesQt for Mac**


Stevan Gavrilovic, PhD
NHERI SimCenter
University of California, Berkeley 

A Qt build environment for OpenSees -- Open System For Earthquake Engineering Simulation Pacific Earthquake Engineering Research Center(http://opensees.berkeley.edu). 

Qt is an open source, cross-platform development environment that is free for many uses. Please see the license here: https://www.qt.io/licensing/

Currently only supports building on a Mac. 

A feature of this build platform is modularity. Developers can select from a list of build options that can be turned on and off as required. The basic configuration builds the structural analysis core. Other build options include parallel processing, reliability, and the particle finite element method (PFEM) modules. Python and Tcl interpreters are additional build options. These options are located in single configuration file called `qmake.conf`. By default, the environment is configured to build the core along with the parallel processing module. Other options can be turned ON by deleting the '#'symbol that precedes the option; this will include the option into the build environment. 

Note: This project uses qmake and Qt Creator. qmake is a build tool for compiling and linking applications. Qt Creator is a free IDE (interactive development environment) that bundles code writing/editing and application building within one program. Qt Creator uses project (.pro) files. These project files contain the information required by qmake to build an application. 

***************

Getting Started

***************

1) Download and install Qt open source from https://www.qt.io/download. The version of the Qt library is not important in this case since the library is not used in the OpenSees project (although I use Qt in other projects and recommend it).

2) Download the OpenSeesQt source code into a folder of your choice (https://github.com/steva44/OpenSees/archive/master.zip)

3) Installing the dependencies.

**MacOS**

The compiling and installing of third-party libraries is handled through a system package manager. In this case we are using the package-manager Homebrew. It is very likely that the libraries OpenSees depends on have their own dependencies, and so forth. The system package manager conveniently knows what dependencies are required and automatically installs them. Homebrew is installed by running:

	`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

in the macOS terminal prompt. From herein, the the word 'run' will be used to represent copying and pasting a command into the macOS terminal prompt.  Homebrew maintains its own folder within '/usr/local/' directory aptly named the 'Cellar'

	`/usr/local/Cellar/`

Each dependency installed through Homebrew will have its own subfolder within the Cellar directory. Each subfolder contains that dependencies 'include' and 'lib' folders. 

If you just installed Brew, you may need to add 'taps' to the Brew directory. A 'tap' is an online location where Brew can find some of the libraries that are needed here. Install the following taps by running these commands in terminal:

```
	brew tap brewsci/science
	brew tap brewsci/num 
```

Now that Homebew and the taps are installed,the required OpenSees dependencies are installed by running the following commands:

	brew install petsc openblas arpack superlu 


If compiling OpenSeesPy, Python is needed as well: 

	brew install python

Similarly for tcl:

	brew install tcl

You can now run: 

	brew list 

to get a list of all packages installed by Homebrew on your system. 

\!/ IMPORTANT: This project depends on many libraries. Homebrew will automatically install the newest libraries. Also, if you run the upgrade command in Homebrew, it will upgrade every library to its newest version. The library versions may have changed since the last time this project was updated. If the library versions have changed, this will cause 'file not found' errors during compilation or linking issues at runtime. The solution is to update the file paths in the 'OpenSeesLibs.pri' file. The compiler needs to know where to find the library header files as well as the locations of the libraries that are necessary for linking. For example, if the library version has changed from X.X to Y.Y, then the paths should be updated to match:

	usr/local/Cellar/SomeLibrary/SomeLibrary.X.X/include/

should be changed to:

	usr/local/Cellar/SomeLibrary/SomeLibrary.Y.Y/include/

\!/

4) In the directory containing the code, double click on the 'OpenSees.pro' file. If compiling OpenSeesPy, open the 'OpenSeesPy.pro' file. The .pro files are project files that will automatically open the project in Qt Creator.  

5) Select a build configuration, for example 'Desktop Qt 5.13.3 clang 64bit'. The project will automatically configure itself. You only have to do this once.

6) The left-hand pane should now display the project directory structure. In the left-hand pane, under the heading qmake, open the 'qmake.conf' file. Review and select additional build options, if any. Note that this is still a work in progress and not all build options are supported. 

7) Click on the 'start' button in the bottom lefthand corner of Qt Creator to compile. Clicking on the 'computer' symbol above the start button allows for switching between the debug and release configurations. The release deployment results in faster program execution but it does not allow for debugging, i.e., stepping through the code. The start button with the 'bug' symbol opens the debugger.

8) Go and have a coffee, it will take a few minutes to finish compiling! 


***************

Building OpenSeesPy:

***************



OpenSeesPy builds OpenSees as a library object that can be used within Python. 

Steps:

Follow steps 1-4 under the heading getting started above.

5)  The left-hand pane should now display the project directory structure. In the left-hand pane, under the heading qmake, open the 'qmake.conf' file. Under the heading #INTERPRETERS, uncomment the _PYTHON option by removing the '#' symbol. Everything else should be configured automatically going forward. Python automatically compiles with the reliability, parallel, and PFEM modules. 

6) The last few lines at the end of the 'OpenSeesPy.pro' file contains the location of the Python framework. Update this so that it matches the location of Python on your build system.

7) Click on the 'start' button in the bottom lefthand corner of Qt Creator to start compiling. Build in release mode if using OpenSees as a plugin in a Python project. Release mode results in faster program execution.
8) Go and have a coffee, it will take a few minutes to finish compiling! 

9) After successful compilation, the library will be in the 'bin' folder. The bin folder is located in the 'build' folder which is created, by default, one directory higher than the OpenSeesQt source code. The name of the build folder should look something like this: build-OpenSeesPy-Desktop_Qt_5_12_1_clang_64bit-Debug

10) OS X only

OS X automatically prepends a 'lib' to the library file. Remove this 'lib' and rename the file to be 'opensees.dylib' Next, a symbolic link is required for a Python project to import the library. To create a symbolic link, cd the directory containing the OpenSees library in terminal and run the following command to create a symbolic link:

	ln -s opensees.dylib opensees.so

There should now be a .so (shared object) library file in addition to the .dylib file. Finally, copy both the .dylib and the .so files into your Python project folder so that it can be imported into your project. Directions for using OpenSeesPy can be found at the project website: https://openseespydoc.readthedocs.io/en/latest/index.html. Note that the opensees.so library will only work on your system. As-is, the libraries that opensees.so depends on are linked with system-specific directory paths. For distribution to other systems, the opensees.so library and its dependent libraries must be bundled together into a common project folder and the linker paths converted to relative paths. In other words, the opensees.so library needs to know where to find the libraries it depends on. If it cannot, a linker error is given at runtime. 

***************

Supported Build Environments

***************

Build Environment:
OSX 10.14.4 (Mojave) 
Qt 5.13.3 
Qt Creator 4.10.0

Compiler:
OSX SDK:10.14
Apple clang version 11.0.0 (clang-1100.0.33.8)
Target: x86_64-apple-darwin18.7.0
Thread model: posix
64-BIT architecture

To find the version of clang on your computer, type the following in terminal:

	clang --version

***************

Notes on OpenSees Dependencies

***************


*SUPERLUDIST*

Brew install support for SuperLU_Dist, i.e., `brew install superlu_dist` is currently broken as of this writing. 

To compile SuperLU_Dist manually, download the source from the GitHub repo: 

To the CMAKE list, add the following to the top of the `CMakeLists.txt` file:

```
set(TPL_PARMETIS_INCLUDE_DIRS /usr/local/Cellar/parmetis/4.0.3_5/include /usr/local/Cellar/metis/5.1.0/include)
set(TPL_PARMETIS_LIBRARIES /usr/local/Cellar/parmetis/4.0.3_5/lib/libparmetis.dylib /usr/local/Cellar/metis/5.1.0/lib/libmetis.dylib)
```

Then build with CMAKE and compile. 


**SUPERLUMT**
SUPERLU but for for shared memory parallel machines. Provides Pthreads and OpenMP interfaces.

Installing SUPERLUMT via brew:

	brew install superlu_mt

SUPERLUMT requires the following dependencies that will automatically be installed:
-openblas 


**MUMPS**

Download Mumps from: https://github.com/scivision/mumps.git

In CMAKE GUI, at the configure step, do not select `Use default native compilers`. Instead select `Specify native compilers`and select the GCC compilers because Fortran is required. 

Check the values `metis` and `openmp` in `Ungrouped Entries` pulldown.

*LAPACK (SCALAPACK)*
The Linear Algebra PACKage, or LAPACK, is written in Fortran 90 and provides routines for solving systems of simultaneous linear equations, least-squares solutions of linear systems of equations, eigenvalue problems, and singular value problems.The associated matrix factorizations (LU, Cholesky, QR, SVD, Schur, generalized Schur) are also provided, as are related computations such as reordering of the Schur factorizations and estimating condition numbers. Dense and banded matrices are handled, but not general sparse matrices. In all areas, similar functionality is provided for real and complex matrices, in both single and double precision.

LAPACK is given as a system library in OSX, you may have to update the locations of your system library in 'OpenSeesLibs.pri'

*BLAS*
The BLAS (Basic Linear Algebra Subprograms) are routines that provide standard building blocks for performing basic vector and matrix operations.

BLAS is given as a system library in OSX, you may have to update the locations of your system library in 'OpenSeesLibs.pri'

*ARPACK*
ARPACK contains routines to solve large scale eigenvalue problems

Installing ARPACK via brew:

	brew install arpack

ARPACK requires the following dependencies that will automatically be installed:
-GCC (GNU compiler collection)
-openblas (In scientific computing, OpenBLAS is an open source implementation of the BLAS API with many hand-crafted optimizations for specific processor types)


*GCC*
Many of the dependencies require fortran (there is still a lot of legacy fortran code floating around in the engineering world). On OSX, I found the best solution is to use the pre-bundled fortran capabilities in GCC. In addition to its fortran capabilities, GCC is a dependency for many other libraries.

Installing GCC via brew:

	brew install GCC


*PYTHON*
Python is an interpreted, high-level, general-purpose programming language. It is used in OpenSees as an interpreter in the OpenSeesPy version. In OpenSeesPy, Python version 3 is used. 

Installing PYTHON via brew:

	brew install python



***MISC. NOTES***
For the SUPERLU library. 
The file supermatrix.h may throw an undefined error for the type int_t. It is actually defined in the file slu_ddefs.h, however the compiler is not linking the two. Add the following line, copied from slu_ddefs.h to supermatrix.h around line 17
	typedef int int_t; /* default */




