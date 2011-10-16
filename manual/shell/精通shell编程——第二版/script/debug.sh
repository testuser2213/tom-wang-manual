#!/bin/bash

# 例1：开启的选项保存在$-变量中
#case $- in
#*v*):
#	echo 'v mode'
#;;
#*x*):
#	echo 'x mode'
#;;
#esac;

# 例2：部分开启调试
#echo 'hello1'
#set -v
#echo 'hello2'
#set +v
#echo 'hello3'

# 例3：钩子
#DEBUG='true'
#function debug() {
#	if [ "$DEBUG" = 'true' ]; then
#		if [ "$1" = 'on' -o "$1" = 'ON' ]; then
#			set -v
#		else
#			set +v
#		fi
#	fi
#}
#echo 'hello1'
#debug on
#echo 'hello2'
#debug off
#echo 'hello3'
