# What is ubertask optimization?
~~~
Normally when a MapReduce job is submitted to run on a Hadoop cluster, ApplicationMaster has to get the number of Map and Reduce tasks that has to be executed for a job and negotiate with the ResourceManager to get that many resource containers for running the tasks.

If a job is small ApplicationMaster may decide to run the job sequentially in the similar JVM where ApplicationMaster itself is running. This way of running a job is known as uber task in YARN.

Following configurations parameters are required for uber task in YARN:

1. mapreduce.job.ubertask.enable
2. mapreduce.job.ubertask.maxmaps
3. mapreduce.job.ubertask.maxreduces
4. mapreduce.job.ubertask.maxbytes
~~~

# Where in CM is the Kerberos Security Realm value displayed?

~~~
Administration -> Settings -> Kerberos -> Kerberos Security Realm
~~~

# Which CDH service(s) host a property for enabling Kerberos authentication

~~~
Flume
HBase
HCatalog
Hive
HttpFS
Hue
Impala
Llama
Oozie
Solr
Spark
Sqoop
ZooKeeper
~~~

# How do you upgrade the CM agents?
~~~
You need first to upgrade the cloudera manager Server. Once the CM server is upgrade and restarted a wizard pops up to upgrade the cloudera manager agents and optionally the JDK
1) Upgrade Cloudera Manager Server
2) Restart CM
3) Follow instructions of the wizard after reboot.
~~~

# Give the tsquery statement used to chart Hue's CPU utilization
`
SELECT cpu_system_rate + cpu_user_rate WHERE hostname = "<change to hue hostname>" AND category = ROLE
`

# Name all the roles that make up the Hive service
~~~
Gateway
Hive Metastore Server
HiveServer2
WebHcat Server
~~~

# What steps must be completed before integrating Cloudera Manager with Kerberos?
~~~
1. Install openldap-clients on the Cloudera Manager Server host. Install krb5-workstation krb5-libs on ALL hosts
2. Install MIT KDC or use the Active Directory KDC
3. Create Kerberos Principal for the Cloudera Manager Server
4. Configure the KDC to allow renewable tickets with non-zero ticket lifetimes.
5. Start the Wizard for Kerberos Integration
~~~