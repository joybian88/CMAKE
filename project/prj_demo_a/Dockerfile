FROM busybox:latest

MAINTAINER joybian88 823690748@qq.com


COPY ./pkg/DemoA /home/
COPY ./pkg/libFun1.so /home/

COPY ./start.sh /home/

WORKDIR /home


ENTRYPOINT exec ./DemoA