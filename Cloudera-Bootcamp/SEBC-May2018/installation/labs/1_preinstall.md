1. Swappiness

```
[centos@hadoop5 ~]$ sudo /sbin/sysctl -a | grep swappiness
vm.swappiness = 1

[centos@hadoop6 ~]$ sudo /sbin/sysctl -a | grep swappiness
vm.swappiness = 1

[centos@hadoop7 ~]$ sudo /sbin/sysctl -a | grep swappiness
vm.swappiness = 1

[centos@hadoop8 ~]$ sudo /sbin/sysctl -a | grep swappiness
vm.swappiness = 1

[centos@hadoop9 ~]$ sudo /sbin/sysctl -a | grep swappiness
vm.swappiness = 1
```

2. Volumes

```
[centos@hadoop5 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  9.0G   19G  33% /
tmpfs           7.8G     0  7.8G   0% /dev/shm

[centos@hadoop6 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  4.6G   24G  17% /
tmpfs           7.8G     0  7.8G   0% /dev/shm

Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  4.6G   24G  17% /
tmpfs           7.8G     0  7.8G   0% /dev/shm

[centos@hadoop8 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  4.6G   24G  17% /
tmpfs           7.8G     0  7.8G   0% /dev/shm

[centos@hadoop9 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  4.6G   24G  17% /
tmpfs           7.8G     0  7.8G   0% /dev/shm

```

3. Reserved space

```
[centos@hadoop5 ~]$ sudo dumpe2fs -h /dev/xvda1 | grep Reserve
dumpe2fs 1.41.12 (17-May-2010)
Reserved block count:     393119
Reserved GDT blocks:      510
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)

[centos@hadoop6 ~]$ sudo dumpe2fs -h /dev/xvda1 | grep Reserve
dumpe2fs 1.41.12 (17-May-2010)
Reserved block count:     393119
Reserved GDT blocks:      510
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)

[centos@hadoop7 ~]$ sudo dumpe2fs -h /dev/xvda1 | grep Reserve
dumpe2fs 1.41.12 (17-May-2010)
Reserved block count:     393119
Reserved GDT blocks:      510
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)

[centos@hadoop8 ~]$ sudo dumpe2fs -h /dev/xvda1 | grep Reserve
dumpe2fs 1.41.12 (17-May-2010)
Reserved block count:     393119
Reserved GDT blocks:      510
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)

[centos@hadoop9 ~]$ sudo dumpe2fs -h /dev/xvda1 | grep Reserve
dumpe2fs 1.41.12 (17-May-2010)
Reserved block count:     393119
Reserved GDT blocks:      510
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)
```

4. Disable Transparent Hugepage support

```
echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag
echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled

```

5. Network Config

