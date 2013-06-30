# Jshint——JavaScript代码质量控制工具 #
By Tom.Wang<tom.wang.sz@qq.com\>

## 配置jshint的方式 ##
1、运行使用使用`--config`指定  
2、使用`.jshintrc`文件，jshint会在当前目录查找该文件，如果找不到，则到上一层目录查找，知道文件系统根目录。  
3、使用文件内的特殊注释（行注释或块注释皆可），注释由`jshint`或`global`开始，后接逗号分隔的配置值
<pre>
/* jshint undef: true, unused: true */
/* global MY_GLOBAL */
</pre>

## 可用命令行配置 ##
1、--config：配置选项  
2、--reporter：指定输出来替代默认的输出，默认提供2个选项：jslint和checkstyle（[点击查看checkstyle说明](http://baike.baidu.com/view/4891779.htm)），要定制自己的reporter，[请看这里](http://www.jshint.com/docs/reporter/)  
3、--verbose：显示详细信息  
4、--show-non-errors：显示由jshint生成的额外信息  
5、--extra-ext：指定额外需要检查的文件扩展名，默认是'.js'  
6、--help：显示帮助信息  
7、--version：显示版本信息  

## 忽略文件 ##
如果你要忽略一些文件的检查，使用`.jshintignore`，如下：  
<pre>
legacy.js
somelib/**
otherlib/*.js
</pre>

## ChangeLog ##
2013年06月29日 新建文档，基于v2.1.4