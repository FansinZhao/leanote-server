# leanote-server
## version info:
leanote-linux-amd64-v2.4.bin  

## Download
I just give my download link:
leanote:https://ncu.dl.sourceforge.net/project/leanote-bin/2.4/leanote-linux-amd64-v2.4.bin.tar.gz

# HOW TO

You can refer to [docker mongo](https://store.docker.com/images/9147d1b7-a686-4e38-8ecd-94a47f5da9cf?tab=description)

*First run leanote , you must init database's tables*

    docker run -d --name some-leanote fansin/leanote init

Usually, you just run command like below:

    docker run -d --name some-leanote fansin/leanote

visit http://172.17.0.2:9000/ the default user : admin/abc123.more visit [www.leanote.com](http://www.leanote.com)

# STORAGE

    docker run -d -v /home/you/leanote_data:/leanote/mongodb_backup/leanote_install_data/ -v /home/you/mongodb:/data/db --name some-leanote fansin/leanote
