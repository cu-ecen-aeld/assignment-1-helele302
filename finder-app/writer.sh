#!/bin/bash
#判断输入是否存在
if ! [ -z "$1" ] && ! [ -z "$2" ] ; then
	#echo "TRUE"
	:
else
	echo "ERROR: Missing parameter or invalid format"
	echo "INPUT: ./writer.sh {Path and filename} {String to write}"
	exit 1
fi
#判断输入是否正确
#if [ -d "$1" ] ; then
#	:
#else
#	echo "ERROR: Path does not exist"
#	exit 1
#fi
#参数传递

directory=$1
string=$2

#写入字符串
#X=$(grep -r -l $string $directory | wc -l)
#Y=$(grep -r $string $directory | wc -l)

#echo "The number of files are $X and the number of matching lines are $Y"

mkdir -p "$(dirname "$directory")"
echo "$string" > "$directory"

if [ -f "$directory" ] ; then
	exit 0
else
	echo "failed message"
	exit 1
fi
