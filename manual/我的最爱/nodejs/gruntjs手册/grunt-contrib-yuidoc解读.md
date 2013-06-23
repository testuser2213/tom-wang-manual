# grunt-contrib-yuidoc解读 #
By Tom.Wang<tom.wang.sz@qq.com\>

## 概述 ##

## 选项（参见[yuidoc的官方配置](http://yui.github.com/yuidoc/args/index.html)） ##
1、yuidoc命令行选项（优先于yuidoc.json里的选项）  
（1）、`-c, -config, -configfile <filename>`：指定提供配置的JSON文件，也可以在任意项目目录或子目录中放置一个`yuidoc.json`文件，yuidoc会自动自用它  
（2）、`-e, -extension <逗号分隔的扩展名列表>`：需要解析的文件扩展名列表，默认是".js"  
（3）、`-x, -exclude <逗号分隔的目录列表>`：不需要解析的目录，默认`'.DS_Store,.svn,CVS,.git,build_rollup_tmp,build_tmp'`  
（4）、`-v, --version`：查看yuidoc的版本  
（5）、`--project-version`：指定文档版本  
（6）、`-N, --no-color`：关闭终端的颜色显示  
（7）、`-C, --no-code`：关闭文档中包含源代码  
（8）、`-n, --norecurse`：不递归目录  
（9）、`-S, --selleck`：解析Selleck组件（和MarkDown类似）数据并用于文档的元数据  
（10）、`-V, --view`：打印Handlebars.js的输出结果，而不是输入到模板文件  
（11）、`-p, --parse-only`：仅解析并生成JSON文件，不生成文档  
（12）、`-o, --outdir <directory path>`：设置输出目录，默认为'./out'  
（13）、`-t, --themedir <directory path>`：指定自定义主题目录，目录中包含Handlebars模板  
（14）、`-H, --helpers <逗号分隔的指向文件的目录>`：包含文件并添加Handlebars Helper  
（15）、`-h, --help`：打印帮助信息  
（16）、`-q, --quiet`：不打印log  
（17）、`-T, --theme <simple|default>`：设置主题，默认'default'  
（18）、`--syntaxtype <js|coffee>`：设置注释语法类型，默认'js'  
（19）、`--server <port>`：设置server模式监听的端口，默认3000  
（20）、`--lint`：检查注释，有错误时抛出warning并退出程序  

