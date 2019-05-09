## CDH Setup


hdfs dfs -ls /user
```
[root@ip-172-30-1-171 cloudera-scm-server]# sudo -u hdfs hdfs dfs -ls /user
Found 6 items
drwxr-xr-x   - beltran supergroup          0 2018-05-17 07:10 /user/beltran
drwxrwxrwx   - mapred  hadoop              0 2018-05-17 07:04 /user/history
drwxrwxr-t   - hive    hive                0 2018-05-17 07:05 /user/hive
drwxrwxr-x   - hue     hue                 0 2018-05-17 07:06 /user/hue
drwxr-xr-x   - jimenez supergroup          0 2018-05-17 07:10 /user/jimenez
drwxrwxr-x   - oozie   oozie               0 2018-05-17 07:06 /user/oozie
```


CM API call ../api/v5/hosts
```
{
    "items": [
        {
            "hostId": "129b91de-c5df-445b-a516-96c7e7d402b0",
            "ipAddress": "172.30.1.111",
            "hostname": "ip-172-30-1-111.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "hostUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/129b91de-c5df-445b-a516-96c7e7d402b0",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "commissionState": "COMMISSIONED",
            "numCores": 4,
            "totalPhysMemBytes": 16656269312
        },
        {
            "hostId": "3ce05e65-b59f-4636-ad0e-e66e69b92030",
            "ipAddress": "172.30.1.171",
            "hostname": "ip-172-30-1-171.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "hostUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/3ce05e65-b59f-4636-ad0e-e66e69b92030",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "commissionState": "COMMISSIONED",
            "numCores": 4,
            "totalPhysMemBytes": 16656269312
        },
        {
            "hostId": "27cf7531-c21c-4715-b38f-80a7d64fdfc9",
            "ipAddress": "172.30.1.183",
            "hostname": "ip-172-30-1-183.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "hostUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/27cf7531-c21c-4715-b38f-80a7d64fdfc9",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "commissionState": "COMMISSIONED",
            "numCores": 4,
            "totalPhysMemBytes": 16656269312
        },
        {
            "hostId": "d9ec54c6-3b79-417a-8c39-c07ba53de776",
            "ipAddress": "172.30.1.19",
            "hostname": "ip-172-30-1-19.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "hostUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/d9ec54c6-3b79-417a-8c39-c07ba53de776",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "commissionState": "COMMISSIONED",
            "numCores": 4,
            "totalPhysMemBytes": 16656269312
        },
        {
            "hostId": "933ef444-9fb4-4a36-8edc-2984d730f739",
            "ipAddress": "172.30.1.226",
            "hostname": "ip-172-30-1-226.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "hostUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/hostRedirect/933ef444-9fb4-4a36-8edc-2984d730f739",
            "maintenanceMode": false,
            "maintenanceOwners": [],
            "commissionState": "COMMISSIONED",
            "numCores": 4,
            "totalPhysMemBytes": 16656269312
        }
    ]
}

```


CM API call ../api/v11/clusters/<githubName>/services

```
{
    "items": [
        {
            "name": "zookeeper",
            "type": "ZOOKEEPER",
            "clusterRef": {
                "clusterName": "cluster"
            },
            "serviceUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/zookeeper",
            "roleInstancesUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/zookeeper/instances",
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
            "serviceUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/oozie",
            "roleInstancesUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/oozie/instances",
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
            "serviceUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hue",
            "roleInstancesUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hue/instances",
            "serviceState": "STARTED",
            "healthSummary": "GOOD",
            "healthChecks": [
                {
                    "name": "HUE_HUE_SERVERS_HEALTHY",
                    "summary": "GOOD",
                    "suppressed": false
                },
                {
                    "name": "HUE_LOAD_BALANCER_HEALTHY",
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
            "serviceUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hdfs",
            "roleInstancesUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hdfs/instances",
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
            "serviceUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/yarn",
            "roleInstancesUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/yarn/instances",
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
            "serviceUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hbase",
            "roleInstancesUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hbase/instances",
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
            "serviceUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hive",
            "roleInstancesUrl": "http://ip-172-30-1-171.ap-southeast-1.compute.internal:7180/cmf/serviceRedirect/hive/instances",
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
