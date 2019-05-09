HDFS User Directories

```
[root@ip-172-30-1-50 cloudera-scm-server]# sudo -u hdfs hdfs dfs -ls /user
Found 7 items
drwxr-xr-x   - groot  supergroup          0 2018-05-18 03:45 /user/groot
drwxrwxrwx   - mapred hadoop              0 2018-05-18 03:39 /user/history
drwxrwxr-t   - hive   hive                0 2018-05-18 03:40 /user/hive
drwxrwxr-x   - hue    hue                 0 2018-05-18 03:40 /user/hue
drwxr-xr-x   - hulk   supergroup          0 2018-05-18 03:45 /user/hulk
drwxrwxr-x   - oozie  oozie               0 2018-05-18 03:41 /user/oozie
drwxr-xr-x   - thanos supergroup          0 2018-05-18 03:45 /user/thanos


```


API Host:

```
{
    "items": [
        {
            "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5",
            "ipAddress": "172.30.1.139",
            "hostname": "ip-172-30-1-139.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "hostUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/8f1dc9c6-d3ed-406d-b260-d9a409b561b5",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "commissionState": "COMMISSIONED",
            "numCores": 4,
            "totalPhysMemBytes": 16656269312
        },
        {
            "hostId": "cb699934-e0c5-4316-8895-e602f7bcdacd",
            "ipAddress": "172.30.1.245",
            "hostname": "ip-172-30-1-245.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "hostUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/cb699934-e0c5-4316-8895-e602f7bcdacd",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "commissionState": "COMMISSIONED",
            "numCores": 4,
            "totalPhysMemBytes": 16656265216
        },
        {
            "hostId": "105fc939-b62d-414e-a6a8-bd4705c05a24",
            "ipAddress": "172.30.1.249",
            "hostname": "ip-172-30-1-249.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "hostUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/105fc939-b62d-414e-a6a8-bd4705c05a24",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "commissionState": "COMMISSIONED",
            "numCores": 4,
            "totalPhysMemBytes": 16656269312
        },
        {
            "hostId": "653d47ab-bb1d-46f5-938e-2d3116139555",
            "ipAddress": "172.30.1.50",
            "hostname": "ip-172-30-1-50.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "hostUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/653d47ab-bb1d-46f5-938e-2d3116139555",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "commissionState": "COMMISSIONED",
            "numCores": 4,
            "totalPhysMemBytes": 16656269312
        },
        {
            "hostId": "f62b6693-c419-4216-9cdd-6a49caf2e8e6",
            "ipAddress": "172.30.1.59",
            "hostname": "ip-172-30-1-59.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "hostUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/f62b6693-c419-4216-9cdd-6a49caf2e8e6",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "commissionState": "COMMISSIONED",
            "numCores": 4,
            "totalPhysMemBytes": 16656269312
        }
    ]
}


```


API Service