```
[centos@hadoop5 ~]$ ifconfig -a
eth0      Link encap:Ethernet  HWaddr 06:B2:86:07:8C:2A  
          inet addr:172.30.1.187  Bcast:172.30.1.255  Mask:255.255.255.0
          inet6 addr: fe80::4b2:86ff:fe07:8c2a/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:9001  Metric:1
          RX packets:2609 errors:0 dropped:0 overruns:0 frame:0
          TX packets:2406 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:508535 (496.6 KiB)  TX bytes:454065 (443.4 KiB)
          Interrupt:145

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:22324 errors:0 dropped:0 overruns:0 frame:0
          TX packets:22324 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:46093009 (43.9 MiB)  TX bytes:46093009 (43.9 MiB)

----------------------------
[centos@hadoop6 ~]$ ifconfig -a
eth0      Link encap:Ethernet  HWaddr 06:7F:A8:61:C5:0E  
          inet addr:172.30.1.33  Bcast:172.30.1.255  Mask:255.255.255.0
          inet6 addr: fe80::47f:a8ff:fe61:c50e/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:9001  Metric:1
          RX packets:764 errors:0 dropped:0 overruns:0 frame:0
          TX packets:813 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:120617 (117.7 KiB)  TX bytes:114469 (111.7 KiB)
          Interrupt:145

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:677 errors:0 dropped:0 overruns:0 frame:0
          TX packets:677 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:292388 (285.5 KiB)  TX bytes:292388 (285.5 KiB)
----------------------------
[centos@hadoop7 ~]$ ifconfig -a
eth0      Link encap:Ethernet  HWaddr 06:93:0E:AD:4F:80  
          inet addr:172.30.1.74  Bcast:172.30.1.255  Mask:255.255.255.0
          inet6 addr: fe80::493:eff:fead:4f80/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:9001  Metric:1
          RX packets:1353 errors:0 dropped:0 overruns:0 frame:0
          TX packets:1356 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:204348 (199.5 KiB)  TX bytes:221241 (216.0 KiB)
          Interrupt:145

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:709 errors:0 dropped:0 overruns:0 frame:0
          TX packets:709 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:296301 (289.3 KiB)  TX bytes:296301 (289.3 KiB)
----------------------------
[centos@hadoop8 ~]$ ifconfig -a
eth0      Link encap:Ethernet  HWaddr 06:E9:7E:FD:11:72  
          inet addr:172.30.1.51  Bcast:172.30.1.255  Mask:255.255.255.0
          inet6 addr: fe80::4e9:7eff:fefd:1172/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:9001  Metric:1
          RX packets:884 errors:0 dropped:0 overruns:0 frame:0
          TX packets:893 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:140370 (137.0 KiB)  TX bytes:133271 (130.1 KiB)
          Interrupt:145

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:671 errors:0 dropped:0 overruns:0 frame:0
          TX packets:671 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:289185 (282.4 KiB)  TX bytes:289185 (282.4 KiB)

----------------------------
[centos@hadoop9 ~]$ ifconfig -a
eth0      Link encap:Ethernet  HWaddr 06:B8:A8:39:3C:92  
          inet addr:172.30.1.252  Bcast:172.30.1.255  Mask:255.255.255.0
          inet6 addr: fe80::4b8:a8ff:fe39:3c92/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:9001  Metric:1
          RX packets:898 errors:0 dropped:0 overruns:0 frame:0
          TX packets:937 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:128768 (125.7 KiB)  TX bytes:134825 (131.6 KiB)
          Interrupt:145

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:725 errors:0 dropped:0 overruns:0 frame:0
          TX packets:725 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:321722 (314.1 KiB)  TX bytes:321722 (314.1 KiB)

```

6. Hostname

```
[centos@hadoop5 ~]$ getent hosts hadoop6.expecc.com
172.30.1.33     hadoop6.expecc.com hadoop6
[centos@hadoop5 ~]$ getent hosts 172.30.1.33
172.30.1.33     hadoop6.expecc.com hadoop6
[centos@hadoop5 ~]$ getent hosts hadoop7.expecc.com
172.30.1.74     hadoop7.expecc.com hadoop7
[centos@hadoop5 ~]$ getent hosts 172.30.1.74
172.30.1.74     hadoop7.expecc.com hadoop7
[centos@hadoop5 ~]$ getent hosts hadoop8.expecc.com
172.30.1.51     hadoop8.expecc.com hadoop8
[centos@hadoop5 ~]$ getent hosts 172.30.1.51
172.30.1.51     hadoop8.expecc.com hadoop8
[centos@hadoop5 ~]$ getent hosts hadoop9.expecc.com
172.30.1.252    hadoop9.expecc.com hadoop9
[centos@hadoop5 ~]$ getent hosts 172.30.1.252
172.30.1.252    hadoop9.expecc.com hadoop9
```

7. nscd

```
[centos@hadoop5 ~]$ sudo service nscd status
nscd (pid 5403) is running...
[centos@hadoop6 ~]$ sudo service nscd status
nscd (pid 3771) is running...
[centos@hadoop7 ~]$ sudo service nscd status
nscd (pid 3790) is running...
[centos@hadoop8 ~]$ sudo service nscd status
nscd (pid 3817) is running...
[centos@hadoop9 ~]$ sudo service nscd status
nscd (pid 3887) is running...

```

8. ntpd

```
[centos@hadoop5 ~]$ sudo service ntpd status
ntpd (pid  5302) is running...
[centos@hadoop6 ~]$ sudo service ntpd status
ntpd (pid  3752) is running...
[centos@hadoop7 ~]$ sudo service ntpd status
ntpd (pid  3771) is running...
[centos@hadoop8 ~]$ sudo service ntpd status
ntpd (pid  3798) is running...
[centos@hadoop9 ~]$ sudo service ntpd status
ntpd (pid  3868) is running...
```
