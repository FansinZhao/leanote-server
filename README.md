#  leanote-server
## version info:
leanote-linux-amd64-v2.4.bin  

## Download
I just give my download link:
leanote:https://ncu.dl.sourceforge.net/project/leanote-bin/2.4/leanote-linux-amd64-v2.4.bin.tar.gz

# HOW TO

You can refer to [docker mongo](https://store.docker.com/images/9147d1b7-a686-4e38-8ecd-94a47f5da9cf?tab=description)


Quick start, you just run command like below:

    docker run -d --name some-leanote fansin/leanote-server

visit http://172.17.0.2:9000/ the default user : admin/abc123.

more visit [www.leanote.com](http://www.leanote.com)

# CUSTOMIZE

Use your backup file,just replace leanote default directory `/leanote/mongodb_backup/leanote_install_data/`.

    docker run -d -v /home/you/leanote_data:/leanote/mongodb_backup/leanote_install_data/ --name some-leanote fansin/leanote-server


# STORAGE
Use external db volume directory, just link mongodb default db directory `/data/db`.

    docker run -d -v /home/you/mongodb:/data/db --name some-leanote fansin/leanote-server
