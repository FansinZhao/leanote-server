# leanote-server
##version info:
leanote-linux-amd64-v2.4.bin  
mongodb-linux-x86_64-ubuntu1604-3.4.2

##Download
The source file is too large,so you need download by yourself.
I just give my download link:
leanote:https://ncu.dl.sourceforge.net/project/leanote-bin/2.4/leanote-linux-amd64-v2.4.bin.tar.gz
mongo:https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1604-3.4.2.tgz

#HOW TO

If you don't use Dockerfile , skip First step.

First replace your file name in below:


    ADD  leanote-linux-amd64-v2.4.bin.tar.gz ./
    ADD mongodb-linux-x86_64-ubuntu1604-3.4.2.tgz ./
    RUN mv mongodb-linux-x86_64-ubuntu1604-3.4.2 mongodb


Then run docker.

*First run leanote , you must init database's tables*

    docker run -d --name some-leanote fansin/leanote init

Usually, you just run command like below:

    docker run -d --name some-leanote fansin/leanote

visit http://172.17.0.2:9000/
more visit www.leanote.com/
#STORAGE
    docker run -d -v /home/you/leanote_data:/leanote/mongodb_backup/leanote_install_data/ -v /home/you/mongodb:/mongodb/data -v -v /home/you/mongodb/logs:/mongodb/logs --name some-leanote fansin/leanote
