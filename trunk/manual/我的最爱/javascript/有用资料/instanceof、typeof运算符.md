# instanceof、typeof运算符 #
By Tom.Wang<tom.wang.sz@qq.com\>

## instanceof运算符 ##
1、判断object的原型链中是否有constructor.prototype
<pre>
function A() {
}
function B() {
}
var a = new A;
a instanceof A; // true
a instanceof B; // false
var C = A;
a instanceof C; // true
</pre>

## instanceof运算符和多执行环境（如frames和windows） ##
不同的窗口有不同的运行环境，意味着有不同的全局对象/构造函数。这样会导致`[] instanceof window.frames[0].Array`的结果是false

## typeof运算符 ##
1、返回字符串，表示操作数的类型
<table class="standard-table">
  <thead>
    <tr>
      <th scope="col">Type</th>
      <th scope="col">Result</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Undefined</td>
      <td><code>"undefined"</code></td>
    </tr>
    <tr>
      <td>Null</td>
      <td><code>"object"</code></td>
    </tr>
    <tr>
      <td>Boolean</td>
      <td><code>"boolean"</code></td>
    </tr>
    <tr>
      <td>Number</td>
      <td><code>"number"</code></td>
    </tr>
    <tr>
      <td>String</td>
      <td><code>"string"</code></td>
    </tr>
    <tr>
      <td>Host object (provided by the JS environment)</td>
      <td><em>Implementation-dependent</em></td>
    </tr>
    <tr>
      <td>Function object (implements [[Call]] in ECMA-262 terms)</td>
      <td><code>"function"</code></td>
    </tr>
    <tr>
      <td>E4X XML object</td>
      <td><code>"xml"</code></td>
    </tr>
    <tr>
      <td>E4X XMLList object</td>
      <td><code>"xml"</code></td>
    </tr>
    <tr>
      <td>Any other object</td>
      <td><code>"object"</code></td>
    </tr>
  </tbody>
</table>

2、正则表达式
<pre>
typeof /s/ === 'function'; // Chrome 1-12 ... // 不遵循ECMAScript 5.1
typeof /s/ === 'object'; // Firefox 5+ ...    // 遵循ECMAScript 5.1
</pre>

3、其他怪异
<pre>
typeof alert == 'object'; // IE6/7/8
...宿主成员都返回object
</pre>

4、null
<pre>
typeof null == 'object'; // 从JS诞生以来一直是这样
</pre>

## 参考文档 ##
1、https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/instanceof?redirectlocale=en-US&redirectslug=JavaScript%2FReference%2FOperators%2Finstanceof  
2、https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/typeof?redirectlocale=en-US&redirectslug=JavaScript%2FReference%2FOperators%2Ftypeof  