# this one is important
SET(CMAKE_SYSTEM_NAME Linux)
#this one not so much
SET(CMAKE_SYSTEM_PROCESSOR x86_64)

SET(tools $ENV{CROSS_TOOL_PATH})

# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH  ${tools}/ppc_74xx /home/alex/eldk-ppc74xx-inst)

# specify the cross compiler
SET(CMAKE_C_COMPILER   ${tools}/usr/bin/ppc_74xx-gcc)
SET(CMAKE_CXX_COMPILER ${tools}/usr/bin/ppc_74xx-g++)
 
# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
