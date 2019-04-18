# CCA131: Cloudera Administration Certification

## Install
Demonstrate an understanding of the installation process for Cloudera Manager, CDH, and the ecosystem projects.

Note - for the exam you will be given a running cluster and not required to install and setup CM & CDH.  Most of this section is for information purposes.

### Set up a local CDH repository

Cloudera dox @ https://www.cloudera.com/documentation/enterprise/5-14-x/topics/cm_ig_create_local_parcel_repo.html

Install a web server
```sh
# Download and install
sudo yum install httpd

# Run it
sudo service httpd start

# Check its status
sudo service httpd status
```

Create the directory that will contain CDH parcels in /var/www/html/
```sh
# Download CDH parcels
sudo wget http://archive.cloudera.com/cdh5/parcels/5.14.4/CDH-5.14.4-1.cdh5.14.4.p0.3-el7.parcel
sudo wget http://archive.cloudera.com/cdh5/parcels/5.14.4/CDH-5.14.4-1.cdh5.14.4.p0.3-el7.parcel.sha1
sudo wget http://archive.cloudera.com/cdh5/parcels/5.14.4/manifest.json
```

### [Perform OS-level configuration for Hadoop installation](/Cloudera-Admin/Cloudera-CheatSheet/OS_Configuration.md#os-configuration)
There are different system configurations, I just reported some:
- Hostname Resolution: properly configure file /etc/hosts with the association between the FQDN and the IP address
```sh
sudo vi /etc/hosts
```
- mount disks with the noatime option
- reduce the swappiness (vm.swappiness=1)
```sh
# Check vm.swappiness value
sysctl vm.swappiness

# Change vm.swappiness value
sudo vi /proc/sys/vm/swappiness
# edit and add the line:
vm.swappiness=1
```
- Disable Transparent Hugepage (THP)
```
[root]$ cat /sys/kernel/mm/transparent_hugepage/defrag
[root]$ cat /sys/kernel/mm/transparent_hugepage/enabled
[root]$ echo never > /sys/kernel/mm/transparent_hugepage/defrag
[root]$ echo never > /sys/kernel/mm/transparent_hugepage/enabled

Make this change persistent.
chmod +x /etc/rc.d/rc.local
echo "echo never > /sys/kernel/mm/transparent_hugepage/defrag" >> /etc/rc.local
echo "echo never > /sys/kernel/mm/transparent_hugepage/enabled" >> /etc/rc.local
```
- Configure Firewall (IPtable/FirewallD) if required: Hadoop requires many ports for communications (Configuration -> All Port Configurations to see all ports used)
```
systemctl disable firewalld
systemctl stop firewalld
```
- Disable IPv6
```
[root]$ sed -e 's/IPV6INIT\=\"yes\"/IPV6INIT\=\"no\"/' -i /etc/sysconfig/network-scripts/ifcfg-eth0

[root]$ echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
[root]$ echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf
[root]$ sysctl -p
```
- Disable SELinux
```sh
sudo vi /etc/syslog/selinux

# Edit
SELINUX=disabled
Make the change reboot persistent.
sed -i 's/^SELINUX=.*$/SELINUX=disabled/g' /etc/selinux/config
```
- Install and configure ntp daemon for service synchronization
```
Set Timezone.
[root]$ timedatectl set-timezone UTC

Disable chrony and enable NTPD
[root]$ systemctl stop chronyd
[root]$ systemctl disable chronyd
[root]$ systemctl enable ntpd
[root]$ systemctl start ntpd

Check if its active and synching time.
[root]$ ntpstat
```
- In CM, Hosts -> Host Inspector checks for many of the items covered above.

### Install Cloudera Manager server and agents
You can follow two ways:
- Installation Path A (Only recommended for testing purposes) - https://www.cloudera.com/documentation/enterprise/5-14-x/topics/cm_ig_install_path_a.html
- Installation Path B (The recommended solution) - https://www.cloudera.com/documentation/enterprise/5-14-x/topics/cm_ig_install_path_b.html

