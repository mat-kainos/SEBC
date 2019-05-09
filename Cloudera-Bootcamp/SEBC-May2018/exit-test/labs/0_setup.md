## Setup
Cloud Provider : AWS
OS: RHEL 7.5

Instance IP:

```
public IP
13.228.21.159
13.229.182.151
52.77.236.198
52.77.252.132
52.221.224.210

Internal DNS
ip-172-30-1-139.ap-southeast-1.compute.internal
ip-172-30-1-50.ap-southeast-1.compute.internal
ip-172-30-1-59.ap-southeast-1.compute.internal
ip-172-30-1-249.ap-southeast-1.compute.internal
ip-172-30-1-245.ap-southeast-1.compute.internal

```
```
[ec2-user@ip-172-30-1-139 ~]$ uptime
 02:42:18 up 7 min,  2 users,  load average: 0.00, 0.04, 0.05
[ec2-user@ip-172-30-1-139 ~]$

[ec2-user@ip-172-30-1-50 ~]$ uptime
 02:42:53 up 8 min,  2 users,  load average: 0.00, 0.02, 0.03
[ec2-user@ip-172-30-1-50 ~]$

[ec2-user@ip-172-30-1-59 ~]$ uptime
 02:43:08 up 8 min,  2 users,  load average: 0.00, 0.03, 0.05
[ec2-user@ip-172-30-1-59 ~]$

[ec2-user@ip-172-30-1-249 ~]$ uptime
 02:43:18 up 8 min,  2 users,  load average: 0.00, 0.04, 0.05
[ec2-user@ip-172-30-1-249 ~]$

[ec2-user@ip-172-30-1-245 ~]$ uptime
 02:43:27 up 8 min,  1 user,  load average: 0.00, 0.03, 0.05
[ec2-user@ip-172-30-1-245 ~]$

```

Filesystem Capacity:

```
[ec2-user@ip-172-30-1-139 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       50G  945M   50G   2% /
devtmpfs        7.8G     0  7.8G   0% /dev
tmpfs           7.8G     0  7.8G   0% /dev/shm
tmpfs           7.8G   17M  7.8G   1% /run
tmpfs           7.8G     0  7.8G   0% /sys/fs/cgroup
tmpfs           1.6G     0  1.6G   0% /run/user/1000
[ec2-user@ip-172-30-1-139 ~]$
```

/etc/passwd

```
[ec2-user@ip-172-30-1-245 ~]$ tail /etc/passwd
thanos:x:2500:1101::/home/thanos:/bin/bash
hulk:x:2600:1102::/home/hulk:/bin/bash
groot:x:2700:1102::/home/groot:/bin/bash


[ec2-user@ip-172-30-1-245 ~]$ tail  /etc/group
blackorder:x:1101:
avengers:x:1102:

```
