<map version="0.8.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1302744582085" ID="Freemind_Link_1755801840" MODIFIED="1322143723609" TEXT="Array&#x7c7b;&#x578b;&#x53c2;&#x8003;(tom.wang) &#xa;Object-&gt;Array&#xa;Follow&#xff1a;http://t.qq.com/superlinyzu">
<node CREATED="1322143749015" ID="_" MODIFIED="1322311148062" POSITION="right" TEXT="&#x6784;&#x9020;&#x51fd;&#x6570;&#xa;new Array()&#xff1a;&#x8fd4;&#x56de;&#x7a7a;&#x6570;&#x7ec4;&#xff0c;length&#x503c;&#x4e3a;0&#x3002;&#xa;new Array(size)&#xff1a;size&#x662f;&#x671f;&#x671b;&#x7684;&#x6570;&#x7ec4;&#x5143;&#x7d20;&#x4e2a;&#x6570;&#x3002;&#x8fd4;&#x56de;&#x7684;&#x6570;&#x7ec4;&#x6240;&#x6709;&#x5143;&#x7d20;&#x90fd;&#x662f;undefined&#xff0c;length&#x5b57;&#x6bb5;&#x5c06;&#x88ab;&#x8bbe;&#x4e3a;size&#x7684;&#x503c;&#x3002;&#xa;new Array(ele0, ele1, ele2, ..., eleN)&#xa;var a = [1, true, &apos;abc&apos;];&#xa;var b = [a[0], a[0] * 2, f(x)];&#xa;1&#x3001;&#x5f53;&#x628a;&#x6784;&#x9020;&#x51fd;&#x6570;&#x4f5c;&#x4e3a;&#x51fd;&#x6570;&#x8c03;&#x7528;&#x65f6;&#xff0c;&#x4e0d;&#x4f7f;&#x7528;new&#x8fd0;&#x7b97;&#x7b26;&#x65f6;&#xff0c;&#x5b83;&#x7684;&#x884c;&#x4e3a;&#x548c;&#x4f7f;&#x7528;new&#x8fd0;&#x7b97;&#x7b26;&#x8c03;&#x7528;&#x5b83;&#x65f6;&#x7684;&#x884c;&#x4e3a;&#x662f;&#x5b8c;&#x5168;&#x4e00;&#x6837;&#x7684;&#x3002;&#xa;2&#x3001;&#x5f53;&#x53ea;&#x4f20;&#x9012;&#x7ed9;Array()&#x6784;&#x9020;&#x51fd;&#x6570;&#x4e00;&#x4e2a;&#x6574;&#x6570;&#x53c2;&#x6570;size&#x65f6;&#xff0c;&#x5982;&#x679c;size&#x662f;&#x8d1f;&#x6570;&#xff0c;&#x6216;&#x8005;&#x5927;&#x4e8e;2^23 - 1&#xff0c;&#x5c06;&#x629b;&#x51fa;RangeError&#x5f02;&#x5e38;&#x3002;&#xa;3&#x3001;ECMAScript v3&#x89c4;&#x5b9a;&#x4e86;&#x6570;&#x7ec4;&#x76f4;&#x63a5;&#x91cf;&#x8bed;&#x6cd5;&#x3002;&#x53ef;&#x4ee5;&#x628a;&#x4e00;&#x4e2a;&#x7528;&#x9017;&#x53f7;&#x5206;&#x9694;&#x7684;&#x8868;&#x8fbe;&#x5f0f;&#x5217;&#x8868;&#x653e;&#x5728;&#x65b9;&#x62ec;&#x53f7;&#x4e2d;&#xff0c;&#x521b;&#x5efa;&#x5e76;&#x521d;&#x59cb;&#x5316;&#x4e00;&#x4e2a;&#x6570;&#x7ec4;&#x3002;&#x8fd9;&#x4e9b;&#x8868;&#x8fbe;&#x5f0f;&#x7684;&#x503c;&#x5c06;&#x6210;&#x4e3a;&#x6570;&#x7ec4;&#x5143;&#x7d20;&#x3002;"/>
<node CREATED="1322311153062" ID="Freemind_Link_796717699" MODIFIED="1322312451843" POSITION="right" TEXT="&#x5c5e;&#x6027;&#xa;1&#x3001;length&#xff1a;&#x53ef;&#x8bfb;&#x53ef;&#x5199;&#xff0c;&#x58f0;&#x660e;&#x4e86;&#x6570;&#x7ec4;&#x4e2d;&#x7684;&#x5143;&#x7d20;&#x4e2a;&#x6570;&#x3002;&#x5982;&#x679c;&#x6570;&#x7ec4;&#x4e2d;&#x7684;&#x5143;&#x7d20;&#x4e0d;&#x8fde;&#x7eed;&#xff0c;&#x5b83;&#x5c31;&#x662f;&#x6bd4;&#x6570;&#x7ec4;&#x4e2d;&#x7684;&#x6700;&#x540e;&#x4e00;&#x4e2a;&#x5143;&#x7d20;&#x7684;&#x4e0b;&#x6807;&#x5927;1&#x7684;&#x6574;&#x6570;&#x3002;&#x6539;&#x53d8;&#x8fd9;&#x4e2a;&#x5c5e;&#x6027;&#x7684;&#x503c;&#x5c06;&#x622a;&#x65ad;&#x6216;&#x6269;&#x5c55;&#x6570;&#x7ec4;&#xff08;&#x5c06;length&#x5148;&#x8bbe;&#x7f6e;&#x5c0f;&#xff0c;&#x518d;&#x8bbe;&#x7f6e;&#x5927;&#xff0c;&#x88ab;&#x629b;&#x5f03;&#x7684;&#x5143;&#x7d20;&#x4e0d;&#x4f1a;&#x91cd;&#x65b0;&#x56de;&#x6765;&#xff09;&#x3002;"/>
<node CREATED="1322311248625" ID="Freemind_Link_891006451" MODIFIED="1336103780573" POSITION="right" TEXT="&#x65b9;&#x6cd5;&#xa;1&#x3001;concat(value, ...)&#xff1a;&#x7ed9;&#x6570;&#x7ec4;&#x6dfb;&#x52a0;&#x5143;&#x7d20;&#xff0c;value&#x662f;&#x8981;&#x6dfb;&#x52a0;&#x5230;Array&#x4e2d;&#x7684;&#x503c;&#xff0c;&#x53ef;&#x4ee5;&#x662f;&#x4efb;&#x610f;&#x591a;&#x4e2a;&#xff08;&#x6216;&#x6ca1;&#x6709;&#x503c;&#xff09;&#xff0c;&#x5982;&#x679c;&#x53c2;&#x6570;&#x662f;&#x4e00;&#x4e2a;&#x6570;&#x7ec4;&#xff0c;&#x90a3;&#x4e48;&#x6dfb;&#x52a0;&#x7684;&#x662f;&#x6570;&#x7ec4;&#x4e2d;&#x7684;&#x5143;&#x7d20;&#xff08;&#x5982;&#x679c;&#x8fd9;&#x4e2a;&#x5143;&#x7d20;&#x8fd8;&#x662f;&#x6570;&#x7ec4;&#xff0c;&#x5219;&#x6dfb;&#x52a0;&#x7684;&#x662f;&#x6574;&#x4e2a;&#x6570;&#x7ec4;&#xff09;&#xff0c;&#x800c;&#x4e0d;&#x662f;&#x6570;&#x7ec4;&#x3002;&#xa;var a = [1, 2, 3];&#xa;a.concat(4, 5);                      // [1, 2, 3, 4, 5]&#xa;a.concat([4, 5]);                    // [1, 2, 3, 4, 5]&#xa;a.concat([4, 5], [6, 7]);         // [1, 2, 3, 4, 5, 6, 7]&#xa;a.concat(4, [5, [6, 7]]);         // [1, 2, 3, 4, 5, [6, 7]]&#xa;&#x8fd4;&#x56de;&#x503c;&#xff1a;&#x8fd4;&#x56de;&#x8fde;&#x63a5;&#x540e;&#x7684;&#x6570;&#x7ec4;&#xff0c;&#x4e0d;&#x4fee;&#x6539;&#x539f;&#x6570;&#x7ec4;&#xff0c;&#x53ef;&#x7528;&#x4e8e;&#x590d;&#x5236;&#x6570;&#x7ec4;&#x3002;&#xa;2&#x3001;join(separator/*=&apos;,&apos;*/)&#xff1a;&#x5c06;&#x6570;&#x7ec4;&#x4e2d;&#x7684;&#x6240;&#x6709;&#x5143;&#x7d20;&#x90fd;&#x8f6c;&#x6362;&#x6210;&#x5b57;&#x7b26;&#x4e32;&#xff0c;&#x7136;&#x540e;&#x8fde;&#x63a5;&#x8d77;&#x6765;&#x3002;&#xa;3&#x3001;pop()&#xff1a;&#x4ece;&#x6570;&#x7ec4;&#x5c3e;&#x90e8;&#x5220;&#x9664;&#x4e00;&#x4e2a;&#x5143;&#x7d20;&#xff0c;&#x8fd4;&#x56de;&#x5220;&#x9664;&#x7684;&#x5143;&#x7d20;&#x7684;&#x503c;&#x3002;&#x5982;&#x679c;&#x6570;&#x7ec4;&#x5df2;&#x7ecf;&#x4e3a;&#x7a7a;&#xff0c;&#x5219;&#x4e0d;&#x6539;&#x53d8;&#x6570;&#x7ec4;&#xff0c;&#x8fd4;&#x56de;undefined&#x503c;&#xff08;&#x5f15;&#x7528;&#xff09;&#x3002;&#xa;4&#x3001;push(value, ...)&#xff1a;&#x628a;&#x4e00;&#x4e2a;&#x5143;&#x7d20;&#x6dfb;&#x52a0;&#x5230;&#x6570;&#x7ec4;&#x7684;&#x5c3e;&#x90e8;&#xff0c;&#x8fd4;&#x56de;&#x6570;&#x7ec4;&#x7684;&#x65b0;&#x957f;&#x5ea6;&#xff08;&#x5f15;&#x7528;&#xff09;&#x3002;&#xa;5&#x3001;reverse()&#xff1a;&#x5728;&#x539f;&#x6570;&#x7ec4;&#x4e0a;&#x98a0;&#x5012;&#x6570;&#x7ec4;&#x4e2d;&#x5143;&#x7d20;&#x7684;&#x987a;&#x5e8f;&#xff08;&#x5f15;&#x7528;&#xff09;&#x3002;&#xa;6&#x3001;shift()&#xff1a;&#x5c06;&#x6570;&#x7ec4;&#x5934;&#x90e8;&#x7684;&#x5143;&#x7d20;&#x79fb;&#x9664;&#x51fa;&#x6570;&#x7ec4;&#x5934;&#x90e8;&#xff0c;&#x8fd4;&#x56de;&#x79fb;&#x51fa;&#x7684;&#x5143;&#x7d20;&#xff0c;&#x5982;&#x679c;&#x6570;&#x7ec4;&#x662f;&#x7a7a;&#x7684;&#xff0c;&#x5c06;&#x4e0d;&#x8fdb;&#x884c;&#x4efb;&#x4f55;&#x64cd;&#x4f5c;&#xff0c;&#x8fd4;&#x56de;undefined&#x503c;&#xff08;&#x5f15;&#x7528;&#xff09;&#x3002;&#xa;7&#x3001;slice(start, end/*=length*/)&#xff1a;&#x8fd4;&#x56de;&#x6570;&#x7ec4;&#x7684;&#x4e00;&#x4e2a;&#x5b50;&#x6570;&#x7ec4;&#xff0c;slice&#x662f;&#x201c;&#x5207;&#x5f00;&#x201d;&#x3001;&#x201c;&#x628a;...&#x5206;&#x6210;&#x90e8;&#x5206;&#x201d;&#xff0c;&#x8fd4;&#x56de;&#x4e00;&#x4e2a;&#x65b0;&#x6570;&#x7ec4;&#xff0c;&#x5305;&#x542b;&#x4ece;start&#x5230;end&#xff08;&#x4e0d;&#x5305;&#x62ec;&#x8be5;&#x5143;&#x7d20;&#xff09;&#x4e4b;&#x95f4;&#x7684;Array&#x5143;&#x7d20;&#xff0c;start&#x548c;end&#x90fd;&#x53ef;&#x4ee5;&#x662f;&#x8d1f;&#x6570;&#xff0c;&#x5982;&#x679c;&#x662f;&#x8d1f;&#x6570;&#xff0c;&#x5219;&#x4ece;&#x6570;&#x7ec4;&#x7684;&#x672b;&#x5c3e;&#x627e;&#xff0c;-1&#x8868;&#x793a;&#x6700;&#x540e;&#x4e00;&#x4e2a;&#x5143;&#x7d20;&#xff08;&#x975e;&#x5f15;&#x7528;&#xff09;&#x3002;&#xa;8&#x3001;sort(orderfunc/*=null*/)&#xff1a;&#x5728;&#x539f;&#x6570;&#x7ec4;&#x4e0a;&#x5bf9;&#x6570;&#x7ec4;&#x5143;&#x7d20;&#x8fdb;&#x884c;&#x6392;&#x5e8f;&#xff0c;&#x5982;&#x679c;&#x4e0d;&#x6307;&#x5b9a;&#x6392;&#x5e8f;&#x51fd;&#x6570;&#xff0c;&#x5c06;&#x6309;&#x5b57;&#x7b26;&#x7f16;&#x7801;&#x7684;&#x987a;&#x5e8f;&#x8fdb;&#x884c;&#x5347;&#x5e8f;&#x6392;&#x5e8f;&#xff0c;orderfunc&#x7684;&#x539f;&#x578b;&#x662f;int orderfunc(mixed a, mixed b)&#xff0c;&#x5982;&#x679c;&#x8fd4;&#x56de;&#x503c;&#x5c0f;&#x4e8e;/&#x7b49;&#x4e8e;/&#x5927;&#x4e8e;0&#xff0c;&#x5219;a&#x6392;&#x5728;b&#x7684;&#x524d;&#x9762;/&#x4e0d;&#x53d8;/&#x540e;&#x9762;&#xff0c;&#x6ce8;&#x610f;&#xff0c;&#x6570;&#x7ec4;&#x4e2d;&#x7684;undefined&#x7684;&#x5143;&#x7d20;&#x90fd;&#x6392;&#x5217;&#x5728;&#x6570;&#x7ec4;&#x672b;&#x5c3e;&#xff0c;&#x5373;&#x4f7f;&#x63d0;&#x4f9b;&#x4e86;&#x81ea;&#x5b9a;&#x4e49;&#x7684;&#x6392;&#x5e8f;&#x51fd;&#x6570;&#xff0c;&#x4e5f;&#x662f;&#x8fd9;&#x6837;&#xff0c;&#x56e0;&#x4e3a;undefined&#x503c;&#x4e0d;&#x4f1a;&#x88ab;&#x4f20;&#x9012;&#x7ed9;&#x4f60;&#x63d0;&#x4f9b;&#x7684;orderfunc&#xff08;&#x5f15;&#x7528;&#xff09;&#x3002;&#xa;9&#x3001;splice(start, deleteCount, value, ...)&#xff1a;&#x63d2;&#x5165;&#x3001;&#x5220;&#x9664;&#x6216;&#x66ff;&#x6362;&#x4e00;&#x4e2a;&#x6570;&#x7ec4;&#x5143;&#x7d20;&#xff0c;&#x4e0d;&#x6307;&#x5b9a;deleteCount&#x5219;&#x76f4;&#x5230;&#x6570;&#x7ec4;&#x672b;&#x5c3e;&#xff0c;&#x5982;&#x679c;&#x4ece;Array&#x4e2d;&#x5220;&#x9664;&#x4e86;&#x5143;&#x7d20;&#xff0c;&#x5219;&#x8fd4;&#x56de;&#x7684;&#x662f;&#x542b;&#x6709;&#x88ab;&#x5220;&#x9664;&#x7684;&#x5143;&#x7d20;&#x7684;&#x6570;&#x7ec4;&#xff08;&#x5f15;&#x7528;&#xff09;&#x3002;&#xa;10&#x3001;toLocaleString()&#xff1a;&#x628a;&#x6570;&#x7ec4;&#x8f6c;&#x6362;&#x6210;&#x4e00;&#x4e2a;&#x5c40;&#x90e8;&#x5b57;&#x7b26;&#x4e32;&#xff0c;&#x5148;&#x8c03;&#x7528;&#x6bcf;&#x4e2a;&#x6570;&#x7ec4;&#x5143;&#x7d20;&#x7684;toLocaleString()&#x65b9;&#x6cd5;&#xff0c;&#x7136;&#x540e;&#x4f7f;&#x7528;&#x5730;&#x533a;&#x7279;&#x5b9a;&#x7684;&#x5206;&#x9694;&#x7b26;&#x628a;&#x751f;&#x6210;&#x7684;&#x5b57;&#x7b26;&#x4e32;&#x8fde;&#x63a5;&#x8d77;&#x6765;&#xff0c;&#x5f62;&#x6210;&#x4e00;&#x4e2a;&#x5b57;&#x7b26;&#x4e32;&#x3002;&#xa;11&#x3001;toString()&#xff1a;&#x628a;&#x6570;&#x7ec4;&#x8f6c;&#x6362;&#x6210;&#x4e00;&#x4e2a;&#x5b57;&#x7b26;&#x4e32;&#xff0c;&#x5148;&#x5c06;&#x6570;&#x7ec4;&#x5143;&#x7d20;&#x8f6c;&#x4e3a;&#x5b57;&#x7b26;&#x4e32;&#xff0c;&#x518d;&#x7528;&#x9017;&#x53f7;&#x201c;,&#x201d;&#x8fdb;&#x884c;&#x8fde;&#x63a5;&#x3002;&#xa;12&#x3001;unshift(value, ...)&#xff1a;&#x5728;&#x6570;&#x7ec4;&#x7684;&#x5934;&#x90e8;&#x63d2;&#x5165;&#x5143;&#x7d20;&#xff0c;&#x8fd4;&#x56de;&#x6570;&#x7ec4;&#x7684;&#x65b0;&#x957f;&#x5ea6;&#xff0c;&#x8be5;&#x65b9;&#x6cd5;&#x7684;&#x7b2c;&#x4e00;&#x4e2a;&#x53c2;&#x6570;&#x5c06;&#x6210;&#x4e3a;&#x6570;&#x7ec4;&#x65b0;&#x7684;0&#x5143;&#x7d20;&#xff0c;&#x7b2c;&#x4e8c;&#x4e2a;&#x53c2;&#x6570;&#x6210;&#x4e3a;&#x65b0;&#x7684;1&#x5143;&#x7d20;&#xff0c;&#x4f9d;&#x6b64;&#x7c7b;&#x63a8;&#xff08;&#x5f15;&#x7528;&#xff09;&#x3002;"/>
<node CREATED="1365488522579" ID="Freemind_Link_51572225" MODIFIED="1365497638109" POSITION="left" TEXT="&#x6570;&#x7ec4;&#x65b0;&#x7279;&#x6027;&#xa;1&#x3001;every(callback[, thisObject])&#xa;&#x7528;&#x4e8e;&#x5224;&#x65ad;&#x6570;&#x7ec4;&#x4e2d;&#x7684;&#x6240;&#x6709;&#x5143;&#x7d20;&#x662f;&#x5426;&#x7b26;&#x5408;&#x4e00;&#x4e2a;&#x7279;&#x5b9a;&#x6761;&#x4ef6;&#x3002;&#x3002;&#x3002;&#xa;@param callback&#xff1a;&#x9a8c;&#x8bc1;&#x51fd;&#x6570;&#xff0c;&#x8fd9;&#x4e2a;&#x51fd;&#x6570;&#x7684;&#x539f;&#x578b;&#x4e3a;boolean callback(mixed value, int index, Array theArray)&#xa;@param thisObject&#xff1a;callback&#x4e2d;&#x7684;this&#x6307;&#x5411;&#x7684;&#x5bf9;&#x8c61;&#x3002;&#x4e0d;&#x63d0;&#x4f9b;&#x5219;this&#x6307;&#x5411;&#x5168;&#x5c40;&#x5bf9;&#x8c61;&#xa;@return &#x5f53;&#x6570;&#x7ec4;&#x4e2d;&#x6240;&#x6709;&#x5143;&#x7d20;callback&#x90fd;&#x8fd4;&#x56de;true&#xff0c;&#x5219;every&#x8fd4;&#x56de;true&#x3002;&#x6709;&#x4e00;&#x4e2a;&#x5143;&#x7d20;&#x8c03;&#x7528;callback&#x8fd4;&#x56de;false&#xff0c;every&#x5c31;&#x4f1a;&#x8fd4;&#x56de;false&#x3002;&#x5982;&#x679c;&#x6570;&#x7ec4;&#x4e3a;&#x7a7a;&#xff0c;&#x5219;&#x5fc5;&#x7136;&#x8fd4;&#x56de;true&#x3002;&#xa;2&#x3001;filter(callback[, thisObject])&#xa;&#x8fc7;&#x6ee4;&#x6570;&#x7ec4;&#xff0c;&#x8fd4;&#x56de;&#x7b26;&#x5408;&#x6761;&#x4ef6;&#x7684;&#x6570;&#x7ec4;&#x5143;&#x7d20;&#x3002;&#x3002;&#x3002;&#xa;@param callback&#xff1a;&#x9a8c;&#x8bc1;&#x51fd;&#x6570;&#xff0c;&#x8fd9;&#x4e2a;&#x51fd;&#x6570;&#x7684;&#x539f;&#x578b;&#x4e3a;boolean callback(mixed value, int index, Array theArray)&#xa;@param thisObject&#xff1a;callback&#x4e2d;&#x7684;this&#x6307;&#x5411;&#x7684;&#x5bf9;&#x8c61;&#x3002;&#x4e0d;&#x63d0;&#x4f9b;&#x5219;this&#x6307;&#x5411;&#x5168;&#x5c40;&#x5bf9;&#x8c61;&#xa;@return &#x6570;&#x7ec4;&#xff0c;&#x8c03;&#x7528;callback&#x8fd4;&#x56de;true&#x7684;&#x5143;&#x7d20;&#x7ec4;&#x6210;&#xa;3&#x3001;forEach(callback[, thisObject])&#xa;&#x7528;&#x4e8e;&#x5bf9;&#x6570;&#x7ec4;&#x5185;&#x5143;&#x7d20;&#x904d;&#x5386;&#x64cd;&#x4f5c;&#xff0c;&#x4e0d;&#x4fee;&#x6539;&#x539f;&#x6570;&#x7ec4;&#x3002;&#x3002;&#x3002;&#xa;@param callback&#xff1a;&#x9a8c;&#x8bc1;&#x51fd;&#x6570;&#xff0c;&#x8fd9;&#x4e2a;&#x51fd;&#x6570;&#x7684;&#x539f;&#x578b;&#x4e3a;mixed callback(mixed value, int index, Array theArray)&#xa;@param thisObject&#xff1a;callback&#x4e2d;&#x7684;this&#x6307;&#x5411;&#x7684;&#x5bf9;&#x8c61;&#x3002;&#x4e0d;&#x63d0;&#x4f9b;&#x5219;this&#x6307;&#x5411;&#x5168;&#x5c40;&#x5bf9;&#x8c61;&#xa;@return void&#xa;4&#x3001;map(callback[, thisObject])&#xa;&#x7528;&#x4e8e;&#x5bf9;&#x6570;&#x7ec4;&#x5185;&#x5143;&#x7d20;&#x904d;&#x5386;&#x64cd;&#x4f5c;&#xff0c;&#x8fd4;&#x56de;&#x65b0;&#x7684;&#x6570;&#x7ec4;&#x3002;&#x3002;&#x3002;&#xa;@param callback&#xff1a;&#x9a8c;&#x8bc1;&#x51fd;&#x6570;&#xff0c;&#x8fd9;&#x4e2a;&#x51fd;&#x6570;&#x7684;&#x539f;&#x578b;&#x4e3a;mixed callback(mixed value, int index, Array theArray)&#xff0c;&#xa;@param thisObject&#xff1a;callback&#x4e2d;&#x7684;this&#x6307;&#x5411;&#x7684;&#x5bf9;&#x8c61;&#x3002;&#x4e0d;&#x63d0;&#x4f9b;&#x5219;this&#x6307;&#x5411;&#x5168;&#x5c40;&#x5bf9;&#x8c61;&#xa;@return &#x6570;&#x7ec4;&#xff0c;&#x5c06;callback&#x7684;&#x8fd4;&#x56de;&#x503c;&#x7ec4;&#x5408;&#x6210;&#x7684;&#x65b0;&#x6570;&#x7ec4;&#xa;5&#x3001;reduce&#xa;6&#x3001;reduceRight&#xa;7&#x3001;some(callback[, thisObject])&#xa;&#x7528;&#x4e8e;&#x5224;&#x65ad;&#x6570;&#x7ec4;&#x4e2d;&#x81f3;&#x5c11;&#x4e00;&#x4e2a;&#x5143;&#x7d20;&#x7b26;&#x5408;&#x4e00;&#x4e2a;&#x7279;&#x5b9a;&#x6761;&#x4ef6;&#x3002;&#x3002;&#x3002;&#xa;@param callback&#xff1a;&#x9a8c;&#x8bc1;&#x51fd;&#x6570;&#xff0c;&#x8fd9;&#x4e2a;&#x51fd;&#x6570;&#x7684;&#x539f;&#x578b;&#x4e3a;boolean callback(mixed value, int index, Array theArray)&#xa;@param thisObject&#xff1a;callback&#x4e2d;&#x7684;this&#x6307;&#x5411;&#x7684;&#x5bf9;&#x8c61;&#x3002;&#x4e0d;&#x63d0;&#x4f9b;&#x5219;this&#x6307;&#x5411;&#x5168;&#x5c40;&#x5bf9;&#x8c61;&#xa;@return &#x5f53;&#x6570;&#x7ec4;&#x4e2d;&#x67d0;&#x4e2a;&#x5143;&#x7d20;&#x8c03;&#x7528;callback&#x90fd;&#x8fd4;&#x56de;true&#xff0c;&#x5219;every&#x7acb;&#x5373;&#x8fd4;&#x56de;true&#x3002;&#x5426;&#x5219;&#x8fd4;&#x56de;false&#x3002;"/>
</node>
</map>