### Install CDH using Cloudera Manager
While you are installing Cloudera Manager you will be asked for the local CDH repository.
You should put the path in which parcels config files have been downloaded
### Add a new node to an existing cluster
- Cloudera Manager
- Hosts
- Add New Hosts to Cluster
- Specify which instance roles install on this new host.  Host templates may be required.  The host template can be created at any time in the CM – Hosts – hosts template section.  Here we can specify the services and roles for the host and then use this template when adding the host.

### Add a service using Cloudera Manager
- Cloudera Manager
- Add Service
- Follow service wizard for installation and configuration

Some services are dependent on other service and they can’t be added without adding the dependency service first (i.e. Impala has a dependency of Hive and Hue has a dependency of HDFS, MR, Hive).

Kafka service requires Kafka parcel to be installed and activated. If not installed, it will fail while adding the service. Therefore check whether Kafka parcel is installed and activated, then proceed to add service.  Go to Parcels – Kafka parcel should be available for download. If not select, ‘check for new parcels’ in the parcels page. Then download the parcel, distribute and activate.  Once activated, you can proceed to add the Kafka service to the cluster.

When adding a service you will be asked to customize role assignments for the service.  You should be presented information on which host a particular role of the service has to be installed.  Once the service is added, ensure that it is up and running, and no warnings/errors showing up in the service status.


## Configure
Perform basic and advanced configuration needed to effectively administer a Hadoop cluster
### Configure a service using Cloudera Manager
This answer strongly depends on the specific service you'd like to configure.
To configure a service: CM – Service – Configuration section – using search option and locate the relevant property.
Whenever you make any config changes the service will go in stale state which requires a service restart.
### Create an HDFS user's home directory
Open a DataNode shell and let us suppose to create the home directory for the user 'mickymouse'.
```sh
sudo -u hdfs hdfs dfs -mkdir /user/mickymouse
```
Once that directory has been created, let's give mickemouse user ownership
```sh
sudo -u hdfs hdfs dfs -chown mickymouse /user/mickymouse
```
Finally let's check what we did by typing
```sh
sudo -u hdfs hdfs dfs -ls /user/
```
### Configure NameNode HA
In order to be able to enable the NameNode HA service Zookeeper should be installed on our cluster.
- Install an ensemble of Zookeeper hosts (odd number >1): add service -> zookeeper -> select 3 (for example) hosts on which install zookeeper daemon

Now we are ready to enable HDFS in HA:
- click HDFS
- click on actions and choose 'Enable High Availability'
- follow the wizard and select where to install the standby NameNode (usually where you have the Secondary NameNode), and where to install the ensemble of an odd number (>1) of JournalNodes
- restart the HDFS

### Configure ResourceManager HA
- click YARN
- click on actions
- enable High Availability
- select where to install the Standby ResourceManager

### Configure proxy for Hiveserver2/Impala
#### Hive
- Download load-balancing proxy software of your choice on a single host (haproxy for example)
```sh
sudo yum install haproxy
```
- Configure the software, by editing a configuration file :
```sh
sudo vi /etc/haproxy/haproxy.cfg
```
Set the port for the load balancer to listen on and relay HiveServer2 requests back and forth.  For example, listen hiveserver2 :10000.
Set the port and hostname for each HiveServer2 host—that is, the hosts from which the load balancer chooses when relaying each query. For example:

server server1 master:10000
server server2 standby:10000

- Restart the haproxy
```sh
sudo vi service haproxy restart
sudo vi service haproxy status
```

Now if you connect to the HiveServer2 by using beeline:
```sh
beeline -u connect jdbc:hive2://proxy_ip:proxy_port -n mickymouse
```

In addition to that:
- Go to the Hive service.
- Click the Configuration tab.
- Select Scope > HiveServer2.
- Select Category > Main.
- Locate the HiveServer2 Load Balancer property or search for it by typing its name in the Search box.
- Enter values for hostname:port_number.

#### Impala
- Download load-balancing proxy software of your choice on a single host (haproxy for example)
```sh
sudo yum install haproxy
```
- Configure the software, by editing a configuration file :
```sh
sudo vi /etc/haproxy/haproxy.cfg
```
Set the port for the load balancer to listen on and relay Impala requests back and forth.  For example, listen impala :21000
Set the port and hostname for each impalad host—that is, the hosts from which the load balancer chooses when relaying each query.  For example:

