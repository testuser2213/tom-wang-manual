#!/bin/bash

# 例1：trap应用，删除临时文件
#tmp='arch'
# 一定要放到tmp变量后面，因为trap使用了tmp变量
#trap "rm -f $tmp; exit 2" SIGHUP SIGINT SIGQUIT SIGTERM
#uname -m > "$tmp"
#sleep 50
#read arch < "$tmp"
#rm -f "$tmp"
#echo $arch
#exit 0

# 例2：trap应用，删除临时文件（函数实现）
# 函数定义可以放在变量前面
# 因为函数调用的时候变量已经定义了
#function cleanUp() {
#	rm -f "$tmp"
#	exit 1
#}
#trap cleanUp SIGHUP SIGINT SIGQUIT SIGTERM
#tmp='arch'
#uname -m > "$tmp"
#sleep 50
#read arch < "$tmp"
#rm -f "$tmp"
#echo $arch
#exit 0

# 例3：定时器
function AlarmHandler() {
	echo 'Got SIGALRM, cmd took too long.'
	KillSubProcs
	exit 14
}

function KillSubProcs() {
	kill ${CHPROCIDS:-$!}
	if [ $? -eq 0 ]; then
		echo 'Sub-processed killed.'
	fi
}

function SetTimer() {
	def_tout=${1:-10}
	if [ $def_tout -ne 0 ]; then
		# 当前脚本的PID放在$$变量中
		sleep $def_tout && kill -s SIGALRM $$ &
		CHPROCIDS="$CHPROCIDS $!"
		TIMERPROC=$!
	fi
}

function UnsetTimer() {
	kill $TIMERPROC
}

trap AlarmHandler SIGALRM
SetTimer 5
$PROG &
sleep 10
# CHPROCIDS包含了由脚本启动的PID列表
CHPROCIDS="$CHPROCIDS $!"
wait $!
UnsetTimer
echo 'All Done.'
exit 0
