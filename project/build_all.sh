#!/bin/bash

if [ ! -d ./prj_demo_a ];then 
    echo "[error]   prj_demo_a not exist"
    exit 1
fi

cd ./prj_demo_a && chmod +777 build.sh

./build.sh demo_a

if [ "$?" = "1" ];then 
    echo "[ error ] build demo_a failed"
    exit 1
    else
        echo "[ success ] build demo_a"
fi

