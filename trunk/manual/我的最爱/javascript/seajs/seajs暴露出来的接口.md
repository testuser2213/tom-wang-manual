# seajs暴露出来的接口 #
By Tom.Wang<tomszwang@tencent.com\>

## 属性 ##
1、version：字符串，当前seajs的版本  
2、events：对象，存放绑定的事件的堆栈  
3、cache：对象

## 方法 ##
1、void log(string msg, string type = 'log')  
@param msg: 必须  
@param type: 可选，默认为'log'  
@ 调用全局的console的type方法，将msg作为参数，没有console对象的浏览器不支持  
@ type默认是“log”  
@ 不提供type参数（即默认的'log'），同时seajs的debug配置为false，则不打印调试信息  

2、seajs on(string event, Function callback)  
@param event: 必须  
@param callback: 必须  
@ 绑定事件回调，将回调压入`seajs.events`堆栈  
@ 触发的时候，先绑定的回调优先调用  

3、seajs off(string event, Function callback)  
@param event: 可选  
@param callback: 可选  
@ 如果不提供event和callback参数，则清空事件回调的堆栈  
@ 如果仅提供event，则清除该事件的回调堆栈  

4、seajs emit(string event, mixed data)  
@param event: 必须  
@param data: 可选  
@ 触发event事件，依次调用回调函数堆栈，将data作为参数  

5、string cwd(string val)  
@param val: 可选  
@ 用于设置/获取当前工作目录   
@ 默认的cwd是当前页面所在目录，即`dirname(location.href)`  

6、seajs use(Array|String ids, Function callback)  
@param ids: 必须  
@param callback: 可选  
@ 加载入口，这之前所有`preload模块（参见preload配置项）及它们特有的preload模块`都会加载好  
@ 可以同时加载多个模块，回调函数的参数是ids对应模块的exports对象  

7、string resolve(string id, string refUri)  
@param id: 必须，待解析的模块id  
@param refUri: 可选，用于`添加base`步骤  
@ 将模块id解析成模块文件地址，分以下步骤解析  
<pre>
1、解析别名：参考alias配置项
2、解析路径：参考paths配置项
3、解析变量：参考vars配置项
4、添加base：参考base配置项
5、标准化：添加js后缀
6、解析map：参考map配置项
</pre>

8、Object require(id)  
@param id: 必须  
@ 返回id对应的模块的exports，参加seajs.cache属性  

9、void config(Object data)  
@param data: 必须  
@ 配置seajs  

## ChangeLog ##
2013年06月22日 新建文档，基于seajs v2.0.0