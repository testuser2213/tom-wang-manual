# grunt-cmd-transport解读 #
By Tom.Wang<tom.wang.sz@qq.com\>

## 概述 ##
1、seajs的cmd模块直接拼接是会出错的，见[为什么 SeaJS 模块的合并这么麻烦 ](http://chaoskeh.com/blog/why-its-hard-to-combo-seajs-modules.html)，该grunt插件用于将cmd模块转为标准模块  

## 可用配置项 ##
1、paths：数组，默认值['sea-modules']  
用于指定seajs模块的位置  
在transport中只是做检测提示用，看依赖模块是否存在  

2、idleading：字符串，默认值""  
转换后的模块ID的前缀  

3、alias：对象，默认值{}  
配置模块的别名  

4、debug：布尔值，默认值true  
是否生成一个debug文件  

5、handlebars：对象  
配置handlebars compiler的选项  

6、uglify：对象  
uglify的配置，建议不用配置  

7、parsers：  
对指定的文件类型使用特定的parser进行转换（高级用法）
<pre>
options: {
    parsers: {
        '.coffee': [coffeeParser]
    }
}
</pre>

## ChangeLog ##
2013年06月18日 新建文档，基于v0.2.6