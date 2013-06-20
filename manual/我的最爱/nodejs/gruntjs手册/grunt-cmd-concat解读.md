# grunt-cmd-concat解读 #
By Tom.Wang<tom.wang.sz@qq.com\>

## 概述 ##


## 可用配置项 ##
1、paths：数组，默认值['sea-modules']  
配置seajs模块路径  

2、include：字符串，默认值'self'  
配置模块如何require它们的依赖模块  
可选值包括self/relative/all  

3、separator：字符串，默认值','  

4、banner：字符串，默认值''  
配置连接后文件的Banner  

5、footer：字符串，默认值''  
配置连接后文件的Footer  

6、noncmd：布尔值，默认值false  

7、uglify：对象

8、processors：对象  

9、css2js：函数，默认值null  
当模块中require一个CSS文件时，必须把它转为js，grunt-cmd-transport中有css2js方法可用，如下：
<pre>
var style = require('grunt-cmd-transport').style.init(grunt);

grunt.initConfig({
  concat: {
    foo: {
      options: {
        css2js: style.css2js
      }
    }
  }
});
</pre>

## ChangeLog ##
2013年06月18日 新建文档，基于v0.2.3