## 选项（使用yuidoc.json) ##
1、常规项目配置  
（1）、`name`：项目名  
（2）、`description`：项目描述  
（3）、`version`：版本号  
（4）、`url`：项目地址  
（5）、`logo`：项目logo，可显示在生成的文档中  
2、选项  
（1）、`linkNatives`：将本地类型（如String、Object）连接到Mozilla Develop Network  
（2）、`attributesEmit`：  
（3）、`selleck`：  
（4）、`ignorePaths`：与paths相反，设置要忽略的源码目录  
（5）、`exclude`：  
（6）、`paths`：字符串或数组，设置源码路径，生成文档时分析这里列出的文件  
（7）、`outdir`：文件输出目录  
（8）、`tabtospace`：代码中的Tab字符使用的空格数（查看代码时使用），默认8  
（9）、`external.data`：将外部文档data.json引入项目文档，参见[例子](http://yui.github.io/yuidoc/args/index.html#external-data)    

## yuidoc语法参考 ##
**0、概述**  
（1）、每个注释块只能包含一个主标签，可以包含0个或多个次级标签  
（2）、一个代码树至少需要一个@module的注释块  
（3）、每个module至少要有一个@class的注释块  
（4）、每个class拥有0或多个@attribute, @class, @event, @method, or @property注释块  

**1、主标签（Primary Tags）**  
（1）、`module`：描述一组相关的类，如YUI的App模块拥有App.Base, App.Model等类，一个module可以切分为多个submodule  
（2）、`main`：当多个文件中包含同样的@module注释，则需要指定一个主注释块（会用于生成文档时该模块的说明）  
<pre>
/**
Provides more features for the widget module...

@module widget
@submodule widget-foo
@main widget
**/
</pre>
（3）、`class`：定义一个类，必须同时指定一个`@constructor`（定义在构造函数上方）或`@static`（静态类），必须放在类中的`@attribute, @method。。。`前面。**'Y.DD.Drag'的class是Drag，namespace是DD**  
<pre>
/**
A utility that brokers HTTP requests...

@class IO 
@constructor
**/
function IO (config) {
</pre>
（4）、`method`：定义一个方法，隶属于最近解析的类，也可以使用`@for`来指定隶属于哪个类，需要指定相关的`@param`和`@return`  
<pre>
/**
Returns this model's attributes as...

@method toJSON
@return {Object} Copy of ...
**/
toJSON: function () {
</pre>
（5）、`event`：定义一个自定义事件，和`@method`类似，但没有return注释。param用于指定事件对象的属性  
<pre>
/**
Fired when an error occurs...

@event error 
@param {String} msg A description of...
**/
var EVT_ERROR = 'error',
</pre>
（6）、`property`：定义一个属性，必须指定一个`@type`注释
<pre>
/**
Template for this view's container...

@property containerTemplate 
@type String
@default "<div/>"
**/
containerTemplate: '<div/>',
</pre>
（7）、`attribute`：YUI独有，见相关文档  
<pre>
/**
* Indicates whether this Widget
* has been rendered...
*
* @attribute rendered
* @readOnly
* @default false
* @type boolean
*/
ATTRS[RENDERED] = {
</pre>

**2、次级标签（Secondary Tags）**  
（1）、`submodule`：定义一个子模块  
（2）、`namespace`：定义一个名字空间  
（3）、`extends`：定义类继承自某个父类    
（4）、`config`：YUI独有，见相关文档  
（5）、`constructor`：指定类是可实例化的  
（6）、`static`：指定**类或方法**是静态的  
（7）、`final`：指定property或attribute是常量，不可改变的  
（8）、`readOnly`：YUI独有，见相关文档  
（9）、`writeOnce`：YUI独有，见相关文档  
（10）、`optional`：YUI独有，见相关文档  
（11）、`required`：YUI独有，见相关文档  
（12）、`param`：定义method/event/constructor的参数，可以使用`@param {type} name description`或`@param name {type} description`格式，类型必须用'{}'括起来，name可以是以下格式：  
<pre>
[name] — optional parameter
[name=foo] — default value is foo
name* — placeholder for 1..n args
[name]* — placeholder for 0..n args
</pre>
param是可以嵌套的，如下
<pre>
/**
@param {Object} [options] Data 
  to be mixed into the event 
  facade of the `change` 
  event(s) for these attributes.
  @param {Boolean} [options.silent]
    If `true`, no `change` event 
    will be fired.
**/
</pre>
（13）、`return`：指定method的返回值，格式`@return {type} description`，type是可选的  
（14）、`for`：可以用在class中，用来指定其外部class，也可以用在@attribute, @event, @method, or @property中，指定它自身应属于哪个类  
<pre>
/**  
Some inner class 'foo'...  

@class foo  
@for OuterClass  
// 这中间的所有类成员都隶属于OuterClass
@for OuterClass //再次使用for来定义OuterClass的结束
**/
</pre>
（15）、`type`：定义property或attribute的类型，可以是单个类型，也可以是竖线分隔的多个类型，或者mixed  
（16）、`private`：定义成员私有，私有成员不会生成到文档中  
（17）、`protected`：  
（18）、`requires`：不使用  
（19）、`default`：定义property或attribute的默认值，需要和`@type`成对使用  
（20）、`uses`：  
（21）、`example`：定义实例，可以多次使用  
（22）、`chainable`：定义方法是可以链式调用的，即它返回this  
（23）、`deprecated`：指定过时  
<pre>
/**
@property locale
@type String
@deprecated Use `config.lang` instead. // 可以加上说明，指定替代方法
**/
</pre>
（24）、`since`：指定特性从哪个版本开始提供  
（25）、`async`：不使用  
（26）、`beta`：指定特性是beta的，正式版不一定会采用  
（27）、`bubbles`：  
（28）、`extension`, `extensionfor`, `extension_for`:

## 解析但还不包含在主题中的注释 ##
（1）、`author`：指定作者  
（2）、`broadcast`：  
（3）、`category`：指定归类  

## ChangeLog ##
2013年06月23日 新建文档，基于v0.4.0，基于yuidoc v0.3.44