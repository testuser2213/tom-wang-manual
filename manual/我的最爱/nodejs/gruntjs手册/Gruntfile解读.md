# Gruntfile解读 #
By Tom.Wang<tom.wang.sz@qq.com\>

## 概述 ##
1、Gruntfile是放在项目根目录下的`Gruntfile.js`或`Gruntfile.coffee`  
2、0.3.x版本使用的是`grunt.js`  
3、grunt的插件见[http://gruntjs.com/plugins](http://gruntjs.com/plugins)，我们可以看到spm-build，spm-build是spm的构建插件  
4、`Gruntfile.js`是一个js文件，任何js代码都可以放置在里面  

## Gruntfile由哪几个部分组成呢？ ##
1、包裹函数  
2、项目和任务配置  
3、加载grunt插件和任务  
4、自定义任务  

## 包裹函数 ##
> module.exports = function(grunt) {  
>    // Do grunt-related things in here  
> };

## 项目和任务配置 ##
1、大部分Grunt任务都依赖传递给`grunt.initConfig`的配置信息，这个配置信息是一个对象，其中可以放置任何数据  

## 加载grunt插件和任务 ##
> // Load the plugin that provides the "uglify" task.  
> grunt.loadNpmTasks('grunt-contrib-uglify');

注意：使用`grunt --help`可列出所有可用的插件  

## 自定义任务 ##
1、例：注册一个default任务，当直接运行`grunt`时，等价于于`grunt default`  
> // Default task(s).  
> grunt.registerTask('default', ['uglify']);

2、例：不使用Grunt提供的插件，而是自定义插件 
<pre> 
module.exports = function(grunt) {  
  // A very basic default task.  
  grunt.registerTask('default', 'Log some stuff.', function() {  
    grunt.log.write('Logging some stuff...').ok();  
  });  
};
</pre>
注意：自定义插件不必都放在Gruntfile中，可以放在外部js文件中，然后通过`grunt.loadTasks`方法加载进来  

## 更多相关 ##
1、安装grunt，[点击进入>>](http://gruntjs.com/installing-grunt/)  
2、编写自定义任务和插件，[点击进入>>](http://gruntjs.com/grunt)  
3、配置任务，[点击进入>>](http://gruntjs.com/configuring-tasks)  
4、创建任务，[点击进入>>](http://gruntjs.com/creating-tasks/)  

## ChangeLog ##
2013年06月16日 新建文档，基于v0.4.1