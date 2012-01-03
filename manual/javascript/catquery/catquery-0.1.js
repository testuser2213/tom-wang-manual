/**
 * qing javascript library
 * @author tom.wang<tom.wang.sz@qq.com>
 * sizzle 1.5.1
 */
;(function(window, undefined) {
	// 全局配置
	var _config = {
		'name' : 'qing',  // 库的名字，这样方便更换
		'domain' : 'example.com',
		'version' : '0.1'
	};
	
	// 对ECMAScript5的支持
	(function() {
		// https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/indexOf
		// 从数组中找出searchElement元素第一次出现的索引（使用===运算符）。
		if (!Array.prototype.indexOf) {
			Array.prototype.indexOf = function (searchElement /*, fromIndex */ ) {
				"use strict";
				if (this == null) {
					throw new TypeError();
				}
				var t = Object(this);
				var len = t.length >>> 0;
				if (len === 0) {
					return -1;
				}
				var n = 0;
				if (arguments.length > 0) {
					n = Number(arguments[1]);
					if (n != n) { // shortcut for verifying if it's NaN
						n = 0;
					} else if (n != 0 && n != Infinity && n != -Infinity) {
						n = (n > 0 || -1) * Math.floor(Math.abs(n));
					}
				}
				if (n >= len) {
					return -1;
				}
				var k = n >= 0 ? n : Math.max(len - Math.abs(n), 0);
				for (; k < len; k++) {
					if (k in t && t[k] === searchElement) {
						return k;
					}
				}
				return -1;
			}
		}
		
		// https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/lastIndexOf
		// 在数组中找到searchElement最后一次出现的索引，使用===运算符。
		if (!Array.prototype.lastIndexOf) {
		  Array.prototype.lastIndexOf = function(searchElement /*, fromIndex*/) {
			"use strict";

			if (this == null)
			  throw new TypeError();

			var t = Object(this);
			var len = t.length >>> 0;
			if (len === 0)
			  return -1;

			var n = len;
			if (arguments.length > 1) {
			  n = Number(arguments[1]);
			  if (n != n)
				n = 0;
			  else if (n != 0 && n != (1 / 0) && n != -(1 / 0))
				n = (n > 0 || -1) * Math.floor(Math.abs(n));
			}

			var k = n >= 0
				  ? Math.min(n, len - 1)
				  : len - Math.abs(n);

			for (; k >= 0; k--) {
			  if (k in t && t[k] === searchElement)
				return k;
			}
			return -1;
		  };
		}
		
		// https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/every
		if (!Array.prototype.every)
		{
		  Array.prototype.every = function(fun /*, thisp */)
		  {
			"use strict";

			if (this == null)
			  throw new TypeError();

			var t = Object(this);
			var len = t.length >>> 0;
			if (typeof fun != "function")
			  throw new TypeError();

			var thisp = arguments[1];
			for (var i = 0; i < len; i++)
			{
			  if (i in t && !fun.call(thisp, t[i], i, t))
				return false;
			}

			return true;
		  };
		}
		
		// https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/filter
		if (!Array.prototype.filter)
		{
		  Array.prototype.filter = function(fun /*, thisp */)
		  {
			"use strict";

			if (this == null)
			  throw new TypeError();

			var t = Object(this);
			var len = t.length >>> 0;
			if (typeof fun != "function")
			  throw new TypeError();

			var res = [];
			var thisp = arguments[1];
			for (var i = 0; i < len; i++)
			{
			  if (i in t)
			  {
				var val = t[i]; // in case fun mutates this
				if (fun.call(thisp, val, i, t))
				  res.push(val);
			  }
			}

			return res;
		  };
		}
		
		// https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/forEach
		// Production steps of ECMA-262, Edition 5, 15.4.4.18
		// Reference: http://es5.github.com/#x15.4.4.18
		if ( !Array.prototype.forEach ) {

		  Array.prototype.forEach = function( callback, thisArg ) {

			var T, k;

			if ( this == null ) {
			  throw new TypeError( " this is null or not defined" );
			}

			// 1. Let O be the result of calling ToObject passing the |this| value as the argument.
			var O = Object(this);

			// 2. Let lenValue be the result of calling the Get internal method of O with the argument "length".
			// 3. Let len be ToUint32(lenValue).
			var len = O.length >>> 0; // Hack to convert O.length to a UInt32

			// 4. If IsCallable(callback) is false, throw a TypeError exception.
			// See: http://es5.github.com/#x9.11
			if ( {}.toString.call(callback) != "[object Function]" ) {
			  throw new TypeError( callback + " is not a function" );
			}

			// 5. If thisArg was supplied, let T be thisArg; else let T be undefined.
			if ( thisArg ) {
			  T = thisArg;
			}

			// 6. Let k be 0
			k = 0;

			// 7. Repeat, while k < len
			while( k < len ) {

			  var kValue;

			  // a. Let Pk be ToString(k).
			  //   This is implicit for LHS operands of the in operator
			  // b. Let kPresent be the result of calling the HasProperty internal method of O with argument Pk.
			  //   This step can be combined with c
			  // c. If kPresent is true, then
			  if ( k in O ) {

				// i. Let kValue be the result of calling the Get internal method of O with argument Pk.
				kValue = O[ k ];

				// ii. Call the Call internal method of callback with T as the this value and
				// argument list containing kValue, k, and O.
				callback.call( T, kValue, k, O );
			  }
			  // d. Increase k by 1.
			  k++;
			}
			// 8. return undefined
		  };
		}
		
		// https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/map
		// Production steps of ECMA-262, Edition 5, 15.4.4.19
		// Reference: http://es5.github.com/#x15.4.4.19
		if (!Array.prototype.map) {
		  Array.prototype.map = function(callback, thisArg) {

			var T, A, k;

			if (this == null) {
			  throw new TypeError(" this is null or not defined");
			}

			// 1. Let O be the result of calling ToObject passing the |this| value as the argument.
			var O = Object(this);

			// 2. Let lenValue be the result of calling the Get internal method of O with the argument "length".
			// 3. Let len be ToUint32(lenValue).
			var len = O.length >>> 0;

			// 4. If IsCallable(callback) is false, throw a TypeError exception.
			// See: http://es5.github.com/#x9.11
			if ({}.toString.call(callback) != "[object Function]") {
			  throw new TypeError(callback + " is not a function");
			}

			// 5. If thisArg was supplied, let T be thisArg; else let T be undefined.
			if (thisArg) {
			  T = thisArg;
			}

			// 6. Let A be a new array created as if by the expression new Array(len) where Array is
			// the standard built-in constructor with that name and len is the value of len.
			A = new Array(len);

			// 7. Let k be 0
			k = 0;

			// 8. Repeat, while k < len
			while(k < len) {

			  var kValue, mappedValue;

			  // a. Let Pk be ToString(k).
			  //   This is implicit for LHS operands of the in operator
			  // b. Let kPresent be the result of calling the HasProperty internal method of O with argument Pk.
			  //   This step can be combined with c
			  // c. If kPresent is true, then
			  if (k in O) {

				// i. Let kValue be the result of calling the Get internal method of O with argument Pk.
				kValue = O[ k ];

				// ii. Let mappedValue be the result of calling the Call internal method of callback
				// with T as the this value and argument list containing kValue, k, and O.
				mappedValue = callback.call(T, kValue, k, O);

				// iii. Call the DefineOwnProperty internal method of A with arguments
				// Pk, Property Descriptor {Value: mappedValue, Writable: true, Enumerable: true, Configurable: true},
				// and false.

				// In browsers that support Object.defineProperty, use the following:
				// Object.defineProperty(A, Pk, { value: mappedValue, writable: true, enumerable: true, configurable: true });

				// For best browser support, use the following:
				A[ k ] = mappedValue;
			  }
			  // d. Increase k by 1.
			  k++;
			}

			// 9. return A
			return A;
		  };      
		}
		
		// https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/some
		if (!Array.prototype.some)
		{
		  Array.prototype.some = function(fun /*, thisp */)
		  {
			"use strict";

			if (this == null)
			  throw new TypeError();

			var t = Object(this);
			var len = t.length >>> 0;
			if (typeof fun != "function")
			  throw new TypeError();

			var thisp = arguments[1];
			for (var i = 0; i < len; i++)
			{
			  if (i in t && fun.call(thisp, t[i], i, t))
				return true;
			}

			return false;
		  };
		}
	})();
	
	var lib = (function() {
		var lib = function() {
		},
		_$ = window.$, // 记录$变量
		_lib = window[_config['name']];
		
		lib.prototype = lib.fn = {
			constructor : lib
		};
		
		// extend方法用于将src中的属性扩展到dest
		// 该方法可用于扩展lib对象
		lib.extend = function(src/*={}*/, dest/*=lib*/, override/*=false*/) {
			src = src || {};
			dest = dest || this;
			for(var i in src) {
				if(override || (!override && 'undefined' == typeof(dest[i]))) {
					dest[i] = src[i];
				}
			}
		}
		
		// extendFn方法用于将src中的属性扩展到lib.fn中
		lib.extendFn = function(src) {
			this.extend(src, this.fn);
		}
		
		lib.extend({
			version : _config['version'], // lib的版本
			// 保存一些现有类型的原型方法
			protos : {
				slice : Array.prototype.slice,
				trim : String.prototype.trim,
				toString : Object.prototype.toString
			},
			// 避免和其他js库冲突
			// deep : bool,确定是否让出lib
			// newTag : string, 指定一个新的tag，类似$号
			noConflict : function(deep/*=false*/, newTag/*=null*/) {
				if(newTag) window[newTag] = window.$;
				window.$ = _$;
				if(deep) {
					window[_config['name']] = _lib;
				}
			},
			// 将lib的属性方法绑定到Window，这样可以直接调用
			toGlobal : function(override/*=false*/) {
				this.extend(this, window, override);
			},
			// 将参数转换为数组
			// 该方法如果作用于一个数组，可以实现复制这个数组（不再有引用关系）
			toArray : function(arg) {
				return this.protos.slice.call(arg, 0);
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
		
		return lib;
	})();
	
	// 做一些初始化操作
	(function() {
		if(_config['domain']) document.domain = _config['domain'];
		if(!window.Node) window.Node = {};
		lib.extend({
			ELEMENT_NODE:				1,
			ATTRIBUTE_NODE:				2,
			TEXT_NODE:					3,
			COMMENT_NODE:				8,
			DOCUMENT_NODE:				9,
			DOCUMENT_FRAGMENT_NODE:		11
		}, window.Node, false);
		
		// ie67不支持Event，ie8不支持Event的常量
		if(!window.Event) window.Event = {};
		lib.extend({
			CAPTURING_PHASE:			1,
			AT_TARGET:					2,
			BUBBLING_PHASE:				3
		}, window.Event, false);
		
		lib.adjustBehaviors();
	})();
	
	// 初始化$_GET、$_CLIENT
	(function() {
		// 当发生服务器端重定向时，document.URL指向当前装载的url。
		var matches = document.URL.match(/^(?:([^\:\/\?#]+)\:)?(?:\/\/([^\/\?\:#]*))?(?:\:(\d+))?([^\?#]*)(?:\?([^#]*))?(?:#(.*))?$/i);
		var isHttps = matches[1].toLowerCase() == 'https';
		window['$_GET'] = {};
		window['$_CLIENT'] = {};
		var browser = (function() {
			//safari:Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN) AppleWebKit/533.21.1 (KHTML, like Gecko) Version/5.0.5 Safari/533.21.1
			//chrome:Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.220 Safari/535.1
			//opera:Opera/9.80 (Windows NT 5.1; U; Edition Next; zh-cn) Presto/2.8.158 Version/11.50
			//msie:Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.1; .NET4.0C; .NET4.0E; InfoPath.2)
			//firefox:Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2.24) Gecko/20111103 Firefox/3.6.24
			var ua = navigator.userAgent.toLowerCase();
			var rmsie = /(msie) ([\w.]+)/,
			ropera = /(opera)(?:.*version)?[ \/]([\w.]+)/,
			rchrome=/(chrome)[ \/]([\w.]+)/,
			rfirefox=/(firefox)[ \/]([\w.]+)/,
			rwebkit = /(webkit)[ \/]([\w.]+)/;
			return ua.match(rmsie) || ua.match(rfirefox) || ua.match(rchrome) || ua.match(rwebkit) || [];
		})();
		lib.extend({
			'URL' : matches[0] || '',
			'PROTOCOL' : matches[1] || 'http',
			'HOST' : matches[2],
			'PORT' : matches[3] ? matches[3] : (isHttps ? 443 : 80),
			'PATH' : matches[4] || '',
			'QUERY_STRING' : matches[5] || '',
			'HTTPS' : isHttps,
			'ANCHOR' : matches[6] || '',
			'USER_AGENT' : browser[1] ? (browser[1] == 'webkit' ? 'safari' : browser[1]) : '',
			'USER_AGENT_VERSION' : parseInt(browser[2] || 0)
		}, window['$_CLIENT']);
		
		// 设置$_GET
		(function() {
			if(!matches[5]) return;
			var pairs = matches[5].split('&');
			for(var i in pairs) {
				var keyVal = pairs[i].split('=');
				window['$_GET'][keyVal[0]] = decodeURIComponent(keyVal[1]);
			}
		})();
	})();
	
	lib.extend({
		EventProxy : (function () {
			/**
			 * @description EventProxy. A module that can be mixed in to *any object* in order to provide it with
			 * custom events. You may `bind` or `unbind` a callback function to an event;
			 * `trigger`-ing an event fires all callbacks in succession.
			 * @constructor
			 * @name EventProxy
			 * @class EventProxy. An implementation of task/event based asynchronous pattern.
			 * @example
			 * var render = function (template, resources) {};
			 * var proxy = new EventProxy();
			 * proxy.assign("template", "l10n", render);
			 * proxy.trigger("template", template);
			 * proxy.trigger("l10n", resources);
			 */
			var EventProxy = function () {
				this._callbacks = {};
				this._fired = {};
			};

			/**
			 * @description Bind an event, specified by a string name, `ev`, to a `callback` function.
			 * Passing `"all"` will bind the callback to all events fired.
			 * @memberOf EventProxy#
			 * @param {string} eventName Event name.
			 * @param {function} callback Callback.
			 */
			 // tom.wang：为了可以remove，这里的callback不能使用匿名函数
			EventProxy.prototype.addListener = function (ev, callback) {
				this._callbacks = this._callbacks || {};
				var list = this._callbacks[ev] || (this._callbacks[ev] = []);
				list.push(callback);
				return this;
			};
			EventProxy.prototype.bind = EventProxy.prototype.addListener;
			EventProxy.prototype.on = EventProxy.prototype.addListener;

			/**
			 * @description Remove one or many callbacks. If `callback` is null, removes all
			 * callbacks for the event. If `ev` is null, removes all bound callbacks
			 * for all events.
			 * @memberOf EventProxy#
			 * @param {string} eventName Event name.
			 * @param {function} callback Callback.
			 */
			EventProxy.prototype.removeListener = function (ev, callback) {
				var calls, i, l;
				if (!ev) {
					this._callbacks = {};
				} else if (calls = this._callbacks) {
					if (!callback) {
						calls[ev] = [];
					} else {
						var list = calls[ev];
						if (!list) {
							return this;
						}
						l = list.length;
						for (i = 0; i < l; i++) {
							if (callback === list[i]) {
								list[i] = null;
								break;
							}
						}
					}
				}
				return this;
			};
			EventProxy.prototype.unbind = EventProxy.prototype.removeListener;

			/**
			 * @description Remove all listeners.
			 * It equals unbind(); Just add this API for as same as Event.Emitter.
			 * @memberOf EventProxy#
			 * @param {string} event Event name.
			 */
			EventProxy.prototype.removeAllListeners = function (event) {
				return this.unbind(event);
			};

			/**
			 * @description Trigger an event, firing all bound callbacks. Callbacks are passed the
			 * same arguments as `trigger` is, apart from the event name.
			 * Listening for `"all"` passes the true event name as the first argument.
			 * @param {string} eventName Event name.
			 * @param {mix} data Pass in data. 
			 */
			 // tom.wang：data是一个数组，第一个元素是回调的第一个参数，依此类推
			 // callback的this指向EventProxy
			EventProxy.prototype.trigger = function (eventName, data) {
				var list, calls, ev, callback, args, i, l;
				var both = 2;
				if (!(calls = this._callbacks)) {
					return this;
				}
				while (both--) {
					ev = both ? eventName : 'all';
					if (list = calls[ev]) {
						for (i = 0, l = list.length; i < l; i++) {
							if (!(callback = list[i])) {
								list.splice(i, 1); i--; l--;
							} else {
								args = both ? Array.prototype.slice.call(arguments, 1) : arguments;
								callback.apply(this, args);
							}
						}
					}
				}
				return this;
			};
			EventProxy.prototype.emit = EventProxy.prototype.trigger;
			EventProxy.prototype.fire = EventProxy.prototype.trigger;

			/**
			 * @description Bind an event like the bind method, but will remove the listener after it was fired.
			 * @param {string} ev Event name.
			 * @param {function} callback Callback.
			 */
			EventProxy.prototype.once = function (ev, callback) {
				var self = this,
					wrapper = function () {
						callback.apply(self, arguments);
						self.unbind(ev, wrapper);
					};
				this.bind(ev, wrapper);
				return this;
			};
			
			/**
			 * @description Bind an event, and trigger it immediately.
			 * @param {string} ev Event name.
			 * @param {function} callback Callback.
			 * @param {mix} data The data that will be passed to calback as arguments.
			 */
			EventProxy.prototype.immediate = function (ev, callback, data) {
				this.bind(ev, callback);
				// this.trigger(ev, data);
				// tom.wang modify @ 2011-12-02
				var args = [ev].concat(Array.prototype.slice.call(arguments, 2));
				this.trigger.apply(this, args);
				return this;
			};

			var _assign = function (eventname1, eventname2, cb, once) {
				var proxy = this, length, index = 0, argsLength = arguments.length,
					bind, _all,
					callback, events, isOnce, times = 0, flag = {};

				// Check the arguments length.
				if (argsLength < 3) {
					return this;
				}

				events = [].slice.apply(arguments, [0, argsLength - 2]);
				callback = arguments[argsLength - 2];
				isOnce = arguments[argsLength - 1];

				// Check the callback type.
				if (typeof callback !== "function") {
					return this;
				}

				length = events.length;
				bind = function (key) {
					var method = isOnce ? "once" : "bind";
					proxy[method](key, function (data) {
						proxy._fired[key] = proxy._fired[key] || {};
						// proxy._fired[key].data = data;
						// tom.wang modify @ 2011-12-02
						proxy._fired[key].data = Array.prototype.slice.call(arguments, 0);
						if (!flag[key]) {
							flag[key] = true;
							times++;
						}
					});
				};

				for (index = 0; index < length; index++) {
					bind(events[index]);
				}

				_all = function () {
					if (times < length) {
						return;
					}
					var data = [];
					for (index = 0; index < length; index++) {
						data.push(proxy._fired[events[index]].data);
					}
					if (isOnce) {
						proxy.unbind("all", _all);
					}
					// callback.apply(null, data);
					// tom.wang modify @ 2011-12-02
					callback.apply(proxy, data);
				};
				proxy.bind("all", _all);
			};

			/**
			 * @description Assign some events, after all events were fired, the callback will be executed once.
			 * @param {string} eventName1 First event name.
			 * @param {string} eventName2 Second event name.
			 * @param {function} callback Callback, that will be called after predefined events were fired.
			 */
			EventProxy.prototype.all = function (eventname1, eventname2, cb) {
				var args = [].slice.call(arguments);
				args.push(true);
				_assign.apply(this, args);
				return this;
			};
			EventProxy.prototype.assign = EventProxy.prototype.all;

			/**
			 * @description Assign some events, after all events were fired, the callback will be executed first time.
			 * then any event that predefined be fired again, the callback will executed with the newest data.
			 * @memberOf EventProxy#
			 * @param {string} eventName1 First event name.
			 * @param {string} eventName2 Second event name.
			 * @param {function} callback Callback, that will be called after predefined events were fired.
			 */
			EventProxy.prototype.tail = function () {
				var args = [].slice.call(arguments);
				args.push(false);
				_assign.apply(this, args);
				return this;
			};
			EventProxy.prototype.assignAll = EventProxy.prototype.tail;
			EventProxy.prototype.assignAlways = EventProxy.prototype.tail;

			/**
			 * @description The callback will be executed after the event be fired N times.
			 * @memberOf EventProxy#
			 * @param {string} eventName Event name.
			 * @param {number} times N times.
			 * @param {function} callback Callback, that will be called after event was fired N times.
			 */
			EventProxy.prototype.after = function (eventName, times, callback) {
				var proxy = this,
					firedData = [],
					all;
				all = function (name, data) {
					if (name === eventName) {
						times--;
						firedData.push(data);
						if (times < 1) {
							proxy.unbind("all", all);
							// callback.apply(null, [firedData]);
							// tom.wang modify @ 2011-12-02
							callback.apply(proxy, Array.prototype.slice.call(arguments, 1));
						}
					}
				};
				proxy.bind("all", all);
				return this;
			};

			/**
			 * @description The callback will be executed after any registered event was fired. It only executed once.
			 * @memberOf EventProxy#
			 * @param {string} eventName1 Event name.
			 * @param {string} eventName2 Event name.
			 * @param {function} callback The callback will get a map that has data and eventName attributes.
			 */
			EventProxy.prototype.any = function () {
				var proxy = this,
					index, _bind,
					len = arguments.length,
					callback = arguments[len - 1],
					events = [].slice.apply(arguments, [0, len - 1]),
					count = events.length,
					_eventName = events.join("_");

				proxy.once(_eventName, callback);

				_bind = function (key) {
					proxy.bind(key, function (data) {
						// proxy.trigger(_eventName, {"data": data, eventName: key});
						// tom.wang modify @ 2011-12-02
						proxy.trigger(_eventName, {"data": Array.prototype.slice.call(arguments, 0), eventName: key});
					});
				};

				for (index = 0; index < count; index++) {
					_bind(events[index]);
				}
			};

			/**
			 * @description The callback will be executed when the evnet name not equals with assigned evnet.
			 * @memberOf EventProxy#
			 * @param {string} eventName Event name.
			 * @param {function} callback Callback.
			 */
			EventProxy.prototype.not = function (eventName, callback) {
				var proxy = this;
				proxy.bind("all", function (name, data) {
					if (name !== eventName) {
						// callback(data);
						// tom.wang modify @ 2011-12-02
						var args = Array.prototype.slice.call(arguments, 1);
						callback.apply(this, args);
					}
				});
			};

			// Event proxy can be used in browser and Nodejs both.
			/*if (typeof exports !== "undefined") {
				exports.EventProxy = EventProxy;
			} else {
				this.EventProxy = EventProxy;
			}*/
			return EventProxy;
		})()
	});
	
	// 网络处理、ajax
	lib.extend({
		ajax : function() {
		}
	});
	
	// 事件处理
	lib.extend({
		readyList : [],
		DOMContentLoaded : function() {
			while(this.readyList.length) {
				this.readyList.splice(0, 1)[0]();
			}
		},
		ready : function(fn/*, fn1, fn2, ...*/) {
			var self = this;
			if(document.readyState === "complete") {
				return;
			}
			for (var i = 0, j = arguments.length; i < j; ++i) {
				if(this.gettype(arguments[i]) == 'function') this.readyList.push(arguments[i]);
			}
			if(!arguments.callee.loaded) {
				if(document.addEventListener) {
					document.addEventListener("DOMContentLoaded", function() {
						document.removeEventListener("DOMContentLoaded", arguments.callee, false);
						self.DOMContentLoaded();
					}, false);
				} else if(document.attachEvent) {
					document.attachEvent("onreadystatechange", function() {
						if(document.readyState === "complete") {
							document.detachEvent("onreadystatechange", arguments.callee);
							self.DOMContentLoaded();
						}
						if(document.documentElement.doScroll && window == window.top) {
							(function() {
								try {
									document.documentElement.doScroll("left");
								} catch(e) {
									setTimeout(arguments.callee, 0);
									return;
								}
								self.DOMContentLoaded();
							})();
						}
					});
				}
				arguments.callee.loaded = true;
			}
		}
	});
	
	lib.extend({
		// 获取对象的类型
		gettype : function(arg) {
			// 如果是Error对象，直接返回它的name值。
			if(arg instanceof Error) return (arg.name || '').toLowerCase();
			/*jQuery.each("Boolean Number String Function Array Date RegExp Object".split(" "), function(i, name) {
				class2type[ "[object " + name + "]" ] = name.toLowerCase();
			});*/
			var class2type = {
				'[object Boolean]' : 'boolean',
				'[object Number]' : 'number',
				'[object String]' : 'string',
				'[object Function]' : 'function',
				'[object Array]' : 'array',
				'[object Date]' : 'date',
				'[object RegExp]' : 'regExp',
				'[object Object]' : 'object'
			};
			return arg == null ? String(arg) : class2type[this.protos.toString.call(arg)] || "object";
		},
		// 检查参数是否为空
		empty : function(arg) {
			if(!arg) return true;
			// 字符串'0'也认为是空
			if(arg === '0') return true;
			// 空数组也认为是空
			if(this.is_array(arg) && !arg.length) return true;
			// 空对象也认为是空
			if(this.is_object(arg)) {
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
			return this.is_numeric(arg) && arg === parseInt(arg + '');
		},
		is_integer : function(arg) {
			return this.is_int(arg);
		},
		is_long : function(arg) {
			return this.is_int(arg);
		},
		is_float : function(arg) {
			return this.is_numeric(arg) && !this.is_int(arg);
		},
		is_double : function(arg) {
			return this.is_float(arg);
		},
		// 获取整数值，base指定进制
		intval : function(arg, base/*=10*/) {
			base = base || 10;
			return parseInt(arg, base);
		}
	});
	
	// 封装数组操作
	lib.extend({
		CASE_UPPER : 0,
		CASE_LOWER : 1,
		// 返回字符串键名全为小写或大写的数组/对象
		array_change_key_case : function(input, whatCase/*=lib.CASE_LOWER*/) {
			// 如果是数字则直接返回
			if(this.is_array(input)) return this.toArray(input);
			if(whatCase === undefined) whatCase = this.CASE_LOWER;
			var method = (whatCase === this.CASE_LOWER) ? String.prototype.toLowerCase : String.prototype.toUpperCase;
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
				var isArr = this.is_array(input);
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
		},
		// 创建一个数组，用一个数组的值作为其键名，另一个数组的值作为其值
		array_combine : function(keys, values) {
			// 如果两个数组的单元数不同或者数组为空时返回 FALSE。
			if(!keys.length || !values.length || (keys.length != values.length)) return false;
			var output = {};
			for(var i = 0, j = keys.length; i < j; ++i) {
				output[keys[i]] = values[i];
			}
			
			return output;
		},
		// 统计数组中所有的值出现的次数
		array_count_values : function(input) {
			var output = {};
			for(var i in input) {
				if(output[input[i]]) ++output[input[i]];
				else output[input[i]] = 1;
			}
			
			return output;
		}
	});
	
	/*!
	 * Sizzle CSS Selector Engine
	 *  Copyright 2011, The Dojo Foundation
	 *  Released under the MIT, BSD, and GPL Licenses.
	 *  More information: http://sizzlejs.com/
	 */
	lib.extend({
		sizzle : (function(){

		var chunker = /((?:\((?:\([^()]+\)|[^()]+)+\)|\[(?:\[[^\[\]]*\]|['"][^'"]*['"]|[^\[\]'"]+)+\]|\\.|[^ >+~,(\[\\]+)+|[>+~])(\s*,\s*)?((?:.|\r|\n)*)/g,
			expando = "sizcache" + (Math.random() + '').replace('.', ''),
			done = 0,
			toString = Object.prototype.toString,
			hasDuplicate = false,
			baseHasDuplicate = true,
			rBackslash = /\\/g,
			rReturn = /\r\n/g,
			rNonWord = /\W/;

		// Here we check if the JavaScript engine is using some sort of
		// optimization where it does not always call our comparision
		// function. If that is the case, discard the hasDuplicate value.
		//   Thus far that includes Google Chrome.
		[0, 0].sort(function() {
			baseHasDuplicate = false;
			return 0;
		});

		var Sizzle = function( selector, context, results, seed ) {
			results = results || [];
			context = context || document;

			var origContext = context;

			if ( context.nodeType !== 1 && context.nodeType !== 9 ) {
				return [];
			}

			if ( !selector || typeof selector !== "string" ) {
				return results;
			}

			var m, set, checkSet, extra, ret, cur, pop, i,
				prune = true,
				contextXML = Sizzle.isXML( context ),
				parts = [],
				soFar = selector;

			// Reset the position of the chunker regexp (start from head)
			do {
				chunker.exec( "" );
				m = chunker.exec( soFar );

				if ( m ) {
					soFar = m[3];

					parts.push( m[1] );

					if ( m[2] ) {
						extra = m[3];
						break;
					}
				}
			} while ( m );

			if ( parts.length > 1 && origPOS.exec( selector ) ) {

				if ( parts.length === 2 && Expr.relative[ parts[0] ] ) {
					set = posProcess( parts[0] + parts[1], context, seed );

				} else {
					set = Expr.relative[ parts[0] ] ?
						[ context ] :
						Sizzle( parts.shift(), context );

					while ( parts.length ) {
						selector = parts.shift();

						if ( Expr.relative[ selector ] ) {
							selector += parts.shift();
						}

						set = posProcess( selector, set, seed );
					}
				}

			} else {
				// Take a shortcut and set the context if the root selector is an ID
				// (but not if it'll be faster if the inner selector is an ID)
				if ( !seed && parts.length > 1 && context.nodeType === 9 && !contextXML &&
						Expr.match.ID.test(parts[0]) && !Expr.match.ID.test(parts[parts.length - 1]) ) {

					ret = Sizzle.find( parts.shift(), context, contextXML );
					context = ret.expr ?
						Sizzle.filter( ret.expr, ret.set )[0] :
						ret.set[0];
				}

				if ( context ) {
					ret = seed ?
						{ expr: parts.pop(), set: makeArray(seed) } :
						Sizzle.find( parts.pop(), parts.length === 1 && (parts[0] === "~" || parts[0] === "+") && context.parentNode ? context.parentNode : context, contextXML );

					set = ret.expr ?
						Sizzle.filter( ret.expr, ret.set ) :
						ret.set;

					if ( parts.length > 0 ) {
						checkSet = makeArray( set );

					} else {
						prune = false;
					}

					while ( parts.length ) {
						cur = parts.pop();
						pop = cur;

						if ( !Expr.relative[ cur ] ) {
							cur = "";
						} else {
							pop = parts.pop();
						}

						if ( pop == null ) {
							pop = context;
						}

						Expr.relative[ cur ]( checkSet, pop, contextXML );
					}

				} else {
					checkSet = parts = [];
				}
			}

			if ( !checkSet ) {
				checkSet = set;
			}

			if ( !checkSet ) {
				Sizzle.error( cur || selector );
			}

			if ( toString.call(checkSet) === "[object Array]" ) {
				if ( !prune ) {
					results.push.apply( results, checkSet );

				} else if ( context && context.nodeType === 1 ) {
					for ( i = 0; checkSet[i] != null; i++ ) {
						if ( checkSet[i] && (checkSet[i] === true || checkSet[i].nodeType === 1 && Sizzle.contains(context, checkSet[i])) ) {
							results.push( set[i] );
						}
					}

				} else {
					for ( i = 0; checkSet[i] != null; i++ ) {
						if ( checkSet[i] && checkSet[i].nodeType === 1 ) {
							results.push( set[i] );
						}
					}
				}

			} else {
				makeArray( checkSet, results );
			}

			if ( extra ) {
				Sizzle( extra, origContext, results, seed );
				Sizzle.uniqueSort( results );
			}

			return results;
		};

		Sizzle.uniqueSort = function( results ) {
			if ( sortOrder ) {
				hasDuplicate = baseHasDuplicate;
				results.sort( sortOrder );

				if ( hasDuplicate ) {
					for ( var i = 1; i < results.length; i++ ) {
						if ( results[i] === results[ i - 1 ] ) {
							results.splice( i--, 1 );
						}
					}
				}
			}

			return results;
		};

		Sizzle.matches = function( expr, set ) {
			return Sizzle( expr, null, null, set );
		};

		Sizzle.matchesSelector = function( node, expr ) {
			return Sizzle( expr, null, null, [node] ).length > 0;
		};

		Sizzle.find = function( expr, context, isXML ) {
			var set, i, len, match, type, left;

			if ( !expr ) {
				return [];
			}

			for ( i = 0, len = Expr.order.length; i < len; i++ ) {
				type = Expr.order[i];

				if ( (match = Expr.leftMatch[ type ].exec( expr )) ) {
					left = match[1];
					match.splice( 1, 1 );

					if ( left.substr( left.length - 1 ) !== "\\" ) {
						match[1] = (match[1] || "").replace( rBackslash, "" );
						set = Expr.find[ type ]( match, context, isXML );

						if ( set != null ) {
							expr = expr.replace( Expr.match[ type ], "" );
							break;
						}
					}
				}
			}

			if ( !set ) {
				set = typeof context.getElementsByTagName !== "undefined" ?
					context.getElementsByTagName( "*" ) :
					[];
			}

			return { set: set, expr: expr };
		};

		Sizzle.filter = function( expr, set, inplace, not ) {
			var match, anyFound,
				type, found, item, filter, left,
				i, pass,
				old = expr,
				result = [],
				curLoop = set,
				isXMLFilter = set && set[0] && Sizzle.isXML( set[0] );

			while ( expr && set.length ) {
				for ( type in Expr.filter ) {
					if ( (match = Expr.leftMatch[ type ].exec( expr )) != null && match[2] ) {
						filter = Expr.filter[ type ];
						left = match[1];

						anyFound = false;

						match.splice(1,1);

						if ( left.substr( left.length - 1 ) === "\\" ) {
							continue;
						}

						if ( curLoop === result ) {
							result = [];
						}

						if ( Expr.preFilter[ type ] ) {
							match = Expr.preFilter[ type ]( match, curLoop, inplace, result, not, isXMLFilter );

							if ( !match ) {
								anyFound = found = true;

							} else if ( match === true ) {
								continue;
							}
						}

						if ( match ) {
							for ( i = 0; (item = curLoop[i]) != null; i++ ) {
								if ( item ) {
									found = filter( item, match, i, curLoop );
									pass = not ^ found;

									if ( inplace && found != null ) {
										if ( pass ) {
											anyFound = true;

										} else {
											curLoop[i] = false;
										}

									} else if ( pass ) {
										result.push( item );
										anyFound = true;
									}
								}
							}
						}

						if ( found !== undefined ) {
							if ( !inplace ) {
								curLoop = result;
							}

							expr = expr.replace( Expr.match[ type ], "" );

							if ( !anyFound ) {
								return [];
							}

							break;
						}
					}
				}

				// Improper expression
				if ( expr === old ) {
					if ( anyFound == null ) {
						Sizzle.error( expr );

					} else {
						break;
					}
				}

				old = expr;
			}

			return curLoop;
		};

		Sizzle.error = function( msg ) {
			throw new Error( "Syntax error, unrecognized expression: " + msg );
		};

		/**
		 * Utility function for retreiving the text value of an array of DOM nodes
		 * @param {Array|Element} elem
		 */
		var getText = Sizzle.getText = function( elem ) {
			var i, node,
				nodeType = elem.nodeType,
				ret = "";

			if ( nodeType ) {
				if ( nodeType === 1 || nodeType === 9 ) {
					// Use textContent || innerText for elements
					if ( typeof elem.textContent === 'string' ) {
						return elem.textContent;
					} else if ( typeof elem.innerText === 'string' ) {
						// Replace IE's carriage returns
						return elem.innerText.replace( rReturn, '' );
					} else {
						// Traverse it's children
						for ( elem = elem.firstChild; elem; elem = elem.nextSibling) {
							ret += getText( elem );
						}
					}
				} else if ( nodeType === 3 || nodeType === 4 ) {
					return elem.nodeValue;
				}
			} else {

				// If no nodeType, this is expected to be an array
				for ( i = 0; (node = elem[i]); i++ ) {
					// Do not traverse comment nodes
					if ( node.nodeType !== 8 ) {
						ret += getText( node );
					}
				}
			}
			return ret;
		};

		var Expr = Sizzle.selectors = {
			order: [ "ID", "NAME", "TAG" ],

			match: {
				ID: /#((?:[\w\u00c0-\uFFFF\-]|\\.)+)/,
				CLASS: /\.((?:[\w\u00c0-\uFFFF\-]|\\.)+)/,
				NAME: /\[name=['"]*((?:[\w\u00c0-\uFFFF\-]|\\.)+)['"]*\]/,
				ATTR: /\[\s*((?:[\w\u00c0-\uFFFF\-]|\\.)+)\s*(?:(\S?=)\s*(?:(['"])(.*?)\3|(#?(?:[\w\u00c0-\uFFFF\-]|\\.)*)|)|)\s*\]/,
				TAG: /^((?:[\w\u00c0-\uFFFF\*\-]|\\.)+)/,
				CHILD: /:(only|nth|last|first)-child(?:\(\s*(even|odd|(?:[+\-]?\d+|(?:[+\-]?\d*)?n\s*(?:[+\-]\s*\d+)?))\s*\))?/,
				POS: /:(nth|eq|gt|lt|first|last|even|odd)(?:\((\d*)\))?(?=[^\-]|$)/,
				PSEUDO: /:((?:[\w\u00c0-\uFFFF\-]|\\.)+)(?:\((['"]?)((?:\([^\)]+\)|[^\(\)]*)+)\2\))?/
			},

			leftMatch: {},

			attrMap: {
				"class": "className",
				"for": "htmlFor"
			},

			attrHandle: {
				href: function( elem ) {
					return elem.getAttribute( "href" );
				},
				type: function( elem ) {
					return elem.getAttribute( "type" );
				}
			},

			relative: {
				"+": function(checkSet, part){
					var isPartStr = typeof part === "string",
						isTag = isPartStr && !rNonWord.test( part ),
						isPartStrNotTag = isPartStr && !isTag;

					if ( isTag ) {
						part = part.toLowerCase();
					}

					for ( var i = 0, l = checkSet.length, elem; i < l; i++ ) {
						if ( (elem = checkSet[i]) ) {
							while ( (elem = elem.previousSibling) && elem.nodeType !== 1 ) {}

							checkSet[i] = isPartStrNotTag || elem && elem.nodeName.toLowerCase() === part ?
								elem || false :
								elem === part;
						}
					}

					if ( isPartStrNotTag ) {
						Sizzle.filter( part, checkSet, true );
					}
				},

				">": function( checkSet, part ) {
					var elem,
						isPartStr = typeof part === "string",
						i = 0,
						l = checkSet.length;

					if ( isPartStr && !rNonWord.test( part ) ) {
						part = part.toLowerCase();

						for ( ; i < l; i++ ) {
							elem = checkSet[i];

							if ( elem ) {
								var parent = elem.parentNode;
								checkSet[i] = parent.nodeName.toLowerCase() === part ? parent : false;
							}
						}

					} else {
						for ( ; i < l; i++ ) {
							elem = checkSet[i];

							if ( elem ) {
								checkSet[i] = isPartStr ?
									elem.parentNode :
									elem.parentNode === part;
							}
						}

						if ( isPartStr ) {
							Sizzle.filter( part, checkSet, true );
						}
					}
				},

				"": function(checkSet, part, isXML){
					var nodeCheck,
						doneName = done++,
						checkFn = dirCheck;

					if ( typeof part === "string" && !rNonWord.test( part ) ) {
						part = part.toLowerCase();
						nodeCheck = part;
						checkFn = dirNodeCheck;
					}

					checkFn( "parentNode", part, doneName, checkSet, nodeCheck, isXML );
				},

				"~": function( checkSet, part, isXML ) {
					var nodeCheck,
						doneName = done++,
						checkFn = dirCheck;

					if ( typeof part === "string" && !rNonWord.test( part ) ) {
						part = part.toLowerCase();
						nodeCheck = part;
						checkFn = dirNodeCheck;
					}

					checkFn( "previousSibling", part, doneName, checkSet, nodeCheck, isXML );
				}
			},

			find: {
				ID: function( match, context, isXML ) {
					if ( typeof context.getElementById !== "undefined" && !isXML ) {
						var m = context.getElementById(match[1]);
						// Check parentNode to catch when Blackberry 4.6 returns
						// nodes that are no longer in the document #6963
						return m && m.parentNode ? [m] : [];
					}
				},

				NAME: function( match, context ) {
					if ( typeof context.getElementsByName !== "undefined" ) {
						var ret = [],
							results = context.getElementsByName( match[1] );

						for ( var i = 0, l = results.length; i < l; i++ ) {
							if ( results[i].getAttribute("name") === match[1] ) {
								ret.push( results[i] );
							}
						}

						return ret.length === 0 ? null : ret;
					}
				},

				TAG: function( match, context ) {
					if ( typeof context.getElementsByTagName !== "undefined" ) {
						return context.getElementsByTagName( match[1] );
					}
				}
			},
			preFilter: {
				CLASS: function( match, curLoop, inplace, result, not, isXML ) {
					match = " " + match[1].replace( rBackslash, "" ) + " ";

					if ( isXML ) {
						return match;
					}

					for ( var i = 0, elem; (elem = curLoop[i]) != null; i++ ) {
						if ( elem ) {
							if ( not ^ (elem.className && (" " + elem.className + " ").replace(/[\t\n\r]/g, " ").indexOf(match) >= 0) ) {
								if ( !inplace ) {
									result.push( elem );
								}

							} else if ( inplace ) {
								curLoop[i] = false;
							}
						}
					}

					return false;
				},

				ID: function( match ) {
					return match[1].replace( rBackslash, "" );
				},

				TAG: function( match, curLoop ) {
					return match[1].replace( rBackslash, "" ).toLowerCase();
				},

				CHILD: function( match ) {
					if ( match[1] === "nth" ) {
						if ( !match[2] ) {
							Sizzle.error( match[0] );
						}

						match[2] = match[2].replace(/^\+|\s*/g, '');

						// parse equations like 'even', 'odd', '5', '2n', '3n+2', '4n-1', '-n+6'
						var test = /(-?)(\d*)(?:n([+\-]?\d*))?/.exec(
							match[2] === "even" && "2n" || match[2] === "odd" && "2n+1" ||
							!/\D/.test( match[2] ) && "0n+" + match[2] || match[2]);

						// calculate the numbers (first)n+(last) including if they are negative
						match[2] = (test[1] + (test[2] || 1)) - 0;
						match[3] = test[3] - 0;
					}
					else if ( match[2] ) {
						Sizzle.error( match[0] );
					}

					// TODO: Move to normal caching system
					match[0] = done++;

					return match;
				},

				ATTR: function( match, curLoop, inplace, result, not, isXML ) {
					var name = match[1] = match[1].replace( rBackslash, "" );

					if ( !isXML && Expr.attrMap[name] ) {
						match[1] = Expr.attrMap[name];
					}

					// Handle if an un-quoted value was used
					match[4] = ( match[4] || match[5] || "" ).replace( rBackslash, "" );

					if ( match[2] === "~=" ) {
						match[4] = " " + match[4] + " ";
					}

					return match;
				},

				PSEUDO: function( match, curLoop, inplace, result, not ) {
					if ( match[1] === "not" ) {
						// If we're dealing with a complex expression, or a simple one
						if ( ( chunker.exec(match[3]) || "" ).length > 1 || /^\w/.test(match[3]) ) {
							match[3] = Sizzle(match[3], null, null, curLoop);

						} else {
							var ret = Sizzle.filter(match[3], curLoop, inplace, true ^ not);

							if ( !inplace ) {
								result.push.apply( result, ret );
							}

							return false;
						}

					} else if ( Expr.match.POS.test( match[0] ) || Expr.match.CHILD.test( match[0] ) ) {
						return true;
					}

					return match;
				},

				POS: function( match ) {
					match.unshift( true );

					return match;
				}
			},

			filters: {
				enabled: function( elem ) {
					return elem.disabled === false && elem.type !== "hidden";
				},

				disabled: function( elem ) {
					return elem.disabled === true;
				},

				checked: function( elem ) {
					return elem.checked === true;
				},

				selected: function( elem ) {
					// Accessing this property makes selected-by-default
					// options in Safari work properly
					if ( elem.parentNode ) {
						elem.parentNode.selectedIndex;
					}

					return elem.selected === true;
				},

				parent: function( elem ) {
					return !!elem.firstChild;
				},

				empty: function( elem ) {
					return !elem.firstChild;
				},

				has: function( elem, i, match ) {
					return !!Sizzle( match[3], elem ).length;
				},

				header: function( elem ) {
					return (/h\d/i).test( elem.nodeName );
				},

				text: function( elem ) {
					var attr = elem.getAttribute( "type" ), type = elem.type;
					// IE6 and 7 will map elem.type to 'text' for new HTML5 types (search, etc)
					// use getAttribute instead to test this case
					return elem.nodeName.toLowerCase() === "input" && "text" === type && ( attr === type || attr === null );
				},

				radio: function( elem ) {
					return elem.nodeName.toLowerCase() === "input" && "radio" === elem.type;
				},

				checkbox: function( elem ) {
					return elem.nodeName.toLowerCase() === "input" && "checkbox" === elem.type;
				},

				file: function( elem ) {
					return elem.nodeName.toLowerCase() === "input" && "file" === elem.type;
				},

				password: function( elem ) {
					return elem.nodeName.toLowerCase() === "input" && "password" === elem.type;
				},

				submit: function( elem ) {
					var name = elem.nodeName.toLowerCase();
					return (name === "input" || name === "button") && "submit" === elem.type;
				},

				image: function( elem ) {
					return elem.nodeName.toLowerCase() === "input" && "image" === elem.type;
				},

				reset: function( elem ) {
					var name = elem.nodeName.toLowerCase();
					return (name === "input" || name === "button") && "reset" === elem.type;
				},

				button: function( elem ) {
					var name = elem.nodeName.toLowerCase();
					return name === "input" && "button" === elem.type || name === "button";
				},

				input: function( elem ) {
					return (/input|select|textarea|button/i).test( elem.nodeName );
				},

				focus: function( elem ) {
					return elem === elem.ownerDocument.activeElement;
				}
			},
			setFilters: {
				first: function( elem, i ) {
					return i === 0;
				},

				last: function( elem, i, match, array ) {
					return i === array.length - 1;
				},

				even: function( elem, i ) {
					return i % 2 === 0;
				},

				odd: function( elem, i ) {
					return i % 2 === 1;
				},

				lt: function( elem, i, match ) {
					return i < match[3] - 0;
				},

				gt: function( elem, i, match ) {
					return i > match[3] - 0;
				},

				nth: function( elem, i, match ) {
					return match[3] - 0 === i;
				},

				eq: function( elem, i, match ) {
					return match[3] - 0 === i;
				}
			},
			filter: {
				PSEUDO: function( elem, match, i, array ) {
					var name = match[1],
						filter = Expr.filters[ name ];

					if ( filter ) {
						return filter( elem, i, match, array );

					} else if ( name === "contains" ) {
						return (elem.textContent || elem.innerText || getText([ elem ]) || "").indexOf(match[3]) >= 0;

					} else if ( name === "not" ) {
						var not = match[3];

						for ( var j = 0, l = not.length; j < l; j++ ) {
							if ( not[j] === elem ) {
								return false;
							}
						}

						return true;

					} else {
						Sizzle.error( name );
					}
				},

				CHILD: function( elem, match ) {
					var first, last,
						doneName, parent, cache,
						count, diff,
						type = match[1],
						node = elem;

					switch ( type ) {
						case "only":
						case "first":
							while ( (node = node.previousSibling) ) {
								if ( node.nodeType === 1 ) {
									return false;
								}
							}

							if ( type === "first" ) {
								return true;
							}

							node = elem;

							/* falls through */
						case "last":
							while ( (node = node.nextSibling) ) {
								if ( node.nodeType === 1 ) {
									return false;
								}
							}

							return true;

						case "nth":
							first = match[2];
							last = match[3];

							if ( first === 1 && last === 0 ) {
								return true;
							}

							doneName = match[0];
							parent = elem.parentNode;

							if ( parent && (parent[ expando ] !== doneName || !elem.nodeIndex) ) {
								count = 0;

								for ( node = parent.firstChild; node; node = node.nextSibling ) {
									if ( node.nodeType === 1 ) {
										node.nodeIndex = ++count;
									}
								}

								parent[ expando ] = doneName;
							}

							diff = elem.nodeIndex - last;

							if ( first === 0 ) {
								return diff === 0;

							} else {
								return ( diff % first === 0 && diff / first >= 0 );
							}
					}
				},

				ID: function( elem, match ) {
					return elem.nodeType === 1 && elem.getAttribute("id") === match;
				},

				TAG: function( elem, match ) {
					return (match === "*" && elem.nodeType === 1) || !!elem.nodeName && elem.nodeName.toLowerCase() === match;
				},

				CLASS: function( elem, match ) {
					return (" " + (elem.className || elem.getAttribute("class")) + " ")
						.indexOf( match ) > -1;
				},

				ATTR: function( elem, match ) {
					var name = match[1],
						result = Sizzle.attr ?
							Sizzle.attr( elem, name ) :
							Expr.attrHandle[ name ] ?
							Expr.attrHandle[ name ]( elem ) :
							elem[ name ] != null ?
								elem[ name ] :
								elem.getAttribute( name ),
						value = result + "",
						type = match[2],
						check = match[4];

					return result == null ?
						type === "!=" :
						!type && Sizzle.attr ?
						result != null :
						type === "=" ?
						value === check :
						type === "*=" ?
						value.indexOf(check) >= 0 :
						type === "~=" ?
						(" " + value + " ").indexOf(check) >= 0 :
						!check ?
						value && result !== false :
						type === "!=" ?
						value !== check :
						type === "^=" ?
						value.indexOf(check) === 0 :
						type === "$=" ?
						value.substr(value.length - check.length) === check :
						type === "|=" ?
						value === check || value.substr(0, check.length + 1) === check + "-" :
						false;
				},

				POS: function( elem, match, i, array ) {
					var name = match[2],
						filter = Expr.setFilters[ name ];

					if ( filter ) {
						return filter( elem, i, match, array );
					}
				}
			}
		};

		var origPOS = Expr.match.POS,
			fescape = function(all, num){
				return "\\" + (num - 0 + 1);
			};

		for ( var type in Expr.match ) {
			Expr.match[ type ] = new RegExp( Expr.match[ type ].source + (/(?![^\[]*\])(?![^\(]*\))/.source) );
			Expr.leftMatch[ type ] = new RegExp( /(^(?:.|\r|\n)*?)/.source + Expr.match[ type ].source.replace(/\\(\d+)/g, fescape) );
		}
		// Expose origPOS
		// "global" as in regardless of relation to brackets/parens
		Expr.match.globalPOS = origPOS;

		var makeArray = function( array, results ) {
			array = Array.prototype.slice.call( array, 0 );

			if ( results ) {
				results.push.apply( results, array );
				return results;
			}

			return array;
		};

		// Perform a simple check to determine if the browser is capable of
		// converting a NodeList to an array using builtin methods.
		// Also verifies that the returned array holds DOM nodes
		// (which is not the case in the Blackberry browser)
		try {
			Array.prototype.slice.call( document.documentElement.childNodes, 0 )[0].nodeType;

		// Provide a fallback method if it does not work
		} catch( e ) {
			makeArray = function( array, results ) {
				var i = 0,
					ret = results || [];

				if ( toString.call(array) === "[object Array]" ) {
					Array.prototype.push.apply( ret, array );

				} else {
					if ( typeof array.length === "number" ) {
						for ( var l = array.length; i < l; i++ ) {
							ret.push( array[i] );
						}

					} else {
						for ( ; array[i]; i++ ) {
							ret.push( array[i] );
						}
					}
				}

				return ret;
			};
		}

		var sortOrder, siblingCheck;

		if ( document.documentElement.compareDocumentPosition ) {
			sortOrder = function( a, b ) {
				if ( a === b ) {
					hasDuplicate = true;
					return 0;
				}

				if ( !a.compareDocumentPosition || !b.compareDocumentPosition ) {
					return a.compareDocumentPosition ? -1 : 1;
				}

				return a.compareDocumentPosition(b) & 4 ? -1 : 1;
			};

		} else {
			sortOrder = function( a, b ) {
				// The nodes are identical, we can exit early
				if ( a === b ) {
					hasDuplicate = true;
					return 0;

				// Fallback to using sourceIndex (in IE) if it's available on both nodes
				} else if ( a.sourceIndex && b.sourceIndex ) {
					return a.sourceIndex - b.sourceIndex;
				}

				var al, bl,
					ap = [],
					bp = [],
					aup = a.parentNode,
					bup = b.parentNode,
					cur = aup;

				// If the nodes are siblings (or identical) we can do a quick check
				if ( aup === bup ) {
					return siblingCheck( a, b );

				// If no parents were found then the nodes are disconnected
				} else if ( !aup ) {
					return -1;

				} else if ( !bup ) {
					return 1;
				}

				// Otherwise they're somewhere else in the tree so we need
				// to build up a full list of the parentNodes for comparison
				while ( cur ) {
					ap.unshift( cur );
					cur = cur.parentNode;
				}

				cur = bup;

				while ( cur ) {
					bp.unshift( cur );
					cur = cur.parentNode;
				}

				al = ap.length;
				bl = bp.length;

				// Start walking down the tree looking for a discrepancy
				for ( var i = 0; i < al && i < bl; i++ ) {
					if ( ap[i] !== bp[i] ) {
						return siblingCheck( ap[i], bp[i] );
					}
				}

				// We ended someplace up the tree so do a sibling check
				return i === al ?
					siblingCheck( a, bp[i], -1 ) :
					siblingCheck( ap[i], b, 1 );
			};

			siblingCheck = function( a, b, ret ) {
				if ( a === b ) {
					return ret;
				}

				var cur = a.nextSibling;

				while ( cur ) {
					if ( cur === b ) {
						return -1;
					}

					cur = cur.nextSibling;
				}

				return 1;
			};
		}

		// Check to see if the browser returns elements by name when
		// querying by getElementById (and provide a workaround)
		(function(){
			// We're going to inject a fake input element with a specified name
			var form = document.createElement("div"),
				id = "script" + (new Date()).getTime(),
				root = document.documentElement;

			form.innerHTML = "<a name='" + id + "'/>";

			// Inject it into the root element, check its status, and remove it quickly
			root.insertBefore( form, root.firstChild );

			// The workaround has to do additional checks after a getElementById
			// Which slows things down for other browsers (hence the branching)
			if ( document.getElementById( id ) ) {
				Expr.find.ID = function( match, context, isXML ) {
					if ( typeof context.getElementById !== "undefined" && !isXML ) {
						var m = context.getElementById(match[1]);

						return m ?
							m.id === match[1] || typeof m.getAttributeNode !== "undefined" && m.getAttributeNode("id").nodeValue === match[1] ?
								[m] :
								undefined :
							[];
					}
				};

				Expr.filter.ID = function( elem, match ) {
					var node = typeof elem.getAttributeNode !== "undefined" && elem.getAttributeNode("id");

					return elem.nodeType === 1 && node && node.nodeValue === match;
				};
			}

			root.removeChild( form );

			// release memory in IE
			root = form = null;
		})();

		(function(){
			// Check to see if the browser returns only elements
			// when doing getElementsByTagName("*")

			// Create a fake element
			var div = document.createElement("div");
			div.appendChild( document.createComment("") );

			// Make sure no comments are found
			if ( div.getElementsByTagName("*").length > 0 ) {
				Expr.find.TAG = function( match, context ) {
					var results = context.getElementsByTagName( match[1] );

					// Filter out possible comments
					if ( match[1] === "*" ) {
						var tmp = [];

						for ( var i = 0; results[i]; i++ ) {
							if ( results[i].nodeType === 1 ) {
								tmp.push( results[i] );
							}
						}

						results = tmp;
					}

					return results;
				};
			}

			// Check to see if an attribute returns normalized href attributes
			div.innerHTML = "<a href='#'></a>";

			if ( div.firstChild && typeof div.firstChild.getAttribute !== "undefined" &&
					div.firstChild.getAttribute("href") !== "#" ) {

				Expr.attrHandle.href = function( elem ) {
					return elem.getAttribute( "href", 2 );
				};
			}

			// release memory in IE
			div = null;
		})();

		if ( document.querySelectorAll ) {
			(function(){
				var oldSizzle = Sizzle,
					div = document.createElement("div"),
					id = "__sizzle__";

				div.innerHTML = "<p class='TEST'></p>";

				// Safari can't handle uppercase or unicode characters when
				// in quirks mode.
				if ( div.querySelectorAll && div.querySelectorAll(".TEST").length === 0 ) {
					return;
				}

				Sizzle = function( query, context, extra, seed ) {
					context = context || document;

					// Only use querySelectorAll on non-XML documents
					// (ID selectors don't work in non-HTML documents)
					if ( !seed && !Sizzle.isXML(context) ) {
						// See if we find a selector to speed up
						var match = /^(\w+$)|^\.([\w\-]+$)|^#([\w\-]+$)/.exec( query );

						if ( match && (context.nodeType === 1 || context.nodeType === 9) ) {
							// Speed-up: Sizzle("TAG")
							if ( match[1] ) {
								return makeArray( context.getElementsByTagName( query ), extra );

							// Speed-up: Sizzle(".CLASS")
							} else if ( match[2] && Expr.find.CLASS && context.getElementsByClassName ) {
								return makeArray( context.getElementsByClassName( match[2] ), extra );
							}
						}

						if ( context.nodeType === 9 ) {
							// Speed-up: Sizzle("body")
							// The body element only exists once, optimize finding it
							if ( query === "body" && context.body ) {
								return makeArray( [ context.body ], extra );

							// Speed-up: Sizzle("#ID")
							} else if ( match && match[3] ) {
								var elem = context.getElementById( match[3] );

								// Check parentNode to catch when Blackberry 4.6 returns
								// nodes that are no longer in the document #6963
								if ( elem && elem.parentNode ) {
									// Handle the case where IE and Opera return items
									// by name instead of ID
									if ( elem.id === match[3] ) {
										return makeArray( [ elem ], extra );
									}

								} else {
									return makeArray( [], extra );
								}
							}

							try {
								return makeArray( context.querySelectorAll(query), extra );
							} catch(qsaError) {}

						// qSA works strangely on Element-rooted queries
						// We can work around this by specifying an extra ID on the root
						// and working up from there (Thanks to Andrew Dupont for the technique)
						// IE 8 doesn't work on object elements
						} else if ( context.nodeType === 1 && context.nodeName.toLowerCase() !== "object" ) {
							var oldContext = context,
								old = context.getAttribute( "id" ),
								nid = old || id,
								hasParent = context.parentNode,
								relativeHierarchySelector = /^\s*[+~]/.test( query );

							if ( !old ) {
								context.setAttribute( "id", nid );
							} else {
								nid = nid.replace( /'/g, "\\$&" );
							}
							if ( relativeHierarchySelector && hasParent ) {
								context = context.parentNode;
							}

							try {
								if ( !relativeHierarchySelector || hasParent ) {
									return makeArray( context.querySelectorAll( "[id='" + nid + "'] " + query ), extra );
								}

							} catch(pseudoError) {
							} finally {
								if ( !old ) {
									oldContext.removeAttribute( "id" );
								}
							}
						}
					}

					return oldSizzle(query, context, extra, seed);
				};

				for ( var prop in oldSizzle ) {
					Sizzle[ prop ] = oldSizzle[ prop ];
				}

				// release memory in IE
				div = null;
			})();
		}

		(function(){
			var html = document.documentElement,
				matches = html.matchesSelector || html.mozMatchesSelector || html.webkitMatchesSelector || html.msMatchesSelector;

			if ( matches ) {
				// Check to see if it's possible to do matchesSelector
				// on a disconnected node (IE 9 fails this)
				var disconnectedMatch = !matches.call( document.createElement( "div" ), "div" ),
					pseudoWorks = false;

				try {
					// This should fail with an exception
					// Gecko does not error, returns false instead
					matches.call( document.documentElement, "[test!='']:sizzle" );

				} catch( pseudoError ) {
					pseudoWorks = true;
				}

				Sizzle.matchesSelector = function( node, expr ) {
					// Make sure that attribute selectors are quoted
					expr = expr.replace(/\=\s*([^'"\]]*)\s*\]/g, "='$1']");

					if ( !Sizzle.isXML( node ) ) {
						try {
							if ( pseudoWorks || !Expr.match.PSEUDO.test( expr ) && !/!=/.test( expr ) ) {
								var ret = matches.call( node, expr );

								// IE 9's matchesSelector returns false on disconnected nodes
								if ( ret || !disconnectedMatch ||
										// As well, disconnected nodes are said to be in a document
										// fragment in IE 9, so check for that
										node.document && node.document.nodeType !== 11 ) {
									return ret;
								}
							}
						} catch(e) {}
					}

					return Sizzle(expr, null, null, [node]).length > 0;
				};
			}
		})();

		(function(){
			var div = document.createElement("div");

			div.innerHTML = "<div class='test e'></div><div class='test'></div>";

			// Opera can't find a second classname (in 9.6)
			// Also, make sure that getElementsByClassName actually exists
			if ( !div.getElementsByClassName || div.getElementsByClassName("e").length === 0 ) {
				return;
			}

			// Safari caches class attributes, doesn't catch changes (in 3.2)
			div.lastChild.className = "e";

			if ( div.getElementsByClassName("e").length === 1 ) {
				return;
			}

			Expr.order.splice(1, 0, "CLASS");
			Expr.find.CLASS = function( match, context, isXML ) {
				if ( typeof context.getElementsByClassName !== "undefined" && !isXML ) {
					return context.getElementsByClassName(match[1]);
				}
			};

			// release memory in IE
			div = null;
		})();

		function dirNodeCheck( dir, cur, doneName, checkSet, nodeCheck, isXML ) {
			for ( var i = 0, l = checkSet.length; i < l; i++ ) {
				var elem = checkSet[i];

				if ( elem ) {
					var match = false;

					elem = elem[dir];

					while ( elem ) {
						if ( elem[ expando ] === doneName ) {
							match = checkSet[elem.sizset];
							break;
						}

						if ( elem.nodeType === 1 && !isXML ){
							elem[ expando ] = doneName;
							elem.sizset = i;
						}

						if ( elem.nodeName.toLowerCase() === cur ) {
							match = elem;
							break;
						}

						elem = elem[dir];
					}

					checkSet[i] = match;
				}
			}
		}

		function dirCheck( dir, cur, doneName, checkSet, nodeCheck, isXML ) {
			for ( var i = 0, l = checkSet.length; i < l; i++ ) {
				var elem = checkSet[i];

				if ( elem ) {
					var match = false;

					elem = elem[dir];

					while ( elem ) {
						if ( elem[ expando ] === doneName ) {
							match = checkSet[elem.sizset];
							break;
						}

						if ( elem.nodeType === 1 ) {
							if ( !isXML ) {
								elem[ expando ] = doneName;
								elem.sizset = i;
							}

							if ( typeof cur !== "string" ) {
								if ( elem === cur ) {
									match = true;
									break;
								}

							} else if ( Sizzle.filter( cur, [elem] ).length > 0 ) {
								match = elem;
								break;
							}
						}

						elem = elem[dir];
					}

					checkSet[i] = match;
				}
			}
		}

		if ( document.documentElement.contains ) {
			Sizzle.contains = function( a, b ) {
				return a !== b && (a.contains ? a.contains(b) : true);
			};

		} else if ( document.documentElement.compareDocumentPosition ) {
			Sizzle.contains = function( a, b ) {
				return !!(a.compareDocumentPosition(b) & 16);
			};

		} else {
			Sizzle.contains = function() {
				return false;
			};
		}

		Sizzle.isXML = function( elem ) {
			// documentElement is verified for cases where it doesn't yet exist
			// (such as loading iframes in IE - #4833)
			var documentElement = (elem ? elem.ownerDocument || elem : 0).documentElement;

			return documentElement ? documentElement.nodeName !== "HTML" : false;
		};

		var posProcess = function( selector, context, seed ) {
			var match,
				tmpSet = [],
				later = "",
				root = context.nodeType ? [context] : context;

			// Position selectors must be done after the filter
			// And so must :not(positional) so we move all PSEUDOs to the end
			while ( (match = Expr.match.PSEUDO.exec( selector )) ) {
				later += match[0];
				selector = selector.replace( Expr.match.PSEUDO, "" );
			}

			selector = Expr.relative[selector] ? selector + "*" : selector;

			for ( var i = 0, l = root.length; i < l; i++ ) {
				Sizzle( selector, root[i], tmpSet, seed );
			}

			return Sizzle.filter( later, tmpSet );
		};

		// EXPOSE

		//window.Sizzle = Sizzle;
		
		return Sizzle;

		})()
	});
	
	// 将lib赋予全局对象及$
	window[_config['name']] = window.$ = lib;
})(window/*在其他的javascript实现中，把这里的window改成相应的全局对象即可*/);