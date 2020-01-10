#!/bin/bash
pwd=`pwd`
root_path="${pwd}/../../"

if [ "$#" -lt "1" ];then
    echo "error input args"
    echo "*************************"
    echo "****  ./build name  *****"
    echo "*************************" 
    exit 1
fi

if [ "$1" = "clean" ];then

    if [ -d ${root_path}/target/prj_demo_a ];then
        rm -rf ${root_path}/target/prj_demo_a
        echo "target prj_demo_a path is clean"
        exit 0
    else
        echo "target prj_demo_a path already clean"
        exit 0
    fi
    
fi

prj="$1"
build_DIR=""

for dir in $(ls) 
    do
        if [ "${dir}" = "${prj}" ];then
            build_DIR="${dir}"
        fi
    done
    

if [ "${prj}" != "${build_DIR}" ];then 
    echo "${prj} not exist"
    exit 1
fi


if [ -d ${root_path}/target/prj_${build_DIR} ];then

    rm -rf ${root_path}/target/prj_${build_DIR}  
    mkdir -p ${root_path}/target/prj_${build_DIR}/exe
    mkdir -p ${root_path}/target/prj_${build_DIR}/output    
    else 
        mkdir -p ${root_path}/target/prj_${build_DIR}/exe
        mkdir -p ${root_path}/target/prj_${build_DIR}/output
      
fi

cd ../../target/prj_demo_a/output

# cmake -DCMAKE_TOOLCHAIN_FILE=../project/prj_demo_a/cgsl.cmake -DCMAKE_BUILD_TYPE=Release ../project/prj_demo_a/demo_a/cmakelist 
# cmake -DCMAKE_BUILD_TYPE=Release ../../project/prj_demo_a/demo_a/cmakelist 1>/dev/null 2>fail.txt
cmake -DCMAKE_BUILD_TYPE=Release ../../../project/prj_${build_DIR}/${build_DIR}/cmakelist

if [ "$?" = "1" ];then
    echo "make DEMOA failed"
    exit 1
fi

make