```
{
    "items": [
        {
            "name": "zookeeper",
            "type": "ZOOKEEPER",
            "clusterRef": {
                "clusterName": "cluster"
            },
            "serviceUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/zookeeper",
            "roleInstancesUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/zookeeper/instances",
            "serviceState": "STARTED",
            "healthSummary": "GOOD",
            "healthChecks": [
                {
                    "name": "ZOOKEEPER_CANARY_HEALTH",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "ZOOKEEPER_SERVERS_HEALTHY",
                    "summary": "GOOD",
                    "suppressed": false
                }
            ],
            "configStalenessStatus": "FRESH",
            "clientConfigStalenessStatus": "FRESH",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "displayName": "ZooKeeper",
            "entityStatus": "GOOD_HEALTH"
        },
        {
            "name": "oozie",
            "type": "OOZIE",
            "clusterRef": {
                "clusterName": "cluster"
            },
            "serviceUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/oozie",
            "roleInstancesUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/oozie/instances",
            "serviceState": "STARTED",
            "healthSummary": "GOOD",
            "healthChecks": [
                {
                    "name": "OOZIE_OOZIE_SERVERS_HEALTHY",
                    "summary": "GOOD",
                    "suppressed": false
                }
            ],
            "configStalenessStatus": "FRESH",
            "clientConfigStalenessStatus": "FRESH",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "displayName": "Oozie",
            "entityStatus": "GOOD_HEALTH"
        },
        {
            "name": "hue",
            "type": "HUE",
            "clusterRef": {
                "clusterName": "cluster"
            },
            "serviceUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hue",
            "roleInstancesUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hue/instances",
            "serviceState": "STARTED",
            "healthSummary": "GOOD",
            "healthChecks": [
                {
                    "name": "HUE_HUE_SERVERS_HEALTHY",
                    "summary": "GOOD",
                    "suppressed": false
                }
            ],
            "configStalenessStatus": "FRESH",
            "clientConfigStalenessStatus": "FRESH",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "displayName": "Hue",
            "entityStatus": "GOOD_HEALTH"
        },
        {
            "name": "hdfs",
            "type": "HDFS",
            "clusterRef": {
                "clusterName": "cluster"
            },
            "serviceUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hdfs",
            "roleInstancesUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hdfs/instances",
            "serviceState": "STARTED",
            "healthSummary": "GOOD",
            "healthChecks": [
                {
                    "name": "HDFS_BLOCKS_WITH_CORRUPT_REPLICAS",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "HDFS_CANARY_HEALTH",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "HDFS_DATA_NODES_HEALTHY",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "HDFS_FREE_SPACE_REMAINING",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "HDFS_HA_NAMENODE_HEALTH",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "HDFS_MISSING_BLOCKS",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "HDFS_UNDER_REPLICATED_BLOCKS",
                    "summary": "GOOD",
                    "suppressed": false
                }
            ],
            "configStalenessStatus": "FRESH",
            "clientConfigStalenessStatus": "FRESH",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "displayName": "HDFS",
            "entityStatus": "GOOD_HEALTH"
        },
        {
            "name": "yarn",
            "type": "YARN",
            "clusterRef": {
                "clusterName": "cluster"
            },
            "serviceUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/yarn",
            "roleInstancesUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/yarn/instances",
            "serviceState": "STARTED",
            "healthSummary": "GOOD",
            "healthChecks": [
                {
                    "name": "YARN_JOBHISTORY_HEALTH",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "YARN_NODE_MANAGERS_HEALTHY",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "YARN_RESOURCEMANAGERS_HEALTH",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "YARN_USAGE_AGGREGATION_HEALTH",
                    "summary": "DISABLED",
                    "suppressed": false
                }
            ],
            "configStalenessStatus": "FRESH",
            "clientConfigStalenessStatus": "FRESH",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "displayName": "YARN (MR2 Included)",
            "entityStatus": "GOOD_HEALTH"
        },
        {
            "name": "hbase",
            "type": "HBASE",
            "clusterRef": {
                "clusterName": "cluster"
            },
            "serviceUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hbase",
            "roleInstancesUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hbase/instances",
            "serviceState": "STARTED",
            "healthSummary": "GOOD",
            "healthChecks": [
                {
                    "name": "HBASE_MASTER_HEALTH",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "HBASE_REGION_SERVERS_HEALTHY",
                    "summary": "GOOD",
                    "suppressed": false
                }
            ],
            "configStalenessStatus": "FRESH",
            "clientConfigStalenessStatus": "FRESH",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "displayName": "HBase",
            "entityStatus": "GOOD_HEALTH"
        },
        {
            "name": "hive",
            "type": "HIVE",
            "clusterRef": {
                "clusterName": "cluster"
            },
            "serviceUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hive",
            "roleInstancesUrl": "http://ip-172-30-1-50.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hive/instances",
            "serviceState": "STARTED",
            "healthSummary": "GOOD",
            "healthChecks": [
                {
                    "name": "HIVE_HIVEMETASTORES_HEALTHY",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "HIVE_HIVESERVER2S_HEALTHY",
                    "summary": "GOOD",
                    "suppressed": false
                }
            ],
            "configStalenessStatus": "FRESH",
            "clientConfigStalenessStatus": "FRESH",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "displayName": "Hive",
            "entityStatus": "GOOD_HEALTH"
        }
    ]
}


```
