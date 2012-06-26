/*self.*/onmessage = function(e) {
	var data = e.data;
	
	// 调用postMessage向父级发送消息
	// 前后发发送消息都是使用postMessage方法，注意避免混淆，尤其是在嵌套的情况
	/*self.*/postMessage('收到' + data);
}