# grunt-cmd-concat解读 #
By Tom.Wang<tom.wang.sz@qq.com\>

## 概述 ##


## 可用配置项 ##
1、paths：数组，默认值['sea-modules']  
配置seajs模块路径  
在concat中是必须的，合并的时候会在这个目录中找依赖模块，没有找到模块的话依赖模块是合并不进来的！  

2、include：字符串，默认值'self'  
配置模块如何require它们的依赖模块  
可选值包括self/relative（其实不存在）/all  
self：直接使用文件的内容，不需要

3、separator：字符串，默认值grunt.util.linefeed  
连接每个文件内容的分隔符  

4、banner：字符串，默认值''  
配置连接后文件的Banner  

5、footer：字符串，默认值''  
配置连接后文件的Footer  

6、noncmd：布尔值，默认值false  
配置为true，则文件内容将直接用于拼接，不做额外处理  

7、uglify：对象，默认值{beautify: true, comments: true}

8、processors：对象，默认值{}  
以文件后缀为key，相应的处理器为值配置，'.css'和'.js'后缀不需要额外配置  
如果没有相应的处理器，则文件内容将直接用于拼接，不做额外处理  
<pre>
  var processors = {
    '.js': script.jsConcat,
    '.css': style.cssConcat
  };
</pre>

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