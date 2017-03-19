#!/bin/bash
echo `date "+%c"`" start database ..."
mongod --dbpath /data/db --fork --logpath=/mongo_`date "+%Y-%m-%d"`.log \
&& echo `date "+%c"`" start database sucess."
if [ "$1" = "init" ]
then
  echo `date "+%c"`" init tables ..."
  mongorestore -h 127.0.0.1 -d leanote --dir /leanote/mongodb_backup/leanote_install_data/ \
&& echo `date "+%c"`" init tables sucess!"
else
  echo `date "+%c"`" skip init"
fi
echo `date "+%c"`" start leanote server ..."
SCRIPTPATH=/leanote/bin/
cd $SCRIPTPATH
# set link

path="$SCRIPTPATH/src/github.com/leanote"
if [ ! -d "$path" ]; then
	mkdir -p "$path"
fi
rm -rf $SCRIPTPATH/src/github.com/leanote/leanote # 先删除
ln -s ../../../../ $SCRIPTPATH/src/github.com/leanote/leanote

# set GOPATH
export GOPATH=$SCRIPTPATH

./leanote-linux-amd64 -importPath github.com/leanote/leanote
