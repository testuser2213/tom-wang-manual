# window.name实现跨域 #
By Tom.Wang<tomszwang@tencent.com\>

## 原理 ##
1、`a.com`下的`a.html`创建iframe，iframe加载`b.com`下的`b.html`页面  
2、`b.html`设置window.name属性  
3、`a.html`中iframe加载完毕后（onload事件），重置iframe的页面到`a.com`下的`proxy.html`页面（可以是一个空页面）  
4、`proxy.html`加载完成之后（再次onload事件），此时可读取到iframe的`contentWindow.name`属性  
5、跨域ok，销毁iframe  

## 实现步骤 ##
// a.com下的a.html

	<script type="text/javascript">
	    var state = 0, 
	    iframe = document.createElement('iframe'),
	    loadfn = function() {
	        if (state === 1) {
	            var data = iframe.contentWindow.name;    // 读取数据
	            alert(data);    //弹出'I was there!'
	        } else if (state === 0) {
	            state = 1;
	            iframe.contentWindow.location = "http://a.com/proxy.html";    // 设置的代理文件
	        }  
	    };
	    iframe.src = 'http://b.com/b.html';
	    if (iframe.attachEvent) {
	        iframe.attachEvent('onload', loadfn);
	    } else {
	        iframe.onload  = loadfn;
	    }
	    document.body.appendChild(iframe);
	</script>

//b.com下的b.html

	<script type="text/javascript">
	    window.name = 'I was there!';    // 这里是要传输的数据，大小一般为2M，IE和firefox下可以大至32M左右
	                                     // 数据格式可以自定义，如json、字符串
	</script>

//获取完数据后，销毁iframe

	<script type="text/javascript">
	    iframe.contentWindow.document.write('');
	    iframe.contentWindow.close();
	    document.body.removeChild(iframe);
	</script>

## ChangeLog ##
2013年06月26日 新建文档，参考[这篇文章](http://www.cnblogs.com/rainman/archive/2011/02/21/1960044.html)