server server1 master:21050
server server2 standby:21050
server server3 slave1:21050

- Restart the haproxy
```sh
sudo vi service haproxy restart
sudo vi service haproxy status
```
- connect to impalad service through proxy
```sh
impala-shell -i <proxy_address>:<proxy_port>
```

In addition to that:
- Go to the Impala service.
- Click the Configuration tab.
- Locate the Impala Load Balancer property or search for it by typing its name in the Search box.
- Enter values for hostname:port_number.

If you want to make Hue aware of the presence of such load balancer, you should make some little changes in Hue.
- Manual approach: edit file /etc/hue/hue.ini
```sh
[impala]
server_host=<hostname running HAProxy>
server_port=<port HAProxy is bound to>
server_conn_timeout=<timeout in seconds>
```
- Using Cloudera Manager: Hue -> edit "Hue Service Advanced Configuration Snippet (Safety Valve) for hue_safety_valve.ini" property as
```sh
[impala]
server_host=<hostname running HAProxy>
server_port=<port HAProxy is bound to>
server_conn_timeout=<timeout in seconds>
```

## Manage
Maintain and modify the cluster to support day-to-day operations in the enterprise

### Rebalance the cluster
HDFS data might not always be placed uniformly across DataNodes. One common reason is addition of new DataNodes to an existing cluster. HDFS provides a balancer utility that analyzes block placement and balances data across the DataNodes. It moves blocks until the cluster is deemed to be balanced, which means that the utilization of every DataNode (ratio of used space on the node to total capacity of the node) differs from the utilization of the cluster (ratio of used space on the cluster to total capacity of the cluster) by no more than a given threshold percentage:
- Click on HDFS
- Click on actions
- Rebalance

Beyond to that, you can even set two important configurations:
- HDFS -> Configuration -> Rebalancing Threshold
- HDFS -> Configuration -> DataNode Balancing Threshold: that limits that bandwidth that can be used during the rebalancing phase
### Set up alerting for excessive disk fill
The first thing you should do is to enable the alerts for any service you would like to receive alerts. When set, Cloudera Manager will send alerts when the health of this service reaches the threshold specified by the EventServer setting eventserver_health_events_alert_threshold.

Let's consider the HDFS service for example:
- Click HDFS
- Click on Configuration
- Make sure that property 'Enable Service Level Health Alerts' is enabled

Once this has been enabled:
- Locate HDFS configuration named 'DataNode Free Space Monitoring Thresholds' (for example) and set the threshold as you want

Then:
- Click on Cloudera Management Service
- Click Configuration
- Make sure that property 'Alerts: Enable Email Alerts' is enabled
- Configure it by setting email address and so on

Finally, try to trigger it and check if you received a new mail:
```sh
mail
```

### Define and install a rack topology script
If implementing an external script, it will be specified with the net.topology.script.file.name parameter in the configuration files.

- Click HDFS
- Configuration
- Type net.topology.script.file.name
- Insert the script path

Examples of scripts are reported here https://hadoop.apache.org/docs/r2.8.0/hadoop-project-dist/hadoop-common/RackAwareness.html

An alternate way to assign racks to hosts is the following one:
- Hosts
- Select host
- Actions -> Assign rack

### Install new type of I/O compression library in cluster
- Install the GPLEXTRAS5 parcel
- yum install lzo lzop on each host
- add the gplextras repo and yum install hadoop-lzo on all hosts
- added com.hadoop.compression.lzo.LzopCodec, and com.hadoop.compression.lzo.LzoCodec to the list of codecs
- enabled mapreduce.map.output.compress and set
### Revise YARN resource assignment based on user feedback
See the last question, answer is related.
### Commission/decommission a node
- Click Hosts tab
- Select the hosts you want to decommission
- Actions for Selected -> Hosts decommission

Same for recommissioning

 ## Secure
Enable relevant services and configure the cluster to meet goals defined by security policy; demonstrate knowledge of basic security practices

