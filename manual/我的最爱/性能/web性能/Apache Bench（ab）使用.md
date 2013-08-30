# Apache Bench(ab)使用 #
By Tom.Wang<tom.wang.sz@qq.com\>

## 语法 ##
`ab [ -A auth-username:password ] [ -b windowsize ] [ -B local-address ] [ -c concurrency ] [ -C cookie-name=value ] [ -d ] [ -e csv-file ] [ -f protocol ] [ -g gnuplot-file ] [ -h ] [ -H custom-header ] [ -i ] [ -k ] [ -n requests ] [ -p POST-file ] [ -P proxy-auth-username:password ] [ -q ] [ -r ] [ -s timeout ] [ -S ] [ -t timelimit ] [ -T content-type ] [ -u PUT-file ] [ -v verbosity] [ -V ] [ -w ] [ -x <table>-attributes ] [ -X proxy[:port] ] [ -y <tr>-attributes ] [ -z <td>-attributes ] [ -Z ciphersuite ] [http[s]://]hostname[:port]/path`

## 选项 ##
-A username:password：设置BASIC认证用户名及密码  
-b windowsize：TCP 发送/接收缓冲区大小，单位为字节    
-B local-address：  
**-c concurrency：并发数设置，默认是1**  
-C cookie-name=value：设置Cookie，该选项可以指定多个  
-d：见文档  
-e csv-file：见文档  
-f protocol：指定SSL/TLS协议，可选值有SSL2, SSL3, TLS1, or ALL  
-g gnuplot-file：见文档  
-h：显示帮助信息  
-H custom-header：自定义请求头  
-i：发送HEAD请求，而不是GET请求  
-k：开启HTTP的KeepAlive特性，默认是不开启  
**-n requests：设置请求的次数，默认是1**  
-p POST-file：POST的数据，记得同时设置-T选项  
-P proxy-auth-username:password：见文档  
-q：当处理超过150个请求时，ab会在每10%请求数/每100次请求时打印进度信息到stderr，可以使用该选项禁用此特性  
-r：当遇到socket收错误时，不停止退出  
-s timeout：socket连接超时时间，单位为秒，默认30秒  
-S：见文档  
-t timelimit：设置测试执行的时间，设置这个选项会自动设置`-n 50000`，单位为秒，默认是不限制的  
-T content-type：设置用户POST/PUT的Content-Type头，例如“application/x-www-form-urlencoded”，默认是“text/plain”  
-u PUT-file：包含PUT请求的数据文件，需要同时设置-T选项  
-v verbosity：见文档
-V：打印版本信息  
-w：见文档  
-x <table\>-attributes：见文档  
-X proxy[:port]：设置代理  
-y <tr\>-attributes：见文档  
-z <td\>-attributes：见文档
-Z ciphersuite：Specify SSL/TLS cipher suite (See openssl ciphers)    

## 结果分析 ##

## ChangeLog ##
2013年07月10日 新建文档