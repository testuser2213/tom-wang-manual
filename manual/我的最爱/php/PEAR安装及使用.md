# 安装、使用PEAR #
By Tom.Wang<tom.wang.sz@qq.com\>

## Windows下安装PEAR ##
1、在php安装目录里双击`go-pear.bat`即可  
2、结束后在php安装目录里会有一个`PEAR_ENV.reg`文件，双击它可以将PEAR相关路径注入PATH环境变量  
**注意：安装前，清除所有和PEAR有关的环境变量**  

## Linux下安装PEAR ##
1、安装php时会默认安装PEAR，除非使用了`--without-pear`选项  
2、使用Linux类系统的分发包一般需要手动安装  
<pre>
// 首次安装、重新安装或升级
$ wget http://pear.php.net/go-pear.phar
$ php go-pear.phar
</pre>
<pre>
如果安装进程没有任何输出的退出，查看syslog可能包含以下信息:
suhosin[4705]: ALERT - Include filename ('phar://go-pear.phar/index.php')
 is an URL that is not allowed
 (attacker 'REMOTE_ADDR not set', file '/root/go-pear.phar', line 1236)
要解决这个问题，修改/etc/php5/conf.d/suhosin.ini添加以下行:
suhosin.executor.include.whitelist = phar
</pre>

## 验证是否安装成功 ##
在console中执行`pear`，会显示所有可用的命令  

## 使用PEAR ##
用法：`pear [options] command [command-options] <parameters>`  
使用`pear help <command>`查看具体命令的用法  
使用`pear help shortcuts`查看所有命令的缩写形式  
使用`pear help options`查看所有可用的选项  

## 配置PEAR ##
1、`pear config-show`显示当前所有设置值  
2、`pear config-get <CONFIG_NAME>`获取单独配置值  
3、`pear config-set <CONFIG_NAME> <CONFIG_VALUE>`设置单个配置值  
<pre>
// 可用配置项如下：
bin_dir	Directory where executables are installed	/usr/bin
doc_dir	Directory where documentation is installed	/usr/lib/php/docs
ext_dir	Directory where loadable extensions are installed	./
php_dir	Directory where PHP files are installed (like PEAR files)	/usr/lib/php
cache_dir	PEAR installer cache directory, and used by XMLRPC	/tmp/pear/cache
data_dir	Directory where data files are installed	/usr/lib/php/data
php_bin	The PHP CLI or CGI binary for executing scripts	/usr/bin/php
test_dir	Directory where regression tests are installed	/usr/lib/php/tests
cache_ttk	Number of seconds that the local cache is used, and not updated (Time To Kill)	3600
preferred_state	Preferred package state: stable, beta, alpha, devel, or snapshot	stable
umask	umask used when creating files (Unix-like systems only)	22
verbose	Debug log level: 0-3 where 3 is full debug mode.	1
http_proxy	The optional HTTP proxy address (host:port) used when downloading packages	 
remote_config	Remote configuration file, used to mirror a local installation on a remote server through ftp. (PEAR 1.4+)	 
auto_discover	Auto-discover new channels from command line or dependencies	0
default_channel	Default channel (PEAR 1.4+)	pear.php.net (pecl.php.net if using the pecl command)
preferred_mirror	Preferred channel mirror (PEAR 1.4+)	pear.php.net (pecl.php.net if using the pecl command)
master_server	PEAR server [deprecated in PEAR 1.4+]	pear.php.net
password	PEAR password (used by maintainers)	 
sig_bin	Signature handling program	/sw/bin/gpg
sig_keydir	Signature key directory	/etc/pearkeys
sig_keyid	The key used for signing	 
sig_type	Package signature type (only gpg)	gpg
username	PEAR username (used by maintainers)
</pre>
4、注意：修改选项值后，对于已安装的PEAR包不会生效，尤其是类似`data_dir`这样的选项。可以使用`pear upgrade --force`来重装所有的PEAR包  

