1) vm.swappiness
    ~~~
    [root@cm ~]# sysctl vm.swappiness
    vm.swappiness = 1
    ~~~
2) Show the mount attributes of all volumes (XFS does not maintain reserve space)
    ~~~
    [root@cm ~]# cat /etc/fstab`
    ...
    UUID=f41e390f-835b-4223-a9bb-9b45984ddf8d /                       xfs     defaults        0 0
    ~~~

3) Disable transparent hugepage support
    ~~~~
    [root@cm ~]# cat /sys/kernel/mm/transparent_hugepage/defrag
    always madvise [never]

    [root@cm ~]# cat /sys/kernel/mm/transparent_hugepage/enabled
    always madvise [never]
    ~~~~
4) List your network interface configuration

    ~~~~
    [root@cm ~]# ifconfig -a
    ens5: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9001
            inet 172.31.31.21  netmask 255.255.255.0  broadcast 172.31.31.255
            ether 02:58:1b:28:e0:14  txqueuelen 1000  (Ethernet)
            RX packets 22810  bytes 29822998 (28.4 MiB)
            RX errors 0  dropped 0  overruns 0  frame 0
            TX packets 10044  bytes 860433 (840.2 KiB)
            TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
    
    lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
            inet 127.0.0.1  netmask 255.0.0.0
            loop  txqueuelen 1000  (Local Loopback)
            RX packets 12  bytes 920 (920.0 B)
            RX errors 0  dropped 0  overruns 0  frame 0
            TX packets 12  bytes 920 (920.0 B)
            TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
    ~~~~
5) List forward and reverse host lookups using getent or nslookup
    ~~~~
    127.0.0.1       localhost localhost.localdomain localhost4 localhost4.localdomain4
    127.0.0.1       localhost localhost.localdomain localhost6 localhost6.localdomain6
    172.31.31.21    ip-172-31-31-21.eu-west-1.compute.internal cm
    172.31.31.233   ip-172-31-31-233.eu-west-1.compute.internal dnode1
    172.31.31.235   ip-172-31-31-235.eu-west-1.compute.internal dnode2
    172.31.31.49    ip-172-31-31-49.eu-west-1.compute.internal dnode3
    172.31.31.163   ip-172-31-31-163.eu-west-1.compute.internal dnode4
    ~~~~
6) Show ntpd and nscd services running

     ~~~~
    [root@cm ~]# systemctl show -p ActiveState ntpd nscd | sed 's/ActiveState=//g'
    active
    
    active
    ~~~~
