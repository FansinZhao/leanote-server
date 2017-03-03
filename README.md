# leanote-server
##version info:
leanote-linux-amd64-v2.4.bin   
mongodb-linux-x86_64-ubuntu1604-3.4.2

#HOW TO
`docker run -d --name some-leanote fansin/leanote`
visit http://172.17.0.2:9000/
  more visit www.leanote.com/
#STORAGE
`docker run -d -v /home/you/leanote_data:/leanote/mongodb_backup/leanote_install_data/ -v /home/you/mongodb:/mongodb/data -v -v /home/you/mongodb/logs:/mongodb/logs --name some-leanote fansin/leanote`
