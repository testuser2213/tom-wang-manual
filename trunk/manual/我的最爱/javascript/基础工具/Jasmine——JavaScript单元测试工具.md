## Jasmine——JavaScript单元测试工具 ##
By Tom.Wang<[tom.wang.sz@qq.com](mailto://tom.wang.sz@qq.com)\>  

**一、概述**

----------
1、BDD（Behavior Driven Develop）单元测试框架，原JsUnit团队（JsUnit已不再更新）开发  
2、支持异步操作测试  
3、项目地址：[https://github.com/pivotal/jasmine](https://github.com/pivotal/jasmine)  
4、Wiki地址：[http://pivotal.github.io/jasmine/](http://pivotal.github.io/jasmine/)  

**二、使用**

----------
1、使用`describe`定义测试套件（Test Suite），一个功能模块可以定义为一个Suite  
2、使用`it`定义Spec，单个API定义为一个Spec，每个Spec中可以有多个Expectation  
3、使用`expect`定义Expectation，每一个Expectation中可以有很多Matcher，所有的Matcher都返回true值时整个Spec执行成功，否则为执行失败  
4、使用`beforeEach`和`afterEach`来定义setup和teardown操作  
5、使用`xdescribe`和`xit`来禁用Suite或Spec  

**相关软件**

----------
Google Js Test：[http://code.google.com/p/google-js-test/](http://code.google.com/p/google-js-test/)  
YUI Test：[http://yuilibrary.com/projects/yuitest/](http://yuilibrary.com/projects/yuitest/)  

**ChangeLog**

----------
2013年06月11日 新建文档