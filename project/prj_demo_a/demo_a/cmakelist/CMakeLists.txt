cmake_minimum_required (VERSION 2.6)
project (DemoA)

# Configure CCache if available
find_program(CCACHE_FOUND ccache)
if(CCACHE_FOUND)
    set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE ccache)
    set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK ccache)
    message(STATUS "use ccache")
endif(CCACHE_FOUND)
    
if(CMAKE_COMPILER_IS_GNUCXX)
    set(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")
    message(STATUS "optional:-std=c++11")
endif(CMAKE_COMPILER_IS_GNUCXX)

add_definitions("-w -Wall")

# The version number.
set (VERSION_MAJOR 100)
set (VERSION_MINOR 0)
 
# configure a header file to pass some of the CMake settings to the source code
configure_file (
  ${PROJECT_SOURCE_DIR}/Config.h.in
  ${PROJECT_BINARY_DIR}/Config.h
  )
option(MAKE_PCLINT on)

#set global path
set(ROOT_PATH ${PROJECT_SOURCE_DIR}/../../../../)
set(CODE_PATH ${ROOT_PATH}/code)
set(TARGET_PATH ${ROOT_PATH}/target)
set(PRJ_DEMOA_PATH ${ROOT_PATH}/project/prj_demo_a)

#set global include directories
set(PRJ_INCLUDE_PATH
${PROJECT_BINARY_DIR}
)
include_directories(${PRJ_INCLUDE_PATH})


#add subdir cmakelist
add_subdirectory(fun_1)
add_subdirectory(demo_a_exe)