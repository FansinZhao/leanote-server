#!/bin/bash
/mongodb/bin/mongod --dbpath /mongodb/data --fork --logpath=/mongodb/logs/`date "+%Y-%m-%d"`.log && /mongodb/bin/mongorestore -h 127.0.0.1 -d leanote --dir /leanote/mongodb_backup/leanote_install_data/ && sleep 3 && /leanote/bin/run.sh

