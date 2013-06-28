# location.hash实现跨域 #
By Tom.Wang<tomszwang@tencent.com\>

## 原理 ##
1、`a.com`下的`a.html`创建iframe，iframe加载`b.com`下的`b.html`页面（可通过GET、HASH传递参数）  
2、`b.html`响应请求，并通过修改`a.html`的HASH来实现传递数据（由于两个页面不在同一个域下，IE、Chrome不允许修改parent.location.hash的值，所以要借助于a.com域名下的一个代理iframe。Firefox则可以修改）  
3、`a.html`起一个定时器，监控HASH的变化（**标准浏览器支持window.onhashchange事件供监听**）  
4、该方法传输数据量受URL长度限制  
5、该方法可实现双向通信  

## 实现步骤 ##
//a.com下的a.html

	function startRequest(){
	    var ifr = document.createElement('iframe');
	    ifr.style.display = 'none';
	    ifr.src = 'http://b.com/b.html';
	    document.body.appendChild(ifr);
	}
	
	function checkHash() {
	    try {
	        var data = location.hash ? location.hash.substring(1) : '';
	        if (console.log) {
	            console.log('Now the data is '+data);
	        }
	    } catch(e) {};
	}
	// 定时器监控
	setInterval(checkHash, 2000);

//b.com下的b.html

    try {
        parent.location.hash = 'somedata';
    } catch (e) {
        // ie、chrome的安全机制无法修改parent.location.hash，
        // 所以要利用一个中间的cnblogs域下的代理iframe
        var ifrproxy = document.createElement('iframe');
        ifrproxy.style.display = 'none';
        ifrproxy.src = 'http://a.com/proxy.html#somedata';    // 注意该文件在"a.com"域下
        document.body.appendChild(ifrproxy);
    }

//a.com下的proxy.html

	//因为parent.parent和自身属于同一个域，所以可以改变其location.hash的值
	parent.parent.location.hash = self.location.hash.substring(1);

## ChangeLog ##
2013年06月26日 新建文档，参考[这篇文章](http://www.cnblogs.com/rainman/archive/2011/02/20/1959325.html#m3)