### Configure HDFS ACLs
Hadoop supports extended ACLs feature, that is by default disabled:
- Enable Access Control Lists
- I will discuss ACLs commands in the "Test" section, skip to there with this [link](/Cloudera-Admin/CCA131-Required-Skills#getset-acls-for-a-file-or-directory-structure)

### Install and configure Sentry
First thing is to install the Sentry service:
- Add Service
- Choose Sentry
- Choose the two nodes where install sentry service and gateway
- Insert Sentry DB details

Some prerequisites should be met:
- set properly permissions on hive metastore:
```sh
sudo -u hdfs hdfs dfs -chmod -R 771 /user/hive/warehouse
sudo -u hdfs hdfs dfs -chown -R hive:hive /user/hive/warehouse
```
- disable HiveServer2 Impersonation
- enable Sentry Service for Hive (Hive -> Configurations -> Sentry Service and enable Sentry)

### Configure Hue user authorization and authentication
- Connect to Hue Web UI via browser (ip_addr:8888)
- In the top right corner click on your account name
- Choose 'Manage Users'
- Add Users
- Add Group if necessary
- Assign a Group to a User

### Enable/configure log and query redaction
- Make sure that the property 'Enable Log and Query Redaction' is enabled (HDFS->Configuration->redaction_policy_enabled)
- Configure the property "Log and Query Redaction Policy" by creating and defining as many rules as you want

### Create encrypted zones in HDFS
HDFS implements transparent, end-to-end encryption. Once configured, data read from and written to special HDFS directories is transparently encrypted and decrypted without requiring changes to user application code. This encryption is also end-to-end, which means the data can only be encrypted and decrypted by the client. HDFS never stores or has access to unencrypted data or unencrypted data encryption keys. This satisfies two typical requirements for encryption: at-rest encryption (meaning data on persistent media, such as a disk) as well as in-transit encryption (e.g. when data is travelling over the network).

First of all one additional service is needed:
- Add KMS Service and follow the wizard

When KMS is installed you should to restarts some services.
At that point you can proceed by creating a new encrypted zone as follows:

```sh
# As the normal user, create a new encryption key
hadoop key create myKey

# As the super user, create a new empty directory and make it an encryption zone
hadoop fs -mkdir /zone
hdfs crypto -createZone -keyName myKey -path /zone

# chown it to the normal user
hadoop fs -chown myuser:myuser /zone

# As the normal user, put a file in, read it out
hadoop fs -put helloWorld /zone
hadoop fs -cat /zone/helloWorld
```

## Test
Benchmark the cluster operational metrics, test system configuration for operation and efficiency

### Execute file system commands via HTTPFS
The first thing to do is to add the HTTPFS Role Instance to the cluster:
- Click HDFS
- Add Role Instance
- Select the host on which install HTTPFS gateway daemon

HttpFS HTTP web-service API calls are HTTP REST calls that map to a HDFS file system operation.
Here below a set of possible commands:
```sh
# Get the user home directory
curl "http://$httpfs_host$:14000/webhdfs/v1?op=gethomedirectory&user.name=$username$"

# List files
curl "http://$httpfs_host$:14000/webhdfs/v1/user/$username$?op=list&user.name=$username$"
```

### Efficiently copy data within a cluster/between clusters
DistCp Version 2 (distributed copy) is a tool used for large inter/intra-cluster copying. It uses MapReduce to effect its distribution, error handling and recovery, and reporting. It expands a list of files and directories into input to map tasks, each of which will copy a partition of the files specified in the source list.

```sh
# DistCp in the same cluster:
$ hadoop distcp /source_path /dest_path

# DistCp between two clusters:
$ hadoop distcp hdfs://cluster_nn1:8020/source_path hdfs://cluster_nn2:8020/dest_path
```

In case you want to copy data within the same cluster you can simply use:
```sh
# Look the documentation for command options
$ hdfs dfs -cp /source_path /dest_path
```

### Create/restore a snapshot of an HDFS directory
The first thing you should make in order to be able to take snapshot is to enable it for a given folder:
- Click HDFS
- File Browser
- Browse to the directory you want to snapshot
- Enable Snapshot

Once the snapshot feature has been enabled you can take the snapshot (click on button "Take Snapshot"), name and save it.

Whenever you want to restore a file:
```sh
# get the list of the snapshots taken
$ hdfs dfs -ls /snapshottable_path/.snapshot/

# get the list of files contained in snapshots
$ hdfs dfs -ls /snapshottable_path/.snapshot/snapshot_path

# restore the file(s) you want
$ hdfs dfs -cp /snapshottable_path/.snapshot/snapshot_path/file_snap /snapshottable_path/
```

### Get/set ACLs for a file or directory structure
```sh
# Displays the Access Control Lists (ACLs) of files and directories. If a directory has a default ACL, then getfacl also displays the default ACL.
$ hadoop fs -getfacl [-R] <path>
```

```sh
# Sets Access Control Lists (ACLs) of files and directories.
$ hadoop fs -setfacl [-R] [-b |-k -m |-x <acl_spec> <path>] |[--set <acl_spec> <path>]
- -b: Remove all but the base ACL entries. The entries for user, group and others are retained for compatibility with permission bits.
- -k: Remove the default ACL.
- -R: Apply operations to all files and directories recursively.
- -m: Modify ACL. New entries are added to the ACL, and existing entries are retained.
- -x: Remove specified ACL entries. Other ACL entries are retained.
- --set: Fully replace the ACL, discarding all existing entries. The acl_spec must include entries for user, group, and others for compatibility with permission bits.
- acl_spec: Comma separated list of ACL entries.
- path: File or directory to modify.
```
### Benchmark the cluster (I/O, CPU, network)
There are different ways to perform benchmarking on your cluster. Here below I will present the following:
- Teragen
- Terasort
- Teravalidate

```sh
# Teragen
$ hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen <num_rows> <destination_path>

# Generate a file of 325MB size (each row generated by teragen is 100B long)
$ hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen 3407872 /dest_path

# Generate a file with 100 records
$ hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen 100 /dest_path

# Generate a file of 325MB size, with blocksize of 64MB
$ hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -D dfs.blocksize=67108864 3407872 /dest_path

# Generate a file of 325MB size (splitted in 5 files), with blocksize of 64MB
$ hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -D dfs.blocksize=67108864 -D mapred.map.tasks=5 3407872 /dest_path
```


```sh
# Terasort
$ hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort <dataset_path> <destination_path>
```

```sh
# Teravalidate
$ hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teravalidate <dataset_path> <destination_path>
```

## Troubleshoot
Demonstrate ability to find the root cause of a problem, optimize inefficient execution, and resolve resource contention scenarios

Additionaly, please refer to the Cloudera BootCamp section on [troubleshooting](/Cloudera-Bootcamp/SEBC-October2018/troubleshooting/tech_support.md#-troubleshooting)

### Resolve errors/warnings in Cloudera Manager
The solution depends on the scenario. Always start by examining the logs and error message, searching on Clouderas site and forums, the Hortonworks site and forums, then wider google search results.
### Resolve performance problems/errors in cluster operation
The solution depends on the scenario. Always start by examining the logs and error message, searching on Clouderas site and forums, the Hortonworks site and forums, then wider google search results.
### Determine reason for application failure
The solution depends on the scenario. Always start by examining the logs and error message, searching on Clouderas site and forums, the Hortonworks site and forums, then wider google search results.


### Configure the Fair Scheduler to resolve application delays
The Fair Scheduler is the Cloudera recommended scheduler option.

To manually create a pool/subpool:
- Select Clusters > Cluster name > Dynamic Resource Pool Configuration. The YARN > Resource Pools tab displays.
- Click at the right of a resource pool row and select Create Pool/Subpool. Configure subpool properties.
- Click Create.
- Click Refresh Dynamic Resource Pools

Identical procedure for Impala Fair Scheduler Pools


```sh
# sometimes it could be necessary to submit a job to a specific pool (different from the default one); in this case the parameter to set is the following:
$ hadoop jar jobname.jar -D mapred.job.queue.name=queue name
```
