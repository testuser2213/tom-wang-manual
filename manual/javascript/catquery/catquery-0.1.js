;(function(window, undefined) {
	// 全局配置
	var _config = {
		'domain' : 'example.com',
		'version' : '0.1'
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
			dest = dest || this;
			for(var i in src) {
				if(override || (!override && 'undefined' == typeof(dest[i]))) {
					dest[i] = src[i];
				}
			}
		}
		
		catQuery.extend({
			version : _config['version'], // catquery的版本
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
		
		return catQuery;
	})();
	
	// 做一些初始化操作
	(function() {
		if(_config['domain']) document.domain = _config['domain'];
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
		catQuery.extend({
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
	
	catQuery.extend({
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
	catQuery.extend({
		ajax : function() {
		}
	});
	
	// 事件处理
	catQuery.extend({
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
	
	catQuery.extend({
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
	
	// 将catQuery赋予全局对象及$
	window.catQuery = window.$ = catQuery;
})(window/*在其他的javascript实现中，把这里的window改成相应的全局对象即可*/);