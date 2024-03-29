/*global exports */
/**
 * @fileoverview This file is used for define the EventProxy library.
 * @author <a href="mailto:shyvo1987@gmail.com">Jackson Tian</a>
 * @version 0.4
 */
(function () {
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
    if (typeof exports !== "undefined") {
        exports.EventProxy = EventProxy;
    } else {
        this.EventProxy = EventProxy;
    }

}());
