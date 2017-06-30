#!/bin/bash
echo `date "+%c"`" start database ...启动 mongo 数据库..."
mongod &
echo `date "+%c"`" start database successful. 启动 mongo 数据库成功!.."
if [  -f "mongo.init" ]
then
    echo `date "+%c"`" skip mongo init 已初始化,跳过初始化..."
else
  echo `date "+%c"`" init tables ... 初始化leanote数据..."
  mongorestore -h 127.0.0.1 -d leanote --dir /leanote/mongodb_backup/leanote_install_data/
  echo `date "+%c"`" init tables successful! 初始化数据完成..."
fi
echo `date "+%c"`" start leanote server ... 启动leanote服务..."
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
