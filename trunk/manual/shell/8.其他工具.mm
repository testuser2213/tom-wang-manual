<map version="0.8.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1302744582085" ID="Freemind_Link_1755801840" MODIFIED="1306416732718" TEXT="&#x5176;&#x4ed6;&#x5de5;&#x5177;(tom.wang) &#xa;Follow&#xff1a;http://t.qq.com/superlinyzu">
<node CREATED="1306676745515" ID="_" MODIFIED="1306677802109" POSITION="right" TEXT="&#x5185;&#x5efa;&#x547d;&#x4ee4;&#xa;1&#x3001;&#x4e00;&#x4e2a;&#x5185;&#x5efa;&#x547d;&#x4ee4;&#x5b9e;&#x9645;&#x4e0a;&#x662f;shell&#x81ea;&#x8eab;&#x7684;&#x4e00;&#x90e8;&#x5206;&#xff0c;&#x5e76;&#x4e0d;&#x4f5c;&#x4e3a;&#x72ec;&#x7acb;&#x7684;&#x6587;&#x4ef6;&#x5b58;&#x653e;&#x5728;&#x78c1;&#x76d8;&#x4e0a;&#xff0c;&#x6240;&#x4ee5;&#x5185;&#x5efa;&#x547d;&#x4ee4;&#x6267;&#x884c;&#x8d77;&#x6765;&#x66f4;&#x9ad8;&#x6548;&#x3002;&#xa;2&#x3001;eval&#x89e3;&#x6790;&#x6267;&#x884c;&#x4e00;&#x4e2a;&#x547d;&#x4ee4;&#x5217;&#x8868;&#xff0c;&#x8bed;&#x6cd5;&#xff1a;&#xa;eval list&#xa;3&#x3001;:&#x53ef;&#x4ee5;&#x4f5c;&#x4e3a;&#x7a7a;&#x547d;&#x4ee4;&#x4f7f;&#x7528;&#xff0c;&#x4e5f;&#x53ef;&#x4ee5;&#x7528;&#x4e8e;&#x65e0;&#x9650;&#x5faa;&#x73af;&#x4e2d;&#xff0c;&#x4f8b;&#x5b50;&#xff1a;&#xa;if true; then&#xa;         # &#x4f5c;&#x4e3a;&#x7a7a;&#x547d;&#x4ee4;&#xa;         :&#xa;else&#xa;         echo &apos;hello&apos;&#xa;fi&#xa;&#xa;# &#x6784;&#x5efa;&#x65e0;&#x9650;&#x5faa;&#x73af;&#xff08;:&#x603b;&#x662f;&#x8fd4;&#x56de;&#x6b63;&#x786e;&#x7684;&#x7ed3;&#x679c;&#xff09;&#xa;while :&#xa;do&#xa;        echo &apos;hello&apos;&#xa;done&#xa;4&#x3001;&#x4f7f;&#x7528;:&#x6bd4;true&#x66f4;&#x9ad8;&#x6548;&#xff0c;&#x56e0;&#x4e3a;:&#x662f;&#x5185;&#x5efa;&#x547d;&#x4ee4;&#x3002;&#xa;5&#x3001;type&#x547d;&#x4ee4;&#x544a;&#x8bc9;&#x7528;&#x6237;&#x4e00;&#x4e2a;&#x547d;&#x4ee4;&#x7684;&#x7edd;&#x5bf9;&#x8def;&#x5f84;&#x540d;&#xff0c;&#x5982;&#x679c;shell&#x80fd;&#x591f;&#x5728;$PATH&#x4e2d;&#x627e;&#x5230;&#x8fd9;&#x4e2a;&#x547d;&#x4ee4;&#x3002;&#x8bed;&#x6cd5;&#x5982;&#x4e0b;&#xff1a;&#xa;type cmd1 ... cmdN&#xa;6&#x3001;&#x5f53;&#x4e00;&#x4e2a;&#x547d;&#x4ee4;&#x4e0d;&#x662f;&#x5b58;&#x653e;&#x5728;&#x78c1;&#x76d8;&#x4e0a;&#x7684;&#x5916;&#x90e8;&#x547d;&#x4ee4;&#x7684;&#x65f6;&#x5019;&#xff0c;type&#x4f1a;&#x63d0;&#x793a;&#x7528;&#x6237;&#x662f;&#x5426;&#x4e3a;&#x4ee5;&#x4e0b;&#x503c;&#xff1a;&#xa;&#xff08;1&#xff09;&#x3001;shell&#x5185;&#x90e8;&#x547d;&#x4ee4;&#xa;&#xff08;2&#xff09;&#x3001;shell&#x5173;&#x952e;&#x5b57;&#xa;&#xff08;3&#xff09;&#x3001;&#x522b;&#x540d;&#xff08;alias&#xff09;&#xa;7&#x3001;&#x5f53;&#x4e00;&#x4e2a;&#x5355;&#x4e00;&#x547d;&#x4ee4;&#x88ab;&#x6307;&#x5b9a;&#x65f6;&#xff0c;type&#x7684;&#x9000;&#x51fa;&#x7801;&#x80fd;&#x7528;&#x6765;&#x786e;&#x5b9a;&#x8fd9;&#x4e2a;&#x547d;&#x4ee4;&#x662f;&#x5426;&#x5728;$PATH&#x4e2d;&#x88ab;&#x627e;&#x5230;&#xff0c;&#x80fd;&#x627e;&#x5230;&#x8fd4;&#x56de;0&#xff0c;&#x4ee5;&#x4e0b;&#x51fd;&#x6570;&#x5224;&#x65ad;&#x7cfb;&#x7edf;&#x662f;&#x5426;&#x5b58;&#x5728;&#x4e00;&#x4e2a;&#x547d;&#x4ee4;&#xff1a;&#xa;haveCmd() {&#xa;        type &quot;$1&quot; &gt; /del/null 2&gt;&amp;1&#xa;        return $?&#xa;}"/>
<node CREATED="1306677818828" ID="Freemind_Link_188769212" MODIFIED="1306677887937" POSITION="right" TEXT="sleep&#x547d;&#x4ee4;&#xa;1&#x3001;&#x6682;&#x505c;&#x7ed9;&#x5b9a;&#x7684;&#x79d2;&#x6570;&#xff0c;&#x8bed;&#x6cd5;&#xff1a;&#xa;sleep n&#xa;2&#x3001;sleep&#x53ef;&#x4ee5;&#x5728;&#x6e05;&#x5c4f;&#x4e4b;&#x524d;&#x7ed9;&#x7528;&#x6237;&#x65f6;&#x95f4;&#x6765;&#x8bfb;&#x53d6;&#x8f93;&#x51fa;&#x4fe1;&#x606f;&#x3002;"/>
<node CREATED="1306678045281" ID="Freemind_Link_1856228457" MODIFIED="1306679479671" POSITION="right" TEXT="find&#x547d;&#x4ee4;&#xa;1&#x3001;&#x8bed;&#x6cd5;&#xff1a;&#xa;find dir options actions&#xa;2&#x3001;&#x5982;&#x679c;&#x6307;&#x5b9a;&#x7684;&#x641c;&#x7d22;&#x8def;&#x5f84;&#x662f;/&#xff0c;&#x56e0;&#x4e3a;&#x76f8;&#x5f53;&#x591a;&#x7684;&#x76ee;&#x5f55;&#x662f;&#x4e0d;&#x53ef;&#x80fd;&#x88ab;&#x5b58;&#x53d6;&#x7684;&#xff0c;&#x6240;&#x4ee5;&#x4f1a;&#x4ea7;&#x751f;&#x8bb8;&#x591a;&#x9519;&#x8bef;&#x4fe1;&#x606f;&#xff0c;&#x5fc5;&#x987b;&#x91cd;&#x5b9a;&#x5411;&#x8fd9;&#x4e9b;&#x9519;&#x8bef;&#x4fe1;&#x606f;&#x5230;/del/null&#xff0c;&#x5982;find dir options actions 2&gt;/dev/null&#xa;3&#x3001;&#x4f7f;&#x7528;find&#xff0c;&#x6587;&#x4ef6;&#x53ef;&#x4ee5;&#x6309;&#x6587;&#x4ef6;&#x540d;&#x3001;&#x6587;&#x4ef6;&#x5927;&#x5c0f;&#x3001;&#x6700;&#x540e;&#x4fee;&#x6539;&#x65f6;&#x95f4;&#x3001;&#x6700;&#x540e;&#x8bbf;&#x95ee;&#x65f6;&#x95f4;&#x7b49;&#x7b49;&#x6765;&#x67e5;&#x627e;&#x3002;&#xa;4&#x3001;-type&#x9009;&#x9879;&#x53ef;&#x80fd;&#x503c;&#xa;&#x7c7b;&#x578b;              &#x63cf;&#x8ff0;&#xa;f                     &#x901a;&#x5e38;&#x6587;&#x4ef6;&#xa;d                   &#x76ee;&#x5f55;&#xa;b                    &#x5757;&#x8bbe;&#x5907;&#x6587;&#x4ef6;&#xa;c                    &#x5b57;&#x7b26;&#x8bbe;&#x5907;&#x6587;&#x4ef6;&#xff08;&#x539f;&#x59cb;&#x5957;&#x63a5;&#x5b57;&#xff09;&#xa;l                     &#x7b26;&#x53f7;&#x94fe;&#x63a5;&#xa;p                   &#x547d;&#x540d;&#x7ba1;&#x9053;&#xa;5&#x3001;-mtime&#xff0c;-atime&#xff0c;-ctime&#x9009;&#x9879;&#xa;-mtime                &#x6309;&#x6700;&#x540e;&#x4fee;&#x6539;&#x65f6;&#x95f4;&#x67e5;&#x627e;&#xa;-atime                 &#x6309;&#x6700;&#x540e;&#x8bbf;&#x95ee;&#x65f6;&#x95f4;&#x6765;&#x67e5;&#x627e;&#xa;-ctime                 &#x6309;&#x6700;&#x540e;&#x6539;&#x53d8;&#xff08;&#x81ea;&#x5efa;&#x7acb;&#x4ee5;&#x6765;&#xff0c;&#x6240;&#x6709;&#x8005;&#x3001;&#x6240;&#x6709;&#x7ec4;&#x6216;&#x6743;&#x9650;&#x88ab;&#x6539;&#x53d8;&#xff09;&#x65f6;&#x95f4;&#x67e5;&#x627e;&#xa;&#x6ca1;&#x4e00;&#x4e2a;&#x9009;&#x9879;&#x4f7f;&#x7528;&#x7684;&#x65f6;&#x5019;&#xff0c;&#x90fd;&#x5fc5;&#x987b;&#x5e26;&#x4e0a;&#x6574;&#x5f62;&#x53c2;&#x6570;n&#xff08;&#x6b63;&#x597d;n&#x5929;&#xff09;&#x6216;+n&#xff08;&#x5927;&#x4e8e;n&#x5929;&#xff09;&#x6216;-n&#xff08;&#x5c0f;&#x4e8e;n&#x5929;&#xff09;&#xff0c;&#x7528;&#x6765;&#x786e;&#x5b9a;&#x5929;&#x6570;&#x3002;&#xa;-atime&#xff0c;&#x8bf8;&#x5982;tar&#x8fd9;&#x7c7b;&#x7a0b;&#x5e8f;&#xff0c;&#x5728;&#x8fdb;&#x884c;&#x7cfb;&#x7edf;&#x5907;&#x4efd;&#x7684;&#x65f6;&#x5019;&#xff0c;&#x6240;&#x6709;&#x7684;&#x6587;&#x4ef6;&#x90fd;&#x5728;&#x540e;&#x53f0;&#x88ab;&#x9010;&#x4e00;&#x8bbf;&#x95ee;&#x4e86;&#x3002;&#xa;6&#x3001;-size&#x9009;&#x9879;&#xff1a;&#x5141;&#x8bb8;&#x7528;&#x6237;&#x6309;&#x7167;&#x6587;&#x4ef6;&#x5927;&#x5c0f;&#x6765;&#x67e5;&#x627e;&#x6587;&#x4ef6;&#xa;&#x4f7f;&#x7528;-size&#x9009;&#x9879;&#xff0c;&#x5728;-size&#x540e;&#x9762;&#xff0c;&#x7528;&#x6237;&#x5fc5;&#x987b;&#x6307;&#x5b9a;&#x4e00;&#x4e2a;&#x6574;&#x5f62;&#x6570;&#x636e;n&#xff08;&#x6b63;&#x597d;n&#x4e2a;&#xff09;&#x6216;-n&#xff08;&#x5c0f;&#x4e8e;n&#x4e2a;&#xff09;&#x6216;+n&#xff08;&#x5927;&#x4e8e;n&#x4e2a;&#xff09;&#xff0c;&#x8868;&#x793a;&#x78c1;&#x76d8;&#x5757;&#x6570;&#x76ee;&#x3002;&#xa;&#x4e00;&#x4e2a;&#x5757;&#x662f;&#x78c1;&#x76d8;&#x7528;&#x6765;&#x5b58;&#x653e;&#x6587;&#x4ef6;&#x7684;&#x6700;&#x5c0f;&#x5206;&#x914d;&#x5355;&#x4f4d;&#xff0c;&#x54ea;&#x6015;&#x6570;&#x636e;&#x6587;&#x4ef6;&#x7684;&#x5927;&#x5c0f;&#x5c0f;&#x4e8e;&#x8fd9;&#x4e2a;&#x5757;&#x7684;&#x5927;&#x5c0f;&#xff0c;&#x5b83;&#x4ecd;&#x7136;&#x4f1a;&#x5728;&#x78c1;&#x76d8;&#x4e0a;&#x5b8c;&#x6574;&#x7684;&#x5206;&#x914d;&#x5230;&#x4e00;&#x4e2a;&#x5757;&#xff08;linux&#x901a;&#x5e38;&#x662f;1024&#x5b57;&#x8282;&#xff09;&#x3002;&#xa;7&#x3001;find&#x8054;&#x5408;&#x67e5;&#x8be2;&#xa;find / -name alpha -size +50 -mtime -3 -print //&#x6761;&#x4ef6;&#x90fd;&#x6ee1;&#x8db3;&#x7684;&#x6587;&#x4ef6;&#x624d;&#x663e;&#x793a;&#x51fa;&#x6765;&#xff08;&#x903b;&#x8f91;&#x4e0e;&#xff09;&#xa;find / &apos;-size +50 -o -mtime -3&apos; -print //&#x7528;-o&#x5b9e;&#x73b0;&#x903b;&#x8f91;&#x6216;&#xa;find / ! &apos;-size +50 -o -mtime -3&apos; -print //&#x7528;!&#x5b9e;&#x73b0;&#x903b;&#x8f91;&#x975e;&#xa;8&#x3001;-exec&#x9009;&#x9879;&#x5141;&#x8bb8;&#x7528;&#x6237;&#x5bf9;&#x6bcf;&#x4e00;&#x4e2a;&#x5339;&#x914d;&#x6210;&#x529f;&#x7684;&#x6587;&#x4ef6;&#x6765;&#x6307;&#x5b9a;&#x547d;&#x4ee4;&#x8fd0;&#x884c;&#xff0c;&#x8bed;&#x6cd5;&#xff1a;&#xa;-exec cmd \&#xa;\&#x662f;&#x5fc5;&#x987b;&#x7684;&#xff0c;&#x7528;&#x4e8e;&#x7ed3;&#x675f;&#x8fd9;&#x4e2a;&#x547d;&#x4ee4;&#xff0c;&#x4f8b;&#x5982;&#x67e5;&#x627e;core&#x6587;&#x4ef6;&#xff0c;&#x5e76;&#x5220;&#x9664;&#x4e4b;&#xa;find / -name core -exec rm -f {} \"/>
<node CREATED="1306679488343" ID="Freemind_Link_590482747" MODIFIED="1306680006000" POSITION="right" TEXT="xargs&#xa;1&#x3001;&#x4ece;&#x6807;&#x51c6;&#x8f93;&#x5165;&#x4e2d;&#x63a5;&#x6536;&#x5355;&#x8bcd;&#x5217;&#x8868;&#x7684;&#x547d;&#x4ee4;&#xff0c;&#x5e76;&#x628a;&#x8fd9;&#x4e9b;&#x5355;&#x8bcd;&#x4f5c;&#x4e3a;&#x53c2;&#x6570;&#x4f20;&#x9012;&#x7ed9;&#x6307;&#x5b9a;&#x7684;&#x547d;&#x4ee4;&#xff08;&#x5e38;&#x4f5c;&#x4e3a;&#x7ba1;&#x9053;&#x547d;&#x4ee4;&#xff09;&#x3002;&#xa;2&#x3001;&#x5982;&#x679c;&#x7528;&#x6237;&#x6709;&#x4e0a;&#x5343;&#x4e2a;&#x6587;&#x4ef6;&#x9700;&#x8981;&#x7528;find&#x6765;&#x8fdb;&#x884c;&#x67e5;&#x627e;&#xff0c;&#x4f7f;&#x7528;xargs&#x8981;&#x6bd4;-exec&#x9009;&#x9879;&#x66f4;&#x6709;&#x6548;&#xff0c;&#x56e0;&#x4e3a;xargs&#x4ec5;&#x4ec5;&#x5728;&#x9700;&#x8981;&#x7684;&#x65f6;&#x5019;&#x8c03;&#x7528;&#x547d;&#x4ee4;&#x3002;"/>
<node CREATED="1306680007812" ID="Freemind_Link_988046587" MODIFIED="1306680541078" POSITION="right" TEXT="expr&#x547d;&#x4ee4;&#xa;1&#x3001;&#x7528;&#x4e8e;&#x6267;&#x884c;&#x7b80;&#x5355;&#x7684;&#x6574;&#x6570;&#x8fd0;&#x7b97;&#xff0c;&#x8bed;&#x6cd5;&#xff1a;&#xa;expr int1 op int2&#xa;op&#x53ef;&#x80fd;&#x503c;&#x5982;&#x4e0b;&#xff08;op&#x524d;&#x540e;&#x7a7a;&#x683c;&#x5fc5;&#x987b;&#xff09;&#xa;+        &#x52a0;&#xa;-         &#x51cf;&#xa;*         &#x4e58;&#xa;/         &#x9664;&#xa;%      &#x53d6;&#x4f59;&#xff08;&#x6a21;&#x8fd0;&#x7b97;&#xff09;&#xa;2&#x3001;&#x5728;ksh&#x3001;zsh&#x548c;&#x65b0;&#x7248;&#x672c;&#x7684;bash&#x4e2d;&#xff0c;expr&#x547d;&#x4ee4;&#x8fd8;&#x53ef;&#x4ee5;&#x8fd4;&#x56de;&#x7531;&#x4e00;&#x4e2a;&#x6b63;&#x5219;&#x8868;&#x8fbe;&#x5f0f;&#x6240;&#x5339;&#x914d;&#x7684;&#x5b57;&#x7b26;&#x7684;&#x6570;&#x76ee;&#xff0c;&#x8bed;&#x6cd5;&#xff1a;&#xa;expr str : regex"/>
<node CREATED="1306680545453" ID="Freemind_Link_1839475247" MODIFIED="1306681101718" POSITION="right" TEXT="bc&#x547d;&#x4ee4;&#xa;1&#x3001;&#x63d0;&#x4f9b;&#x7b97;&#x672f;&#x529f;&#x80fd;&#xff0c;&#x4f46;&#x4e0d;&#x9650;&#x4e8e;&#x6574;&#x6570;&#x8fd0;&#x7b97;&#x3002;&#xa;2&#x3001;&#x4f8b;&#x5b50;&#xa;bc&#xa;scale=4              //&#x4fdd;&#x7559;4&#x4f4d;&#x5c0f;&#x6570;&#xa;8/3&#xa;2.6666                // 8/3 = 2.6666&#xa;2.5 * 4.1/6.9&#xa;1.4855                //&#x8f93;&#x51fa;&#x7ed3;&#x679c;&#xa;quit                      //&#x9000;&#x51fa;bc&#xff0c;&#x56de;&#x5230;shell&#xa;3&#x3001;bc&#x7528;&#x5728;shell&#x8d4b;&#x503c;&#x4e2d;&#xa;AVERAGE=`echo &quot;scale=4; $PRICE/$UNITS&quot; | bc`&#xa;4&#x3001;bc&#x7528;&#x5728;&#x8fdb;&#x5236;&#x8f6c;&#x6362;&#x4e2d;&#xa;bc&#xa;obase=16   //&#x4e00;&#x5b9a;&#x8981;&#x5148;&#x8bbe;&#x7f6e;&#x8f93;&#x51fa;&#x8fdb;&#x5236;&#xa;ibase=8&#xa;400&#xa;100              //8&#x8fdb;&#x5236;&#x7684;400&#xff0c;&#x5bf9;&#x5e94;&#x5341;&#x516d;&#x8fdb;&#x5236;&#x7684;100&#xa;quit"/>
</node>
</map>
