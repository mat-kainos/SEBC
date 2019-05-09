Cloud Provider : AWS

## Instance List
|Instance Name | DNS | IP| OS |
|------|----|----|---|
|HadoopChallenge1|ec2-13-229-101-54.ap-southeast-1.compute.amazonaws.com|13.229.101.54| Redhat 7.5|
|HadoopChallenge2|ec2-54-255-225-205.ap-southeast-1.compute.amazonaws.com|54.255.225.205| Redhat 7.5|
|HadoopChallenge3|ec2-13-250-6-74.ap-southeast-1.compute.amazonaws.com|13.250.6.74| Redhat 7.5|
|HadoopChallenge4|ec2-13-229-44-136.ap-southeast-1.compute.amazonaws.com|13.229.44.136| Redhat 7.5|
|HadoopChallenge5|ec2-54-169-247-86.ap-southeast-1.compute.amazonaws.com|54.169.247.86| Redhat 7.5|

## File System Capacity
```
[ec2-user@ip-172-30-1-183 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       50G  945M   50G   2% /
devtmpfs        7.8G     0  7.8G   0% /dev
tmpfs           7.8G     0  7.8G   0% /dev/shm
tmpfs           7.8G   17M  7.8G   1% /run
tmpfs           7.8G     0  7.8G   0% /sys/fs/cgroup
tmpfs           1.6G     0  1.6G   0% /run/user/1000
```

## Yum Repository

```
[ec2-user@ip-172-30-1-183 ~]$ sudo yum repolist enabled
Failed to set locale, defaulting to C
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
rhui-REGION-client-config-server-7                                                                                                                                   | 2.9 kB  00:00:00     
rhui-REGION-rhel-server-releases                                                                                                                                     | 3.5 kB  00:00:00     
rhui-REGION-rhel-server-rh-common                                                                                                                                    | 3.8 kB  00:00:00     
(1/7): rhui-REGION-client-config-server-7/x86_64/primary_db                                                                                                          | 2.5 kB  00:00:00     
(2/7): rhui-REGION-rhel-server-releases/7Server/x86_64/group                                                                                                         | 855 kB  00:00:00     
(3/7): rhui-REGION-rhel-server-rh-common/7Server/x86_64/group                                                                                                        |  104 B  00:00:00     
(4/7): rhui-REGION-rhel-server-releases/7Server/x86_64/updateinfo                                                                                                    | 2.8 MB  00:00:00     
(5/7): rhui-REGION-rhel-server-rh-common/7Server/x86_64/primary_db                                                                                                   | 120 kB  00:00:00     
(6/7): rhui-REGION-rhel-server-rh-common/7Server/x86_64/updateinfo                                                                                                   |  33 kB  00:00:00     
(7/7): rhui-REGION-rhel-server-releases/7Server/x86_64/primary_db                                                                                                    |  51 MB  00:00:00     
repo id                                                                            repo name                                                                                          status
rhui-REGION-client-config-server-7/x86_64                                          Red Hat Update Infrastructure 2.0 Client Configuration Server 7                                        1
rhui-REGION-rhel-server-releases/7Server/x86_64                                    Red Hat Enterprise Linux Server 7 (RPMs)                                                           20399
rhui-REGION-rhel-server-rh-common/7Server/x86_64                                   Red Hat Enterprise Linux Server 7 RH Common (RPMs)                                                   231
repolist: 20631

```


## /etc/passwd

```
ec2-user:x:1000:1000:Cloud User:/home/ec2-user:/bin/bash
jimenez:x:2800:1102::/home/jimenez:/bin/bash
beltran:x:2900:1101::/home/beltran:/bin/bash
```

## /etc/group

```
c2-user:x:1000:
astros:x:1101:
rangers:x:1102:
```
