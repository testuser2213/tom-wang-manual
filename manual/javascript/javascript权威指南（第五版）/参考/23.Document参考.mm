<map version="0.8.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1302744582085" ID="Freemind_Link_1755801840" MODIFIED="1324393305234" TEXT="Document&#x53c2;&#x8003;(tom.wang) &#xa;DOM1 Core&#xa;Node-&gt;Document&#xa;Follow&#xff1a;http://t.qq.com/superlinyzu">
<node CREATED="1324563861609" ID="Freemind_Link_421182348" MODIFIED="1324564429671" POSITION="right" TEXT="&#x6982;&#x8ff0;&#xa;1&#x3001;Document&#x63a5;&#x53e3;&#x662f;&#x6587;&#x6863;&#x6811;&#x7684;&#x6839;&#x8282;&#x70b9;&#x3002;&#x4e00;&#x4e2a;Document&#x8282;&#x70b9;&#x53ef;&#x4ee5;&#x5177;&#x6709;&#x591a;&#x4e2a;&#x5b50;&#x8282;&#x70b9;&#xff0c;&#x4f46;&#x5b83;&#x4eec;&#x4e2d;&#x53ea;&#x80fd;&#x6709;&#x4e00;&#x4e2a;Element&#x8282;&#x70b9;&#xff0c;&#x5373;&#x5b83;&#x662f;&#x6587;&#x6863;&#x7684;&#x6839;&#x5143;&#x7d20;&#x3002;&#x901a;&#x8fc7;documentElement&#x5c5e;&#x6027;&#x6700;&#x5bb9;&#x6613;&#x8bbf;&#x95ee;&#x6839;&#x5143;&#x7d20;&#x3002;&#x4f7f;&#x7528;doctype&#x5c5e;&#x6027;&#x548c;implementation&#x5c5e;&#x6027;&#x53ef;&#x4ee5;&#x8bbf;&#x95ee;&#x6587;&#x6863;&#x7684;DocumentType&#x5bf9;&#x8c61;&#xff08;&#x5982;&#x679c;&#x5b58;&#x5728;&#x7684;&#x8bdd;&#xff09;&#x548c;DOMImplementation&#x5bf9;&#x8c61;&#x3002;&#xa;2&#x3001;Document&#x63a5;&#x53e3;&#x5b9a;&#x4e49;&#x7684;&#x65b9;&#x6cd5;&#x5927;&#x591a;&#x6570;&#x90fd;&#x662f;&#x201c;&#x5de5;&#x5382;&#x65b9;&#x6cd5;&#x201d;&#xff0c;&#x7528;&#x4e8e;&#x521b;&#x5efa;&#x53ef;&#x4ee5;&#x63d2;&#x5165;&#x6587;&#x6863;&#x7684;&#x5404;&#x79cd;&#x7c7b;&#x578b;&#x7684;&#x8282;&#x70b9;&#x3002;&#x4f46;getElementById&#x65b9;&#x6cd5;&#x548c;getElementsByTagName&#x65b9;&#x6cd5;&#x662f;&#x4f8b;&#x5916;&#xff0c;&#x5b83;&#x4eec;&#x5bf9;&#x67e5;&#x627e;&#x6587;&#x6863;&#x6811;&#x4e2d;&#x6307;&#x5b9a;&#x7684;Element&#x6216;&#x76f8;&#x5173;Element&#x8282;&#x70b9;&#x7684;&#x96c6;&#x5408;&#x6765;&#x8bf4;&#x975e;&#x5e38;&#x6709;&#x7528;&#x3002;&#x5176;&#x4ed6;&#x7684;&#x4f8b;&#x5916;&#x662f;&#x50cf;addEventListener&#x8fd9;&#x6837;&#x7684;&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x6ce8;&#x518c;&#x65b9;&#x6cd5;&#x3002;&#x8fd9;&#x4e9b;&#x548c;&#x4e8b;&#x4ef6;&#x76f8;&#x5173;&#x7684;&#x65b9;&#x6cd5;&#x4e5f;&#x7531;Element&#x63a5;&#x53e3;&#x5b9a;&#x4e49;&#x4e86;&#x3002;&#xa;3&#x3001;&#x6700;&#x5e38;&#x89c1;&#x662f;&#x901a;&#x8fc7;Window&#x7684;document&#x5c5e;&#x6027;&#x6765;&#x83b7;&#x5f97;&#x4e00;&#x4e2a;Document&#x5bf9;&#x8c61;&#x3002;Document&#x5bf9;&#x8c61;&#x4e5f;&#x53ef;&#x4ee5;&#x901a;&#x8fc7;Frame&#x548c;IFrame&#x7684;contentDocument&#x5c5e;&#x6027;&#x6765;&#x83b7;&#x5f97;&#xff0c;&#x5e76;&#x4e14;&#x4e5f;&#x53ef;&#x4ee5;&#x901a;&#x8fc7;&#x6dfb;&#x52a0;&#x5230;&#x6587;&#x6863;&#x4e2d;&#x7684;&#x4efb;&#x4f55;Node&#x7684;ownerDocument&#x5c5e;&#x6027;&#x83b7;&#x5f97;&#x3002;&#xa;4&#x3001;&#x5982;&#x679c;&#x4f60;&#x4f7f;&#x7528;XML&#xff08;&#x5305;&#x62ec;XHTML&#xff09;&#xff0c;&#x53ef;&#x4ee5;&#x4f7f;&#x7528;DOMImplementation&#x7684;createDocument&#x65b9;&#x6cd5;&#x6765;&#x521b;&#x5efa;&#x4e00;&#x4e2a;&#x65b0;&#x7684;Document&#x5bf9;&#x8c61;&#xff1a;document.implementation.createDocument(nsURL, rootTagName, null)&#xff0c;&#x5728;IE&#x4e2d;&#xff0c;&#x4f60;&#x53ef;&#x80fd;&#x4f1a;&#x4f7f;&#x7528;&#x5982;&#x4e0b;&#x4ee3;&#x7801;&#xff1a;new ActiveXObject(&apos;MSXML2.DOMDocument&apos;)&#xa;5&#x3001;&#x4e5f;&#x53ef;&#x4ee5;&#x4ece;&#x7f51;&#x7edc;&#x8f7d;&#x5165;&#x4e00;&#x4e2a;XML&#x6587;&#x4ef6;&#xff0c;&#x5e76;&#x4e14;&#x5c06;&#x5b83;&#x89e3;&#x6790;&#x5230;&#x4e00;&#x4e2a;Document&#x5bf9;&#x8c61;&#x4e2d;&#x3002;&#x53c2;&#x9605;XMLHttpRequest&#x5bf9;&#x8c61;&#x7684;responseXML&#x5c5e;&#x6027;&#x3002;&#x4f60;&#x4e5f;&#x53ef;&#x4ee5;&#x628a;&#x4e00;&#x4e2a;XML&#x6807;&#x8bb0;&#x4e32;&#x89e3;&#x6790;&#x4e3a;&#x4e00;&#x4e2a;Document&#x5bf9;&#x8c61;&#xff0c;&#x53c2;&#x9605;DOMParser.parseFromString()&#x4ee5;&#x53ca;&#x7279;&#x5b9a;&#x4e8e;IE&#x7684;Document.loadXML()"/>
<node CREATED="1324393425640" ID="_" MODIFIED="1324393851125" POSITION="right" TEXT="&#x5c5e;&#x6027;&#xa;1&#x3001;defaultView&#xff1a;&#x53ea;&#x8bfb;&#xff0c;Window&#xff0c;web&#x6d4f;&#x89c8;&#x5668;&#x7684;Window&#x5bf9;&#x8c61;&#xff08;DOM&#x4e2d;&#x7684;&#x672f;&#x8bed;&#x53eb;&#x505a;&#x201c;&#x89c6;&#x56fe;&#x201d;&#xff09;&#xff0c;&#x6587;&#x6863;&#x5728;&#x5176;&#x4e2d;&#x663e;&#x793a;&#x3002;&#xa;2&#x3001;doctype&#xff1a;&#x53ea;&#x8bfb;&#xff0c;DocumentType&#xff0c;&#x5bf9;&#x4e8e;&#x5177;&#x6709;&lt;!doctype&gt;&#x58f0;&#x660e;&#x7684;XML&#x6587;&#x6863;&#x6765;&#x8bf4;&#xff0c;&#x8be5;&#x5c5e;&#x6027;&#x58f0;&#x660e;&#x4e86;&#x8868;&#x793a;&#x6587;&#x6863;&#x7684;DTD&#x7684;DocumentType&#x8282;&#x70b9;&#x3002;&#x5bf9;&#x4e8e;&#x6ca1;&#x6709;&lt;!doctype&gt;&#x58f0;&#x660e;&#x7684;HTML&#x6587;&#x6863;&#x548c;XML&#x6587;&#x6863;&#x6765;&#x8bf4;&#xff0c;&#x8be5;&#x5c5e;&#x6027;&#x4e3a;null&#x3002;&#xa;3&#x3001;documentElement&#xff1a;&#x53ea;&#x8bfb;&#xff0c;Element&#xff0c;&#x5bf9;&#x6587;&#x6863;&#x6839;&#x5143;&#x7d20;&#x7684;&#x5f15;&#x7528;&#x3002;&#x5bf9;&#x4e8e;HTML&#x6587;&#x6863;&#x6765;&#x8bf4;&#xff0c;&#x8be5;&#x5c5e;&#x6027;&#x603b;&#x662f;&#x8868;&#x793a;&lt;html&gt;&#x6807;&#x8bb0;&#x7684;Element&#x5bf9;&#x8c61;&#x3002;&#x901a;&#x8fc7;&#x4ece;Node&#x8282;&#x70b9;&#x7ee7;&#x627f;&#x7684;childNodes[]&#x6570;&#x7ec4;&#xff0c;&#x4e5f;&#x53ef;&#x4ee5;&#x8bbf;&#x95ee;&#x8fd9;&#x4e00;&#x6839;&#x5143;&#x7d20;&#x3002;&#xa;4&#x3001;implementation&#xff1a;&#x53ea;&#x8bfb;&#xff0c;DOMImplementation&#xff0c;&#x8868;&#x793a;&#x521b;&#x5efa;&#x8be5;&#x6587;&#x6863;&#x7684;&#x5b9e;&#x73b0;&#x7684;DOMImplementation&#x5bf9;&#x8c61;&#x3002;&#xa;5&#x3001;styleSheets&#xff0c;&#x53ea;&#x8bfb;&#xff0c;CSSStyleSheet[]&#xff0c;&#x8868;&#x793a;&#x5d4c;&#x5165;&#x6216;&#x94fe;&#x63a5;&#x5165;&#x6587;&#x6863;&#x7684;&#x6240;&#x6709;&#x6837;&#x5f0f;&#x8868;&#x7684;&#x5bf9;&#x8c61;&#x7684;&#x96c6;&#x5408;&#x3002;&#x5728;HTML&#x6587;&#x6863;&#x4e2d;&#xff0c;&#x8be5;&#x96c6;&#x5408;&#x901a;&#x5e38;&#x5305;&#x62ec;&lt;link&gt;&#x548c;&lt;style&gt;&#x6807;&#x8bb0;&#x5b9a;&#x4e49;&#x7684;&#x6837;&#x5f0f;&#x8868;&#x3002;"/>
<node CREATED="1324562325062" ID="Freemind_Link_904791419" MODIFIED="1324565739984" POSITION="right" TEXT="&#x65b9;&#x6cd5;&#xa;1&#x3001;addEventListener()&#xff1a;&#x4e3a;&#x8fd9;&#x4e2a;&#x6587;&#x6863;&#x7684;&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x96c6;&#x5408;&#x6dfb;&#x52a0;&#x4e00;&#x4e2a;&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x51fd;&#x6570;&#x3002;&#x8fd9;&#x662f;&#x9664;IE&#x4ee5;&#x5916;&#x7684;&#x6240;&#x6709;&#x7684;&#x73b0;&#x4ee3;&#x6d4f;&#x89c8;&#x5668;&#x90fd;&#x652f;&#x6301;&#x7684;&#x4e00;&#x4e2a;DOM&#x6807;&#x51c6;&#x65b9;&#x6cd5;&#x3002;&#xa;2&#x3001;attachEvent()&#xff1a;&#x4e3a;&#x8fd9;&#x4e2a;&#x6587;&#x6863;&#x7684;&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x96c6;&#x5408;&#x6dfb;&#x52a0;&#x4e00;&#x4e2a;&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x51fd;&#x6570;&#x3002;&#x8fd9;&#x662f;addEventListener&#x65b9;&#x6cd5;&#x7684;&#x7279;&#x5b9a;&#x4e8e;IE&#x7684;&#x66ff;&#x4ee3;&#x3002;&#xa;3&#x3001;createAttribute(string name)&#xff1a;&#x7528;&#x6307;&#x5b9a;&#x7684;&#x540d;&#x79f0;&#x521b;&#x5efa;&#x65b0;&#x7684;Attr&#x8282;&#x70b9;&#x3002;&#x8fd4;&#x56de;&#x65b0;&#x521b;&#x5efa;&#x7684;Attr&#x8282;&#x70b9;&#xff0c;nodeName&#x5c5e;&#x6027;&#x8bbe;&#x7f6e;&#x4e3a;name&#x3002;&#xa;&#xff08;1&#xff09;&#x3001;name&#xff1a;&#x65b0;&#x521b;&#x5efa;&#x7684;&#x5c5e;&#x6027;&#x7684;&#x540d;&#x5b57;&#x3002;&#xa;4&#x3001;createAttributeNS(string nsURL, string qualifiedName)&#xff1a;&#x7528;&#x6307;&#x5b9a;&#x7684;&#x540d;&#x79f0;&#x548c;&#x540d;&#x5b57;&#x7a7a;&#x95f4;&#x521b;&#x5efa;&#x65b0;&#x7684;Attr&#x8282;&#x70b9;&#x3002;&#x8fd4;&#x56de;&#x65b0;&#x521b;&#x5efa;&#x7684;Attr&#x8282;&#x70b9;&#xff0c;&#x5177;&#x6709;&#x6307;&#x5b9a;&#x7684;&#x540d;&#x79f0;&#x548c;&#x540d;&#x5b57;&#x7a7a;&#x95f4;&#x3002;&#x53ea;&#x6709;&#x4f7f;&#x7528;&#x540d;&#x5b57;&#x7a7a;&#x95f4;&#x7684;XML&#x6587;&#x6863;&#x624d;&#x4f1a;&#x4f7f;&#x7528;&#x8be5;&#x65b9;&#x6cd5;&#x3002;&#xa;&#xff08;1&#xff09;&#x3001;nsURL&#xff1a;Attr&#x7684;&#x540d;&#x5b57;&#x7a7a;&#x95f4;&#x7684;&#x552f;&#x4e00;&#x6807;&#x8bc6;&#x7b26;&#x3002;&#x5982;&#x679c;&#x6ca1;&#x6709;&#x5219;&#x4e3a;null&#x3002;&#xa;&#xff08;2&#xff09;&#x3001;qualifiedName&#xff1a;&#x5c5e;&#x6027;&#x7684;&#x9650;&#x5b9a;&#x540d;&#xff0c;&#x5e94;&#x8be5;&#x5305;&#x62ec;&#x540d;&#x5b57;&#x7a7a;&#x95f4;&#x524d;&#x7f00;&#x3001;&#x5192;&#x53f7;&#x548c;&#x672c;&#x5730;&#x540d;&#x3002;&#xa;5&#x3001;createCDATASection(string data)&#xff1a;&#x521b;&#x5efa;&#x5305;&#x542b;&#x6307;&#x5b9a;&#x6587;&#x672c;&#x7684;&#x65b0;CDATASection&#x8282;&#x70b9;&#x3002;&#x8fd4;&#x56de;&#x65b0;&#x521b;&#x5efa;&#x7684;CDATASection&#x8282;&#x70b9;&#xff0c;&#x5185;&#x5bb9;&#x4e3a;&#x6307;&#x5b9a;&#x7684;data&#x3002;&#xa;&#xff08;1&#xff09;&#x3001;data&#xff1a;&#x8981;&#x521b;&#x5efa;&#x7684;CDATASection&#x7684;&#x6587;&#x672c;&#x3002;&#xa;6&#x3001;createComment(string data)&#xff1a;&#x521b;&#x5efa;&#x5305;&#x542b;&#x6307;&#x5b9a;&#x5b57;&#x7b26;&#x4e32;&#x7684;&#x65b0;Comment&#x8282;&#x70b9;&#x3002;&#x8fd4;&#x56de;&#x65b0;&#x521b;&#x5efa;&#x7684;Comment&#x8282;&#x70b9;&#xff0c;&#x6587;&#x672c;&#x4e3a;&#x6307;&#x5b9a;&#x7684;data&#x3002;&#xa;&#xff08;1&#xff09;&#x3001;data&#xff1a;&#x8981;&#x521b;&#x5efa;&#x7684;Comment&#x8282;&#x70b9;&#x7684;&#x6587;&#x672c;&#x3002;&#xa;7&#x3001;createDocumentFragment()&#xff1a;&#x521b;&#x5efa;&#x65b0;&#x7684;&#x3001;&#x7a7a;&#x7684;DocumentFragment&#x8282;&#x70b9;&#x3002;&#x8fd4;&#x56de;&#x65b0;&#x521b;&#x5efa;&#x7684;DocumentFragment&#x8282;&#x70b9;&#xff0c;&#x6ca1;&#x6709;&#x5b50;&#x8282;&#x70b9;&#x3002;&#xa;8&#x3001;createElement(string tagName)&#xff1a;&#x7528;&#x6307;&#x5b9a;&#x7684;&#x6807;&#x7b7e;&#x540d;&#x521b;&#x5efa;&#x65b0;&#x7684;Element&#x8282;&#x70b9;&#x3002;&#xa;9&#x3001;createElementNS()&#xff1a;&#x7528;&#x6307;&#x5b9a;&#x7684;&#x6807;&#x7b7e;&#x540d;&#x548c;&#x540d;&#x5b57;&#x7a7a;&#x95f4;&#x521b;&#x5efa;&#x65b0;&#x7684;Element&#x8282;&#x70b9;&#x3002;&#xa;10&#x3001;createEvent()&#xff1a;&#x521b;&#x5efa;&#x4e00;&#x4e2a;&#x65b0;&#x7684;&#x5408;&#x6210;Event&#x5bf9;&#x8c61;&#x3002;&#xa;11&#x3001;createExpression()&#xff1a;&#x521b;&#x5efa;&#x4e00;&#x4e2a;&#x4ee3;&#x8868;&#x7f16;&#x8bd1;&#x8fc7;&#x7684;XPath&#x67e5;&#x8be2;&#x7684;&#x65b0;&#x7684;XPathExpression&#x5bf9;&#x8c61;&#x3002;&#x5bf9;&#x4e8e;&#x5176;&#x7279;&#x5b9a;&#x4e8e;IE&#x7684;&#x66ff;&#x4ee3;&#xff0c;&#x8bf7;&#x53c2;&#x9605;Node.selectNodes()&#x3002;&#xa;12&#x3001;createProcessingInstruction()&#xff1a;&#x7528;&#x6307;&#x5b9a;&#x7684;&#x6807;&#x7b7e;&#x548c;&#x6570;&#x636e;&#x4e32;&#x521b;&#x5efa;&#x65b0;&#x7684;ProcessingInstruction&#x8282;&#x70b9;&#x3002;&#xa;13&#x3001;createRange()&#xff1a;&#x521b;&#x5efa;&#x4e00;&#x4e2a;&#x65b0;&#x7684;Range&#x5bf9;&#x8c61;&#x3002;&#x4ece;&#x6280;&#x672f;&#x4e0a;&#x8bf4;&#xff0c;&#x8be5;&#x65b9;&#x6cd5;&#x662f;&#x7531;DocumentRange&#x63a5;&#x53e3;&#x5b9a;&#x4e49;&#x7684;&#xff0c;&#x53ea;&#x6709;&#x5728;&#x652f;&#x6301;Range&#x6a21;&#x5757;&#x7684;&#x5b9e;&#x73b0;&#x4e2d;&#xff0c;Document&#x5bf9;&#x8c61;&#x624d;&#x5b9a;&#x4e49;&#x4e86;&#x8be5;&#x65b9;&#x6cd5;&#x3002;&#xa;14&#x3001;createTextNode()&#xff1a;&#x521b;&#x5efa;&#x65b0;&#x7684;Text&#x8282;&#x70b9;&#xff0c;&#x8868;&#x793a;&#x6307;&#x5b9a;&#x7684;&#x6587;&#x672c;&#x3002;&#xa;15&#x3001;detachEvent()&#xff1a;&#x4ece;&#x8fd9;&#x4e2a;&#x6587;&#x6863;&#x4e2d;&#x79fb;&#x9664;&#x4e00;&#x4e2a;&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x51fd;&#x6570;&#x3002;&#x8fd9;&#x662f;&#x6807;&#x51c6;&#x7684;removeEventListener&#x65b9;&#x6cd5;&#x7684;&#x7279;&#x5b9a;&#x4e8e;IE&#x7684;&#x66ff;&#x4ee3;&#x3002;&#xa;16&#x3001;dispatchEvent()&#xff1a;&#x4e3a;&#x8fd9;&#x4e2a;&#x6587;&#x6863;&#x5206;&#x6d3e;&#x4e00;&#x4e2a;&#x5408;&#x6210;&#x4e8b;&#x4ef6;&#x3002;&#xa;17&#x3001;evaluate()&#xff1a;&#x6839;&#x636e;&#x8fd9;&#x4e2a;&#x6587;&#x6863;&#x8ba1;&#x7b97;&#x4e00;&#x4e2a;XPath&#x67e5;&#x8be2;&#x3002;&#x5176;&#x7279;&#x5b9a;&#x4e8e;IE&#x7684;&#x66ff;&#x4ee3;&#x8bf7;&#x53c2;&#x9605;Node.selectNodes()&#x3002;&#xa;18&#x3001;getElementById()&#xff1a;&#x8fd4;&#x56de;&#x8be5;&#x6587;&#x6863;&#x4e2d;&#x5177;&#x6709;&#x6307;&#x5b9a;id&#x5c5e;&#x6027;&#x7684;&#x5b50;&#x5b59;Element&#x8282;&#x70b9;&#x3002;&#x5982;&#x679c;&#x6587;&#x6863;&#x4e2d;&#x6ca1;&#x6709;&#x8fd9;&#x6837;&#x7684;Element&#x8282;&#x70b9;&#xff0c;&#x5219;&#x8fd4;&#x56de;null&#x3002;&#xa;19&#x3001;getElementsByTagName()&#xff1a;&#x8fd4;&#x56de;&#x6587;&#x6863;&#x4e2d;&#x6240;&#x6709;&#x5177;&#x6709;&#x6307;&#x5b9a;&#x6807;&#x7b7e;&#x540d;&#x7684;Element&#x8282;&#x70b9;&#x7684;&#x6570;&#x7ec4;&#xff08;&#x5b9e;&#x9645;&#x4e0a;&#x662f;NodeList&#xff09;&#x3002;Element&#x8282;&#x70b9;&#x51fa;&#x73b0;&#x5728;&#x8fd4;&#x56de;&#x6570;&#x7ec4;&#x4e2d;&#x7684;&#x987a;&#x5e8f;&#x5c31;&#x662f;&#x5b83;&#x4eec;&#x5728;&#x6e90;&#x6587;&#x6863;&#x4e2d;&#x51fa;&#x73b0;&#x7684;&#x987a;&#x5e8f;&#x3002;&#xa;20&#x3001;getElementsByTagNameNS()&#xff1a;&#x8fd4;&#x56de;&#x6240;&#x6709;&#x5177;&#x6709;&#x6307;&#x5b9a;&#x6807;&#x7b7e;&#x540d;&#x7684;&#x540d;&#x5b57;&#x7a7a;&#x95f4;&#x7684;Element&#x8282;&#x70b9;&#x3002;&#xa;21&#x3001;importNode()&#xff1a;&#x5bf9;&#x4e8e;&#x5176;&#x4ed6;&#x9002;&#x5408;&#x63d2;&#x5165;&#x8be5;&#x6587;&#x6863;&#x7684;&#x6587;&#x6863;&#xff0c;&#x751f;&#x6210;&#x5b83;&#x7684;&#x8282;&#x70b9;&#x526f;&#x672c;&#x3002;&#xa;22&#x3001;loadXML()&#xff1a;&#x89e3;&#x6790;XML&#x6807;&#x8bb0;&#x7684;&#x4e00;&#x4e2a;&#x5b57;&#x7b26;&#x4e32;&#xff0c;&#x5e76;&#x5c06;&#x7ed3;&#x679c;&#x5b58;&#x50a8;&#x5230;&#x8fd9;&#x4e2a;&#x6587;&#x6863;&#x5bf9;&#x8c61;&#x4e2d;&#x3002;&#x53ea;&#x9002;&#x7528;&#x4e8e;IE&#x3002;&#xa;23&#x3001;removeEventListener()&#xff1a;&#x4ece;&#x8fd9;&#x4e2a;&#x6587;&#x6863;&#x7684;&#x53e5;&#x67c4;&#x96c6;&#x5408;&#x4e2d;&#x79fb;&#x9664;&#x4e00;&#x4e2a;&#x4e8b;&#x4ef6;&#x53e5;&#x67c4;&#x51fd;&#x6570;&#x3002;&#x8fd9;&#x662f;&#x4e00;&#x4e2a;&#x6807;&#x51c6;&#x7684;DOM&#x65b9;&#x6cd5;&#xff0c;&#x9664;IE&#x4ee5;&#x5916;&#x7684;&#x6240;&#x6709;&#x73b0;&#x4ee3;&#x6d4f;&#x89c8;&#x5668;&#x90fd;&#x652f;&#x6301;&#x5b83;&#x3002;"/>
</node>
</map>
