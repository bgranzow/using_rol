CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
INCLUDE(CMakeDependentOption)

# find trilinos
SET(CMAKE_PREFIX_PATH
    ${TRILINOS_PATH}
    ${CMAKE_PREFIX_PATH})
FIND_PACKAGE(Trilinos REQUIRED)
MESSAGE("Found Trilinos!")
MESSAGE(" version:          ${Trilinos_VERSION}")
MESSAGE(" in directory:     ${Trilinos_DIR}")

# force the use of the trilinos compiler/flags
SET(CMAKE_CXX_COMPILER ${Trilinos_CXX_COMPILER})
SET(CMAKE_CXX_FLAGS
    ${CMAKE_CXX_FLAGS}
    ${Trilinos_CXX_COMPILER_FLAGS})
MESSAGE(" with cxx:         ${Trilinos_CXX_COMPILER}")
MESSAGE(" with cxx flags:   ${Trilinos_CXX_COMPILER_FLAGS}")

# make sure rol is enabled
LIST(FIND Trilinos_PACKAGE_LIST ROL ROLListIdx)
IF(ROLListIdx GREATER -1)
  MESSAGE(" with rol:     :)")
ELSE()
  MESSAGE(FATAL_ERROR " without rol:  :(")
ENDIF()

# sanitize trilinos libs
LIST(REMOVE_DUPLICATES Trilinos_INCLUDE_DIRS)
LIST(REMOVE_DUPLICATES Trilinos_LIBRARIES)

# add the include dirs
INCLUDE_DIRECTORIES(${Trilinos_INCLUDE_DIRS})

# add the code
ADD_EXECUTABLE(rosenbrock rosenbrock.cpp)
TARGET_LINK_LIBRARIES(
  rosenbrock
  ${Trilinos_LIBRARIES})

MESSAGE("CMake final output:")
