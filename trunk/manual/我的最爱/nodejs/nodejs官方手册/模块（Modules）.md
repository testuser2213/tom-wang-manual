# 模块（Modules） #
By Tom.Wang<tom.wang.sz@qq.com\>

## 概述 ##
1、Stability: 5 - Locked  
2、模块和文件是一对一关系  

## 循环引用怎么办？ ##
1、当存在循环引用时，有的模块会在没有完成执行时就返回了，如下  
`a.js`
> console.log('a starting');  
> exports.done = false;  
> var b = require('./b.js');  
> console.log('in a, b.done = %j', b.done);  
> exports.done = true;  
> console.log('a done');  

`b.js`
> console.log('b starting');  
> exports.done = false;  
> var a = require('./a.js');  
> console.log('in b, a.done = %j', a.done);  
> exports.done = true;  
> console.log('b done');  

`main.js`
> console.log('main starting');  
> var a = require('./a.js');  
> var b = require('./b.js');  
> console.log('in main, a.done=%j, b.done=%j', a.done, b.done);

main.js载入a.js，a.js接着载入b.js，这时b.js又尝试载入a.js，为了避免无限死循环引用，这时一个未执行完的a.js会export给b.js。b.js执行完后export给a.js。a.js和b.js都执行完后都export给main.js  
  
`output`
> $ node main.js  
> main starting  
> a starting  
> b starting  
> in b, a.done = false  
> b done  
> in a, b.done = true  
> a done  
> in main, a.done=true, b.done=true  

## 核心模块 ##
1、核心模块编译在二进制里，源码在`lib/`目录下  
2、require会优先加载核心模块，例如`require('http')`总是载入核心http模块，即使存在同名的http文件模块  

## 文件模块 ##
1、如果没有找到模块名对应的确切的文件名，node将视图在模块名后加上.js、.json、.node后缀（按优先级高低排序）来尝试加载  
2、.js文件将作为JavaScript文本解释，.json将作为json文本解释，.node文件解释为通过`dlopen`加载的已编译的附加模块  
3、以“/”开头的模块名是绝对路径，以“./”开头（**Q：有没有“../”开头的模块？A：有**）的模块使用相对于调用require的模块的路径，不以“/”或“./”开头的模块是核心模块或`node_modules`目录中的模块  
4、如果模块找不到，将抛出错误，错误码为`MODULE_NOT_FOUND`  

## 从node_modules目录中加载模块 ##
1、当没有找到全局模块，同时模块名不是以“./”或“../”开头的使用执行  
2、查找模块的顺序为：先找调用require的模块所在的目录下的`node_modules`目录，找不到再到父目录下的`node_modules`目录中找，一直找到目录树的根部  
3、举例，“/path/to/a.js”中`require('b.js')`，查找顺序为：  
- /path/to/node_modules/b.js  
- /path/node_modules/b.js  
- /node_modules/b.js  

## 目录作为模块 ##
1、在组织程序或库时，维护好自己的内部逻辑，封装成一个唯一出口是很合理的。以下三种情况下，一个目录可以作为参数传递给require  
（1）、在库的根目录里建立一个`package.json`文件，在其中定义一个main模块，如下  
> { "name" : "some-library", "main" : "./lib/some-library.js" }

如果它位于“./some-library”内，则调用`require('./some-library')`将载入`“./some-library/lib/some-library.js”`文件  
（2）、如果目录中没有`package.js`文件，require将在目录中尝试载入`index.js`或`index.node`，以（1）中的例子，如果没有package.json文件，nodejs会尝试载入：  
> ./some-library/index.js  
> ./some-library/index.node  

## 缓存 ##
1、模块第一次加载后将被缓存起来，之后所有require都是载入同一个模块，**只要它们都解析到同一个模块文件（这一点很重要）**  
2、一个模块被加载多次的时候，模块代码并不会执行多次，模块中的变量都是静态（同php中的static）  
3、如果有让模块代码每次载入都执行，可以暴露一个函数出来，载入时再调用该函数  

## module.exports ##
1、为exports对象赋值或为它的属性赋值，不能放在回调里，必须立即执行  

## module.require ##
1、调用module.require方法使require在原始module的环境下载入模块  
2、require默认是暴露module.exports，要直接调用某个模块的require方法，必须把module暴露出来（module.exports = module;）  

## module.id ##
1、返回模块标志，即解析后的模块文件绝对路径  

## module.filename ##
1、返回解析后的模块文件绝对路径  

## module.loaded ##
1、布尔值，表示模块是否加载完成  

## module.parent ##
1、返回载入该模块的父模块  

## module.children ##
1、返回该模块加载的子模块数组  

## Module加载伪代码 ##
<pre>
require(X) from module at path Y
1. If X is a core module,
   a. return the core module
   b. STOP
2. If X begins with './' or '/' or '../'
   a. LOAD_AS_FILE(Y + X)
   b. LOAD_AS_DIRECTORY(Y + X)
3. LOAD_NODE_MODULES(X, dirname(Y))
4. THROW "not found"

LOAD_AS_FILE(X)
1. If X is a file, load X as JavaScript text.  STOP
2. If X.js is a file, load X.js as JavaScript text.  STOP
3. If X.node is a file, load X.node as binary addon.  STOP

LOAD_AS_DIRECTORY(X)
1. If X/package.json is a file,
   a. Parse X/package.json, and look for "main" field.
   b. let M = X + (json main field)
   c. LOAD_AS_FILE(M)
2. If X/index.js is a file, load X/index.js as JavaScript text.  STOP
3. If X/index.node is a file, load X/index.node as binary addon.  STOP

LOAD_NODE_MODULES(X, START)
1. let DIRS=NODE_MODULES_PATHS(START)
2. for each DIR in DIRS:
   a. LOAD_AS_FILE(DIR/X)
   b. LOAD_AS_DIRECTORY(DIR/X)

NODE_MODULES_PATHS(START)
1. let PARTS = path split(START)
2. let ROOT = index of first instance of "node_modules" in PARTS, or 0
3. let I = count of PARTS - 1
4. let DIRS = []
5. while I > ROOT,
   a. if PARTS[I] = "node_modules" CONTINUE
   c. DIR = path join(PARTS[0 .. I] + "node_modules")
   b. DIRS = DIRS + DIR
   c. let I = I - 1
6. return DIRS
</pre>

## 从Global目录中载入模块 ##
1、如果按以上规则都找不到模块，则在`NODE_PATH`环境变量中查找模块，Linux中的`NODE_PATH`以“:”分隔，Windows中以“;”分隔  
2、同时，node也会在以下路径查找模块  
> 1: $HOME/.node_modules  
> 2: $HOME/.node_libraries  
> 3: $PREFIX/lib/node

3、由于历史原因，这些特性还保留着。最好将依赖的包或库放在node_modules目录下，这样加载更快，鼓励这么做  

## 访问主模块 ##
1、如果文件直接用node调用，那么`require.main`设置为这个文件的module，可以如下判断一个文件是否通过node直接调用  
> require.main === module

## 附录：包管理Tips ##
1、见[http://nodejs.org/api/modules.html](http://nodejs.org/api/modules.html)  

## ChangeLog ##
2013年06月14日 新建文档，基于v0.10.11  
2013年06月18日 添加“Module加载伪代码”