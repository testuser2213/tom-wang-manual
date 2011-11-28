;(function(window, undefined) {
	// 全局配置
	var _config = {
		'domain' : 'example.com'
	};
	var catQuery = (function() {
		var catQuery = function() {
		},
		_$ = window.$, // 记录$变量
		_catQuery = window.catQuery;
		
		catQuery.prototype = catQuery.fn = {
			constructor : catQuery
		};
		
		// extend方法用于将src中的属性扩展到dest
		// 该方法可用于扩展catQuery对象
		catQuery.extend = function(src/*={}*/, dest/*=catQuery*/, override/*=false*/) {
			src = src || {};
			dest = dest || catQuery;
			for(var i in src) {
				if(override || (!override && 'undefined' == typeof(dest[i]))) {
					dest[i] = src[i];
				}
			}
		}
		
		catQuery.extend({
			version : '0.1', // catquery的版本
			// 保存一些现有类型的原型方法
			protos : {
				slice : Array.prototype.slice,
				trim : String.prototype.trim,
				toString : Object.prototype.toString
			},
			// 避免和其他js库冲突
			// deep : bool,确定是否让出catQuery
			// newTag : string, 指定一个新的tag，类似$号
			noConflict : function(deep/*=false*/, newTag/*=null*/) {
				if(newTag) window[newTag] = window.$;
				window.$ = _$;
				if(deep) {
					window.catQuery = _catQuery;
				}
			},
			// 将catQuery的属性方法绑定到Window，这样可以直接调用
			toGlobal : function(override/*=false*/) {
				catQuery.extend(catQuery, window, override);
			},
			// 将参数转换为数组
			// 该方法如果作用于一个数组，可以实现复制这个数组（不再有引用关系）
			toArray : function(arg) {
				return catQuery.protos.slice.call(arg, 0);
			},
			// 重新绑定fn中的this（执行o）
			// o为null时，则this指向Window
			bind : function(fn, o/*=Window*/) {
				return function() {
					// 传递给apply的第二个参数只能是数组或Arguments对象。
					return fn.apply(o, arguments);
				}
			},
			// 仅针对ie6做处理
			adjustBehaviors : function() {
				if (!arguments.callee.adjusted) {
					try {
						document.execCommand('BackgroundImageCache', false, true);
					} catch(/*ignore*/e) {}
					arguments.callee.adjusted = true;
				}
			}
		});
		
		return catQuery;
	})();
	
	// 做一些初始化操作
	(function() {
		document.domain = _config['domain'];
		if(!window.Node) window.Node = {};
		catQuery.extend({
			ELEMENT_NODE:				1,
			ATTRIBUTE_NODE:				2,
			TEXT_NODE:					3,
			COMMENT_NODE:				8,
			DOCUMENT_NODE:				9,
			DOCUMENT_FRAGMENT_NODE:		11
		}, window.Node, false);
		
		// ie67不支持Event，ie8不支持Event的常量
		if(!window.Event) window.Event = {};
		catQuery.extend({
			CAPTURING_PHASE:			1,
			AT_TARGET:					2,
			BUBBLING_PHASE:				3
		}, window.Event, false);
		
		catQuery.adjustBehaviors();
		
		window['$GLOBALS'] = {};
	})();
	
	// 网络处理、ajax
	catQuery.extend({
		ajax : function() {
		}
	});
	
	// 事件处理
	catQuery.extend({
		ready : function() {
		}
	});
	
	catQuery.extend({
		// 获取对象的类型
		gettype : function(arg) {
			// 如果是Error对象，直接返回它的name值。
			if(arg instanceof Error) return (arg.name || '').toLowerCase();
		},
		// 检查参数是否为空
		empty : function(arg) {
			if(!arg) return true;
			// 字符串'0'也认为是空
			if(arg === '0') return true;
			// 空数组也认为是空
			if(catQuery.is_array(arg) && !arg.length) return true;
			// 空对象也认为是空
			if(catQuery.is_object(arg)) {
				for(var i in arg) {
					return false;
				}
				return true;
			}
			
			return false;
		},
		// 判断参数是不是对象
		is_object : function(arg) {
			return arg.constructor === Object;
		},
		// 判断参数是不是数组
		is_array : function(arg) {
			return arg.constructor === Array;
		},
		// 判断参数是不是布尔值
		is_bool : function(arg) {
			return arg.constructor === Boolean;
		},
		// 判断参数是不是null值
		is_null : function(arg) {
			return arg === null;
		},
		// 判断参数是不是数字
		// NaN也是数字
		is_numeric : function(arg, includeNaN/*=false*/) {
			return arg.constructor === Number && (includeNaN ? true : !isNaN(arg));
		},
		// 判断参数是不是字符串
		is_string : function(arg) {
			return arg.constructor === String;
		},
		// 判断参数是不是整型
		is_int : function(arg) {
			if(isNaN(arg)) return false;
			// 正、负无穷大是整数
			if(!isFinite(arg)) return true;
			return catQuery.is_numeric(arg) && arg === parseInt(arg + '');
		},
		is_integer : function(arg) {
			return catQuery.is_int(arg);
		},
		is_long : function(arg) {
			return catQuery.is_int(arg);
		},
		is_float : function(arg) {
			return catQuery.is_numeric(arg) && !catQuery.is_int(arg);
		},
		is_double : function(arg) {
			return catQuery.is_float(arg);
		},
		// 获取整数值，base指定进制
		intval : function(arg, base/*=10*/) {
			base = base || 10;
			return parseInt(arg, base);
		}
	});
	
	// 封装数组操作
	catQuery.extend({
		CASE_UPPER : 0,
		CASE_LOWER : 1,
		// 返回字符串键名全为小写或大写的数组/对象
		array_change_key_case : function(input, whatCase/*=catQuery.CASE_LOWER*/) {
			// 如果是数字则直接返回
			if(catQuery.is_array(input)) return catQuery.toArray(input);
			if(whatCase === undefined) whatCase = catQuery.CASE_LOWER;
			var method = (whatCase === catQuery.CASE_LOWER) ? String.prototype.toLowerCase : String.prototype.toUpperCase;
			var output = {};
			for(var i in input) {
				output[method.call(i)] = input[i];
			}
			
			return output;
		},
		// 将一个数组分割成多个
		array_chunk : function(input, size, preserve_keys/*=false*/) {
			function initItem() {
				var item;
				var isArr = catQuery.is_array(input);
				if(!preserve_keys) {
					item = [];
				} else {
					item = isArr ? [] : {};
				}
				return item;
			}
			var output = [];
			var item = initItem();
			var cnt = 0;
			
			for(var i in input) {
				item[preserve_keys ? i : cnt] = input[i];
				++cnt;
				if(cnt >= size) {
					output.push(item);
					item = initItem();
					cnt = 0;
				}
			}
			if(cnt) output.push(item);
			
			return output;
		}
	});
	
	// 将catQuery赋予全局对象及$
	window.catQuery = window.$ = catQuery;
})(window/*在其他的javascript实现中，把这里的window改成相应的全局对象即可*/);