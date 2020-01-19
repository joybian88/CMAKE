FROM busybox:latest

MAINTAINER joybian88 823690748@qq.com

COPY ./pkg/DemoA /home/
COPY ./pkg/libFun1.so /home/lib/

WORKDIR /home

#ENTRYPOINT exec ./DemoA
CMD ["/bin/sh/DemoA"]