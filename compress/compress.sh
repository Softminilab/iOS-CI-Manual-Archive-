#! /bin/bash

recursion_dir() {
	for file in `ls $1`;
        do
                if [ -d "$1/$file" ]; then
                    recursion_dir "$1/$file" "   $2"
                else
                    process_image $1/$file $file
                fi
        done
}

process_image() {
  	case $1 in
   *.png)
		echo "正在压缩 $2"
		./pngquant --quality=65-80 --force --ext=.png $1 
      ;;
   *)
     ;;
	esac
}

before_size=`du -sh $1`

recursion_dir $1

echo "当前目录为$1"
echo "压缩前的大小为： $before_size"
echo "压缩后的大小为： `du -sh $1`"