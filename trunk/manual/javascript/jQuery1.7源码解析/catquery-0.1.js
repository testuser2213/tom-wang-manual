;(function(window, undefined) {	
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
			// 避免和其他js库冲突
			// deep : bool,确定是否让出catQuery
			// newTag : string, 指定一个新的tag，类似$号
			noConflict : function(deep/*=false*/, newTag) {
				if(newTag) window[newTag] = window.$;
				window.$ = _$;
				if(deep) {
					window.catQuery = _catQuery;
				}
			},
			// 重新绑定fn中的this（执行o）
			// o为null时，则this指向Window
			bind : function(fn, o/*=Window*/) {
				return function() {
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
	
	// 将catQuery赋予全局对象及$
	window.catQuery = window.$ = catQuery;
})(window);