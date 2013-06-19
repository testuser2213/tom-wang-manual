# grunt-contrib-concat解读 #
By Tom.Wang<tom.wang.sz@qq.com\>

## 概述 ##
1、用于连接文件  
2、依赖Grunt ~0.4.0  

## 可用配置项 ##
1、separator（默认值：grunt.util.linefeed）  
文件用这个选项指定的字符连接，如果是连接js文件，一般指定为分号“;”
  
2、banner（默认值：空字符串）  
文件连接后，将该字符放在最前面  

3、footer（默认值：空字符串）  
文件连接后，将该字符放在最后面  

4、stripBanners（默认值：false）  
配置是否剥去源文件中的Banner（文件头部的注释），可选值如下：  
（1）、false：不剥去Banner  
（2）、true：剥去`“/* ... */”`注释，但不会剥去`“/*! ... */”`注释  
（3）、options：指定一个对象，使用该选项配置时，都会开启stripBanner，设置block: true（剥去块注释）、line: true（剥去行注释）  

5、process（默认值：false）  
1、在拼接前，将源文件作为[模版](https://github.com/gruntjs/grunt/wiki/grunt.template)处理，可选值如下：  
（1）、false：不处理  
（2）、true：使用[grunt.template.process](https://github.com/gruntjs/grunt/wiki/grunt.template#wiki-grunt-template-process)来处理源文件  
（3）、options：配置为对象，同（2）使用grunt.template.process处理源文件，处理时使用options指定的配置  
（4）、function(src, filepath)：完全自定义，返回值作为源文件内容用于拼接  

## ChangeLog ##
2013年06月18日 新建文档，基于v0.3.0