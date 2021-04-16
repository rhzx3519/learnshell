#1 /bin/bash
# 命令统计：计算当前PATH中有多少可执行的文件

IFS=':'
count=0 ; nonex=0
for directory in $PATH ; do
    if [ -d "$directory" ] ; then
        for command in "$directory"/* ; do
            if [ -x "$command" ] ; then
                count="$(( $count + 1 ))"
            else
                nonex="$(( $nonex + 1 ))"
            fi
        done
    fi
done

echo "$count commands, and $nonex entries that weren't executable'"

exit 0
