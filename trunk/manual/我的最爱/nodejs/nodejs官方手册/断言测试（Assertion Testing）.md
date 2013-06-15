# 断言测试（Assertion Testing） #
By Tom.Wang<tom.wang.sz@qq.com\>

## 概述 ##
1、Stability: 5 - Locked  
2、用来为您的应用写单元测试的模块  

## assert.fail(actual, expected, message, operator) ##

## assert(value, message), assert.ok(value, [message]) ##
1、判断value是否为true，等价于`assert.equal(true, !!value, message);`  

## assert.equal(actual, expected, [message]) ##
1、测试actual和expected是否相等，使用“==”运算符  

## assert.notEqual(actual, expected, [message]) ##
1、测试actual和expected是否不等，使用“!=”运算符  

## assert.deepEqual(actual, expected, [message]) ##
1、测试actual和expected是否深度相等，和“===”运算符是不一样的（什么是深度相等呢？）  

## assert.notDeepEqual(actual, expected, [message]) ##
1、测试actual和expected是否不深度相等  

## assert.strictEqual(actual, expected, [message]) ##
1、测试actual和expected是否完全相等，使用“===”运算符  

## assert.notStrictEqual(actual, expected, [message]) ##
1、测试actual和expected是否完全不等，使用“!==”运算符  

## assert.throws(block, [error], [message]) ##
1、期望block中抛出错误，error可以是构造函数、正则表达式（验证block中抛出的错误的错误信息）或验证函数（参数是block中抛出的错误对象）  

## assert.doesNotThrow(block, [message]) ##
1、期望block中不要抛出错误  

## assert.ifError(value) ##
1、当value为true时抛出错误  

## ChangeLog ##
2013年06月15日 新建文档，基于v0.10.11  