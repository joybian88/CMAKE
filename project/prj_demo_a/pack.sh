#!/bin/bash
pwd=`pwd`
root_path="${pwd}/../../"
tag="20200114"

cd ${root_path}

if [ ! -e ./busybox.tar ];then
    echo "error busybox.tar not exit"
    exit 1
    else
       docker load -i busybox.tar 
fi

if [ -d ${pwd}/pkg ];then

    rm -rf ${pwd}/pkg/* 
    else 
        mkdir -p ${pwd}/pkg
      
fi

cd ${pwd}

if [ -d ${root_path}/target/prj_demo_a/exe ];then
    cp ../../target/prj_demo_a/exe/* ./pkg
    chmod +777 ./pkg/*
    else 
        docker rmi busybox:latest
        rm -rf ./pkg
        echo "error please run ./build prj_name first"
        exit 1
      
fi

docker build -t demoa:${tag} .
# docker save -o demoa.tar demoa:${tag}
docker rmi busybox:latest
# docker rmi demoa:${tag}
# rm -rf ./pkg
