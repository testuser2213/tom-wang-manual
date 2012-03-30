/**
 * 核心模块
 * 多库共存，多版本共存
 */
;(function(window, undefined) {
	var _$ = window.$, // 保存$
		qing = 1.0, // 版本
		postfix = '',
		multiVersion = true; // 是否开启多版本共存
	
	// 多版本共存
	// todo: 如果第一次加载jQuery或其他类库，第二次加载Qing的某个版本且不占用$，第三次再加载Qing，如何做到多版本共存
	if(_$ && ('qing' in _$)) {
		if(multiVersion && _$.qing !== qing) {
			postfix = (qing + '').replace(".", "_");
			if(window['$' + postfix]) return; // 相同的版本已经加载过
		} else {
			return;
		}
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
})(window);