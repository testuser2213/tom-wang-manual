
## Google Closure Compiler——JS代码精简压缩工具 ##
By Tom.Wang<[tom.wang.sz@qq.com](mailto://tom.wang.sz@qq.com)\>  

**一、什么是Closure Compiler**

----------
是Google Closure Tools中的一个工具，用来压缩JavaScript代码，去掉无用的代码，并检查语法、变量引用，针对常见JavaScript陷阱给出警告。  
Google Closure Tools地址：[https://developers.google.com/closure/](https://developers.google.com/closure/)  
Google Closure Compiler地址：[https://developers.google.com/closure/compiler/](https://developers.google.com/closure/compiler/)  

**二、怎样使用Closure Compiler**

----------
1、作为命令行上的java程序使用（compiler.jar，见后面介绍）  
2、作为一个web应用使用（在线工具，地址：[http://closure-compiler.appspot.com/](http://closure-compiler.appspot.com/)）  
3、作为RESTful API使用
  
**三、使用Closure Compiler的好处**

----------
1、高效：压缩代码使代码更快下载，节省带宽  
2、代码检查：Closure Compiler会检查您的代码并在遇到可能的危险操作时给予警告，使您的代码更加健壮和易于维护  

**四、compiler.jar使用方法**

----------
1、java -jar compiler.jar  
不带任何参数将进入交互模式，进入交互模式后输入：  
    var x = 17 + 25;  
按下Enter键，再输入Ctrl-Z（Windows平台）或Ctrl-D（Mac或Linux平台）后按Enter键后，Compiler将会有以下输出：  
    var x=42;  

2、java -jar compiler.jar --help  
打印compiler.jar的帮助信息  

3、java -jar compiler.jar --js=in1.js --js=in2.js ... --js\_output\_file=out.js  
**选项和值之间也可以使用空格分隔**。将--js选项指定的文件按顺序连接起来，压缩后输出为out.js（由--js\_output\_file选项指定）  
注意：如果要编译很多JS文件，你很快会为处理各个文件间的依赖头痛。你可以使用Closure Library，它包括处理脚本间依赖的功能。另外还有一个calcdeps.py工具，它会在将脚本输入到Compiler之前处理好各个脚本的顺序。  

**相关软件**

----------
YUI Compressor：[http://yui.github.io/yuicompressor/](http://yui.github.io/yuicompressor/)  
UglifyJS：[https://github.com/mishoo/UglifyJS](https://github.com/mishoo/UglifyJS)  


**相关文章**

----------
《JavaScript Source Map 详解》：[http://www.ruanyifeng.com/blog/2013/01/javascript_source_map.html](http://www.ruanyifeng.com/blog/2013/01/javascript_source_map.html)  
《Advanced Compilation and Externs》：[https://developers.google.com/closure/compiler/docs/api-tutorial3](https://developers.google.com/closure/compiler/docs/api-tutorial3)

**ChangeLog**

----------
2013年06月10日 新建文档  
