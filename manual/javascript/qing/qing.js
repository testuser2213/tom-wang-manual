/**
 * 核心模块
 * 多库共存，多版本共存
 * window['qing_framework']请保留
 */
;(function(window, undefined) {
	var _$ = window.$, // 保存$
		qing = 1.0, // 版本
		qingNS = 'qing_framework', // 不同的版本这个不要改变
		namespace = window[qingNS];
	
	// 多版本共存
	// todo: 如果第一次加载jQuery或其他类库，第二次加载Qing的某个版本且不占用$，第三次再加载Qing，如何做到多版本共存
	if(typeof(namespace) !== 'function') {
		namespace = window[qingNS] = $;
		namespace.qingVersions = {length : 0}; // 保存当前加载的所有qing框架的版本号
	}
	
	var qingVersions = namespace.qingVersions;
	
	if(qingVersions.length) {
		// 当前版本不在版本库中
		if(!qingVersions[qing]) {
			namespace[qing] = $;
			++qingVersions.length;
			qingVersions[qing] = true;
		} else {
			// 已经加载过这个版本
			return;
		}
	} else {
		// 将当前版本加入到版本库中
		namespace[qing] = $;
		++qingVersions.length;
		qingVersions[qing] = true;
	}
	
	var doc = window.document,
		html = doc.documentElement,
		head = doc.head || doc.getElementsByTagName('head')[0],
		class2type = {
			"[object HTMLDocument]"   : "Document",
			"[object HTMLCollection]" : "NodeList",
			"[object StaticNodeList]" : "NodeList",
			"[object IXMLDOMNodeList]": "NodeList",
			"[object DOMWindow]"      : "Window"  ,
			"[object global]"         : "Window"  ,
			"null"                    : "Null"    ,
			"NaN"                     : "NaN"     ,
			"undefined"               : "Undefined"
		},
		toString = class2type.toString,
		slice = [].slice;
	
	mix($, {
		qing : qing, // 版本号
		doc : doc,
		html : html,
		head : head,
		mix : mix,
		noop : function() {}, // 空函数
		noConflict : function() {
		},
		getVersions : function() {
			// 获取已经加载的所有qing框架的版本
			return qingVersions;
		},
		hasVersion : function(v) {
			// 判断是否加载了指定版本的qing框架
			return qingVersions[v] ? true : false;
		}
	});
	
	/**
	 *
	 */
	function $(expr, context) {
	}
	
	/**
     * 糅杂，为一个对象添加更多成员
     * @param {Object} target 目标对象
     * @param {Object} source 属性包
	 * @param {Boolean} override 是否覆盖同名属性，默认为true
     * @return  {Object} 目标对象
     */
	function mix( target, source, override/*=true*/ ){
		// 第一个参数是目标对象，第二个参数及之后的参数是源对象，对后一个参数如果是布尔值，则指定源对象的属性是否覆盖目标对象的属性
		// 如果覆盖是true，则后面的源对象覆盖前面源对象的同名属性
        var args = slice.call( arguments ), key,
        ride = typeof args[args.length - 1] == "boolean" ? args.pop() : true;
        target = target || {};
        for(var i = 1; source = args[i++];){
            for ( key in source ) {
                if (ride || !(key in target)) {
                    target[ key ] = source[ key ];
                }
            }
        }
        return target;
    }
})(window);