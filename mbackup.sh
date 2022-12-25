#!/bin/bash

while getopts hf:c: flag
do
    case "${flag}" in
        h) 
        cat assets/help.txt
        ;;
        c) customername=${OPTARG};;
        f) file=${OPTARG}
        ls $file > /dev/null 2>&1
      if [ $? -ne 0 ]; then
        echo "No such file and directory."
        else
        tar -jcvf "$customername".tar.bz2 "$file" && \  #TODO fix file argument
        rclone --config ./src/minio.conf copy --progress --no-traverse "$customername".tar.bz2 minio:gameserver/$(date +%Y-%m-%d)
      fi
      ;;
      ?)
        echo "type -h for help"
        ;;
    esac
done

# if [ $help == "help" ]; then
#     echo Help
# elif [ $file == "file" ]; then
#      echo File # else if body
# else
#      echo choose h or f # else body
# fi

