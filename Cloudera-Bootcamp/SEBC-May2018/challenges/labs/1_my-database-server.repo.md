## Maria DB Installation
Installing maria db from default repo and make sure no openjdk comes with it

```
[ec2-user@ip-172-30-1-183 ~]$ rpm -qa |grep mariadb
mariadb-5.5.56-2.el7.x86_64
mariadb-server-5.5.56-2.el7.x86_64
mariadb-libs-5.5.56-2.el7.x86_64
[ec2-user@ip-172-30-1-183 ~]$ rpm -qa | grep open
openssh-server-7.4p1-16.el7.x86_64
openssl-libs-1.0.2k-12.el7.x86_64
openssl-1.0.2k-12.el7.x86_64
openssh-7.4p1-16.el7.x86_64
openssh-clients-7.4p1-16.el7.x86_64
openldap-2.4.44-13.el7.x86_64
[ec2-user@ip-172-30-1-183 ~]$ sudo yum repolist all
Failed to set locale, defaulting to C
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
repo id                                                                            repo name                                                                                  status
rhui-REGION-client-config-server-7/x86_64                                          Red Hat Update Infrastructure 2.0 Client Configuration Server 7                            enabled:     1
rhui-REGION-rhel-server-debug-extras/7Server/x86_64                                Red Hat Enterprise Linux Server 7 Extra Debug (Debug RPMs)                                 disabled
rhui-REGION-rhel-server-debug-optional/7Server/x86_64                              Red Hat Enterprise Linux Server 7 Optional Debug (Debug RPMs)                              disabled
rhui-REGION-rhel-server-debug-rh-common/7Server/x86_64                             Red Hat Enterprise Linux Server 7 RH Common Debug (Debug RPMs)                             disabled
rhui-REGION-rhel-server-debug-rhscl/7Server/x86_64                                 Red Hat Enterprise Linux Server 7 RHSCL Debug (Debug RPMs)                                 disabled
rhui-REGION-rhel-server-debug-supplementary/7Server/x86_64                         Red Hat Enterprise Linux Server 7 Supplementary Debug (Debug RPMs)                         disabled
rhui-REGION-rhel-server-extras/7Server/x86_64                                      Red Hat Enterprise Linux Server 7 Extra(RPMs)                                              disabled
rhui-REGION-rhel-server-optional/7Server/x86_64                                    Red Hat Enterprise Linux Server 7 Optional (RPMs)                                          disabled
rhui-REGION-rhel-server-releases/7Server/x86_64                                    Red Hat Enterprise Linux Server 7 (RPMs)                                                   enabled: 20399
rhui-REGION-rhel-server-releases-debug/7Server/x86_64                              Red Hat Enterprise Linux Server 7 Debug (Debug RPMs)                                       disabled
rhui-REGION-rhel-server-releases-source/7Server/x86_64                             Red Hat Enterprise Linux Server 7 (SRPMs)                                                  disabled
rhui-REGION-rhel-server-rh-common/7Server/x86_64                                   Red Hat Enterprise Linux Server 7 RH Common (RPMs)                                         enabled:   231
rhui-REGION-rhel-server-rhscl/7Server/x86_64                                       Red Hat Enterprise Linux Server 7 RHSCL (RPMs)                                             disabled
rhui-REGION-rhel-server-source-extras/7Server/x86_64                               Red Hat Enterprise Linux Server 7 Extra (SRPMs)                                            disabled
rhui-REGION-rhel-server-source-optional/7Server/x86_64                             Red Hat Enterprise Linux Server 7 Optional (SRPMs)                                         disabled
rhui-REGION-rhel-server-source-rh-common/7Server/x86_64                            Red Hat Enterprise Linux Server 7 RH Common (SRPMs)                                        disabled
rhui-REGION-rhel-server-source-rhscl/7Server/x86_64                                Red Hat Enterprise Linux Server 7 RHSCL (SRPMs)                                            disabled
rhui-REGION-rhel-server-source-supplementary/7Server/x86_64                        Red Hat Enterprise Linux Server 7 Supplementary (SRPMs)                                    disabled
rhui-REGION-rhel-server-supplementary/7Server/x86_64                               Red Hat Enterprise Linux Server 7 Supplementary (RPMs)                                     disabled
repolist: 20631
```
