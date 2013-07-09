# npm的package.json详解 #
By Tom.Wang<tom.wang.sz@qq.com\>

## 概述 ##
1、原始文档地址：[https://npmjs.org/doc/json.html](https://npmjs.org/doc/json.html)  

## 描述 ##
1、package.json必须是真实的JSON，而不仅仅是JavaScript的JSON直接量  

## 默认值 ##
1、`"scripts": {"start": "node server.js"}`  

## name：必须 ##
1、不要带上“.js”或“.node”后缀  
2、不以“.”或“_”开头  

## version：必须 ##
1、可以以“v”开头  
2、版本有大小之分，如`0.1.2-7 > 0.1.2-7-beta > 0.1.2-6 > 0.1.2 > 0.1.2beta`  

## description ##
1、包的描述信息，可帮助人们找到你的包，`npm search`将显示这个描述信息  

## keywords ##
1、字符串数组，可帮助人们找到你的包，`npm search`将显示这里的关键字  

## homepage ##
1、项目主页  

## bugs ##
1、可以定义url和（或）email，用于其他用户报告项目的问题，定义格式如下：  
>     {   
> 	"url" : "http://github.com/owner/project/issues"  
>     , "email" : "project@hostname.com"  
>     }

如果指定了url，它将被用于`npm bugs`  

## license ##
1、指定授权协议  

## author, contributors ##
1、author只能是一个人，contributors可有多个人（数组）  
2、单个人的信息格式为`Barney Rubble <b@rubble.com> (http://barnyrubble.tumblr.com/)`，email和url都是可选的  

## files ##
1、见原文  

## main ##
1、指定项目的主模块或入口（参加nodejs的Modules章节）  

## bin ##
1、对应可运行于命令行的包，指定后可在PATH中建立对应的项，然后命令行可直接调用  

## man ##
1、见原文  

## directories ##

## scripts ##

## config ##

## dependencies ##
1、用来指定程序的依赖包，已包名为key，版本范围为val  
2、版本范围可以是如下类型：  
> `version` Must match version exactly  
> `=version` Same as just version  
> `>version` Must be greater than version  
> `>=version` etc  
> `<version`  
> `<=version`  
> `~version` See 'Tilde Version Ranges' below，如"~1.2.3" = ">=1.2.3 <1.3.0"  
> `1.2.x` See 'X Version Ranges' below  
> `http://...` See 'URLs as Dependencies' below  
> `*` Matches any version  
> `""` (just an empty string) Same as *  
> `version1 - version2` Same as >=version1 <=version2.  
> `range1 || range2` Passes if either range1 or range2 are satisfied.  
> `git...` See 'Git URLs as Dependencies' below  

## devDependencies ##
1、开发是需要依赖的包，比如一些文档工具，不是软件逻辑所依赖的，不需要使用的用户来安装，则可以列在这里  
2、`--dev`选项打开时执行install，这里的包也会安装下来  
3、`npm link`和在软件根目录下调用install，`--dev`选择会自动打开  

## bundledDependencies ##

## optionalDependencies ##
1、逻辑同devDependencies  
2、这里的包如果没有或没有合适的版本，整个程序不会报错而终止  

## engines ##
1、指定程序依赖的node版本  

## engineStrict ##

## os ##

## cpu ##

## preferGlobal ##

## private ##

## publishConfig ## 

## ChangeLog ##
2013年06月15日 新建文档，基于v1.2.30