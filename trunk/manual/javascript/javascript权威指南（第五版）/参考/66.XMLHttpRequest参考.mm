<map version="0.8.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1302744582085" ID="Freemind_Link_1755801840" MODIFIED="1329056169125" TEXT="XMLHttpRequest&#x53c2;&#x8003;(tom.wang) &#xa;Object-&gt;XMLHttpRequest&#xa;Follow&#xff1a;http://t.qq.com/superlinyzu">
<node CREATED="1329057635468" ID="Freemind_Link_265436395" MODIFIED="1329059245281" POSITION="right" TEXT="&#x6982;&#x8ff0;&#xa;1&#x3001;&#x901a;&#x5e38;&#xff0c;&#x6309;&#x7167;&#x4ee5;&#x4e0b;&#x6b65;&#x9aa4;&#x4f7f;&#x7528;&#xff1a;&#xa;&#xff08;1&#xff09;&#x3001;&#x8c03;&#x7528;open&#x6307;&#x5b9a;&#x8bf7;&#x6c42;&#x7684;URL&#x548c;&#x65b9;&#x6cd5;&#x3002;&#x540c;&#x65f6;&#x6307;&#x5b9a;&#x662f;&#x540c;&#x6b65;&#x8bf7;&#x6c42;&#x8fd8;&#x662f;&#x5f02;&#x6b65;&#x8bf7;&#x6c42;&#x3002;&#xa;&#xff08;2&#xff09;&#x3001;&#x5982;&#x679c;&#x6307;&#x5b9a;&#x4e86;&#x5f02;&#x6b65;&#x8bf7;&#x6c42;&#xff0c;&#x628a;onreadystatechange&#x5c5e;&#x6027;&#x8bbe;&#x7f6e;&#x4e3a;&#x8bf7;&#x6c42;&#x8fdb;&#x7a0b;&#x9700;&#x8981;&#x901a;&#x77e5;&#x5230;&#x7684;&#x51fd;&#x6570;&#x3002;&#xa;&#xff08;3&#xff09;&#x3001;&#x8c03;&#x7528;setRequestHeader()&#xff0c;&#x5982;&#x679c;&#x9700;&#x8981;&#x7684;&#x8bdd;&#xff0c;&#x6307;&#x5b9a;&#x989d;&#x5916;&#x7684;&#x8bf7;&#x6c42;&#x53c2;&#x6570;&#x3002;&#xa;&#xff08;4&#xff09;&#x3001;&#x8c03;&#x7528;send&#x6765;&#x5411;web&#x670d;&#x52a1;&#x5668;&#x53d1;&#x9001;&#x8bf7;&#x6c42;&#x3002;&#x5982;&#x679c;&#x8fd9;&#x662f;&#x4e00;&#x4e2a;POST&#x8bf7;&#x6c42;&#xff0c;&#x53ef;&#x80fd;&#x8981;&#x7ed9;&#x8fd9;&#x4e2a;&#x65b9;&#x6cd5;&#x4f20;&#x9012;&#x4e00;&#x4e2a;&#x8bf7;&#x6c42;&#x4f53;&#x3002;&#x5982;&#x679c;&#x5728;&#x8c03;&#x7528;open()&#x7684;&#x65f6;&#x5019;&#x6307;&#x5b9a;&#x4e86;&#x4e00;&#x4e2a;&#x540c;&#x6b65;&#x8bf7;&#x6c42;&#xff0c;send()&#x65b9;&#x6cd5;&#x4f1a;&#x963b;&#x585e;&#xff0c;&#x6307;&#x5b9a;&#x8bf7;&#x6c42;&#x5b8c;&#x6210;&#x5e76;&#x4e14;readyState&#x4e3a;4&#x3002;&#x5426;&#x5219;&#xff0c;onreadystatechange&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x51fd;&#x6570;&#x5fc5;&#x987b;&#x7b49;&#x5230;readyState&#x5c5e;&#x6027;&#x8fbe;&#x5230;4&#xff08;&#x6216;&#x8005;&#x81f3;&#x5c11;&#x662f;3&#xff09;&#x3002;&#xa;&#xff08;5&#xff09;&#x3001;&#x4e00;&#x65e6;send&#x5df2;&#x7ecf;&#x4e3a;&#x540c;&#x6b65;&#x8bf7;&#x6c42;&#x800c;&#x8fd4;&#x56de;&#xff0c;&#x6216;&#x8005;readyState&#x5df2;&#x7ecf;&#x4e3a;&#x5f02;&#x6b65;&#x8bf7;&#x6c42;&#x800c;&#x8fbe;&#x5230;4&#xff0c;&#x5c31;&#x53ef;&#x4ee5;&#x4f7f;&#x7528;&#x670d;&#x52a1;&#x5668;&#x54cd;&#x5e94;&#x4e86;&#x3002;&#x9996;&#x5148;&#xff0c;&#x67e5;&#x770b;&#x72b6;&#x6001;&#x4ee3;&#x7801;&#x786e;&#x4fdd;&#x8bf7;&#x6c42;&#x6210;&#x529f;&#x3002;&#x5982;&#x679c;&#x662f;&#x6210;&#x529f;&#x7684;&#xff0c;&#x4f7f;&#x7528;getResponseHeader()&#x6216;getResponseHeaders()&#x83b7;&#x53d6;&#x54cd;&#x5e94;&#x5934;&#x90e8;&#x7684;&#x503c;&#xff0c;&#x5e76;&#x4e14;&#x4f7f;&#x7528;responseText&#x6216;responseXML&#x5c5e;&#x6027;&#x6765;&#x83b7;&#x53d6;&#x54cd;&#x5e94;&#x4f53;&#x3002;"/>
<node CREATED="1329056173546" ID="_" MODIFIED="1329056275234" POSITION="right" TEXT="&#x6784;&#x9020;&#x51fd;&#x6570;&#xa;1&#x3001;new XMLHttpRequest() //&#x9664;IE5&#x3001;IE6&#x4ee5;&#x5916;&#x7684;&#x6d4f;&#x89c8;&#x5668;&#x3002;&#xa;2&#x3001;new ActiveXObject(&apos;Msxml2.XMLHTTP&apos;) //IE&#xa;3&#x3001;new ActiveXObject(&apos;Microsoft.XMLHTTP&apos;) //IE&#xff08;&#x8001;&#x7cfb;&#x7edf;&#x4e2d;&#xff09;"/>
<node CREATED="1329056276968" ID="Freemind_Link_314952557" MODIFIED="1329057211828" POSITION="right" TEXT="&#x5c5e;&#x6027;&#xa;1&#x3001;short readyState&#xff1a;&#x53ea;&#x8bfb;&#xff0c;HTTP&#x8bf7;&#x6c42;&#x7684;&#x72b6;&#x6001;&#x3002;&#x5f53;&#x4e00;&#x4e2a;XMLHttpRequest&#x521d;&#x6b21;&#x521b;&#x5efa;&#x7684;&#x65f6;&#x5019;&#xff0c;&#x8fd9;&#x4e2a;&#x5c5e;&#x6027;&#x7684;&#x503c;&#x4ece;0&#x5f00;&#x59cb;&#xff0c;&#x76f4;&#x5230;&#x63a5;&#x6536;&#x5230;&#x5b8c;&#x6574;&#x7684;HTTP&#x54cd;&#x5e94;&#xff0c;&#x8fd9;&#x4e2a;&#x503c;&#x589e;&#x52a0;&#x5230;4&#x3002;&#xa;&#xff08;1&#xff09;&#x3001;5&#x4e2a;&#x72b6;&#x6001;&#x4e2d;&#x7684;&#x6bcf;&#x4e00;&#x4e2a;&#x90fd;&#x6709;&#x4e00;&#x4e2a;&#x76f8;&#x5173;&#x8054;&#x7684;&#x975e;&#x6b63;&#x5f0f;&#x7684;&#x540d;&#x79f0;&#xff0c;&#x5982;&#x4e0b;&#xff1a;&#xa;&#x72b6;&#x6001;     &#x540d;&#x79f0;                            &#x63cf;&#x8ff0;&#xa;0           Uninitialized             &#x8fd9;&#x662f;&#x521d;&#x59cb;&#x5316;&#x72b6;&#x6001;&#x3002;XMLHttpRequest&#x5bf9;&#x8c61;&#x5df2;&#x7ecf;&#x521b;&#x5efa;&#x6216;&#x8005;&#x5df2;&#x7ecf;&#x88ab;abort()&#x65b9;&#x6cd5;&#x91cd;&#x7f6e;&#xa;1           Open                         open&#x65b9;&#x6cd5;&#x5df2;&#x7ecf;&#x8c03;&#x7528;&#xff0c;&#x4f46;send&#x8fd8;&#x6ca1;&#x6709;&#x8c03;&#x7528;&#x3002;&#x8bf7;&#x6c42;&#x8fd8;&#x6ca1;&#x6709;&#x88ab;&#x53d1;&#x9001;&#xa;2           Sent                           send&#x65b9;&#x6cd5;&#x5df2;&#x7ecf;&#x8c03;&#x7528;&#xff0c;HTTP&#x8bf7;&#x6c42;&#x5df2;&#x7ecf;&#x53d1;&#x9001;&#x5230;&#x670d;&#x52a1;&#x5668;&#x3002;&#x8fd8;&#x6ca1;&#x6709;&#x63a5;&#x6536;&#x5230;&#x54cd;&#x5e94;&#xa;3           Receiving                 &#x6240;&#x6709;&#x54cd;&#x5e94;&#x5934;&#x90e8;&#x90fd;&#x63a5;&#x6536;&#x5230;&#x4e86;&#x3002;&#x54cd;&#x5e94;&#x4f53;&#x5f00;&#x59cb;&#x63a5;&#x6536;&#x4f46;&#x8fd8;&#x6ca1;&#x6709;&#x5b8c;&#x6210;&#xa;4           Loaded                     HTTP&#x54cd;&#x5e94;&#x5df2;&#x7ecf;&#x5b8c;&#x5168;&#x63a5;&#x6536;&#x4e86;&#xa;&#xff08;2&#xff09;&#x3001;readyState&#x7684;&#x503c;&#x4e0d;&#x4f1a;&#x9012;&#x51cf;&#xff0c;&#x9664;&#x975e;&#x5f53;&#x4e00;&#x4e2a;&#x8bf7;&#x6c42;&#x5df2;&#x7ecf;&#x5728;&#x5904;&#x7406;&#x8fc7;&#x7a0b;&#x4e2d;&#x7684;&#x65f6;&#x5019;&#x8c03;&#x7528;&#x4e86;abort()&#x6216;open()&#x65b9;&#x6cd5;&#x3002;&#x6bcf;&#x6b21;&#x8fd9;&#x4e2a;&#x5c5e;&#x6027;&#x7684;&#x503c;&#x589e;&#x52a0;&#x7684;&#x65f6;&#x5019;&#xff0c;&#x90fd;&#x4f1a;&#x89e6;&#x53d1;onreadystatechange&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x3002;&#xa;2&#x3001;string responseText&#xff1a;&#x53ea;&#x8bfb;&#xff0c;&#x76ee;&#x524d;&#x4e3a;&#x6b62;&#x5df2;&#x7ecf;&#x4ece;&#x670d;&#x52a1;&#x5668;&#x63a5;&#x53d7;&#x5230;&#x7684;&#x54cd;&#x5e94;&#x4f53;&#xff08;&#x4e0d;&#x5305;&#x62ec;&#x5934;&#x90e8;&#xff09;&#xff0c;&#x6216;&#x8005;&#x5982;&#x679c;&#x8fd8;&#x6ca1;&#x6709;&#x6570;&#x636e;&#x63a5;&#x6536;&#x5230;&#x7684;&#x8bdd;&#xff0c;&#x5c31;&#x662f;&#x7a7a;&#x5b57;&#x7b26;&#x4e32;&#x3002;&#x5982;&#x679c;readyState&#x5c0f;&#x4e8e;3&#xff0c;&#x8fd9;&#x4e2a;&#x5c5e;&#x6027;&#x5c31;&#x662f;&#x4e00;&#x4e2a;&#x7a7a;&#x5b57;&#x7b26;&#x4e32;&#x3002;&#x5f53;readyState&#x4e3a;3&#xff0c;&#x8fd9;&#x4e2a;&#x5c5e;&#x6027;&#x8fd4;&#x56de;&#x76ee;&#x524d;&#x5df2;&#x7ecf;&#x63a5;&#x6536;&#x7684;&#x54cd;&#x5e94;&#x90e8;&#x5206;&#x3002;&#x5982;&#x679c;readyState&#x4e3a;4&#xff0c;&#x8fd9;&#x4e2a;&#x5c5e;&#x6027;&#x4fdd;&#x5b58;&#x4e86;&#x5b8c;&#x6574;&#x7684;&#x54cd;&#x5e94;&#x4f53;&#x3002;&#xa;&#xff08;1&#xff09;&#x3001;&#x5982;&#x679c;&#x54cd;&#x5e94;&#x5305;&#x542b;&#x4e86;&#x4e3a;&#x54cd;&#x5e94;&#x4f53;&#x6307;&#x5b9a;&#x5b57;&#x7b26;&#x7f16;&#x7801;&#x7684;&#x5934;&#x90e8;&#xff0c;&#x5c31;&#x4f7f;&#x7528;&#x8be5;&#x7f16;&#x7801;&#x3002;&#x5426;&#x5219;&#xff0c;&#x5047;&#x5b9a;&#x4f7f;&#x7528;Unicode UTF-8&#x3002;&#xa;3&#x3001;Document responseXML&#xff1a;&#x53ea;&#x8bfb;&#xff0c;&#x5bf9;&#x8bf7;&#x6c42;&#x7684;&#x54cd;&#x5e94;&#xff0c;&#x89e3;&#x6790;&#x4e3a;XML&#x5e76;&#x4f5c;&#x4e3a;Document&#x5bf9;&#x8c61;&#x8fd4;&#x56de;&#x3002;&#x5f53;&#x4e0b;&#x9762;3&#x4e2a;&#x6761;&#x4ef6;&#x90fd;&#x4e3a;&#x771f;&#x7684;&#x65f6;&#x5019;&#xff0c;&#x8fd9;&#x4e2a;&#x5c5e;&#x6027;&#x4e0d;&#x4e3a;null&#xff1a;&#xa;&#xff08;1&#xff09;&#x3001;readyState&#x4e3a;4&#xa;&#xff08;2&#xff09;&#x3001;&#x54cd;&#x5e94;&#x5305;&#x542b;&#x4e00;&#x4e2a;&#x5934;&#x90e8;&#x4e3a;&#x201c;text/xml&#x201d;&#x3001;&#x201c;application/xml&#x201d;&#x6216;&#x4efb;&#x4f55;&#x4ee5;&#x201c;+xml&#x201d;&#x7ed3;&#x5c3e;&#x7684;content-type&#xff0c;&#x8868;&#x793a;&#x54cd;&#x5e94;&#x662f;&#x4e00;&#x4e2a;XML&#x6587;&#x6863;&#xa;&#xff08;3&#xff09;&#x3001;&#x54cd;&#x5e94;&#x4f53;&#x7531;&#x6574;&#x9f50;&#x7684;&#x3001;&#x89e3;&#x6790;&#x6ca1;&#x6709;&#x9519;&#x8bef;&#x7684;XML&#x6807;&#x8bb0;&#x7ec4;&#x6210;&#xa;4&#x3001;short status&#xff1a;&#x53ea;&#x8bfb;&#xff0c;&#x7531;&#x670d;&#x52a1;&#x5668;&#x8fd4;&#x56de;&#x7684;HTTP&#x72b6;&#x6001;&#x4ee3;&#x7801;&#xff0c;&#x5982;200&#x8868;&#x793a;&#x6210;&#x529f;&#xff0c;&#x800c;404&#x8868;&#x793a;&#x201c;Not Found&#x201d;&#x9519;&#x8bef;&#x3002;&#x5f53;readyState&#x5c0f;&#x4e8e;3&#x7684;&#x65f6;&#x5019;&#x8bfb;&#x53d6;&#x8fd9;&#x4e2a;&#x5c5e;&#x6027;&#x5c06;&#x4f1a;&#x5bfc;&#x81f4;&#x4e00;&#x4e2a;&#x5f02;&#x5e38;&#x3002;&#xa;5&#x3001;string statusText&#xff1a;&#x53ea;&#x8bfb;&#xff0c;&#x8fd9;&#x4e2a;&#x5c5e;&#x6027;&#x7528;&#x540d;&#x79f0;&#x800c;&#x4e0d;&#x662f;&#x6570;&#x5b57;&#x6307;&#x5b9a;&#x4e86;&#x8bf7;&#x6c42;&#x7684;HTTP&#x7684;&#x72b6;&#x6001;&#x4ee3;&#x7801;&#x3002;&#x4e5f;&#x5c31;&#x662f;&#x8bf4;&#xff0c;&#x5f53;&#x72b6;&#x6001;&#x4e3a;200&#x7684;&#x65f6;&#x5019;&#x5b83;&#x662f;&#x201c;OK&#x201d;&#xff0c;404&#x7684;&#x65f6;&#x5019;&#x5b83;&#x662f;&#x201c;Not Found&#x201d;&#x3002;&#x548c;status&#x5c5e;&#x6027;&#x4e00;&#x6837;&#xff0c;&#x5f53;readyState&#x5c0f;&#x4e8e;3&#x7684;&#x65f6;&#x5019;&#x8bfb;&#x53d6;&#x8fd9;&#x4e2a;&#x5c5e;&#x6027;&#x5c06;&#x4f1a;&#x5bfc;&#x81f4;&#x4e00;&#x4e2a;&#x5f02;&#x5e38;&#x3002;"/>
<node CREATED="1329057216234" ID="Freemind_Link_1817626257" MODIFIED="1329141951625" POSITION="right" TEXT="&#x65b9;&#x6cd5;&#xa;1&#x3001;void abort()&#xff1a;&#x53d6;&#x6d88;&#x5f53;&#x524d;&#x54cd;&#x5e94;&#xff0c;&#x5173;&#x95ed;&#x8fde;&#x63a5;&#x5e76;&#x4e14;&#x7ed3;&#x675f;&#x4efb;&#x4f55;&#x672a;&#x51b3;&#x7684;&#x7f51;&#x7edc;&#x6d3b;&#x52a8;&#x3002;&#xa;&#xff08;1&#xff09;&#x3001;&#x5c06;readyState&#x91cd;&#x7f6e;&#x4e3a;0&#xff0c;&#x5e76;&#x4e14;&#x53d6;&#x6d88;&#x6240;&#x6709;&#x672a;&#x51b3;&#x7684;&#x7f51;&#x7edc;&#x6d3b;&#x52a8;&#x3002;&#x4f8b;&#x5982;&#xff0c;&#x5982;&#x679c;&#x8bf7;&#x6c42;&#x7528;&#x4e86;&#x592a;&#x957f;&#x65f6;&#x95f4;&#xff0c;&#x800c;&#x4e14;&#x54cd;&#x5e94;&#x4e0d;&#x518d;&#x5fc5;&#x8981;&#x7684;&#x65f6;&#x5019;&#xff0c;&#x53ef;&#x4ee5;&#x8c03;&#x7528;&#x8fd9;&#x4e2a;&#x65b9;&#x6cd5;&#x3002;&#xa;2&#x3001;string getAllResponseHeaders()&#xff1a;&#x628a;HTTP&#x54cd;&#x5e94;&#x5934;&#x90e8;&#x4f5c;&#x4e3a;&#x672a;&#x89e3;&#x6790;&#x7684;&#x5b57;&#x7b26;&#x4e32;&#x8fd4;&#x56de;&#x3002;&#xa;&#xff08;1&#xff09;&#x3001;&#x5982;&#x679c;readyState&#x5c0f;&#x4e8e;3&#xff0c;&#x8fd4;&#x56de;null&#x3002;&#x5426;&#x5219;&#xff0c;&#x5b83;&#x8fd4;&#x56de;&#x670d;&#x52a1;&#x5668;&#x53d1;&#x9001;&#x7684;&#x6240;&#x6709;HTTP&#x54cd;&#x5e94;&#x7684;&#x5934;&#x90e8;&#xff08;&#x4f46;&#x662f;&#x6ca1;&#x6709;&#x72b6;&#x6001;&#x680f;&#xff09;&#x3002;&#x5934;&#x90e8;&#x4f5c;&#x4e3a;&#x5355;&#x4e2a;&#x7684;&#x5b57;&#x7b26;&#x4e32;&#x8fd4;&#x56de;&#xff0c;&#x4e00;&#x884c;&#x4e00;&#x4e2a;&#x5934;&#x90e8;&#x3002;&#x6bcf;&#x884c;&#x7528;&#x6362;&#x884c;&#x7b26;&#x201c;\r\n&#x201d;&#x9694;&#x5f00;&#x3002;&#xa;3&#x3001;string getResponseHeader(string header)&#xff1a;&#x8fd4;&#x56de;&#x6307;&#x5b9a;&#x7684;HTTP&#x54cd;&#x5e94;&#x5934;&#x7684;&#x503c;&#x3002;&#xa;&#xff08;1&#xff09;&#x3001;&#x8981;&#x88ab;&#x8fd4;&#x56de;&#x7684;http&#x54cd;&#x5e94;&#x5934;&#x90e8;&#x7684;&#x540d;&#x79f0;&#x3002;&#x4e0d;&#x533a;&#x5206;&#x5927;&#x5c0f;&#x5199;&#x3002;&#xa;&#xff08;2&#xff09;&#x3001;&#x8fd4;&#x56de;&#x6307;&#x5b9a;http&#x54cd;&#x5e94;&#x5934;&#x90e8;&#x7684;&#x503c;&#xff0c;&#x5982;&#x679c;&#x6ca1;&#x6709;&#x63a5;&#x6536;&#x5230;&#x8fd9;&#x4e2a;&#x5934;&#x90e8;&#x6216;&#x8005;readyState&#x5c0f;&#x4e8e;3&#x5219;&#x4e3a;&#x7a7a;&#x5b57;&#x7b26;&#x4e32;&#x3002;&#x5982;&#x679c;&#x63a5;&#x6536;&#x5230;&#x591a;&#x4e2a;&#x6709;&#x6307;&#x5b9a;&#x540d;&#x79f0;&#x7684;&#x5934;&#x90e8;&#xff0c;&#x8fd9;&#x4e9b;&#x5934;&#x90e8;&#x7684;&#x503c;&#x88ab;&#x8fde;&#x63a5;&#x8d77;&#x6765;&#x5e76;&#x8fd4;&#x56de;&#xff0c;&#x4f7f;&#x7528;&#x9017;&#x53f7;&#x548c;&#x7a7a;&#x683c;&#x5206;&#x9694;&#x5f00;&#x5404;&#x4e2a;&#x5934;&#x90e8;&#x7684;&#x503c;&#x3002;&#xa;4&#x3001;void open(string method, string url, boolean async, string username, string password)&#xff1a;&#x521d;&#x59cb;&#x5316;HTTP&#x54cd;&#x5e94;&#x53c2;&#x6570;&#xff0c;&#x4f8b;&#x5982;URL&#x548c;HTTP&#x65b9;&#x6cd5;&#xff0c;&#x4f46;&#x662f;&#x5e76;&#x4e0d;&#x53d1;&#x9001;&#x8bf7;&#x6c42;&#x3002;&#xa;&#xff08;1&#xff09;&#x3001;method&#xff1a;&#x7528;&#x4e8e;&#x8bf7;&#x6c42;&#x7684;HTTP&#x65b9;&#x6cd5;&#x3002;&#x53ef;&#x9760;&#x5b9e;&#x73b0;&#x7684;&#x503c;&#x5305;&#x62ec;GET POST HEAD&#x3002;&#x5b9e;&#x73b0;&#x4e5f;&#x53ef;&#x80fd;&#x652f;&#x6301;&#x5176;&#x4ed6;&#x65b9;&#x6cd5;&#x3002;&#xa;&#xff08;2&#xff09;&#x3001;url&#xff1a;&#x8fd9;&#x4e2a;&#x662f;&#x8bf7;&#x6c42;&#x7684;&#x4e3b;&#x4f53;&#x3002;&#x5927;&#x591a;&#x6570;&#x6d4f;&#x89c8;&#x5668;&#x5b9e;&#x65bd;&#x4e86;&#x4e00;&#x4e2a;&#x540c;&#x6e90;&#x5b89;&#x5168;&#x7b56;&#x7565;&#xff0c;&#x5e76;&#x4e14;&#x8981;&#x6c42;&#x8fd9;&#x4e2a;url&#x548c;&#x5305;&#x542b;&#x811a;&#x672c;&#x7684;&#x6587;&#x6863;&#x5177;&#x6709;&#x76f8;&#x540c;&#x7684;&#x4e3b;&#x673a;&#x540d;&#x548c;&#x7aef;&#x53e3;&#x3002;&#x76f8;&#x5173;&#x7684;url&#x4e5f;&#x7528;&#x6807;&#x51c6;&#x7684;&#x65b9;&#x5f0f;&#x89e3;&#x6790;&#xff0c;&#x4f7f;&#x7528;&#x5305;&#x542b;&#x811a;&#x672c;&#x7684;&#x6587;&#x6863;&#x7684;url&#x3002;&#xa;&#xff08;3&#xff09;&#x3001;async&#xff1a;&#x8bf7;&#x6c42;&#x662f;&#x5426;&#x5e94;&#x8be5;&#x5f02;&#x6b65;&#x5730;&#x6267;&#x884c;&#x3002;&#x5982;&#x679c;&#x8fd9;&#x4e2a;&#x53c2;&#x6570;&#x662f;false&#xff0c;&#x8bf7;&#x6c42;&#x662f;&#x540c;&#x6b65;&#x7684;&#xff0c;&#x540e;&#x7eed;&#x5bf9;send()&#x7684;&#x8c03;&#x7528;&#x5c06;&#x963b;&#x585e;&#xff0c;&#x76f4;&#x5230;&#x54cd;&#x5e94;&#x5b8c;&#x5168;&#x63a5;&#x6536;&#x3002;&#x5982;&#x679c;&#x8fd9;&#x4e2a;&#x53c2;&#x6570;&#x4e3a;true&#x6216;&#x8005;&#x7701;&#x7565;&#xff0c;&#x8bf7;&#x6c42;&#x662f;&#x5f02;&#x6b65;&#x7684;&#xff0c;&#x5e76;&#x4e14;&#x901a;&#x5e38;&#x9700;&#x8981;&#x4e00;&#x4e2a;onreadystatechange&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x3002;&#xa;&#xff08;4&#xff09;&#x3001;username&#x3001;password&#xff1a;&#x8fd9;&#x4e9b;&#x53ef;&#x9009;&#x7684;&#x53c2;&#x6570;&#x4e3a;&#x4f7f;&#x7528;url&#x6240;&#x9700;&#x7684;&#x6388;&#x6743;&#x6307;&#x660e;&#x4e86;&#x8ba4;&#x8bc1;&#x8d44;&#x683c;&#x3002;&#x5982;&#x679c;&#x6307;&#x5b9a;&#x4e86;&#xff0c;&#x5b83;&#x4eec;&#x4f1a;&#x8986;&#x76d6;url&#x81ea;&#x5df1;&#x6240;&#x6307;&#x5b9a;&#x7684;&#x4efb;&#x4f55;&#x8d44;&#x683c;&#x3002;&#xa;5&#x3001;void send(object body)&#xff1a;&#x53d1;&#x9001;HTTP&#x8bf7;&#x6c42;&#xff0c;&#x4f7f;&#x7528;&#x4f20;&#x9001;&#x7ed9;open()&#x65b9;&#x6cd5;&#x7684;&#x53c2;&#x6570;&#xff0c;&#x5df2;&#x7ecf;&#x4f20;&#x9012;&#x7ed9;&#x8be5;&#x65b9;&#x6cd5;&#x7684;&#x53ef;&#x9009;&#x8bf7;&#x7403;&#x4f53;&#x3002;&#xa;&#xff08;1&#xff09;&#x3001;body&#xff1a;&#x5982;&#x679c;&#x901a;&#x8fc7;&#x8c03;&#x7528;open()&#x6307;&#x5b9a;&#x7684;HTTP&#x65b9;&#x6cd5;&#x662f;&#x201c;POST&#x201d;&#x6216;&#x201c;PUT&#x201d;&#xff0c;&#x8fd9;&#x4e2a;&#x53c2;&#x6570;&#x6307;&#x5b9a;&#x4e86;&#x8bf7;&#x6c42;&#x4f53;&#xff0c;&#x4f5c;&#x4e3a;&#x4e00;&#x4e2a;&#x5b57;&#x7b26;&#x4e32;&#x6216;&#x8005;Document&#x5bf9;&#x8c61;&#xff0c;&#x5982;&#x679c;&#x8bf7;&#x6c42;&#x4f53;&#x4e0d;&#x662f;&#x5fc5;&#x987b;&#x7684;&#x8bdd;&#xff0c;&#x8fd9;&#x4e2a;&#x53c2;&#x6570;&#x5c31;&#x4e3a;null&#x3002;&#x5bf9;&#x4e8e;&#x4efb;&#x4f55;&#x5176;&#x4ed6;&#x65b9;&#x6cd5;&#xff0c;&#x8fd9;&#x4e2a;&#x53c2;&#x6570;&#x662f;&#x4e0d;&#x7528;&#x7684;&#xff0c;&#x5e94;&#x8be5;&#x4e3a;null&#xff08;&#x6709;&#x4e9b;&#x5b9e;&#x73b0;&#x4e0d;&#x5141;&#x8bb8;&#x7701;&#x7565;&#x8fd9;&#x4e2a;&#x53c2;&#x6570;&#xff09;&#x3002;&#xa;&#xff08;2&#xff09;&#x3001;&#x5982;&#x679c;&#x670d;&#x52a1;&#x5668;&#x54cd;&#x5e94;&#x5e26;&#x6709;&#x4e00;&#x4e2a;HTTP&#x91cd;&#x5b9a;&#x5411;&#xff0c;send()&#x65b9;&#x6cd5;&#x6216;&#x540e;&#x53f0;&#x7ebf;&#x7a0b;&#x81ea;&#x52a8;&#x9075;&#x4ece;&#x91cd;&#x5b9a;&#x5411;&#x3002;&#x5f53;&#x6240;&#x6709;&#x7684;HTTP&#x54cd;&#x5e94;&#x5934;&#x5df2;&#x7ecf;&#x63a5;&#x53d7;&#xff0c;send()&#x6216;&#x540e;&#x53f0;&#x7ebf;&#x7a0b;&#x628a;readyState&#x8bbe;&#x7f6e;&#x4e3a;3&#x5e76;&#x89e6;&#x53d1;onreadystatechange&#x4e8b;&#x4ef6;&#x3002;&#x5982;&#x679c;&#x54cd;&#x5e94;&#x8f83;&#x957f;&#xff0c;send()&#x6216;&#x540e;&#x53f0;&#x7ebf;&#x7a0b;&#x53ef;&#x80fd;&#x5728;&#x72b6;&#x6001;3&#x4e2d;&#x89e6;&#x53d1;onreadystatechange&#x4e8b;&#x4ef6;&#xff1a;&#x8fd9;&#x53ef;&#x4ee5;&#x4f5c;&#x4e3a;&#x4e00;&#x4e2a;&#x4e0b;&#x8f7d;&#x8fdb;&#x5ea6;&#x6307;&#x793a;&#x5668;&#x3002;&#x6700;&#x540e;&#xff0c;&#x5f53;&#x54cd;&#x5e94;&#x5b8c;&#x6210;&#xff0c;send()&#x6216;&#x540e;&#x53f0;&#x7ebf;&#x7a0b;&#x628a;readyState&#x8bbe;&#x7f6e;&#x4e3a;4&#xff0c;&#x5e76;&#x6700;&#x540e;&#x4e00;&#x6b21;&#x89e6;&#x53d1;onreadystatechange&#x4e8b;&#x4ef6;&#x3002;&#xa;6&#x3001;void setRequestHeader(string name, string value)&#xff1a;&#x5411;&#x4e00;&#x4e2a;&#x6253;&#x5f00;&#x4f46;&#x672a;&#x53d1;&#x9001;&#x7684;&#x8bf7;&#x6c42;&#x8bbe;&#x7f6e;&#x6216;&#x6dfb;&#x52a0;&#x4e00;&#x4e2a;HTTP&#x8bf7;&#x6c42;&#x5934;&#x3002;&#xa;&#xff08;1&#xff09;&#x3001;&#x5982;&#x679c;&#x5e26;&#x6709;&#x6307;&#x5b9a;&#x540d;&#x79f0;&#x7684;&#x5934;&#x90e8;&#x5df2;&#x7ecf;&#x88ab;&#x6307;&#x5b9a;&#x4e86;&#xff0c;&#x8fd9;&#x4e2a;&#x5934;&#x90e8;&#x7684;&#x65b0;&#x503c;&#x5c31;&#x662f;&#xff1a;&#x4e4b;&#x524d;&#x6307;&#x5b9a;&#x7684;&#x503c;&#xff0c;&#x52a0;&#x4e0a;&#x9017;&#x53f7;&#x3001;&#x7a7a;&#x767d;&#x4ee5;&#x53ca;&#x8fd9;&#x4e2a;&#x8c03;&#x7528;&#x6307;&#x5b9a;&#x7684;&#x503c;&#x3002;&#xa;&#xff08;2&#xff09;&#x3001;&#x5982;&#x679c;open()&#x8c03;&#x7528;&#x6307;&#x5b9a;&#x4e86;&#x8ba4;&#x8bc1;&#x8d44;&#x683c;&#xff0c;XMLHttpRequest&#x81ea;&#x52a8;&#x53d1;&#x9001;&#x4e00;&#x4e2a;&#x9002;&#x5f53;&#x7684;Authorization&#x8bf7;&#x6c42;&#x5934;&#x90e8;&#x3002;&#x4f46;&#x662f;&#xff0c;&#x4f60;&#x53ef;&#x4ee5;&#x4f7f;&#x7528;setRequestHeader()&#x6765;&#x6dfb;&#x52a0;&#x8fd9;&#x4e2a;&#x5934;&#x90e8;&#x3002;&#x7c7b;&#x4f3c;&#x5730;&#xff0c;&#x5982;&#x679c;web&#x670d;&#x52a1;&#x5668;&#x5df2;&#x7ecf;&#x4fdd;&#x5b58;&#x4e86;&#x548c;&#x4f20;&#x9012;&#x7ed9;open()&#x7684;URL&#x76f8;&#x5173;&#x8054;&#x7684;cookie&#xff0c;&#x9002;&#x5f53;&#x7684;Cookie&#x6216;Cookie2&#x5934;&#x90e8;&#x4e5f;&#x81ea;&#x52a8;&#x5730;&#x5305;&#x542b;&#x5230;&#x8bf7;&#x6c42;&#x4e2d;&#x3002;&#x53ef;&#x4ee5;&#x901a;&#x8fc7;&#x8c03;&#x7528;setRequestHeader()&#x6765;&#x628a;&#x8fd9;&#x4e9b;cookie&#x6dfb;&#x52a0;&#x5230;&#x5934;&#x90e8;&#x3002;XMLHttpRequest&#x4e5f;&#x53ef;&#x4ee5;&#x4e3a;User-Agent&#x5934;&#x90e8;&#x63d0;&#x4f9b;&#x4e00;&#x4e2a;&#x9ed8;&#x8ba4;&#x503c;&#x3002;&#x5982;&#x679c;&#x5b83;&#x8fd9;&#x4e48;&#x505a;&#xff0c;&#x4f60;&#x4e3a;&#x8be5;&#x5934;&#x90e8;&#x6307;&#x5b9a;&#x7684;&#x4efb;&#x4f55;&#x503c;&#x90fd;&#x4f1a;&#x6dfb;&#x52a0;&#x5230;&#x8fd9;&#x4e2a;&#x9ed8;&#x8ba4;&#x503c;&#x540e;&#x9762;&#x3002;&#xa;&#xff08;3&#xff09;&#x3001;&#x6709;&#x4e9b;&#x8bf7;&#x6c42;&#x5934;&#x90e8;&#x6709;XMLHttpRequest&#x81ea;&#x52a8;&#x8bbe;&#x7f6e;&#x800c;&#x4e0d;&#x662f;&#x7531;&#x8fd9;&#x4e2a;&#x65b9;&#x6cd5;&#x8bbe;&#x7f6e;&#xff0c;&#x4ee5;&#x7b26;&#x5408;HTTP&#x534f;&#x8bae;&#x3002;&#x8fd9;&#x5305;&#x62ec;&#x5982;&#x4e0b;&#x548c;&#x4ee3;&#x7406;&#x76f8;&#x5173;&#x7684;&#x5934;&#x90e8;&#xff1a;Host&#xff0c;Connection&#xff0c;Keep-Alive&#xff0c;Accept-Charset&#xff0c;Accept-Encoding&#xff0c;If-Modified-Since&#xff0c;If-None-Match&#xff0c;If-Range&#xff0c;Range&#x3002;"/>
<node CREATED="1329057421062" ID="Freemind_Link_813797133" MODIFIED="1329057614546" POSITION="right" TEXT="&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#xa;1&#x3001;onreadystatechange&#xff1a;&#x6bcf;&#x6b21;readyState&#x5c5e;&#x6027;&#x6539;&#x53d8;&#x7684;&#x65f6;&#x5019;&#x8c03;&#x7528;&#x7684;&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x3002;&#x5f53;readyState&#x4e3a;3&#x65f6;&#xff0c;&#x5b83;&#x4e5f;&#x53ef;&#x80fd;&#x8c03;&#x7528;&#x591a;&#x6b21;&#x3002;"/>
</node>
</map>
