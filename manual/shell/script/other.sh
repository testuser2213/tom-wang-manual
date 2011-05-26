#! /bin/bash

# 例1：eval命令
# 将字符串解析执行
#eval "echo wang"
#eval echo deng
# 可以执行一个命令列表
#eval "date;whoami;"

# 例2：:和if
#if true; then
#	# 作为临时空命令，代码后面补上
#	:
#else
#	echo 'fail'
#fi

# 例3：:和while
# 因为:总是返回正确的结果，所以通常用来生成无限循环
# :比true更加高校，:是内建命令，而true是外部命令（保存在硬盘上的文件）
#while :
#do
#	echo 'while'
#done

# 例4：type命令
# who is /usr/bin/who
#type who
#type "who"
# echo is a shell builtin
#type echo
# while is a shell keyword
#type while
# 可以同时指定多个命令
#type who echo