## 关于包名 ##
1、pear、pecl、pyrus支持以下格式的包名  
<pre>
Package type	          Local/Remote	  Example
package.xml file	  Local	          php pyrus.phar install /path/to/package.xml
Package release archive	  Local	          php pyrus.phar install /path/to/PackageName-1.2.3.tgz
Static url	          Remote	  php pyrus.phar install http://example.com/PackageName-1.2.3.tgz
Abstract package	  Remote	  php pyrus.phar install PackageName
</pre>
2、安装包时不指定channel则会使用默认channel，分别是pear.php.net（PEAR)、pecl.php.net(PECL)、pear2.php.net(Pyrus)  

## 安装、卸载PEAR包 ##
1、`pear install <PACKAGE_NAME>`、`pear install <CHANNEL_NAME>/<PACKAGE_NAME>`、`pear install <CHANNEL_ALIAS>/<PACKAGE_NAME>`安装一个包，包名不区分大小写。如果有必须的依赖包会安装失败  
2、`pear upgrade <PACKAGE_NAME>`升级包到最新版  
注意：如果PEAR检测到你已经安装了`<PACKAGE_NAME>`，它不会做任何操作，如果你确定要安装/升级，使用`--force`或`-f`选项。如`pear install -f <PACKAGE_NAME>`或`pear upgrade -f <PACKAGE_NAME>`（当然也可以先卸载后再安装）  
3、`pear install <PACKAGE_NAME>-alpha`安装/升级到alpha版，还可以是'beta'或'devel'。PEAR默认安装的是stable（稳定版）  
4、`pear install <PACKAGE_NAME>-<VERSION_NUMBER>`安装/升级到特定版本的包  
5、`pear install --onlyreqdeps <PACKAGE_NAME>`同时安装必须的依赖包  
6、`pear install --alldeps <PACKAGE_NAME>`安装必须和可选的依赖包  
7、`pear download <PACKAGE_NAME>``pear install <PACKAGE_NAME>.tgz`下载包再安装（可以是在另一台及其上安装，称为离线安装）  
8、从svn中安装，不建议安装，[见相关章节](http://pear.php.net/manual/en/guide.users.commandline.installing.php)  
9、`pear uninstall <PACKAGE_NAME>`卸载包  

## 获取包信息 ##
1、`pear info <PACKAGE_NAME>`列出某个已安装的包的信息  
2、`pear list-files <PACKAGE_NAME>`显示包内的文件  
3、`pear list`列出已安装的包  
4、`pear remote-list`列出远程channel上的所有包  
5、`pear search <PACKAGE_NAME>`搜索指定包  

## 使用channel ##
1、`pear list-channels`列出已有的所有channel  
2、`pear channel-discover <CHANNEL_URL>`发现一个channel，使用前需要discover  
3、`pear channel-add my-channel.xml`添加channel列表  
4、`pear channel-info <CHANNEL_URL>`显示某个channel的信息  

## 所有命令列表 ##
http://pear.php.net/manual/en/guide.users.commandline.commands.php，[GO THERE](http://pear.php.net/manual/en/guide.users.commandline.commands.php)  

## 清空PEAR缓存 ##
`pear clear-cache`清空缓存，这样安装等操作就不会用缓存里的数据  

## PEAR和PECL的区别 ##
<pre>
一直以来对PEAR和PECL的关系不清楚，感觉它们的关系很暧昧。最近看了一个文章，发现它们的关系还是很分明的。
原文地址在：http://g.51cto.com/mike/61429
原文写的很好，直接引用了：

Pear：是PHP的扩展代码包，所有的扩展均以PHP代码的形式出现，功能强大，安装简单，甚至可以改改就用。使用的时候，要在代码中进行Include才能够使用。

Pecl：是PHP的标准扩展，可以补充实际开发中所需的功能，所有的扩展都需要安装，在Windows下面以Dll的形式出现，在linux下面，需要单独进行编译，它的表现形式为根据PHP官方的标准用C语言写成，尽管源码开放但是一般人无法随意更改源码。

最直接的表述：Pear是PHP的上层扩展，Pecl是PHP的底层扩展。

这是一些PHP扩展模块的集合
扩展PHP有两种方法
一种是用纯粹的PHP代码写函数和类，pear就是这样一个项目，主页是pear.php.net
另外一种是用c或者c++编写外部模块加载至php中，pecl就是干这个事的，主页是pecl.php.net

这两种方法其实都是为特定的应用提供现成的函数或者类，本质上来说都是一样的
</pre>

## ChangeLog ##
2013年06月30日 新建文档