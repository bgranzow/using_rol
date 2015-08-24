# Modify this path for your system.
TRILINSTALLDIR=/path/to/trilinos/install

rm -f CMakeCache.txt;

cmake \
\
 -D Trilinos_DISABLE_ENABLED_FORWARD_DEP_PACKAGES=ON \
 -D CMAKE_INSTALL_PREFIX:PATH=$TRILINSTALLDIR \
 -D CMAKE_BUILD_TYPE:STRING=NONE \
 -D TPL_ENABLE_MPI:BOOL=ON \
 -D MPI_BASE_DIR:PATH=$MPIDIR \
 -D CMAKE_C_FLAGS:STRING="-O2 -g" \
 -D CMAKE_CXX_FLAGS:STRING="-O2 -g -Wno-deprecated-declarations -Wno-sign-compare" \
 -D CMAKE_VERBOSE_MAKEFILE:BOOL=OFF \
 -D BUILD_SHARED_LIBS:BOOL=OFF \
\
 -D Trilinos_ENABLE_SECONDARY_TESTED_CODE:BOOL=OFF \
 -D Trilinos_ENABLE_ALL_PACKAGES:BOOL=OFF \
 -D Trilinos_ENABLE_EXPLICIT_INSTANTIATION:BOOL=ON \
 -D Trilinos_ENABLE_EXPORT_MAKEFILES:BOOL=OFF \
 -D Trilinos_ASSERT_MISSING_PACKAGES:BOOL=OFF \
 -D Trilinos_WARNINGS_AS_ERRORS_FLAGS:STRING="" \
\
 -D Trilinos_ENABLE_ROL:BOOL=ON \
 -D Trilinos_ENABLE_Teuchos:BOOL=ON \
\
 -D Trilinos_ENABLE_Shards:BOOL=OFF \
 -D Trilinos_ENABLE_Kokkos:BOOL=OFF \
 -D Trilinos_ENABLE_Sacado:BOOL=OFF \
 -D Trilinos_ENABLE_Phalanx:BOOL=OFF \
 -D Trilinos_ENABLE_Epetra:BOOL=OFF \
 -D Trilinos_ENABLE_EpetraExt:BOOL=OFF \
 -D Trilinos_ENABLE_Tpetra:BOOL=OFF \
 -D Trilinos_ENABLE_Ifpack:BOOL=OFF \
 -D Trilinos_ENABLE_AztecOO:BOOL=OFF \
 -D Trilinos_ENABLE_Amesos:BOOL=OFF \
 -D Trilinos_ENABLE_Anasazi:BOOL=OFF \
 -D Trilinos_ENABLE_Belos:BOOL=OFF \
 -D Trilinos_ENABLE_ML:BOOL=OFF \
 -D Trilinos_ENABLE_Intrepid:BOOL=OFF \
 -D Trilinos_ENABLE_NOX:BOOL=OFF \
 -D Trilinos_ENABLE_Stratimikos:BOOL=OFF \
 -D Trilinos_ENABLE_Thyra:BOOL=OFF \
 -D Trilinos_ENABLE_Rythmos:BOOL=OFF \
 -D Trilinos_ENABLE_MOOCHO:BOOL=OFF \
 -D Trilinos_ENABLE_Stokhos:BOOL=OFF \
 -D Trilinos_ENABLE_Piro:BOOL=OFF \
 -D Trilinos_ENABLE_Teko:BOOL=OFF \
 -D Trilinos_ENABLE_STKIO:BOOL=OFF \
 -D Trilinos_ENABLE_STKMesh:BOOL=OFF \
 -D Trilinos_ENABLE_SEACAS:BOOL=OFF \
 -D Trilinos_ENABLE_SEACASIoss:BOOL=OFF \
 -D Trilinos_ENABLE_SEACASExodus:BOOL=OFF \
 -D Trilinos_ENABLE_Ifpack2:BOOL=OFF \
 -D Trilinos_ENABLE_Amesos2:BOOL=OFF \
 -D Trilinos_ENABLE_Zoltan2:BOOL=OFF \
 -D Trilinos_ENABLE_MueLu:BOOL=OFF \
\
 -D TPL_ENABLE_X11:BOOL=OFF \
 -D TPL_ENABLE_Matio:BOOL=OFF \
 -D TPL_ENABLE_Netcdf:BOOL=OFF \
 -D TPL_ENABLE_HDF5:BOOL=OFF \
\
../src
