# npm代理设置 #
By Tom.Wang<tom.wang.sz@qq.com\>

## 环境变量 ##
1、如果系统设置了`HTTPS_PROXY / https_proxy / HTTP_PROXY / http_proxy`环境变量，npm会自动使用  

## 通过`npm config`设置代理 ##
1、`npm config`语法  
> `npm config set <key<value[--global]`  
> `npm config get <key>`  
> `npm config delete <key>`  
> `npm config list`  
> `npm config edit`  
> `npm get <key>`  
> `npm set <key<value[--global]`  

2、设置代理  
（1）、对于设置代理服务器大概有以下两个配置选项：`proxy`和`https_proxy`，这两个选项一般我只要设置proxy这个选项就可以了，除非你的https的代理服务器与你的http协议的代理服务器不同，你需要设置两个代理服务器。  
（2）、例如：`npm config set proxy=http://[user]:[password]@[proxy_host]:[proxy_port]`

## ChangeLog ##
2013年06月16日 新建文档