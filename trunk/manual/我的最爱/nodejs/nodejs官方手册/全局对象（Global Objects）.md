# 全局对象（Global Objects） #
By Tom.Wang<tom.wang.sz@qq.com\>

## {Object} global：全局命名空间对象 ##
1、和客户端不一样，在一个模块中使用`var something`定义的是模块内的局部变量。  

## {Object} process：进程对象 ##
1、见“process object”小节  

## {Object} console ##
1、用来打印stdout和stderr，见“stdio”小节

## {Function} Buffer ##
1、用来处理二进制数据，见“Buffer”小节  

## {Function} require ##
1、用来引用一个模块，见“Modules”小节，require不是全局的，而是模块内的局部函数  

## {String} require.resolve ##
1、内部实现类似require机制，但是它不引用模块，而只是返回模块的文件名（相对还是绝对？绝对）  

## {Object} require.cache ##
1、已经引入的模块缓存在这个对象中，删除其中的一个key-value（即某个模块），会在下一次require的时候重新载入模块  

## {Object} require.extensions ##
1、已过时，不建议继续使用  

## {String} __filename ##
1、当前执行代码所在的文件的绝对路径  
2、不是真实全局的，而是模块内的局部变量  

## {String} __dirname ##
1、当前执行代码文件所在目录的路径  
2、不是真实全局的，而是模块内的局部变量  

## {Object} module ##
1、当前module对象的引用，module.exports和exports对象是一样的  
2、不是真实全局的，而是模块内的局部变量  

## {Object} exports ##
1、是对module.exports的引用，为所有模块实例公用接口，通过require将接口暴露出去  
2、不是真实全局的，而是模块内的局部变量  

## setTimeout(cb, ms) ##
1、在至少ms毫秒后执行cb，真实间隔跟系统的定时系统和负载有关  
2、ms最多不能超过24.8天  
3、返回一个代表计时器的对象  

## clearTimeout(timer) ##
1、解除setTimeout创建的计时器，解除后cb将不会触发  

## setInterval(cb, ms) ##
1、类似setTimeout  

## clearInterval(timer) ##
1、类似clearTimeout  

## ChangeLog ##
2013年06月14日 新建文档，基于v0.10.11