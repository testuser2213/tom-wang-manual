#!/bin/bash

# 例1
function alert() {
	echo "$wang"
}
wang=yulin
# 要保证函数调用的时候变量已经定义即可
alert
