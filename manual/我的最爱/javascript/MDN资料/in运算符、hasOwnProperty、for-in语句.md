# in运算符、hasOwnProperty、for-in语句 #
By Tom.Wang<tom.wang.sz@qq.com\>

## in运算符 ##
1、`in`运算符用于对象
<pre>
var o = {'a': 1, 'b': 2};
'a' in o;  // true
'toString' in o; // true，原型链中的属性也在继承对象内

o.a = undefined;
'a' in o; // true
delete o.a;
'a' in o; // false，使用delete删除后，属性不再在对象中，同样适用于数组
</pre>
2、`in`运算符也可用于数组
<pre>
// in 运算符也可用于数组
var arr = [1, 2];
0 in arr; // true
'0' in arr; // true
3 in arr; // false
</pre>
3、`in`运算符的右操作数必须是对象
<pre>
var s = new String('test');
'length' in s; // true
'length' in 'test'; // 抛出异常，右操作数必须是对象或数组
</pre>

## Object.prototype.hasOwnProperty ##
1、所有对象都有该方法，Object是一切对象的根  
2、和`in`运算符不同的是，hasOwnProperty不检查原型链
<pre>
{}.hasOwnProperty('toString'); // false
</pre>
3、覆盖原型链中的属性
<pre>
var o = {};
o.toString = '';
o.hasOwnProperty('toString'); // true
</pre>
4、覆盖hasOwnProperty自身
<pre>
var o = {};
o.hasOwnProperty = function() {
	return false;
};
o.toString = '';
o.hasOwnProperty('toString'); // false
Object.prototype.hasOwnProperty.call(o, 'toString'); // true
// 如果这样做，那谁都没辙了
Object.prototype.hasOwnProperty = function() {
	return false;
};
</pre>

## for-in ##
1、仅迭代对象自身可枚举的属性，以及继承原型对象中可枚举的属性  
2、注意，属性按任意顺序枚举  
3、如果一个还没有枚举到的属性被删除了，那么这个属性就不会被枚举了  
4、如果枚举过程中添加了新的属性，则它可能（不）会被枚举（见具体实现）  
5、也可用于数组，但是不建议使用  

## 什么是可枚举属性？ ##
1、JS引擎内提供的公共类的属性，且未被子类复写的属性  
2、参见：https://developer.mozilla.org/en-US/docs/Enumerability_and_ownership_of_properties  

## 参考文档 ##
1、https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/in?redirectlocale=en-US&redirectslug=JavaScript%2FReference%2FOperators%2Fin  
2、https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/hasOwnProperty?redirectlocale=en-US&redirectslug=JavaScript%2FReference%2FGlobal_Objects%2FObject%2FhasOwnProperty  
3、https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...in?redirectlocale=en-US&redirectslug=JavaScript%2FReference%2FStatements%2Ffor...in  