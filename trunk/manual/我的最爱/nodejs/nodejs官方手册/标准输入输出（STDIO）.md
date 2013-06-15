# 标准输入输出（STDIO） #
By Tom.Wang<tom.wang.sz@qq.com\>

## 概述 ##
1、Stability: 4 - API Frozen  

## console.log([data], [...]) ##
1、打印到stdout，带上newline符号  
2、第一个参数可以是格式字符串，类似printf，如果没找到格式字符串，则使用`util.inspect`调用每个参数  
3、格式信息参考`util.format`  

## console.info([data], [...]) ##
1、同console.log  

## console.error([data], [...]) ##
1、同console.log，只是输出到stderr  

## console.warn([data], [...]) ##
1、同console.error  

## console.dir(obj) ##
1、使用`util.inspect`调用obj，将返回打印到stdout  

## console.time(label) ##
1、打上一个时间点  

## console.timeEnd(label) ##
1、与console.time对应，记录耗时并打印到stdout  

## console.trace(label) ##
1、打印调用堆栈到stderr  

## console.assert(expression, [message]) ##
1、类似`assert.ok()`，如果expression计算为false值，则抛出AssertionError，错误信息为message  

## ChangeLog ##
2013年06月15日 新建文档，基于v0.10.11