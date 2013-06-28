# CrossDomain实现跨域 #
By Tom.Wang<tomszwang@tencent.com\>

## 原理 ##
1、是location.hash的一个变种   
2、Opera下无法工作   

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
2013年06月26日 新建文档，参考[这篇文章](http://www.julienlecomte.net/blog/2007/11/31/)