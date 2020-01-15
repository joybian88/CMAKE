# set(LIBRARY_OUTPUT_PATH ${TARGET_PATH}/prj_demo_a/output)
set(EXECUTABLE_OUTPUT_PATH ${TARGET_PATH}/prj_demo_a/exe)

#set module include file path
set(PRJ_MODULE_INCLUDE_PATH
    ${CODE_PATH}/fun1/include

)
include_directories(${PRJ_MODULE_INCLUDE_PATH})

#set module mian file path
aux_source_directory(${PRJ_DEMOA_PATH}/demo_a/main MODULE_MAIN_FILE)

#set module link file path
set(PRJ_MODULE_LINK_PATH
    ${EXECUTABLE_OUTPUT_PATH}
# )
link_directories(${PRJ_MODULE_LINK_PATH})

# add the executable
add_executable(DemoA ${MODULE_MAIN_FILE})

#
target_link_libraries(DemoA Fun1)