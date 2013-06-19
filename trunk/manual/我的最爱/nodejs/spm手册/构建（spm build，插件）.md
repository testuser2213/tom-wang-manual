# 构建（spm build） #
By Tom.Wang<tom.wang.sz@qq.com\>

## 语法 ##
> `spm build [options]`
 
1、spm本身不是构建工具，若要调用该命令，需要安装spm-build（`npm install spm-build -g`）  
2、调用`spm build`会执行Gruntfile中名为`build`的Task  

## 说明 ##
1、spm-build，内部是使用gruntjs来做构建工作，相关依赖会自动安装   
2、当然也可以直接使用grunt来做构建  

## 标准构建 ##
1、以下是标准目录结构
<pre>
package.json
src/
    filename.js
</pre>
todo:http://docs.spmjs.org/en/build
## ChangeLog ##
2013年06月15日 新建文档，基于[spm-build](https://npmjs.org/package/spm-build) v0.3.2