<map version="0.8.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1302744582085" ID="Freemind_Link_1755801840" MODIFIED="1311435518656" TEXT="&#x597d;&#x73a9;&#x7684;javascript&#x7279;&#x6027;(tom.wang) &#xa;Follow&#xff1a;http://t.qq.com/superlinyzu">
<node CREATED="1311435582296" ID="_" MODIFIED="1311435630609" POSITION="right" TEXT="var a = new Boolean(undefined); &#xa;var b = Boolean(undefined); &#xa;alert(a ? &apos;true&apos; : &apos;false&apos;);&#x9;//true &#xff0c;&#x56e0;&#x4e3a;&#x6240;&#x6709;&#x7684;&#x5bf9;&#x8c61;&#xff08;&#x5305;&#x62ec;{}&#xff09;&#x90fd;&#x4f1a;&#x8f6c;&#x4e3a;true&#x3002;&#xa;alert(b ? &apos;true&apos; : &apos;false&apos;);&#x9;//false"/>
<node CREATED="1311441005125" ID="Freemind_Link_1863898030" MODIFIED="1311441026531" POSITION="right" TEXT="var a = {&apos;a&apos;:&apos;b&apos;,}  //ie&#x4e0b;&#x6709;&#x9519;&#xff0c;&#x5176;&#x4ed6;&#x6d4f;&#x89c8;&#x5668;&#x4e0b;&#x65e0;&#x9519;&#xff0c;&#x6240;&#x4ee5;&#x4e0d;&#x8981;&#x6700;&#x540e;&#x7684;&#x9017;&#x53f7;&#x3002; &#xa;alert(a);"/>
<node CREATED="1311476100156" ID="Freemind_Link_55493240" MODIFIED="1311476183281" POSITION="right" TEXT="var s1 = &apos;hello&apos;;&#xa;var s2 = String(&apos;hello&apos;);&#xa;var s3 = new String(&apos;hello&apos;);&#xa;alert(typeof s1);    //string&#xa;alert(typeof s2);    //string&#xa;alert(typeof s3);    //object&#xff0c;&#x53ea;&#x6709;&#x7528;&#x4e86;new&#x624d;&#x4f1a;&#x771f;&#x6b63;&#x7684;&#x521b;&#x5efa;&#x5bf9;&#x8c61;&#x3002;"/>
<node CREATED="1311476319484" ID="Freemind_Link_1296875331" MODIFIED="1311476713234" POSITION="right" TEXT="var s1 = &apos;alert(1);&apos;;&#xa;var s2 = new String(&apos;alert(2);&apos;);&#xa;eval(s1);        //alert 1&#xa;eval(s2);        //&#x65e0;&#x64cd;&#x4f5c;&#xa;alert(s2);       //alert(2);&#xff0c;eval&#x5e76;&#x4e0d;&#x4f1a;&#x62ff;s2&#x7684;&#x5b57;&#x7b26;&#x4e32;&#x503c;&#x4f5c;&#x4e3a;&#x53c2;&#x6570;&#x3002;"/>
<node CREATED="1311479674406" ID="Freemind_Link_261718732" MODIFIED="1311501746375" POSITION="right" TEXT="&#x5df2;&#x6d4b;&#x8bd5;&#xff1a;ie6&#x3001;chrome&#x3002;&#xa;var str1 = &apos;29.23&apos;;&#xa;var str2 = &apos;29a&apos;;&#xa;alert(str1 - 0);      //29.23&#xa;alert(str1 * 1);      //29.23&#xa;alert(str1 / 1);      //29.23&#xa;&#xa;alert(str2 - 0);      //NaN&#xff0c;&#x7528;&#x5728;&#x6570;&#x5b57;&#x73af;&#x5883;&#x4e2d;&#x53ea;&#x80fd;&#x8f6c;&#x6362;&#x7eaf;&#x6570;&#x5b57;&#x5b57;&#x7b26;&#x4e32;&#xa;alert(str2 * 1);      //NaN&#xff0c;&#x66f4;&#x597d;&#x7684;&#x5b57;&#x7b26;&#x4e32;&#x8f6c;&#x6570;&#x5b57;&#x4f7f;&#x7528;parseInt&#x3001;parseFloat&#x3001;Number&#xa;alert(str2 / 1);      //NaN"/>
<node CREATED="1311501476484" ID="Freemind_Link_1115957613" MODIFIED="1311501730406" POSITION="right" TEXT="&#x5df2;&#x6d4b;&#x8bd5;&#xff1a;ie6&#x3001;chrome&#x3002;&#xa;var i = 1;&#xa;var i;        //&#x91cd;&#x65b0;&#x58f0;&#x660e;&#x5e76;&#x6ca1;&#x6709;&#x5c06;i&#x7684;&#x503c;&#x8bbe;&#x4e3a;&#x201c;undefined&#x201d;&#x3002;&#xa;alert(i);          //1"/>
<node CREATED="1311502665437" ID="Freemind_Link_1150106174" MODIFIED="1313940043875" POSITION="right" TEXT="&#x5df2;&#x6d4b;&#x8bd5;&#xff1a;ie6&#x3001;chrome8&#x3001;ff5&#x3002;&#xa;var a = 1;&#xa;var a1 = new Number();&#xa;var b = &apos;1&apos;;&#xa;var b1 = new String();&#xa;var c = true;&#xa;var c1 = new Boolean();&#xa;var d = {};&#xa;var d1 = new Object();&#xa;var e = [];&#xa;var e1 = new Array();&#xa;var f;&#xa;var g = null;&#xa;var h = function() {};&#xa;var h1 = new Function();&#xa;var i = new Date();&#xa;var j = /^aaa$/;&#xa;var j1 = new RegExp(&apos;a&apos;, &apos;i&apos;);&#xa;var k = new Error();&#xa;var l = 0/0;&#xa;var m = window;&#xa;&#xa;document.write(&apos;typeof a: &apos; + typeof a + &apos;&lt;br/&gt;&apos;);    //number&#xa;document.write(&apos;typeof a1: &apos; + typeof a1 + &apos;&lt;br/&gt;&apos;);    //object&#xa;document.write(&apos;typeof b: &apos; + typeof b + &apos;&lt;br/&gt;&apos;);    //string&#xa;document.write(&apos;typeof b1: &apos; + typeof b1 + &apos;&lt;br/&gt;&apos;);    //object&#xa;document.write(&apos;typeof c: &apos; + typeof c + &apos;&lt;br/&gt;&apos;);    //boolean&#xa;document.write(&apos;typeof c1: &apos; + typeof c1 + &apos;&lt;br/&gt;&apos;);    //object&#xa;document.write(&apos;typeof d: &apos; + typeof d + &apos;&lt;br/&gt;&apos;);    //object&#xa;document.write(&apos;typeof d1: &apos; + typeof d1 + &apos;&lt;br/&gt;&apos;);    //object&#xa;document.write(&apos;typeof e: &apos; + typeof e + &apos;&lt;br/&gt;&apos;);    //object&#xa;document.write(&apos;typeof e1: &apos; + typeof e1 + &apos;&lt;br/&gt;&apos;);    //object&#xa;document.write(&apos;typeof f: &apos; + typeof f + &apos;&lt;br/&gt;&apos;);    //undefined&#xa;document.write(&apos;typeof g: &apos; + typeof g + &apos;&lt;br/&gt;&apos;);    //object&#xa;document.write(&apos;typeof h: &apos; + typeof h + &apos;&lt;br/&gt;&apos;);    //function&#xa;document.write(&apos;typeof h1: &apos; + typeof h1 + &apos;&lt;br/&gt;&apos;);    //function&#xa;document.write(&apos;typeof i: &apos; + typeof i + &apos;&lt;br/&gt;&apos;);    //object&#xa;document.write(&apos;typeof j: &apos; + typeof j + &apos;&lt;br/&gt;&apos;);    //chorme8:function, ie6:object, ff5:object&#xa;document.write(&apos;typeof j1: &apos; + typeof j1 + &apos;&lt;br/&gt;&apos;);    //chorme8:function, ie6:object, ff5:object&#xa;document.write(&apos;typeof k: &apos; + typeof k + &apos;&lt;br/&gt;&apos;);    //object&#xa;document.write(&apos;typeof l: &apos; + typeof l + &apos;&lt;br/&gt;&apos;);    //number&#xa;document.write(&apos;typeof m: &apos; + typeof m + &apos;&lt;br/&gt;&apos;);    //object&#xa;&#xa;document.write(&apos;a.constructor: &apos; + a.constructor + &apos;&lt;br/&gt;&apos;);    //Number&#xa;document.write(&apos;a1.constructor: &apos; + a1.constructor + &apos;&lt;br/&gt;&apos;);    //Number&#xa;document.write(&apos;b.constructor: &apos; + b.constructor + &apos;&lt;br/&gt;&apos;);    //String&#xa;document.write(&apos;b1.constructor: &apos; + b1.constructor + &apos;&lt;br/&gt;&apos;);    //String&#xa;document.write(&apos;c.constructor: &apos; + c.constructor + &apos;&lt;br/&gt;&apos;);    //Boolean&#xa;document.write(&apos;c1.constructor: &apos; + c1.constructor + &apos;&lt;br/&gt;&apos;);    //Boolean&#xa;document.write(&apos;d.constructor: &apos; + d.constructor + &apos;&lt;br/&gt;&apos;);    //Object&#xa;document.write(&apos;d1.constructor: &apos; + d1.constructor + &apos;&lt;br/&gt;&apos;);    //Object&#xa;document.write(&apos;e.constructor: &apos; + e.constructor + &apos;&lt;br/&gt;&apos;);    //Array&#xa;document.write(&apos;e1.constructor: &apos; + e1.constructor + &apos;&lt;br/&gt;&apos;);    //Array&#xa;//document.write(&apos;f.constructor: &apos; + f.constructor + &apos;&lt;br/&gt;&apos;);    //undefined&#x6ca1;&#x6709;constructor&#x5c5e;&#x6027;&#xa;//document.write(&apos;g.constructor: &apos; + g.constructor + &apos;&lt;br/&gt;&apos;);    //null&#x6ca1;&#x6709;constructor&#x5c5e;&#x6027;&#xa;document.write(&apos;h.constructor: &apos; + h.constructor + &apos;&lt;br/&gt;&apos;);    //Function&#xa;document.write(&apos;h1.constructor: &apos; + h1.constructor + &apos;&lt;br/&gt;&apos;);    //Function&#xa;document.write(&apos;i.constructor: &apos; + i.constructor + &apos;&lt;br/&gt;&apos;);    //Date&#xa;document.write(&apos;j.constructor: &apos; + j.constructor + &apos;&lt;br/&gt;&apos;);    //RegExp&#xa;document.write(&apos;j1.constructor: &apos; + j1.constructor + &apos;&lt;br/&gt;&apos;);    //RegExp&#xa;document.write(&apos;k.constructor: &apos; + k.constructor + &apos;&lt;br/&gt;&apos;);    //Error&#xa;document.write(&apos;l.constructor: &apos; + l.constructor + &apos;&lt;br/&gt;&apos;);    //Number&#xa;document.write(&apos;m.constructor: &apos; + m.constructor + &apos;&lt;br/&gt;&apos;);    //chrome:DOMWindow, ff:[object Window], ie67:undefined, ie8:[object Window]&#xa;&#xa;document.write(&apos;Object.prototype.toString.call(a): &apos; + Object.prototype.toString.call(a) + &apos;&lt;br/&gt;&apos;);    //[object Number]&#xa;document.write(&apos;Object.prototype.toString.call(a1): &apos; + Object.prototype.toString.call(a1) + &apos;&lt;br/&gt;&apos;);    //[object Number]&#xa;document.write(&apos;Object.prototype.toString.call(b): &apos; + Object.prototype.toString.call(b) + &apos;&lt;br/&gt;&apos;);    //[object String]&#xa;document.write(&apos;Object.prototype.toString.call(b1): &apos; + Object.prototype.toString.call(b1) + &apos;&lt;br/&gt;&apos;);    //[object String]&#xa;document.write(&apos;Object.prototype.toString.call(c): &apos; + Object.prototype.toString.call(c) + &apos;&lt;br/&gt;&apos;);    //[object Boolean]&#xa;document.write(&apos;Object.prototype.toString.call(c1): &apos; + Object.prototype.toString.call(c1) + &apos;&lt;br/&gt;&apos;);    //[object Boolean]&#xa;document.write(&apos;Object.prototype.toString.call(d): &apos; + Object.prototype.toString.call(d) + &apos;&lt;br/&gt;&apos;);    //[object Object]&#xa;document.write(&apos;Object.prototype.toString.call(d1): &apos; + Object.prototype.toString.call(d1) + &apos;&lt;br/&gt;&apos;);    //[object Object]&#xa;document.write(&apos;Object.prototype.toString.call(e): &apos; + Object.prototype.toString.call(e) + &apos;&lt;br/&gt;&apos;);    //[object Array]&#xa;document.write(&apos;Object.prototype.toString.call(e1): &apos; + Object.prototype.toString.call(e1) + &apos;&lt;br/&gt;&apos;);    //[object Array]&#xa;document.write(&apos;Object.prototype.toString.call(f): &apos; + Object.prototype.toString.call(f) + &apos;&lt;br/&gt;&apos;);    //chrome:[object global], ff:[object Undefined], ie678:[object Object]&#xa;document.write(&apos;Object.prototype.toString.call(g): &apos; + Object.prototype.toString.call(g) + &apos;&lt;br/&gt;&apos;);    //chrome:[object global], ff:[object Null], ie678:[object Object]&#xa;document.write(&apos;Object.prototype.toString.call(h): &apos; + Object.prototype.toString.call(h) + &apos;&lt;br/&gt;&apos;);    //[object Function]&#xa;document.write(&apos;Object.prototype.toString.call(h1): &apos; + Object.prototype.toString.call(h1) + &apos;&lt;br/&gt;&apos;);    //[object Function]&#xa;document.write(&apos;Object.prototype.toString.call(i): &apos; + Object.prototype.toString.call(i) + &apos;&lt;br/&gt;&apos;);    //[object Date]&#xa;document.write(&apos;Object.prototype.toString.call(j): &apos; + Object.prototype.toString.call(j) + &apos;&lt;br/&gt;&apos;);    //[object RegExp]&#xa;document.write(&apos;Object.prototype.toString.call(j1): &apos; + Object.prototype.toString.call(j1) + &apos;&lt;br/&gt;&apos;);    //[object RegExp]&#xa;document.write(&apos;Object.prototype.toString.call(k): &apos; + Object.prototype.toString.call(k) + &apos;&lt;br/&gt;&apos;);    //[object Error]&#xa;document.write(&apos;Object.prototype.toString.call(l): &apos; + Object.prototype.toString.call(l) + &apos;&lt;br/&gt;&apos;);    //[object Number]&#xa;document.write(&apos;Object.prototype.toString.call(m): &apos; + Object.prototype.toString.call(m) + &apos;&lt;br/&gt;&apos;);    //chrome:[object global], ff:[object Window], ie6:[object Object]"/>
<node CREATED="1311510944718" ID="Freemind_Link_1729758835" MODIFIED="1311511050203" POSITION="right" TEXT="&#x5df2;&#x6d4b;&#x8bd5;&#xff1a;ie6&#x3001;chrome&#x3001;ff&#xa;var x;&#xa;alert(x);    //undefined&#xff0c;x&#x662f;&#x5df2;&#x58f0;&#x660e;&#x3001;&#x672a;&#x8d4b;&#x503c;&#x7684;&#x53d8;&#x91cf;&#x3002;&#xa;alert(y);    //cause an error&#xff0c;&#x5c1d;&#x8bd5;&#x8bfb;&#x53d6;&#x672a;&#x58f0;&#x660e;&#x7684;&#x53d8;&#x91cf;&#x4f1a;&#x5bfc;&#x81f4;&#x9519;&#x8bef;&#x3002;"/>
<node CREATED="1311682841046" ID="Freemind_Link_638765453" MODIFIED="1311682960890" POSITION="right" TEXT="&#x5df2;&#x6d4b;&#x8bd5;&#xff1a;ie6&#x3001;chrome&#xa;{&#xa;alert(1);                   //&#x7528;&#x201c;{&#x201d;&#x5c06;&#x51e0;&#x4e2a;&#x8bed;&#x53e5;&#x7ec4;&#x5408;&#x6210;&#x8bed;&#x53e5;&#x5757;&#xa;alert(2);&#xa;}"/>
<node CREATED="1311684941546" ID="Freemind_Link_1792842176" MODIFIED="1311685013015" POSITION="right" TEXT="&#x6d4b;&#x8bd5;&#xff1a;ie6&#x3001;chrome&#xa;switch(true) {&#xa;           case 1 + 1:  //case&#x4ece;&#x53e5;&#x53ef;&#x4ee5;&#x4f7f;&#x7528;&#x4efb;&#x4f55;&#x8868;&#x8fbe;&#x5f0f;&#xa;                      alert(1);&#xa;                      break;&#xa;           case true:  //switch&#x662f;&#x6267;&#x884c;===&#x6bd4;&#x8f83;&#xa;                      alert(2);&#xa;                      break;&#xa;}"/>
<node CREATED="1311686853359" ID="Freemind_Link_909070952" MODIFIED="1311686897046" POSITION="right" TEXT="&#x6d4b;&#x8bd5;&#xff1a;ie6&#x3001;chrome&#xa;for(var i = 7, j = 10; (--i, i &gt; 5 || j &lt; 5); --j, --i) {    //for&#x8bed;&#x53e5;&#x62ec;&#x53f7;&#x4e2d;&#x7684;&#x4e09;&#x4e2a;&#x8bed;&#x53e5;&#x90fd;&#x53ef;&#x4ee5;&#x5199;&#x5f97;&#x6bd4;&#x8f83;&#x590d;&#x6742;&#xa;            alert(i);&#xa;}"/>
<node CREATED="1311692166953" ID="Freemind_Link_1606124284" MODIFIED="1311692228812" POSITION="right" TEXT="&#x6d4b;&#x8bd5;&#xff1a;ie6&#x3001;chrome&#x3001;ff&#xa;alert(1);&#xa;loop:&#xa;{&#xa;        alert(2);&#xa;        break loop;    //break&#x540e;&#x9762;&#x7684;&#x6807;&#x7b7e;&#x5fc5;&#x987b;&#x5728;break&#x6240;&#x5728;&#x7684;&#x5757;&#x53ca;&#x7236;&#x5757;&#x4e2d;&#x627e;&#x5230;&#xa;        alert(3);&#xa;}&#xa;alert(4);"/>
<node CREATED="1314802982109" ID="Freemind_Link_1026406462" MODIFIED="1314803385843" POSITION="right" TEXT="this&#x76f8;&#x5173;&#xa;1&#x3001;ie678&#x3001;chrome&#x3001;ff&#xa;var o = {};&#xa;o.fn = function() {&#xa;          alert(this === o);&#xa;}&#xa;//setTimeout&#x3001;setInterval&#x4e2d;&#x7684;&#x51fd;&#x6570;&#x6267;&#x884c;&#x65f6;&#xff0c;this&#x6307;&#x5411;Window&#x5bf9;&#x8c61;&#xa;setTimeout(o.fn, 0); //false&#xa;var i = setInterval(o.fn, 0); //false"/>
<node CREATED="1313501911390" ID="Freemind_Link_380150481" MODIFIED="1314802262312" POSITION="right" TEXT="&#x53d8;&#x91cf;&#xa;1&#x3001;ie678&#x3001;chrome&#x3001;ff&#xa;//JS&#x662f;&#x4e00;&#x6bb5;&#x4e00;&#x6bb5;&#x6267;&#x884c;&#x7684;&#xff08;&#x4ee5;&lt;script&gt;&#x6807;&#x7b7e;&#x6765;&#x5206;&#x5272;&#xff09;&#xff0c;&#x6267;&#x884c;&#x6bcf;&#x4e00;&#x6bb5;&#x4e4b;&#x524d;&#xff0c;&#x90fd;&#x6709;&#x4e00;&#x4e2a;&#x201c;&#x9884;&#x7f16;&#x8bd1;&#x201d;&#xff0c;&#x9884;&#x7f16;&#x8bd1;&#x5e72;&#x7684;&#x6d3b;&#x662f;&#xff1a;&#x58f0;&#x660e;&#x6240;&#x6709;var&#x53d8;&#x91cf;&#xff08;&#x521d;&#x59cb;&#x4e3a;undefined&#xff09;&#xff0c;&#x89e3;&#x6790;&#x5b9a;&#x4e49;&#x5f0f;&#x51fd;&#x6570;&#x8bed;&#x53e5;&#x3002;&#xa;&lt;script type=&quot;text/javascript&quot;&gt;&#xa;//&#x62a5;&#x9519;&#xa;a;&#xa;alert(2);&#xa;&lt;/script&gt;&#xa;&lt;script type=&quot;text/javascript&quot;&gt;&#xa;// alert&#x51fa;&#x6765;1&#xa;alert(1);&#xa;&lt;/script&gt;&#xa;2&#x3001;ie678&#x3001;chrome&#x3001;ff&#xa;var c = a + 1, a = 1, b = a + 2;&#xa;alert(a); //1&#xa;alert(b); //3&#xa;alert(c); //NaN&#xa; &#xa;&#x6240;&#x4ee5;&#xa;var c = a + 1, a = 1, b = a + 2;&#xa;&#x7b49;&#x4ef7;&#x4e8e;&#xa;var c = a + 1;&#xa;var a = 1;&#xa;var b = a + 2;"/>
<node CREATED="1311779163578" ID="Freemind_Link_274065997" MODIFIED="1313503876125" POSITION="right" TEXT="&#x6570;&#x7ec4;&#xa;1&#x3001;ie6&#x3001;chrome&#xa;var a = [1];&#xa;a[&apos;hello&apos;] = &apos;world&apos;;&#xa;a[3] = 2;&#xa;for(var i in a) alert(i); //&#x6570;&#x7ec4;&#x5143;&#x7d20;&#x548c;a&#x5bf9;&#x8c61;&#x5b9a;&#x4e49;&#x7684;&#x5c5e;&#x6027;&#x90fd;&#x53ef;&#x4ee5;&#x5faa;&#x73af;&#x51fa;&#x6765;&#x3002;&#xa;alert(a.length);   //4&#xff0c;&#x6570;&#x7ec4;&#x7684;length&#x603b;&#x662f;&#x6570;&#x7ec4;&#x5f53;&#x524d;&#x6700;&#x5927;&#x7684;&#x4e0b;&#x6807;&#x52a0;1&#xff0c;&#x663e;&#x7136;&#xff0c;&#x8fd9;&#x91cc;&#x7684;hello&#xff1a;world&#x4e0d;&#x662f;&#x6570;&#x7ec4;&#x7684;&#x5143;&#x7d20;&#xff0c;&#x800c;&#x662f;&#x5bf9;&#x8c61;a&#x7684;&#x4e00;&#x4e2a;&#x5c5e;&#x6027;&#x3002;&#xa;2&#x3001;ie6&#x3001;chrome&#xa;var a = [1];&#xa;var b = {&apos;hello&apos; : &apos;world&apos;};&#xa;a[&apos;hello&apos;] = &apos;world&apos;;        //&#x8fd9;&#x91cc;&#x662f;&#x4e3a;a&#x6570;&#x7ec4;&#x65b0;&#x5efa;&#x4e00;&#x4e2a;&#x5c5e;&#x6027;&#xff0c;&#x4e0d;&#x4f1a;alert&#x51fa;&#x6765;&#xff0c;&#x4e0d;&#x4f1a;&#x5c06;a&#x53d8;&#x4e3a;&#x5bf9;&#x8c61;&#x3002;&#xa;a[100] = 2;                  //&#x4e3a;a&#x6570;&#x7ec4;&#x65b0;&#x5efa;&#x4e00;&#x4e2a;&#x952e;&#x503c;&#xff0c;&#x53ef;&#x4ee5;alert&#x51fa;&#x6765;&#xa;b[0] = 1;                    //&#x4e3a;b&#x5bf9;&#x8c61;&#x6dfb;&#x52a0;&#x4e00;&#x4e2a;&#x6570;&#x7ec4;&#x4e0b;&#x6807;&#xff0c;&#x4e0d;&#x4f1a;&#x5c06;b&#x53d8;&#x4e3a;&#x6570;&#x7ec4;&#xa;alert(a);                    //1,,,,,,,,,...,,,2&#xa;alert(b);                    //[object Object]&#xa;3&#x3001;ie6&#x3001;chrome&#x3001;ff&#xa;var a = new Array(3);&#xa;for(var i in a) alert(a[i]);   //&#x56e0;&#x4e3a;a&#x4e2d;&#x7684;&#x5143;&#x7d20;&#x90fd;&#x6ca1;&#x6709;&#x8d4b;&#x503c;&#xff0c;&#x6240;&#x4ee5;&#x8fd9;&#x91cc;&#x6ca1;&#x52a8;&#x4f5c;&#xff0c;&#x5982;&#x679c;&#x52a0;&#x4e00;&#x4e2a;&#x201c;a[0] = undefined;&#x201d;&#x5219;&#x5c31;&#x6709;&#x53cd;&#x5e94;&#x4e86;&#xa;alert(a.length);      //3&#xa;&#xa;var b = [,,];  //&#x8fd9;&#x6837;&#x5b9a;&#x4e49;&#x7684;&#x6570;&#x7ec4;&#x7a7a;&#x5143;&#x7d20;&#x4e5f;&#x662f;&#x6ca1;&#x6709;&#x8d4b;&#x503c;&#x7684;&#xa;for(var i in b) alert(b[i]);&#xa;alert(b.length);     //ie6:3 chrome:2 ff:2&#xa;4&#x3001;ie678&#x3001;chrome&#x3001;ff&#xa;var a = new Array();&#xa;a[1] = undefined;&#xa;a[&apos;9&apos;] = undefined;&#xa;a[&apos;10.1&apos;] = undefined;&#xa;a[&apos;a&apos;] = undefined;&#xa;//&#x6570;&#x7ec4;&#x7684;length&#x5c5e;&#x6027;&#x662f;&#x5176;&#x6700;&#x5927;&#x4e0b;&#x6807;&#xff08;&#x4e0b;&#x6807;&#x53ef;&#x4ee5;&#x662f;&#x6574;&#x578b;&#x5b57;&#x7b26;&#x4e32;&#xff0c;&#x5982;&apos;9&apos;&#xff09;&#x52a0;1&#xa;//&#x6570;&#x7ec4;&#x7684;&#x5b57;&#x7b26;&#x4e32;&#x8868;&#x793a;&#x662f;&#x6709;length-1&#x4e2a;&#x9017;&#x53f7;&#x8fde;&#x63a5;&#x6570;&#x7ec4;&#x7684;&#x6240;&#x6709;&#x5143;&#x7d20;&#x7ec4;&#x6210;&#x7684;&#x5b57;&#x7b26;&#x4e32;&#xa;document.write(&apos;a: &apos;+a+&apos;|| a.length: &apos;+a.length);    //a: ,,,,,,,,,|| a.length: 10 &#xa;5&#x3001;ie678&#x3001;chrome&#x3001;ff&#xa;var a = new Array();&#xa;var b = [1,,3];&#xa;a[1] = undefined;&#xa;a[&apos;9&apos;] = undefined;&#xa;a[&apos;10.1&apos;] = undefined;&#xa;a[&apos;a&apos;] = undefined;&#xa;/**&#xa;&#x8fd4;&#x56de;&#x7ed3;&#x679c;&#x5982;&#x4e0b;&#xff1a;&#xa;a[1] = undefined&#xa;a[9] = undefined&#xa;a[10.1] = undefined&#xa;a[a] = undefined&#xa;b[0] = 1&#xa;b[2] = 3&#xa;&#x4f7f;&#x7528;for...in&#x5faa;&#x73af;&#x6570;&#x7ec4;&#xff0c;&#x5148;&#x5faa;&#x73af;&#x6570;&#x5b57;&#x4e0b;&#x6807;&#xff0c;&#x518d;&#x5faa;&#x73af;&#x5b57;&#x7b26;&#x4e32;&#x4e0b;&#x6807;&#xff0c;&#x53ea;&#x8981;&#x6570;&#x7ec4;&#x5143;&#x7d20;&#x660e;&#x786e;&#x8d4b;&#x503c;&#x4e86;&#xff08;&#x54ea;&#x6015;&#x8d4b;&#x7ed9;&#x5b83;&#x7684;&#x662f;undefined&#xff09;&#xff0c;&#x90fd;&#x4f1a;&#x5c06;&#x5b83;&#x5faa;&#x73af;&#x51fa;&#x6765;&#x3002;&#xa;*/&#xa;for(var i in a) document.write(&apos;a[&apos;+i+&apos;] = &apos;+a[i]+&apos;&lt;br /&gt;&apos;);&#xa;for(var i in b) document.write(&apos;b[&apos;+i+&apos;] = &apos;+b[i]+&apos;&lt;br /&gt;&apos;);"/>
<node CREATED="1311903986028" ID="Freemind_Link_1530793421" MODIFIED="1312009945531" POSITION="right" TEXT="&#x51fd;&#x6570;&#x3001;&#x65b9;&#x6cd5;&#xa;1&#x3001;ie6&#x3001;ff&#xa;var a = &apos;global&apos;;&#xa;function outer() {&#xa;&#x9;var a = &apos;inner&apos;;&#xa;&#x9;return new Function(&apos;alert(a);&apos;);     //&#x4f7f;&#x7528;&#x6784;&#x9020;&#x51fd;&#x6570;&#x5b9a;&#x4e49;&#x7684;&#x51fd;&#x6570;&#x603b;&#x662f;&#x4f5c;&#x4e3a;&#x9876;&#x5c42;&#x51fd;&#x6570;&#x6765;&#x7f16;&#x8bd1;&#x3002;&#xa;}&#xa;outer()();          //global&#xa;2&#x3001;ie6&#x3001;chrome&#xa;//&#x4ee5;&#x4e0b;&#x4e09;&#x79cd;&#x65b9;&#x5f0f;&#x90fd;&#x53ef;&#x4ee5;&#x4e3a;&#x539f;&#x578b;&#x8bbe;&#x7f6e;&#x5c5e;&#x6027;&#xff08;&#x7b2c;&#x4e09;&#x79cd;&#x8f83;&#x76f4;&#x89c2;&#xff09;&#xa;function Clz() {&#xa;          //arguments.callee.prototype.fn = function() {};                  --1&#xa;          this.constructor.prototype.fn = function() {};                        --2&#xa;}&#xa;//Clz.prototype.fn = function() {};                                                                          --3&#xa;var clz1 = new Clz();&#xa;var clz2 = new Clz();&#xa;alert(clz1.fn == clz2.fn);          //true&#xff0c;&#x4e3a;&#x539f;&#x578b;&#x8bbe;&#x7f6e;&#x7684;&#x5c5e;&#x6027;&#xff0c;&#x662f;&#x5728;&#x5bf9;&#x8c61;&#x4e2d;&#x5171;&#x7528;&#x7684;&#xff08;&#x8fd9;&#x6837;&#x8282;&#x7701;&#x8d44;&#x6e90;&#xff0c;&#x6548;&#x7387;&#x66f4;&#x9ad8;&#xff09;&#xff0c;&#x6240;&#x4ee5;&#x76f8;&#x7b49;&#x3002;&#xa;3&#x3001;ie6&#x3001;chrome&#x3001;ff&#xa;fn1();           //&#x53ef;&#x4ee5;&#x5148;&#x8c03;&#x7528;&#xff0c;&#x518d;&#x5b9a;&#x4e49;&#xa;//fn2();         &#x9700;&#x8981;&#x5148;&#x5b9a;&#x4e49;&#x518d;&#x8c03;&#x7528;&#xa;//fn3();         &#x9700;&#x8981;&#x5148;&#x5b9a;&#x4e49;&#x518d;&#x8c03;&#x7528;&#xa;function fn1() {&#xa;&#x9;alert(1);&#xa;}&#xa;var fn2 = function() {&#xa;&#x9;alert(2);&#xa;}&#xa;var fn3 = new Function(&apos;&apos;, &apos;alert(3);&apos;);"/>
<node CREATED="1312000317921" ID="Freemind_Link_1027175419" MODIFIED="1313503002812" POSITION="right" TEXT="&#x7c7b;&#x3001;&#x5bf9;&#x8c61;&#xa;1&#x3001;ie6&#x3001;chrome&#xa;Object.prototype.toString = function() {alert(1);}&#xa;var o = {};&#xa;o.toString();&#xa;for(var i in o) alert(i);     //&#x5185;&#x5efa;&#x7c7b;&#x578b;&#x7684;&#x539f;&#x578b;&#x5bf9;&#x8c61;&#x7684;&#x5c5e;&#x6027;&#x662f;&#x4e0d;&#x80fd;&#x7528;for/in&#x5faa;&#x73af;&#x679a;&#x4e3e;&#x7684;&#xff0c;&#x54ea;&#x6015;&#x5728;&#x5ba2;&#x6237;&#x7aef;&#x5ba2;&#x6237;&#x7aef;&#x91cd;&#x5199;&#x4e86;&#x3002;&#xa;2&#x3001;ie6&#x3001;chrome&#x3001;ff&#xa;function fn() {}&#xa;var o = new fn();&#xa;// &#x5f53;&#x7ed9;prototype&#x8d4b;&#x503c;&#x4e00;&#x4e2a;&#x5168;&#x65b0;&#x7684;&#x5bf9;&#x8c61;&#xff0c;&#x5f15;&#x7528;&#x5173;&#x7cfb;&#x53d1;&#x751f;&#x4e86;&#x6539;&#x53d8;&#xa;// &#x4e4b;&#x524d;&#x521d;&#x59cb;&#x5316;&#x7684;o&#x7684;&#x539f;&#x578b;&#x5bf9;&#x8c61;&#x548c;fn&#x73b0;&#x5728;&#x7684;&#x539f;&#x578b;&#x5bf9;&#x8c61;&#x4e0d;&#x4e00;&#x6837;&#x4e86;&#xa;// &#x6240;&#x4ee5;&#x5411;&#x539f;&#x578b;&#x5bf9;&#x8c61;&#x4e2d;&#x6dfb;&#x52a0;&#x5c5e;&#x6027;&#x4e0d;&#x4f1a;&#x81ea;&#x52a8;&#x6dfb;&#x52a0;&#x5230;&#x5df2;&#x5efa;&#x7acb;&#x7684;&#x5bf9;&#x8c61;&#x4e2d;&#xa;fn.prototype = new String();&#xa;fn.prototype.a = 1;&#xa;alert(o.a); //undefined&#xa;3&#x3001;ie678&#x3001;chrome&#x3001;ff&#xa;//&#x6784;&#x9020;&#x51fd;&#x6570;&#x4e2d;&#x8fd4;&#x56de;&#x5f15;&#x7528;&#x7c7b;&#x578b;&#x5c31;&#x4f1a;&#x5931;&#x53bb;&#x6784;&#x9020;&#x51fd;&#x6570;&#x7684;&#x610f;&#x4e49;&#xff0c;&#x7834;&#x574f;&#x6389;&#x4e86;this&#xa;function Ca() {&#xa;         this.name = &apos;ca&apos;;&#xa;         return &apos;hello&apos;;&#xa;}&#xa;function Cb() {&#xa;        this.name = &apos;cb&apos;;&#xa;        return new String(&apos;hello&apos;);&#xa;}&#xa;var a = new Ca(), b = new Cb();&#xa;document.write(&apos;a: &apos; + a + &apos;&lt;br /&gt;&apos;);                    //a: [object Object]&#xa;document.write(&apos;a.name: &apos; + a.name + &apos;&lt;br /&gt;&lt;br /&gt;&apos;);    //a.name: ca&#xa;document.write(&apos;b: &apos; + b + &apos;&lt;br /&gt;&apos;);                    //b: hello&#xa;document.write(&apos;b.name: &apos; + b.name + &apos;&lt;br /&gt;&lt;br /&gt;&apos;);    //b.name: undefined"/>
<node CREATED="1315926499406" ID="Freemind_Link_848346483" MODIFIED="1315926696218" POSITION="right" TEXT="&#x9519;&#x8bef;&#x3001;&#x5f02;&#x5e38;&#x5904;&#x7406;&#xa;1&#x3001;ie6&#x3001;chrome&#x3001;ff&#xa;// onerror&#x63a5;&#x53d7;3&#x4e2a;&#x53c2;&#x6570;&#xa;// onerror&#x4f5c;&#x4e3a;&#x5168;&#x5c40;&#x9519;&#x8bef;&#x5904;&#x7406;&#xff0c;firebug&#x8fd8;&#x662f;&#x53ef;&#x4ee5;&#x6355;&#x6349;&#x5230;&#x8be5;&#x9519;&#x8bef;&#xff08;&#x8fd4;&#x56de;true&#x53ef;&#x4ee5;&#x5c4f;&#x853d;&#xff09;&#xa;// &#x5c3d;&#x91cf;&#x4f7f;&#x7528;try...catch&#x6765;&#x6355;&#x6349;&#x5168;&#x5c40;&#x5f02;&#x5e38;&#xff0c;&#x4e0d;&#x5f97;&#x5df2;&#x65f6;&#x4f7f;&#x7528;onerror&#x5904;&#x7406;&#xa;// &#x9519;&#x8bef;&#x63cf;&#x8ff0;&#xa;// &#x53d1;&#x751f;&#x9519;&#x8bef;&#x7684;&#x6587;&#x4ef6;&#xa;// &#x53d1;&#x751f;&#x9519;&#x8bef;&#x7684;&#x884c;&#x53f7;&#xa;window.onerror = function(msg, url, line) {&#xa;         alert(arguments.length);&#xa;         for(var i = 0, j = arguments.length; i &lt; j; ++i) {&#xa;                  alert(arguments[i]);&#xa;         }&#xa;         // &#x901a;&#x8fc7;&#x8fd4;&#x56de;true&#x800c;&#x4e0d;&#x662f;false&#x6765;&#x5c4f;&#x853d;&#x9519;&#x8bef;&#xa;         //return false;&#xa;         return true;&#xa;};&#xa;&#xa;// &#x5173;&#x952e;&#x5b57;&#x9519;&#x8bef;&#x7684;&#x9519;&#x8bef;&#x7528;onerror&#x662f;&#x6355;&#x83b7;&#x4e0d;&#x5230;&#x7684;&#xff0c;&#x4f7f;&#x7528;try...catch&#x540c;&#x6837;&#x6355;&#x83b7;&#x4e0d;&#x5230;&#xa;//functiona test(){}&#xa;&#xa;// &#x6709;&#x591a;&#x4e2a;&#x9519;&#x8bef;&#x65f6;&#xff0c;&#x53ea;&#x5904;&#x7406;&#x7b2c;&#x4e00;&#x4e2a;&#x9519;&#x8bef;&#xff0c;&#x7136;&#x540e;&#x505c;&#x6b62;&#x6267;&#x884c;&#x811a;&#x672c;&#xa;a;&#xa;b;"/>
</node>
</map>
