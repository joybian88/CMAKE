set(LIBRARY_OUTPUT_PATH ${TARGET_PATH}/prj_demo_a/exe)
# set(EXECUTABLE_OUTPUT_PATH ${TARGET_PATH}/prj_demo_a/exe)

#set module include file path
set(PRJ_MODULE_INCLUDE_PATH
    ${CODE_PATH}/fun1/include

)
include_directories(${PRJ_MODULE_INCLUDE_PATH})

#set module mian file path
aux_source_directory(${CODE_PATH}/fun1/source MODULE_MAIN_FILE)

#generate library .so  run main need this 
# please put in /lib or /usr/lib
add_library (Fun1_shared SHARED ${MODULE_MAIN_FILE})
set_target_properties (Fun1_shared PROPERTIES OUTPUT_NAME "Fun1")

#generate library .a run main do not need this
# add_library (Fun1_static STATIC ${MODULE_MAIN_FILE})
# set_target_properties (Fun1_static PROPERTIES OUTPUT_NAME "Fun1")