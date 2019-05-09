* What is ubertask optimization?

  Whether to enable ubertask optimization, which runs "sufficiently small" jobs sequentially within a single JVM. "Small" is defined by the mapreduce.job.ubertask.maxmaps, mapreduce.job.ubertask.maxreduces, and mapreduce.job.ubertask.maxbytes settings.


* Where in CM is the Kerberos Security Realm value displayed?

  Administration > Settings > Kerberos Security Realm

* Which CDH service(s) host a property for enabling Kerberos authentication?

  Kerberos Authentication is enabled at the cluster level. It will impact all services running in the cluster

* How do you upgrade the CM agents?

  You need to point the cloudera-manager.repo to the target version repo. then upgrade agents in the cm hosts.
  Or
  Run the upgrade wizard under host (/cmf/upgrade-wizard/welcome)

* Give the tsquery statement used to chart Hue's CPU utilization?

  select cpu_system_rate + cpu_user_rate where category=ROLE and serviceName=HUE

* Name all the roles that make up the Hive service

  Hive Gateway, Hive Metastore Server, HiveServer2

* What steps must be completed before integrating Cloudera Manager with Kerberos?

  * Set up a working KDC. Cloudera Manager supports authentication with MIT KDC and Active Directory.
  * Configure the KDC to allow renewable tickets with non-zero ticket lifetimes.
  * If you are using Active Directory, make sure LDAP over TLS/SSL (LDAPS) is enabled for the Domain Controllers.
  * Install the OS-specific packages for your cluster listed in the table:
  * Create an account for Cloudera Manager that has the permissions to create other accounts in the KDC. This should have been completed as part of Step 3: Create the Kerberos Principal for Cloudera Manager Server.

  For more information is available at https://www.cloudera.com/documentation/enterprise/latest/topics/cm_sg_s4_kerb_wizard.html#concept_ssg_x5y_l4

* 
