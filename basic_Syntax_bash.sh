#!/bin/bash
set LS = 'ls -l'

echo "Hello! $(whoami)!"
echo "You are in $(hostname) now ($(date)) "

echo "Please input file name or directory name that you wanna find"
read search_name


#ファイルを検索
#search file
if [ -f "./$search_name" ]
  then echo "Yes,there is $search_name"
  else echo "NO,there is not $search_name"
fi

#ディレクトリを検索
#search directory
if [ -d "./$search_name" ]
  then echo "Yes,there is $search_name"
  else echo "NO,there is not $search_name"
fi

#while文
#while statement
while read line
do
 ls -l $line
done < input.txt

#for文
#for statement
for num in $(echo {1..10})
 do
  date
done
