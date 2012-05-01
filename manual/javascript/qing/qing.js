/**
 * 核心模块
 * 多库共存，多版本共存
 * window['qing_framework']请保留
 */
;(function(window, undefined) {
	var _$ = window.$, // 保存$
		qing = 1.0, // 版本
		debug = true, // 是否调试，发布后设置为false
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
	    w3c = doc.dispatchEvent, //w3c事件模型
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
		slice = [].slice,
		splice = [].splice,
		rword = /[^, ]+/g;
		
	"Boolean,Number,String,Function,Array,Date,RegExp,Window,Document,Arguments,NodeList".replace( rword, function( name ){
		class2type[ "[object " + name + "]" ] = name;
	});
	
	mix($, {
		qing : qing, // 版本号
		debug : debug,
		doc : doc,
		html : html,
		head : head,
		rword : rword,
		mix : mix,
		noop : function() {}, // 空函数
		/**
		 * 实现多库共存
		 * @param {String} newName 新的名字空间
		 */
		noConflict : function(newName) {
			window['$'] = _$;
			if(newName) {
				$.exports(newName);
			}
		},
		/**
		 * 将指定的版本导入到全局空间
		 * @param {String} name 命名空间
		 * @param {Float} v 版本号，默认是当前版本号
		 * @return
		 */
		exports : function(name, v) {
			window[name] = namespace[v || qing];
		},
		/**
		 * 获取当前加载的所有Qing版本
		 * @return {Object}
		 */
		getVersions : function() {
			// 获取已经加载的所有qing框架的版本
			return qingVersions;
		},
		/**
		 * 判断当前页面是否加载了指定版本的Qing
		 * @param {Float} 版本号
		 * @return {Boolean} 是否加载了指定版本的Qing
		 */
		hasVersion : function(v) {
			// 判断是否加载了指定版本的qing框架
			return qingVersions[v] ? true : false;
		},
		/**
		 * 获取某个指定版本的命名空间
		 * @param {Float} 版本号
		 * @return {Function} Qing框架命名空间
		 */
		getVersion : function(v) {
			return namespace[v];
		},
		/**
         * 用于取得数据的类型（一个参数的情况下）或判定数据的类型（两个参数的情况下）
         * @param {Any} obj 要检测的东西
         * @param {String} str 可选，要比较的类型
         * @return {String|Boolean}
         */
        type: function ( obj, str ){
			// obj !== obj的情况是NaN
            var result = class2type[ (obj == null || obj !== obj ) ? obj :  toString.call( obj ) ] || obj.nodeName || "#";
            if( result.charAt(0) === "#" ){//兼容旧式浏览器与处理个别情况,如window.opera
                //利用IE678 window == document为true,document == window竟然为false的神奇特性
                if( obj == obj.document && obj.document != obj ){
                    result = 'Window'; //返回构造器名字
                }else if( obj.nodeType === 9 ) {
                    result = 'Document';//返回构造器名字
                }else if( obj.callee ){
                    result = 'Arguments';//返回构造器名字
                }else if( isFinite( obj.length ) && obj.item ){
                    result = 'NodeList'; //处理节点集合
                }else{
                    result = toString.call( obj ).slice( 8, -1 );
                }
            }
            if( str ){
                return str === result;
            }
            return result;
        },
        /**
         * 生成键值统一的对象，用于高速化判定
         * @param {Array|String} array 如果是字符串，请用","或空格分开
         * @param {Number} val 可选，默认为1
         * @return {Object}
         */
        oneObject : function( array, val ){
            if( typeof array == "string" ){
                array = array.match( rword ) || [];
            }
            var result = {}, value = val !== undefined ? val :1;
            for(var i = 0, n = array.length; i < n; i++){
                result[ array[i] ] = value;
            }
            return result;
        },
        /**
         * 数组化
         * @param {ArrayLike} nodes 要处理的类数组对象
         * @param {Number} start 可选。要抽取的片断的起始下标。如果是负数，从后面取起
         * @param {Number} end  可选。规定从何处结束选取
         * @return {Array}
         */
        slice: function ( nodes, start, end ) {
            for(var i = 0, n = nodes.length, result = []; i < n; i++){
                result[i] = nodes[i];
            }
            if ( arguments.length > 1 ) {
                return result.slice( start , ( end || result.length ) );
            } else {
                return result;
            }
        },
        /**
         * 用于调试
         * @param {String} text 要打印的内容
         * @param {Boolean} force 强逼打印到页面上
         */
        log: function ( text, force ){
            if( force ){
                $.require( "ready", function(){
                    var div =  doc.createElement("div");
                    div.innerHTML = text +"";//确保为字符串
                    doc.body.appendChild(div)
                });
            }else if( window.console ){
                window.console.log( text );
            }
        },
		bind: w3c ? function( el, type, fn, phase ){
            el.addEventListener( type, fn, !!phase );
			// 如果绑定匿名函数，可以将该返回值用于unbind
            return fn;
        } : function( el, type, fn ){
            el.attachEvent( "on"+type, fn );
            return fn;
        },
        unbind: w3c ? function( el, type, fn, phase ){
            el.removeEventListener( type, fn || $.noop, !!phase );
        } : function( el, type, fn ){
            el.detachEvent( "on"+type, fn || $.noop );
        }
	});
	
	//domReady机制
    var readylist = deferred();
	
	//开始判定页面的加载情况
    if ( doc.readyState === "complete" ) {
        fireReady();
    }else {
        $.bind( doc, ( w3c ? "DOMContentLoaded" : "readystatechange" ), function(){
            if ( w3c || doc.readyState === "complete" ){
                fireReady();
            }
        });
        if( $.html.doScroll && self.eval === top.eval ){
            doScrollCheck();
        }
    }
    //https://developer.mozilla.org/en/DOM/window.onpopstate
    $.bind( window, "popstate", function(){
        $.exports('$');
    });
	
	// 导出到全局空间
	$.exports('$');
	
	/**
	 *
	 */
	function $(expr, context) {
		if($.type( expr,"Function" )) {
			// domReady
			readylist(expr);
		} else {
		}
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
	
	/**
	 * var list = deferred();
	 * list(fn1)(fn2)(fn3); //只有函数才会加入到队列中
	 * list.method = 'pop'; //可以定义处理方法，这里必须是Array拥有的方法，默认是shift
	 * list.complete = function() {}; //可以定义完成时回调，这个方法在fire调用后调用，默认是空函数
	 * list.fire(); //触发队列，所有加入队列的方法都执行后会调用complete方法。
	 */
    function deferred(){//一个简单的异步列队
        var list = [],self = function(fn){
            fn && fn.call && list.push( fn );
			// 编码技巧：函数返回自身
            return self;
        }
        self.method = "shift";
        self.fire = function( fn ){
            while( fn = list[ self.method ]() ){
                fn();
            }
            return list.length ? self : self.complete();
        }
        self.complete = $.noop;
        return self;
    }
	
	function fireReady(){
		// complete函数似乎不接收参数，参见deferred方法
        readylist.complete = function( fn ){
            $.type( fn, "Function") &&  fn();
        }
        readylist.fire();
        fireReady = $.noop;
    };
	
	function doScrollCheck() {
        try {
            $.html.doScroll( "left" );
            fireReady();
        } catch(e) {
            setTimeout( doScrollCheck, 1 );
        }
    };
})(window);