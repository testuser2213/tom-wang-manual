# CPU性能分析方法 #
By Tom.Wang<tom.wang.sz@qq.com\>

## TOP命令 ##
<pre>
良好性能指标：
1、load average小于等于0.7 * CPU数
2、Swap使用量尽可能少
</pre>
1、使用方法：`top`  
2、结果展示：
<pre>
[tomszwang@ISD_32_168_sles10_64 htdocs]$ top
top - 13:06:35 up 128 days, 12:47,  7 users,  load average: 1.05, 1.23, 1.09
Tasks: 412 total,   1 running, 410 sleeping,   1 stopped,   0 zombie
Cpu(s):  0.7%us,  0.7%sy,  0.0%ni, 98.5%id,  0.0%wa,  0.0%hi,  0.0%si,  0.2%st
Mem:   3604620k total,  3479224k used,   125396k free,   638976k buffers
Swap:  2104504k total,   703072k used,  1401432k free,   524048k cached

  PID USER      PR  NI  VIRT  RES  SHR S %CPU %MEM    TIME+  COMMAND
  712 tomszwan  16   0  9876 1612  972 R    1  0.0   0:00.55 top
18217 nobody    16   0  111m  19m  14m S    1  0.6   0:01.01 httpd
</pre>
3、结果解析  
1）、第一行显示的是系统启动时长、登录用户数、已经1、5、15分钟时的负载（合理值与CPU个数/核心数有关，一般`<=CPU个数/核心数 * 0.7即是正常`，等于CPU个数/核心数时为正好满载）  
2）、第二行显示任务信息，需要注意的是zombie（僵尸）进程  
3）、第三行显示CPU信息，显示的是CPU的整体负载。需要特别注意的是%wa，那个项目代表的是I/O wait，通常你的系统会变慢都是I/O产生的问题比较大！因此这里得要注意这个项目耗用CPU的资源，另外，如果是多核心的设备，可以按下数字键『1』来切换成不同 CPU 的负载率。  
4）、第四行与第五行表示目前的实体内存与虚拟内存 (Mem/Swap) 的使用情况。要注意的是 swap 的使用量要尽量的少！如果 swap 被用的很大量，表示系统的实体内存实在不足