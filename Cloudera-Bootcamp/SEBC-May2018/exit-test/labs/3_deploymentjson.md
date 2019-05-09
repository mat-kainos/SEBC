Deployment
```
{
    "timestamp": "2018-05-18T04:23:50.313Z",
    "clusters": [
        {
            "name": "cluster",
            "displayName": "doddys",
            "version": "CDH5",
            "fullVersion": "5.11.2",
            "services": [
                {
                    "name": "zookeeper",
                    "type": "ZOOKEEPER",
                    "config": {
                        "items": [
                            {
                                "name": "enableSecurity",
                                "value": "true",
                                "sensitive": false
                            }
                        ]
                    },
                    "roles": [
                        {
                            "name": "zookeeper-SERVER-763ee244a2da8a68c8aac4886c2ee97d",
                            "type": "SERVER",
                            "hostRef": {
                                "hostId": "105fc939-b62d-414e-a6a8-bd4705c05a24"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "639586e0n7xk2h7jv3ss9s81x",
                                        "sensitive": true
                                    },
                                    {
                                        "name": "serverId",
                                        "value": "2",
                                        "sensitive": false
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "zookeeper-SERVER-BASE"
                            }
                        },
                        {
                            "name": "zookeeper-SERVER-ca5d907e1991736aad6b7686f3be0b93",
                            "type": "SERVER",
                            "hostRef": {
                                "hostId": "cb699934-e0c5-4316-8895-e602f7bcdacd"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "5mv1svpsshptxgdhylx6fgf3a",
                                        "sensitive": true
                                    },
                                    {
                                        "name": "serverId",
                                        "value": "3",
                                        "sensitive": false
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "zookeeper-SERVER-BASE"
                            }
                        },
                        {
                            "name": "zookeeper-SERVER-f9a545813de80e875e910a908ca57c63",
                            "type": "SERVER",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "axoleupa8xswkesull0syct1",
                                        "sensitive": true
                                    },
                                    {
                                        "name": "serverId",
                                        "value": "1",
                                        "sensitive": false
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "zookeeper-SERVER-BASE"
                            }
                        }
                    ],
                    "displayName": "ZooKeeper",
                    "roleConfigGroups": [
                        {
                            "name": "zookeeper-SERVER-BASE",
                            "displayName": "Server Default Group",
                            "roleType": "SERVER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "zookeeper"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "maxSessionTimeout",
                                        "value": "60000",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "zookeeper_server_java_heapsize",
                                        "value": "590348288",
                                        "sensitive": false
                                    }
                                ]
                            }
                        }
                    ]
                },
                {
                    "name": "oozie",
                    "type": "OOZIE",
                    "config": {
                        "items": [
                            {
                                "name": "hive_service",
                                "value": "hive",
                                "sensitive": false
                            },
                            {
                                "name": "mapreduce_yarn_service",
                                "value": "yarn",
                                "sensitive": false
                            },
                            {
                                "name": "zookeeper_service",
                                "value": "zookeeper",
                                "sensitive": false
                            }
                        ]
                    },
                    "roles": [
                        {
                            "name": "oozie-OOZIE_SERVER-f9a545813de80e875e910a908ca57c63",
                            "type": "OOZIE_SERVER",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "2dz4cbtq8uz17zelmtti5iwt4",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "oozie-OOZIE_SERVER-BASE"
                            }
                        }
                    ],
                    "displayName": "Oozie",
                    "roleConfigGroups": [
                        {
                            "name": "oozie-OOZIE_SERVER-BASE",
                            "displayName": "Oozie Server Default Group",
                            "roleType": "OOZIE_SERVER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "oozie"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "oozie_database_host",
                                        "value": "ip-172-30-1-139.ap-southeast-1.compute.internal",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "oozie_database_password",
                                        "value": "Welcome1!",
                                        "sensitive": true
                                    },
                                    {
                                        "name": "oozie_database_type",
                                        "value": "mysql",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "oozie_database_user",
                                        "value": "oozie",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "oozie_java_heapsize",
                                        "value": "590348288",
                                        "sensitive": false
                                    }
                                ]
                            }
                        }
                    ]
                },
                {
                    "name": "hue",
                    "type": "HUE",
                    "config": {
                        "items": [
                            {
                                "name": "database_host",
                                "value": "ip-172-30-1-139.ap-southeast-1.compute.internal",
                                "sensitive": false
                            },
                            {
                                "name": "database_password",
                                "value": "Welcome1!",
                                "sensitive": true
                            },
                            {
                                "name": "database_type",
                                "value": "mysql",
                                "sensitive": false
                            },
                            {
                                "name": "hbase_service",
                                "value": "hbase",
                                "sensitive": false
                            },
                            {
                                "name": "hive_service",
                                "value": "hive",
                                "sensitive": false
                            },
                            {
                                "name": "hue_webhdfs",
                                "value": "hdfs-HTTPFS-f9a545813de80e875e910a908ca57c63",
                                "sensitive": false
                            },
                            {
                                "name": "oozie_service",
                                "value": "oozie",
                                "sensitive": false
                            },
                            {
                                "name": "zookeeper_service",
                                "value": "zookeeper",
                                "sensitive": false
                            }
                        ]
                    },
                    "roles": [
                        {
                            "name": "hue-HUE_SERVER-f9a545813de80e875e910a908ca57c63",
                            "type": "HUE_SERVER",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "6q0o5z00m0qcntsj0k7lxcueq",
                                        "sensitive": true
                                    },
                                    {
                                        "name": "secret_key",
                                        "value": "R3WObgelJnvnD5oypQbqF8SecPajdE",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hue-HUE_SERVER-BASE"
                            }
                        },
                        {
                            "name": "hue-KT_RENEWER-f9a545813de80e875e910a908ca57c63",
                            "type": "KT_RENEWER",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "3y0gx42juql1d8u6ff0f3khzq",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hue-KT_RENEWER-BASE"
                            }
                        }
                    ],
                    "displayName": "Hue",
                    "roleConfigGroups": [
                        {
                            "name": "hue-HUE_LOAD_BALANCER-BASE",
                            "displayName": "Load Balancer Default Group",
                            "roleType": "HUE_LOAD_BALANCER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hue"
                            },
                            "config": {
                                "items": []
                            }
                        },
                        {
                            "name": "hue-HUE_SERVER-BASE",
                            "displayName": "Hue Server Default Group",
                            "roleType": "HUE_SERVER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hue"
                            },
                            "config": {
                                "items": []
                            }
                        },
                        {
                            "name": "hue-KT_RENEWER-BASE",
                            "displayName": "Kerberos Ticket Renewer Default Group",
                            "roleType": "KT_RENEWER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hue"
                            },
                            "config": {
                                "items": []
                            }
                        }
                    ]
                },
                {
                    "name": "hdfs",
                    "type": "HDFS",
                    "config": {
                        "items": [
                            {
                                "name": "dfs_encrypt_data_transfer_algorithm",
                                "value": "AES/CTR/NoPadding",
                                "sensitive": false
                            },
                            {
                                "name": "dfs_ha_fencing_cloudera_manager_secret_key",
                                "value": "AmtjBA3Q49siNfzqumHSMSW2tCNgm5",
                                "sensitive": true
                            },
                            {
                                "name": "fc_authorization_secret_key",
                                "value": "B1vBsYNjq7PvUgWJMwiTFfm4bYZPtx",
                                "sensitive": true
                            },
                            {
                                "name": "hadoop_secure_web_ui",
                                "value": "true",
                                "sensitive": false
                            },
                            {
                                "name": "hadoop_security_authentication",
                                "value": "kerberos",
                                "sensitive": false
                            },
                            {
                                "name": "hadoop_security_authorization",
                                "value": "true",
                                "sensitive": false
                            },
                            {
                                "name": "http_auth_signature_secret",
                                "value": "p4gRhVvJIxenw1pzfsevPwBvmgM70L",
                                "sensitive": true
                            },
                            {
                                "name": "rm_dirty",
                                "value": "true",
                                "sensitive": false
                            },
                            {
                                "name": "zookeeper_service",
                                "value": "zookeeper",
                                "sensitive": false
                            }
                        ]
                    },
                    "roles": [
                        {
                            "name": "hdfs-BALANCER-f9a545813de80e875e910a908ca57c63",
                            "type": "BALANCER",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": []
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-BALANCER-BASE"
                            }
                        },
                        {
                            "name": "hdfs-DATANODE-5cfdf09e72f33d75a7c5bc9683d43037",
                            "type": "DATANODE",
                            "hostRef": {
                                "hostId": "653d47ab-bb1d-46f5-938e-2d3116139555"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "exmc5wt7mersc0024a3ghy534",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-DATANODE-BASE"
                            }
                        },
                        {
                            "name": "hdfs-DATANODE-763ee244a2da8a68c8aac4886c2ee97d",
                            "type": "DATANODE",
                            "hostRef": {
                                "hostId": "105fc939-b62d-414e-a6a8-bd4705c05a24"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "eslck6dwqq6djqv9zqc6tlk95",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-DATANODE-1"
                            }
                        },
                        {
                            "name": "hdfs-DATANODE-b6a8f2f2e9eae92284f435768acabbc5",
                            "type": "DATANODE",
                            "hostRef": {
                                "hostId": "f62b6693-c419-4216-9cdd-6a49caf2e8e6"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "3o4898w2rqx1ns9e93b3pjpc8",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-DATANODE-BASE"
                            }
                        },
                        {
                            "name": "hdfs-DATANODE-ca5d907e1991736aad6b7686f3be0b93",
                            "type": "DATANODE",
                            "hostRef": {
                                "hostId": "cb699934-e0c5-4316-8895-e602f7bcdacd"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "eda331a7a1n778rym72nd05dt",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-DATANODE-1"
                            }
                        },
                        {
                            "name": "hdfs-HTTPFS-f9a545813de80e875e910a908ca57c63",
                            "type": "HTTPFS",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "aec3322n6jgtvcsl2vtn4zchv",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-HTTPFS-BASE"
                            }
                        },
                        {
                            "name": "hdfs-NAMENODE-f9a545813de80e875e910a908ca57c63",
                            "type": "NAMENODE",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "namenode_id",
                                        "value": "53",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "role_jceks_password",
                                        "value": "euwhwhsaiqae91u4u124h04ht",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-NAMENODE-BASE"
                            }
                        },
                        {
                            "name": "hdfs-SECONDARYNAMENODE-f9a545813de80e875e910a908ca57c63",
                            "type": "SECONDARYNAMENODE",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "1htjwp6nsh1e4qeo4fxxgwel8",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-SECONDARYNAMENODE-BASE"
                            }
                        }
                    ],
                    "displayName": "HDFS",
                    "roleConfigGroups": [
                        {
                            "name": "hdfs-BALANCER-BASE",
                            "displayName": "Balancer Default Group",
                            "roleType": "BALANCER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hdfs"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "balancer_java_heapsize",
                                        "value": "590348288",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "hdfs-DATANODE-1",
                            "displayName": "DataNode Group 1",
                            "roleType": "DATANODE",
                            "base": false,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hdfs"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "dfs_data_dir_list",
                                        "value": "/dfs/dn",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_datanode_data_dir_perm",
                                        "value": "700",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_datanode_du_reserved",
                                        "value": "5367448780",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_datanode_http_port",
                                        "value": "1006",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_datanode_max_locked_memory",
                                        "value": "2687500288",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_datanode_port",
                                        "value": "1004",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "hdfs-DATANODE-BASE",
                            "displayName": "DataNode Default Group",
                            "roleType": "DATANODE",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hdfs"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "dfs_data_dir_list",
                                        "value": "/dfs/dn",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_datanode_data_dir_perm",
                                        "value": "700",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_datanode_du_reserved",
                                        "value": "5367448780",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_datanode_http_port",
                                        "value": "1006",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_datanode_max_locked_memory",
                                        "value": "3153068032",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_datanode_port",
                                        "value": "1004",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "hdfs-FAILOVERCONTROLLER-BASE",
                            "displayName": "Failover Controller Default Group",
                            "roleType": "FAILOVERCONTROLLER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hdfs"
                            },
                            "config": {
                                "items": []
                            }
                        },
                        {
                            "name": "hdfs-GATEWAY-BASE",
                            "displayName": "Gateway Default Group",
                            "roleType": "GATEWAY",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hdfs"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "dfs_client_use_trash",
                                        "value": "true",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "hdfs-HTTPFS-BASE",
                            "displayName": "HttpFS Default Group",
                            "roleType": "HTTPFS",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hdfs"
                            },
                            "config": {
                                "items": []
                            }
                        },
                        {
                            "name": "hdfs-JOURNALNODE-BASE",
                            "displayName": "JournalNode Default Group",
                            "roleType": "JOURNALNODE",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hdfs"
                            },
                            "config": {
                                "items": []
                            }
                        },
                        {
                            "name": "hdfs-NAMENODE-BASE",
                            "displayName": "NameNode Default Group",
                            "roleType": "NAMENODE",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hdfs"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "dfs_name_dir_list",
                                        "value": "/dfs/nn",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_namenode_servicerpc_address",
                                        "value": "8022",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "namenode_java_heapsize",
                                        "value": "590348288",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "hdfs-NFSGATEWAY-BASE",
                            "displayName": "NFS Gateway Default Group",
                            "roleType": "NFSGATEWAY",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hdfs"
                            },
                            "config": {
                                "items": []
                            }
                        },
                        {
                            "name": "hdfs-SECONDARYNAMENODE-BASE",
                            "displayName": "SecondaryNameNode Default Group",
                            "roleType": "SECONDARYNAMENODE",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hdfs"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "fs_checkpoint_dir_list",
                                        "value": "/dfs/snn",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "secondary_namenode_java_heapsize",
                                        "value": "590348288",
                                        "sensitive": false
                                    }
                                ]
                            }
                        }
                    ],
                    "replicationSchedules": [],
                    "snapshotPolicies": []
                },
                {
                    "name": "yarn",
                    "type": "YARN",
                    "config": {
                        "items": [
                            {
                                "name": "hadoop_secure_web_ui",
                                "value": "true",
                                "sensitive": false
                            },
                            {
                                "name": "hdfs_service",
                                "value": "hdfs",
                                "sensitive": false
                            },
                            {
                                "name": "rm_dirty",
                                "value": "true",
                                "sensitive": false
                            },
                            {
                                "name": "zk_authorization_secret_key",
                                "value": "oJJjngyo6IiH3wOLfrJnehjZlBx4gT",
                                "sensitive": true
                            },
                            {
                                "name": "zookeeper_service",
                                "value": "zookeeper",
                                "sensitive": false
                            }
                        ]
                    },
                    "roles": [
                        {
                            "name": "yarn-JOBHISTORY-f9a545813de80e875e910a908ca57c63",
                            "type": "JOBHISTORY",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "1jgmlw0icjwzfdr0yd1oyvqdz",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "yarn-JOBHISTORY-BASE"
                            }
                        },
                        {
                            "name": "yarn-NODEMANAGER-5cfdf09e72f33d75a7c5bc9683d43037",
                            "type": "NODEMANAGER",
                            "hostRef": {
                                "hostId": "653d47ab-bb1d-46f5-938e-2d3116139555"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "384jkaiuq5k1ssp0ge96w0e0n",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "yarn-NODEMANAGER-BASE"
                            }
                        },
                        {
                            "name": "yarn-NODEMANAGER-763ee244a2da8a68c8aac4886c2ee97d",
                            "type": "NODEMANAGER",
                            "hostRef": {
                                "hostId": "105fc939-b62d-414e-a6a8-bd4705c05a24"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "8n5qu7o0h95gdovfngn4bjd8l",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "yarn-NODEMANAGER-1"
                            }
                        },
                        {
                            "name": "yarn-NODEMANAGER-b6a8f2f2e9eae92284f435768acabbc5",
                            "type": "NODEMANAGER",
                            "hostRef": {
                                "hostId": "f62b6693-c419-4216-9cdd-6a49caf2e8e6"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "a91dump434wgzmp6bmyzsg2fy",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "yarn-NODEMANAGER-BASE"
                            }
                        },
                        {
                            "name": "yarn-NODEMANAGER-ca5d907e1991736aad6b7686f3be0b93",
                            "type": "NODEMANAGER",
                            "hostRef": {
                                "hostId": "cb699934-e0c5-4316-8895-e602f7bcdacd"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "45ks8042p4egnnio6yh1a5lnj",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "yarn-NODEMANAGER-1"
                            }
                        },
                        {
                            "name": "yarn-RESOURCEMANAGER-f9a545813de80e875e910a908ca57c63",
                            "type": "RESOURCEMANAGER",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "rm_id",
                                        "value": "60",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "role_jceks_password",
                                        "value": "8f58qghewwdk76fbdkm0esiuv",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "yarn-RESOURCEMANAGER-BASE"
                            }
                        }
                    ],
                    "displayName": "YARN (MR2 Included)",
                    "roleConfigGroups": [
                        {
                            "name": "yarn-GATEWAY-BASE",
                            "displayName": "Gateway Default Group",
                            "roleType": "GATEWAY",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "yarn"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "mapred_reduce_tasks",
                                        "value": "8",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "mapred_submit_replication",
                                        "value": "2",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "yarn-JOBHISTORY-BASE",
                            "displayName": "JobHistory Server Default Group",
                            "roleType": "JOBHISTORY",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "yarn"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "mr2_jobhistory_java_heapsize",
                                        "value": "590348288",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "yarn-NODEMANAGER-1",
                            "displayName": "NodeManager Group 1",
                            "roleType": "NODEMANAGER",
                            "base": false,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "yarn"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "yarn_nodemanager_heartbeat_interval_ms",
                                        "value": "100",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "yarn_nodemanager_local_dirs",
                                        "value": "/yarn/nm",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "yarn_nodemanager_log_dirs",
                                        "value": "/yarn/container-logs",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "yarn_nodemanager_resource_cpu_vcores",
                                        "value": "4",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "yarn_nodemanager_resource_memory_mb",
                                        "value": "2563",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "yarn-NODEMANAGER-BASE",
                            "displayName": "NodeManager Default Group",
                            "roleType": "NODEMANAGER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "yarn"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "yarn_nodemanager_heartbeat_interval_ms",
                                        "value": "100",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "yarn_nodemanager_local_dirs",
                                        "value": "/yarn/nm",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "yarn_nodemanager_log_dirs",
                                        "value": "/yarn/container-logs",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "yarn_nodemanager_resource_cpu_vcores",
                                        "value": "4",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "yarn_nodemanager_resource_memory_mb",
                                        "value": "3007",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "yarn-RESOURCEMANAGER-BASE",
                            "displayName": "ResourceManager Default Group",
                            "roleType": "RESOURCEMANAGER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "yarn"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "resource_manager_java_heapsize",
                                        "value": "590348288",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "yarn_scheduler_maximum_allocation_mb",
                                        "value": "3007",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "yarn_scheduler_maximum_allocation_vcores",
                                        "value": "4",
                                        "sensitive": false
                                    }
                                ]
                            }
                        }
                    ]
                },
                {
                    "name": "hbase",
                    "type": "HBASE",
                    "config": {
                        "items": [
                            {
                                "name": "hbase_security_authentication",
                                "value": "kerberos",
                                "sensitive": false
                            },
                            {
                                "name": "hbase_security_authorization",
                                "value": "true",
                                "sensitive": false
                            },
                            {
                                "name": "hbase_thriftserver_security_authentication",
                                "value": "auth-conf",
                                "sensitive": false
                            },
                            {
                                "name": "hdfs_service",
                                "value": "hdfs",
                                "sensitive": false
                            },
                            {
                                "name": "rm_dirty",
                                "value": "true",
                                "sensitive": false
                            },
                            {
                                "name": "zookeeper_service",
                                "value": "zookeeper",
                                "sensitive": false
                            }
                        ]
                    },
                    "roles": [
                        {
                            "name": "hbase-MASTER-f9a545813de80e875e910a908ca57c63",
                            "type": "MASTER",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "eijtd4antbwxste79dpcus0y2",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hbase-MASTER-BASE"
                            }
                        },
                        {
                            "name": "hbase-REGIONSERVER-5cfdf09e72f33d75a7c5bc9683d43037",
                            "type": "REGIONSERVER",
                            "hostRef": {
                                "hostId": "653d47ab-bb1d-46f5-938e-2d3116139555"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "50pdfwbtu4z0xwyj6nbj2qgy4",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hbase-REGIONSERVER-BASE"
                            }
                        },
                        {
                            "name": "hbase-REGIONSERVER-763ee244a2da8a68c8aac4886c2ee97d",
                            "type": "REGIONSERVER",
                            "hostRef": {
                                "hostId": "105fc939-b62d-414e-a6a8-bd4705c05a24"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "7s36pt0e4dlv98smhdmu06zt0",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hbase-REGIONSERVER-1"
                            }
                        },
                        {
                            "name": "hbase-REGIONSERVER-b6a8f2f2e9eae92284f435768acabbc5",
                            "type": "REGIONSERVER",
                            "hostRef": {
                                "hostId": "f62b6693-c419-4216-9cdd-6a49caf2e8e6"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "5a0ov8drbbntxbi45hri5xihu",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hbase-REGIONSERVER-BASE"
                            }
                        },
                        {
                            "name": "hbase-REGIONSERVER-ca5d907e1991736aad6b7686f3be0b93",
                            "type": "REGIONSERVER",
                            "hostRef": {
                                "hostId": "cb699934-e0c5-4316-8895-e602f7bcdacd"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "b2dtkwkc2lxk36ot11tfeozvt",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hbase-REGIONSERVER-1"
                            }
                        }
                    ],
                    "displayName": "HBase",
                    "roleConfigGroups": [
                        {
                            "name": "hbase-GATEWAY-BASE",
                            "displayName": "Gateway Default Group",
                            "roleType": "GATEWAY",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hbase"
                            },
                            "config": {
                                "items": []
                            }
                        },
                        {
                            "name": "hbase-HBASERESTSERVER-BASE",
                            "displayName": "HBase REST Server Default Group",
                            "roleType": "HBASERESTSERVER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hbase"
                            },
                            "config": {
                                "items": []
                            }
                        },
                        {
                            "name": "hbase-HBASETHRIFTSERVER-BASE",
                            "displayName": "HBase Thrift Server Default Group",
                            "roleType": "HBASETHRIFTSERVER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hbase"
                            },
                            "config": {
                                "items": []
                            }
                        },
                        {
                            "name": "hbase-MASTER-BASE",
                            "displayName": "Master Default Group",
                            "roleType": "MASTER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hbase"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "hbase_master_java_heapsize",
                                        "value": "590348288",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "hbase-REGIONSERVER-1",
                            "displayName": "RegionServer Group 1",
                            "roleType": "REGIONSERVER",
                            "base": false,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hbase"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "hbase_regionserver_java_heapsize",
                                        "value": "2066743296",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "hbase-REGIONSERVER-BASE",
                            "displayName": "RegionServer Default Group",
                            "roleType": "REGIONSERVER",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hbase"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "hbase_regionserver_java_heapsize",
                                        "value": "2425356288",
                                        "sensitive": false
                                    }
                                ]
                            }
                        }
                    ],
                    "snapshotPolicies": []
                },
                {
                    "name": "hive",
                    "type": "HIVE",
                    "config": {
                        "items": [
                            {
                                "name": "hbase_service",
                                "value": "hbase",
                                "sensitive": false
                            },
                            {
                                "name": "hive_metastore_database_host",
                                "value": "ip-172-30-1-139.ap-southeast-1.compute.internal",
                                "sensitive": false
                            },
                            {
                                "name": "hive_metastore_database_name",
                                "value": "hive",
                                "sensitive": false
                            },
                            {
                                "name": "hive_metastore_database_password",
                                "value": "Welcome1!",
                                "sensitive": true
                            },
                            {
                                "name": "mapreduce_yarn_service",
                                "value": "yarn",
                                "sensitive": false
                            },
                            {
                                "name": "zookeeper_service",
                                "value": "zookeeper",
                                "sensitive": false
                            }
                        ]
                    },
                    "roles": [
                        {
                            "name": "hive-GATEWAY-5cfdf09e72f33d75a7c5bc9683d43037",
                            "type": "GATEWAY",
                            "hostRef": {
                                "hostId": "653d47ab-bb1d-46f5-938e-2d3116139555"
                            },
                            "config": {
                                "items": []
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-GATEWAY-BASE"
                            }
                        },
                        {
                            "name": "hive-GATEWAY-763ee244a2da8a68c8aac4886c2ee97d",
                            "type": "GATEWAY",
                            "hostRef": {
                                "hostId": "105fc939-b62d-414e-a6a8-bd4705c05a24"
                            },
                            "config": {
                                "items": []
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-GATEWAY-BASE"
                            }
                        },
                        {
                            "name": "hive-GATEWAY-b6a8f2f2e9eae92284f435768acabbc5",
                            "type": "GATEWAY",
                            "hostRef": {
                                "hostId": "f62b6693-c419-4216-9cdd-6a49caf2e8e6"
                            },
                            "config": {
                                "items": []
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-GATEWAY-BASE"
                            }
                        },
                        {
                            "name": "hive-GATEWAY-ca5d907e1991736aad6b7686f3be0b93",
                            "type": "GATEWAY",
                            "hostRef": {
                                "hostId": "cb699934-e0c5-4316-8895-e602f7bcdacd"
                            },
                            "config": {
                                "items": []
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-GATEWAY-BASE"
                            }
                        },
                        {
                            "name": "hive-GATEWAY-f9a545813de80e875e910a908ca57c63",
                            "type": "GATEWAY",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": []
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-GATEWAY-BASE"
                            }
                        },
                        {
                            "name": "hive-HIVEMETASTORE-f9a545813de80e875e910a908ca57c63",
                            "type": "HIVEMETASTORE",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "dc0lycswdbyseicizi2r04nqf",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-HIVEMETASTORE-BASE"
                            }
                        },
                        {
                            "name": "hive-HIVESERVER2-f9a545813de80e875e910a908ca57c63",
                            "type": "HIVESERVER2",
                            "hostRef": {
                                "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "bc22ma926q73o83jkzlbejck8",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-HIVESERVER2-BASE"
                            }
                        }
                    ],
                    "displayName": "Hive",
                    "roleConfigGroups": [
                        {
                            "name": "hive-GATEWAY-BASE",
                            "displayName": "Gateway Default Group",
                            "roleType": "GATEWAY",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hive"
                            },
                            "config": {
                                "items": []
                            }
                        },
                        {
                            "name": "hive-HIVEMETASTORE-BASE",
                            "displayName": "Hive Metastore Server Default Group",
                            "roleType": "HIVEMETASTORE",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hive"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "hive_metastore_java_heapsize",
                                        "value": "590348288",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "hive-HIVESERVER2-BASE",
                            "displayName": "HiveServer2 Default Group",
                            "roleType": "HIVESERVER2",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hive"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "hiveserver2_java_heapsize",
                                        "value": "590348288",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "hiveserver2_spark_driver_memory",
                                        "value": "966367641",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "hiveserver2_spark_executor_cores",
                                        "value": "4",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "hiveserver2_spark_executor_memory",
                                        "value": "2284375244",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "hiveserver2_spark_yarn_driver_memory_overhead",
                                        "value": "102",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "hiveserver2_spark_yarn_executor_memory_overhead",
                                        "value": "384",
                                        "sensitive": false
                                    }
                                ]
                            }
                        },
                        {
                            "name": "hive-WEBHCAT-BASE",
                            "displayName": "WebHCat Server Default Group",
                            "roleType": "WEBHCAT",
                            "base": true,
                            "serviceRef": {
                                "clusterName": "cluster",
                                "serviceName": "hive"
                            },
                            "config": {
                                "items": []
                            }
                        }
                    ],
                    "replicationSchedules": []
                }
            ],
            "parcels": [
                {
                    "product": "CDH",
                    "version": "5.11.2-1.cdh5.11.2.p0.4",
                    "stage": "DISTRIBUTED",
                    "clusterRef": {
                        "clusterName": "cluster"
                    }
                },
                {
                    "product": "CDH",
                    "version": "5.11.2-1.cdh5.11.2.p0.4",
                    "stage": "ACTIVATED",
                    "clusterRef": {
                        "clusterName": "cluster"
                    }
                }
            ]
        }
    ],
    "hosts": [
        {
            "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5",
            "ipAddress": "172.30.1.139",
            "hostname": "ip-172-30-1-139.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "config": {
                "items": []
            }
        },
        {
            "hostId": "cb699934-e0c5-4316-8895-e602f7bcdacd",
            "ipAddress": "172.30.1.245",
            "hostname": "ip-172-30-1-245.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "config": {
                "items": []
            }
        },
        {
            "hostId": "105fc939-b62d-414e-a6a8-bd4705c05a24",
            "ipAddress": "172.30.1.249",
            "hostname": "ip-172-30-1-249.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "config": {
                "items": []
            }
        },
        {
            "hostId": "653d47ab-bb1d-46f5-938e-2d3116139555",
            "ipAddress": "172.30.1.50",
            "hostname": "ip-172-30-1-50.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "config": {
                "items": []
            }
        },
        {
            "hostId": "f62b6693-c419-4216-9cdd-6a49caf2e8e6",
            "ipAddress": "172.30.1.59",
            "hostname": "ip-172-30-1-59.ap-southeast-1.compute.internal",
            "rackId": "/default",
            "config": {
                "items": []
            }
        }
    ],
    "users": [
        {
            "name": "__cloudera_internal_user__mgmt-EVENTSERVER-f9a545813de80e875e910a908ca57c63",
            "roles": [
                "ROLE_USER"
            ],
            "pwHash": "5da52a88368c05e93e9e4e9b1157a5436f56e17ed0aa8bc4e18e382417857aed",
            "pwSalt": -392530942462626612,
            "pwLogin": true
        },
        {
            "name": "__cloudera_internal_user__mgmt-HOSTMONITOR-f9a545813de80e875e910a908ca57c63",
            "roles": [
                "ROLE_USER"
            ],
            "pwHash": "10cac08fa05f8356c956d4269bccf2d376c0d798f615f9e87ca608f77fbd3f5a",
            "pwSalt": 4448306709338435034,
            "pwLogin": true
        },
        {
            "name": "__cloudera_internal_user__mgmt-REPORTSMANAGER-f9a545813de80e875e910a908ca57c63",
            "roles": [
                "ROLE_USER"
            ],
            "pwHash": "7598d295254886167ca96709c95ca1d7b84df3bd969b0639ccf5ece204f1b587",
            "pwSalt": -6680731776546727697,
            "pwLogin": true
        },
        {
            "name": "__cloudera_internal_user__mgmt-SERVICEMONITOR-f9a545813de80e875e910a908ca57c63",
            "roles": [
                "ROLE_USER"
            ],
            "pwHash": "ca01ee8a57626cfc980cc83a043cdba37ad17c6a061fad39a5a6e4b47f68d724",
            "pwSalt": -1172831629090721289,
            "pwLogin": true
        },
        {
            "name": "admin",
            "roles": [
                "ROLE_ADMIN"
            ],
            "pwHash": "9c3f201d458c85ce3228d57f772f7849a936c6120ffe25ec88d748636c87b1c1",
            "pwSalt": -3824463266776734568,
            "pwLogin": true
        }
    ],
    "versionInfo": {
        "version": "5.11.2",
        "buildUser": "jenkins",
        "buildTimestamp": "20170811-0014",
        "gitHash": "3c3ea33a12076fb83a8f11c4452c52fac685d01b",
        "snapshot": false
    },
    "managementService": {
        "name": "mgmt",
        "type": "MGMT",
        "config": {
            "items": []
        },
        "roles": [
            {
                "name": "mgmt-ALERTPUBLISHER-f9a545813de80e875e910a908ca57c63",
                "type": "ALERTPUBLISHER",
                "hostRef": {
                    "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                },
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password",
                            "value": "3qga98lj6bg0an1ka1444e5ih",
                            "sensitive": true
                        }
                    ]
                },
                "roleConfigGroupRef": {
                    "roleConfigGroupName": "mgmt-ALERTPUBLISHER-BASE"
                }
            },
            {
                "name": "mgmt-EVENTSERVER-f9a545813de80e875e910a908ca57c63",
                "type": "EVENTSERVER",
                "hostRef": {
                    "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                },
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password",
                            "value": "c3jv50ufetim3jgumvmucxdeg",
                            "sensitive": true
                        }
                    ]
                },
                "roleConfigGroupRef": {
                    "roleConfigGroupName": "mgmt-EVENTSERVER-BASE"
                }
            },
            {
                "name": "mgmt-HOSTMONITOR-f9a545813de80e875e910a908ca57c63",
                "type": "HOSTMONITOR",
                "hostRef": {
                    "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                },
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password",
                            "value": "30e58vsty5tbu4u58cjo7glyv",
                            "sensitive": true
                        }
                    ]
                },
                "roleConfigGroupRef": {
                    "roleConfigGroupName": "mgmt-HOSTMONITOR-BASE"
                }
            },
            {
                "name": "mgmt-REPORTSMANAGER-f9a545813de80e875e910a908ca57c63",
                "type": "REPORTSMANAGER",
                "hostRef": {
                    "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                },
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password",
                            "value": "dlrqls5ze98otzeuo04j3c5ds",
                            "sensitive": true
                        }
                    ]
                },
                "roleConfigGroupRef": {
                    "roleConfigGroupName": "mgmt-REPORTSMANAGER-BASE"
                }
            },
            {
                "name": "mgmt-SERVICEMONITOR-f9a545813de80e875e910a908ca57c63",
                "type": "SERVICEMONITOR",
                "hostRef": {
                    "hostId": "8f1dc9c6-d3ed-406d-b260-d9a409b561b5"
                },
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password",
                            "value": "q8j30skwyyjong9i922leeo2",
                            "sensitive": true
                        }
                    ]
                },
                "roleConfigGroupRef": {
                    "roleConfigGroupName": "mgmt-SERVICEMONITOR-BASE"
                }
            }
        ],
        "displayName": "Cloudera Management Service",
        "roleConfigGroups": [
            {
                "name": "mgmt-ACTIVITYMONITOR-BASE",
                "displayName": "Activity Monitor Default Group",
                "roleType": "ACTIVITYMONITOR",
                "base": true,
                "serviceRef": {
                    "serviceName": "mgmt"
                },
                "config": {
                    "items": []
                }
            },
            {
                "name": "mgmt-ALERTPUBLISHER-BASE",
                "displayName": "Alert Publisher Default Group",
                "roleType": "ALERTPUBLISHER",
                "base": true,
                "serviceRef": {
                    "serviceName": "mgmt"
                },
                "config": {
                    "items": []
                }
            },
            {
                "name": "mgmt-EVENTSERVER-BASE",
                "displayName": "Event Server Default Group",
                "roleType": "EVENTSERVER",
                "base": true,
                "serviceRef": {
                    "serviceName": "mgmt"
                },
                "config": {
                    "items": [
                        {
                            "name": "event_server_heapsize",
                            "value": "590348288",
                            "sensitive": false
                        }
                    ]
                }
            },
            {
                "name": "mgmt-HOSTMONITOR-BASE",
                "displayName": "Host Monitor Default Group",
                "roleType": "HOSTMONITOR",
                "base": true,
                "serviceRef": {
                    "serviceName": "mgmt"
                },
                "config": {
                    "items": [
                        {
                            "name": "firehose_heapsize",
                            "value": "590348288",
                            "sensitive": false
                        },
                        {
                            "name": "firehose_non_java_memory_bytes",
                            "value": "805306368",
                            "sensitive": false
                        }
                    ]
                }
            },
            {
                "name": "mgmt-NAVIGATOR-BASE",
                "displayName": "Navigator Audit Server Default Group",
                "roleType": "NAVIGATOR",
                "base": true,
                "serviceRef": {
                    "serviceName": "mgmt"
                },
                "config": {
                    "items": []
                }
            },
            {
                "name": "mgmt-NAVIGATORMETASERVER-BASE",
                "displayName": "Navigator Metadata Server Default Group",
                "roleType": "NAVIGATORMETASERVER",
                "base": true,
                "serviceRef": {
                    "serviceName": "mgmt"
                },
                "config": {
                    "items": []
                }
            },
            {
                "name": "mgmt-REPORTSMANAGER-BASE",
                "displayName": "Reports Manager Default Group",
                "roleType": "REPORTSMANAGER",
                "base": true,
                "serviceRef": {
                    "serviceName": "mgmt"
                },
                "config": {
                    "items": [
                        {
                            "name": "headlamp_database_host",
                            "value": "ip-172-30-1-139.ap-southeast-1.compute.internal",
                            "sensitive": false
                        },
                        {
                            "name": "headlamp_database_name",
                            "value": "rman",
                            "sensitive": false
                        },
                        {
                            "name": "headlamp_database_password",
                            "value": "Welcome1!",
                            "sensitive": true
                        },
                        {
                            "name": "headlamp_database_user",
                            "value": "rman",
                            "sensitive": false
                        },
                        {
                            "name": "headlamp_heapsize",
                            "value": "590348288",
                            "sensitive": false
                        }
                    ]
                }
            },
            {
                "name": "mgmt-SERVICEMONITOR-BASE",
                "displayName": "Service Monitor Default Group",
                "roleType": "SERVICEMONITOR",
                "base": true,
                "serviceRef": {
                    "serviceName": "mgmt"
                },
                "config": {
                    "items": [
                        {
                            "name": "firehose_heapsize",
                            "value": "590348288",
                            "sensitive": false
                        },
                        {
                            "name": "firehose_non_java_memory_bytes",
                            "value": "805306368",
                            "sensitive": false
                        }
                    ]
                }
            },
            {
                "name": "mgmt-TELEMETRYPUBLISHER-BASE",
                "displayName": "Telemetry Publisher Default Group",
                "roleType": "TELEMETRYPUBLISHER",
                "base": true,
                "serviceRef": {
                    "serviceName": "mgmt"
                },
                "config": {
                    "items": []
                }
            }
        ]
    },
    "managerSettings": {
        "items": [
            {
                "name": "AD_USE_SIMPLE_AUTH",
                "value": "false",
                "sensitive": false
            },
            {
                "name": "CLUSTER_STATS_START",
                "value": "10/22/2012 19:20",
                "sensitive": false
            },
            {
                "name": "KDC_ADMIN_PASSWORD",
                "value": "BQIAAABDAAIACURPRERZUy5TRwAMY2xvdWRlcmEtc2NtAAVhZG1pbgAAAAFa/lBHAQAXABCjpoX4k2TUpRgrAo++eaw4AAAAAQ==",
                "sensitive": true
            },
            {
                "name": "KDC_ADMIN_USER",
                "value": "cloudera-scm/admin@DODDYS.SG",
                "sensitive": false
            },
            {
                "name": "KDC_HOST",
                "value": "ip-172-30-1-139.ap-southeast-1.compute.internal",
                "sensitive": false
            },
            {
                "name": "KRB_MANAGE_KRB5_CONF",
                "value": "true",
                "sensitive": false
            },
            {
                "name": "MAX_RENEW_LIFE",
                "value": "604800",
                "sensitive": false
            },
            {
                "name": "PUBLIC_CLOUD_STATUS",
                "value": "ON_PUBLIC_CLOUD",
                "sensitive": false
            },
            {
                "name": "REMOTE_PARCEL_REPO_URLS",
                "value": "https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,http://archive.cloudera.com/kudu/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/",
                "sensitive": false
            },
            {
                "name": "SECURITY_REALM",
                "value": "DODDYS.SG",
                "sensitive": false
            }
        ]
    },
    "allHostsConfig": {
        "items": []
    },
    "peers": [],
    "hostTemplates": {
        "items": []
    }
}


```
