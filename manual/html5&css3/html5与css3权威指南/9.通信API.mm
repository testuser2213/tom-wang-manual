<map version="0.8.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1302744582085" ID="Freemind_Link_1755801840" MODIFIED="1333276987511" TEXT="&#x901a;&#x4fe1;API(tom.wang) &#xa;Follow&#xff1a;http://t.qq.com/tomwang_">
<node CREATED="1333277018675" ID="_" MODIFIED="1333277129865" POSITION="right" TEXT="&#x6982;&#x8ff0;&#xa;1&#x3001;&#x4f7f;&#x7528;&#x8de8;&#x6587;&#x6863;&#x6d88;&#x606f;&#x4f20;&#x8f93;&#x529f;&#x80fd;&#xff0c;&#x4f60;&#x53ef;&#x4ee5;&#x5728;&#x4e0d;&#x540c;&#x7f51;&#x9875;&#x6587;&#x6863;&#x3001;&#x4e0d;&#x540c;&#x7aef;&#x53e3;&#x3001;&#x4e0d;&#x540c;&#x57df;&#x4e4b;&#x95f4;&#x8fdb;&#x884c;&#x6d88;&#x606f;&#x7684;&#x4f20;&#x9012;&#x3002;&#xa;2&#x3001;&#x4f7f;&#x7528;web sockets api&#xff0c;&#x4f60;&#x53ef;&#x4ee5;&#x8ba9;&#x5ba2;&#x6237;&#x7aef;&#x548c;&#x670d;&#x52a1;&#x5668;&#x7aef;&#x901a;&#x8fc7;socket&#x7aef;&#x53e3;&#x6765;&#x4f20;&#x9012;&#x6570;&#x636e;&#xff0c;&#x8fd9;&#x6837;&#x505a;&#x7684;&#x597d;&#x5904;&#x662f;&#x53ef;&#x4ee5;&#x5b9e;&#x73b0;&#x6570;&#x636e;&#x63a8;&#x9001;&#x6280;&#x672f;"/>
<node CREATED="1333277132708" ID="Freemind_Link_1606032686" MODIFIED="1366445685206" POSITION="right" TEXT="&#x8de8;&#x6587;&#x6863;&#x6d88;&#x606f;&#x4f20;&#x8f93;&#xa;1&#x3001;&#x57fa;&#x672c;&#x77e5;&#x8bc6;&#xa;1&#xff09;&#x3001;&#x9996;&#x5148;&#xff0c;&#x8981;&#x60f3;&#x63a5;&#x53d7;&#x4ece;&#x5176;&#x4ed6;&#x7684;&#x7a97;&#x53e3;&#x90a3;&#x91cc;&#x53d1;&#x8fc7;&#x6765;&#x7684;&#x6d88;&#x606f;&#xff0c;&#x5c31;&#x5fc5;&#x987b;&#x5bf9;&#x7a97;&#x53e3;&#x5bf9;&#x8c61;&#x7684;message&#x4e8b;&#x4ef6;&#x8fdb;&#x884c;&#x76d1;&#x542c;&#xff0c;&#x5982;&#x4e0b;&#xff1a;&#xa;window.addEventListener(&apos;message&apos;, function(ev) {...}, false);&#xa;// ev.origin&#x53ef;&#x4ee5;&#x83b7;&#x53d6;&#x6d88;&#x606f;&#x7684;&#x53d1;&#x9001;&#x6e90;&#xff0c;&#x53d1;&#x9001;&#x6e90;&#x53ea;&#x5305;&#x62ec;&#x57df;&#x540d;&#x548c;&#x7aef;&#x53e3;&#x53f7;&#x3002;&#xa;// ev.data&#x53ef;&#x4ee5;&#x53d6;&#x5f97;&#x6d88;&#x606f;&#x5185;&#x5bb9;&#xa;// ev.source&#x53ef;&#x4ee5;&#x83b7;&#x53d6;&#x6d88;&#x606f;&#x53d1;&#x9001;&#x6e90;&#x7684;&#x7a97;&#x53e3;&#x5bf9;&#x8c61;&#xa;&#x4f7f;&#x7528;&#x76ee;&#x6807;&#x7a97;&#x53e3;&#x7684;Window&#x5bf9;&#x8c61;&#x7684;postMessage&#x65b9;&#x6cd5;&#x5411;&#x5176;&#x4ed6;&#x7a97;&#x53e3;&#x53d1;&#x9001;&#x6d88;&#x606f;&#xff08;&#x6ce8;&#x610f;&#xff1a;&#x8981;&#x5bf9;&#x54ea;&#x4e2a;&#x7a97;&#x53e3;&#x53d1;&#x9001;&#x6d88;&#x606f;&#xff0c;&#x5c31;&#x8c03;&#x7528;&#x8be5;&#x7a97;&#x53e3;&#x7684;postMessage&#x65b9;&#x6cd5;&#xff09;&#xff0c;&#x5b9a;&#x4e49;&#x5982;&#x4e0b;&#xff1a;&#xa;otherWindow.postMessage(message, targetOrigin);&#xa;message&#xff1a;&#x53d1;&#x9001;&#x7684;&#x6d88;&#x606f;&#x6587;&#x672c;&#xff0c;&#x4e5f;&#x53ef;&#x4ee5;&#x662f;&#x4efb;&#x4f55;JavaScript&#x5bf9;&#x8c61;&#xa;targetOrigin&#xff1a;&#x63a5;&#x6536;&#x6d88;&#x606f;&#x7684;&#x5bf9;&#x8c61;&#x7a97;&#x53e3;&#x7684;URL&#x5730;&#x5740;&#xff08;&#x7531;&#x534f;&#x8bae;&#x3001;&#x57df;&#x540d;&#x3001;&#x7aef;&#x53e3;&#x7ec4;&#x6210;&#xff0c;&#x4f8b;&#x5982;http://localhost:8080/&#xff09;&#x3002;&#x53ef;&#x4ee5;&#x5728;URL&#x5730;&#x5740;&#x5b57;&#x7b26;&#x4e32;&#x4e2d;&#x4f7f;&#x7528;&#x901a;&#x914d;&#x7b26;*&#x6307;&#x5b9a;&#x5168;&#x90e8;&#x5730;&#x5740;&#xff0c;&#x4e0d;&#x8fc7;&#xff0c;&#x5efa;&#x8bae;&#x4f7f;&#x7528;&#x51c6;&#x786e;&#x7684;URL&#x5730;&#x5740;&#x3002;&#xa;2&#x3001;&#x5b9e;&#x4f8b;&#xa;3&#x3001;ff4&#x3001;safari4&#x3001;chrome8&#x3001;opera10&#x90fd;&#x652f;&#x6301;&#x8fd9;&#x79cd;&#x8de8;&#x6587;&#x6863;&#x7684;&#x6d88;&#x606f;&#x4f20;&#x8f93;&#x6a21;&#x5f0f;"/>
<node CREATED="1333278348857" ID="Freemind_Link_1659477291" MODIFIED="1333280139360" POSITION="right" TEXT="web sockets&#x901a;&#x4fe1;&#xa;1&#x3001;&#x57fa;&#x7840;&#x77e5;&#x8bc6;&#xa;1&#xff09;&#x3001;&#x4f7f;&#x7528;web sockets api&#x53ef;&#x4ee5;&#x5728;&#x670d;&#x52a1;&#x5668;&#x548c;&#x5ba2;&#x6237;&#x7aef;&#x4e4b;&#x95f4;&#x5efa;&#x7acb;&#x4e00;&#x4e2a;&#x975e;HTTP&#x7684;&#x53cc;&#x5411;&#x8fde;&#x63a5;&#x3002;&#x8fd9;&#x4e2a;&#x8fde;&#x63a5;&#x662f;&#x5b9e;&#x65f6;&#x7684;&#xff0c;&#x4e5f;&#x662f;&#x6c38;&#x4e45;&#x7684;&#xff0c;&#x9664;&#x975e;&#x88ab;&#x663e;&#x5f0f;&#x5173;&#x95ed;&#x3002;&#xa;2&#x3001;&#x4f7f;&#x7528;&#xa;1&#xff09;&#x3001;&#x5c06;URL&#x5b57;&#x7b26;&#x4e32;&#x4f5c;&#x4e3a;&#x53c2;&#x6570;&#xff0c;&#x7136;&#x540e;&#x8c03;&#x7528;WebSocket&#x5bf9;&#x8c61;&#x7684;&#x6784;&#x9020;&#x5668;&#x6765;&#x5efa;&#x7acb;&#x548c;&#x670d;&#x52a1;&#x5668;&#x4e4b;&#x95f4;&#x7684;&#x901a;&#x4fe1;&#x8fde;&#x63a5;&#xff0c;&#x5982;&#x4e0b;&#xff1a;&#xa;var ws = new WebSocket(&apos;ws://localhost:8080/sockey&apos;);&#xa;url&#x5b57;&#x7b26;&#x4e32;&#x5fc5;&#x987b;&#x4ee5;&#x201c;ws&#x201d;&#x6216;&#x201c;wss&#x201d;&#xff08;&#x52a0;&#x5bc6;&#x901a;&#x4fe1;&#x65f6;&#xff09;&#x6587;&#x5b57;&#x4f5c;&#x4e3a;&#x5f00;&#x5934;&#x3002;&#x8fd9;&#x4e2a;url&#x5b57;&#x7b26;&#x4e32;&#x88ab;&#x8bbe;&#x5b9a;&#x597d;&#x4e4b;&#x540e;&#xff0c;&#x5728;JavaScript&#x811a;&#x672c;&#x4e2d;&#x53ef;&#x4ee5;&#x901a;&#x8fc7;&#x8bbf;&#x95ee;WebSocket&#x5bf9;&#x8c61;&#x7684;url&#x5c5e;&#x6027;&#x6765;&#x91cd;&#x65b0;&#x83b7;&#x53d6;&#x3002;&#xa;2&#xff09;&#x3001;&#x901a;&#x4fe1;&#x8fde;&#x63a5;&#x5efa;&#x7acb;&#x597d;&#x4e4b;&#x540e;&#xff0c;&#x5c31;&#x53ef;&#x4ee5;&#x8fdb;&#x884c;&#x5ba2;&#x6237;&#x7aef;&#x548c;&#x670d;&#x52a1;&#x5668;&#x7aef;&#x7684;&#x53cc;&#x5411;&#x901a;&#x4fe1;&#x4e86;&#x3002;&#x4f7f;&#x7528;WebSocket&#x5bf9;&#x8c61;&#x7684;send&#x65b9;&#x6cd5;&#x5bf9;&#x670d;&#x52a1;&#x5668;&#x53d1;&#x9001;&#x6570;&#x636e;&#xff0c;&#x53ea;&#x80fd;&#x53d1;&#x9001;&#x6587;&#x672c;&#x6570;&#x636e;&#xff0c;&#x4f46;&#x662f;&#x53ef;&#x4ee5;&#x4f7f;&#x7528;JSON&#x5bf9;&#x8c61;&#x628a;&#x4efb;&#x4f55;JavaScript&#x5bf9;&#x8c61;&#x8f6c;&#x6362;&#x6210;&#x6587;&#x672c;&#x6570;&#x636e;&#x4e4b;&#x540e;&#x8fdb;&#x884c;&#x53d1;&#x9001;&#x3002;&#x5982;&#x4e0b;&#xff1a;&#xa;ws.send(&apos;data&apos;);&#xa;3&#xff09;&#x3001;&#x901a;&#x8fc7;&#x83b7;&#x53d6;onmessage&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x6765;&#x63a5;&#x6536;&#x670d;&#x52a1;&#x5668;&#x4f20;&#x8fc7;&#x6765;&#x7684;&#x6570;&#x636e;&#xff0c;&#x5982;&#x4e0b;&#xff1a;&#xa;ws.onmessage = function(ev) {&#xa;           var data = ev.data;&#xa;           ...&#xa;}&#xa;4&#xff09;&#x3001;&#x901a;&#x8fc7;&#x83b7;&#x53d6;onopen&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x6765;&#x76d1;&#x542c;socket&#x7684;&#x6253;&#x5f00;&#x4e8b;&#x4ef6;&#xff0c;&#x5982;&#x4e0b;&#xff1a;&#xa;ws.onopen = function(ev) {&#xa;        // &#x5f00;&#x59cb;&#x901a;&#x4fe1;&#x65f6;&#x7684;&#x5904;&#x7406;&#xa;}&#xa;5&#xff09;&#x3001;&#x901a;&#x8fc7;&#x83b7;&#x53d6;onclose&#x4e8b;&#x4ef6;&#x6765;&#x76d1;&#x542c;socket&#x7684;&#x5173;&#x95ed;&#x4e8b;&#x4ef6;&#xff0c;&#x5982;&#x4e0b;&#xff1a;&#xa;ws.onclose = function(ev) {&#xa;         // &#x901a;&#x4fe1;&#x7ed3;&#x675f;&#x65f6;&#x7684;&#x5904;&#x7406;&#xa;}&#xa;6&#xff09;&#x3001;&#x901a;&#x8fc7;close&#x65b9;&#x6cd5;&#x6765;&#x5173;&#x95ed;socket&#xff0c;&#x5207;&#x65ad;&#x901a;&#x4fe1;&#x8fde;&#x63a5;&#xff0c;&#x5982;&#x4e0b;&#xff1a;&#xa;ws.close();&#xa;7&#xff09;&#x3001;&#x53e6;&#x5916;&#xff0c;&#x53ef;&#x4ee5;&#x901a;&#x8fc7;&#x8bfb;&#x53d6;readyState&#x7684;&#x5c5e;&#x6027;&#x503c;&#x6765;&#x83b7;&#x53d6;WebSocket&#x5bf9;&#x8c61;&#x7684;&#x72b6;&#x6001;&#x3002;&#x8be5;&#x5c5e;&#x6027;&#x6709;&#x4ee5;&#x4e0b;&#x53ef;&#x80fd;&#x503c;&#xff1a;&#xa;CONNECTING&#xff08;&#x6570;&#x5b57;&#x503c;0&#xff09;&#xff1a;&#x6b63;&#x5728;&#x8fde;&#x63a5;&#xa;OPEN&#xff08;&#x6570;&#x5b57;&#x503c;1&#xff09;&#xff1a;&#x5df2;&#x5efa;&#x7acb;&#x8fde;&#x63a5;&#xa;CLOSING&#xff08;&#x6570;&#x5b57;&#x503c;2&#xff09;&#xff1a;&#x6b63;&#x5728;&#x5173;&#x95ed;&#x8fde;&#x63a5;&#xa;CLOSED&#xff08;&#x6570;&#x5b57;&#x503c;3&#xff09;&#xff1a;&#x5df2;&#x5173;&#x95ed;&#x8fde;&#x63a5;&#xa;3&#x3001;&#x5b9e;&#x4f8b;&#xa;4&#x3001;&#x53d1;&#x9001;&#x5bf9;&#x8c61;&#xa;1&#xff09;&#x3001;&#x501f;&#x52a9;JSON&#x5bf9;&#x8c61;&#x7684;&#x5904;&#x7406;&#x5b9e;&#x73b0;"/>
</node>
</map>
