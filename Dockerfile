# This dockerfile uses the ubuntu image
# VERSION 1
# Author: FansinZhao
# Command format : Instruction [arguments / command ]..
# 1 init data repalce  /leanote/mongodb_backup/leanote_install_data/ by using -v
# 2 use external data volume replace mongodb data file  /data/db by using -v

# 1 use the ubuntu image
FROM ubuntu

# 2 author
MAINTAINER FansinZhao 171388204@qq.com

# 3 command
#RUN sed -i s/archive.ubuntu.com/mirrors.aliyun.com/g /etc/apt/sources.list
RUN apt update && apt install -y openssl
RUN apt clean

ADD leanote-linux-amd64-v2.4.bin.tar.gz ./
ADD mongodb-linux-x86_64-ubuntu1604-3.4.2.tgz ./
ADD run.sh ./

RUN mv mongodb-linux-x86_64-ubuntu1604-3.4.2 mongodb
RUN chmod a+x /mongodb/bin/*
RUN chmod a+x /leanote/bin/*
RUN mkdir /mongodb/data && mkdir /mongodb/logs && mkdir /leanote/logs
RUN chmod a+x /run.sh

# 4 run container
CMD /run.sh
