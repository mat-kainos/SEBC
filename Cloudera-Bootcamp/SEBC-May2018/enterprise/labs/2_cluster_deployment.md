Deployment JSON

```
{
    "timestamp": "2018-05-16T03:44:04.227Z",
    "clusters": [
        {
            "name": "cluster",
            "displayName": "doddys",
            "version": "CDH5",
            "fullVersion": "5.14.2",
            "services": [
                {
                    "name": "hive",
                    "type": "HIVE",
                    "config": {
                        "items": [
                            {
                                "name": "hive_metastore_database_host",
                                "value": "hadoop5.expecc.com",
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
                            "name": "hive-GATEWAY-09e508d96f7d22573e6a5f45d8e6ad63",
                            "type": "GATEWAY",
                            "hostRef": {
                                "hostId": "e778680b-bd7a-44d4-b772-f561204d3f7c"
                            },
                            "config": {
                                "items": []
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-GATEWAY-BASE"
                            }
                        },
                        {
                            "name": "hive-GATEWAY-0f374c2d85352e9f4847549481f31e3e",
                            "type": "GATEWAY",
                            "hostRef": {
                                "hostId": "d13f2945-6ac1-400f-aa0a-bdf83db9296a"
                            },
                            "config": {
                                "items": []
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-GATEWAY-BASE"
                            }
                        },
                        {
                            "name": "hive-GATEWAY-4e51eba8a74e489282a8cd682ff63470",
                            "type": "GATEWAY",
                            "hostRef": {
                                "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                            },
                            "config": {
                                "items": []
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-GATEWAY-BASE"
                            }
                        },
                        {
                            "name": "hive-GATEWAY-534c8bd41129249958f5415e5676d67f",
                            "type": "GATEWAY",
                            "hostRef": {
                                "hostId": "818da701-7df3-403d-b07b-03b4e9256c37"
                            },
                            "config": {
                                "items": []
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-GATEWAY-BASE"
                            }
                        },
                        {
                            "name": "hive-GATEWAY-700318b847a02990d5468e8d8ee000e2",
                            "type": "GATEWAY",
                            "hostRef": {
                                "hostId": "55900e52-fbc9-451c-af3b-0585cb240662"
                            },
                            "config": {
                                "items": []
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-GATEWAY-BASE"
                            }
                        },
                        {
                            "name": "hive-HIVEMETASTORE-4e51eba8a74e489282a8cd682ff63470",
                            "type": "HIVEMETASTORE",
                            "hostRef": {
                                "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "9irohufs1anbb0anb53nccdh9",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hive-HIVEMETASTORE-BASE"
                            }
                        },
                        {
                            "name": "hive-HIVESERVER2-4e51eba8a74e489282a8cd682ff63470",
                            "type": "HIVESERVER2",
                            "hostRef": {
                                "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "6kxj11527c95cms1bjrstlnhn",
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
                                        "value": "52428800",
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
                                        "value": "52428800",
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
                                        "value": "4160539852",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "hiveserver2_spark_yarn_driver_memory_overhead",
                                        "value": "102",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "hiveserver2_spark_yarn_executor_memory_overhead",
                                        "value": "700",
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
                },
                {
                    "name": "zookeeper",
                    "type": "ZOOKEEPER",
                    "config": {
                        "items": []
                    },
                    "roles": [
                        {
                            "name": "zookeeper-SERVER-0f374c2d85352e9f4847549481f31e3e",
                            "type": "SERVER",
                            "hostRef": {
                                "hostId": "d13f2945-6ac1-400f-aa0a-bdf83db9296a"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "xttic3cpqo3jetv74nmzofez",
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
                        },
                        {
                            "name": "zookeeper-SERVER-4e51eba8a74e489282a8cd682ff63470",
                            "type": "SERVER",
                            "hostRef": {
                                "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "9gh5wsnd4vt51d3y2rftlzxsd",
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
                            "name": "zookeeper-SERVER-700318b847a02990d5468e8d8ee000e2",
                            "type": "SERVER",
                            "hostRef": {
                                "hostId": "55900e52-fbc9-451c-af3b-0585cb240662"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "an2e2whisdeo8hh303vqrh0c1",
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
                                        "name": "zookeeper_server_java_heapsize",
                                        "value": "52428800",
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
                                "value": "hadoop5.expecc.com",
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
                                "name": "hive_service",
                                "value": "hive",
                                "sensitive": false
                            },
                            {
                                "name": "hue_webhdfs",
                                "value": "hdfs-NAMENODE-0f374c2d85352e9f4847549481f31e3e",
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
                            "name": "hue-HUE_LOAD_BALANCER-4e51eba8a74e489282a8cd682ff63470",
                            "type": "HUE_LOAD_BALANCER",
                            "hostRef": {
                                "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "7y92m4c9nnvqpdbelvp0daejw",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hue-HUE_LOAD_BALANCER-BASE"
                            }
                        },
                        {
                            "name": "hue-HUE_SERVER-4e51eba8a74e489282a8cd682ff63470",
                            "type": "HUE_SERVER",
                            "hostRef": {
                                "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "navmetadataserver_cmdb_password",
                                        "value": "f3872d01-d7b1-48b3-9e4a-6e0cbc264601",
                                        "sensitive": true
                                    },
                                    {
                                        "name": "role_jceks_password",
                                        "value": "87fglqcs6qft8z01k58ywhn7n",
                                        "sensitive": true
                                    },
                                    {
                                        "name": "secret_key",
                                        "value": "VdoZDkhh7kgiUQcWV2MU1apGx2Ejtd",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hue-HUE_SERVER-BASE"
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
                            "name": "oozie-OOZIE_SERVER-4e51eba8a74e489282a8cd682ff63470",
                            "type": "OOZIE_SERVER",
                            "hostRef": {
                                "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "f4wdih2myv7ksiod3nd6kg70r",
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
                                        "value": "hadoop5.expecc.com",
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
                                        "value": "52428800",
                                        "sensitive": false
                                    }
                                ]
                            }
                        }
                    ]
                },
                {
                    "name": "yarn",
                    "type": "YARN",
                    "config": {
                        "items": [
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
                                "name": "rm_last_allocation_percentage",
                                "value": "80",
                                "sensitive": false
                            },
                            {
                                "name": "yarn_service_cgroups",
                                "value": "true",
                                "sensitive": false
                            },
                            {
                                "name": "yarn_service_lce_always",
                                "value": "true",
                                "sensitive": false
                            },
                            {
                                "name": "zk_authorization_secret_key",
                                "value": "mxjaVetCnuFhR1HRsmknV1kkffI9Mw",
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
                            "name": "yarn-JOBHISTORY-0f374c2d85352e9f4847549481f31e3e",
                            "type": "JOBHISTORY",
                            "hostRef": {
                                "hostId": "d13f2945-6ac1-400f-aa0a-bdf83db9296a"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "brglfc67sdmoo62eqb96oyg6p",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "yarn-JOBHISTORY-BASE"
                            }
                        },
                        {
                            "name": "yarn-NODEMANAGER-09e508d96f7d22573e6a5f45d8e6ad63",
                            "type": "NODEMANAGER",
                            "hostRef": {
                                "hostId": "e778680b-bd7a-44d4-b772-f561204d3f7c"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "cf7quggpm1he2qby84f9rqc0e",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "yarn-NODEMANAGER-BASE"
                            }
                        },
                        {
                            "name": "yarn-NODEMANAGER-534c8bd41129249958f5415e5676d67f",
                            "type": "NODEMANAGER",
                            "hostRef": {
                                "hostId": "818da701-7df3-403d-b07b-03b4e9256c37"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "2tchlr0021jtg91yrs7hsb41k",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "yarn-NODEMANAGER-BASE"
                            }
                        },
                        {
                            "name": "yarn-NODEMANAGER-700318b847a02990d5468e8d8ee000e2",
                            "type": "NODEMANAGER",
                            "hostRef": {
                                "hostId": "55900e52-fbc9-451c-af3b-0585cb240662"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "ctzdnwhfixyof16mydfnd8pvt",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "yarn-NODEMANAGER-BASE"
                            }
                        },
                        {
                            "name": "yarn-RESOURCEMANAGER-0f374c2d85352e9f4847549481f31e3e",
                            "type": "RESOURCEMANAGER",
                            "hostRef": {
                                "hostId": "d13f2945-6ac1-400f-aa0a-bdf83db9296a"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "rm_id",
                                        "value": "52",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "role_jceks_password",
                                        "value": "84yq0ts8h6mvnwcn3wkn02djk",
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
                                        "value": "6",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "mapred_submit_replication",
                                        "value": "3",
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
                                "items": []
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
                                        "name": "rm_cpu_shares",
                                        "value": "1600",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "rm_io_weight",
                                        "value": "800",
                                        "sensitive": false
                                    },
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
                                        "value": "3",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "yarn_nodemanager_resource_memory_mb",
                                        "value": "12288",
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
                                        "name": "yarn_scheduler_maximum_allocation_mb",
                                        "value": "3072",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "yarn_scheduler_maximum_allocation_vcores",
                                        "value": "3",
                                        "sensitive": false
                                    }
                                ]
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
                                "name": "dfs_ha_fencing_cloudera_manager_secret_key",
                                "value": "lxewrHMcZB2TAqCiJdUeBYlVZb8lfC",
                                "sensitive": true
                            },
                            {
                                "name": "fc_authorization_secret_key",
                                "value": "ymDS2npwnTw9vJnTgDwimiDDQHbIWf",
                                "sensitive": true
                            },
                            {
                                "name": "http_auth_signature_secret",
                                "value": "ewC83Bf1ALqycpcyPpqoE7Nedpnbsr",
                                "sensitive": true
                            },
                            {
                                "name": "rm_dirty",
                                "value": "false",
                                "sensitive": false
                            },
                            {
                                "name": "rm_last_allocation_percentage",
                                "value": "20",
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
                            "name": "hdfs-BALANCER-0f374c2d85352e9f4847549481f31e3e",
                            "type": "BALANCER",
                            "hostRef": {
                                "hostId": "d13f2945-6ac1-400f-aa0a-bdf83db9296a"
                            },
                            "config": {
                                "items": []
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-BALANCER-BASE"
                            }
                        },
                        {
                            "name": "hdfs-DATANODE-09e508d96f7d22573e6a5f45d8e6ad63",
                            "type": "DATANODE",
                            "hostRef": {
                                "hostId": "e778680b-bd7a-44d4-b772-f561204d3f7c"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "e4f9l4lw307aczr2hxsfxl9ef",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-DATANODE-BASE"
                            }
                        },
                        {
                            "name": "hdfs-DATANODE-0f374c2d85352e9f4847549481f31e3e",
                            "type": "DATANODE",
                            "hostRef": {
                                "hostId": "d13f2945-6ac1-400f-aa0a-bdf83db9296a"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "8420w9b8yaxfdffyie59febjb",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-DATANODE-BASE"
                            }
                        },
                        {
                            "name": "hdfs-DATANODE-534c8bd41129249958f5415e5676d67f",
                            "type": "DATANODE",
                            "hostRef": {
                                "hostId": "818da701-7df3-403d-b07b-03b4e9256c37"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "dzli74rvbqnzp9bpkjv5c295f",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-DATANODE-BASE"
                            }
                        },
                        {
                            "name": "hdfs-DATANODE-700318b847a02990d5468e8d8ee000e2",
                            "type": "DATANODE",
                            "hostRef": {
                                "hostId": "55900e52-fbc9-451c-af3b-0585cb240662"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "bks0908b6zkrt17gel1avhkyk",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-DATANODE-BASE"
                            }
                        },
                        {
                            "name": "hdfs-FAILOVERCONTROLLER-0f374c2d85352e9f4847549481f31e3e",
                            "type": "FAILOVERCONTROLLER",
                            "hostRef": {
                                "hostId": "d13f2945-6ac1-400f-aa0a-bdf83db9296a"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "680b47ipo6f26wfd7ilh9o9ce",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-FAILOVERCONTROLLER-BASE"
                            }
                        },
                        {
                            "name": "hdfs-FAILOVERCONTROLLER-4e51eba8a74e489282a8cd682ff63470",
                            "type": "FAILOVERCONTROLLER",
                            "hostRef": {
                                "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password",
                                        "value": "e15ipx72iszu0nevaos9z9m1r",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-FAILOVERCONTROLLER-BASE"
                            }
                        },
                        {
                            "name": "hdfs-JOURNALNODE-0f374c2d85352e9f4847549481f31e3e",
                            "type": "JOURNALNODE",
                            "hostRef": {
                                "hostId": "d13f2945-6ac1-400f-aa0a-bdf83db9296a"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "dfs_journalnode_edits_dir",
                                        "value": "/dfs/1/jn",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "role_jceks_password",
                                        "value": "5lu1nia5j74iy96euywwtn1ur",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-JOURNALNODE-BASE"
                            }
                        },
                        {
                            "name": "hdfs-JOURNALNODE-4e51eba8a74e489282a8cd682ff63470",
                            "type": "JOURNALNODE",
                            "hostRef": {
                                "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "dfs_journalnode_edits_dir",
                                        "value": "/dfs/3/jn",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "role_jceks_password",
                                        "value": "84yhdi68vjmrjlxa4wrg5n0ji",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-JOURNALNODE-BASE"
                            }
                        },
                        {
                            "name": "hdfs-JOURNALNODE-700318b847a02990d5468e8d8ee000e2",
                            "type": "JOURNALNODE",
                            "hostRef": {
                                "hostId": "55900e52-fbc9-451c-af3b-0585cb240662"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "dfs_journalnode_edits_dir",
                                        "value": "/dfs/2/jn",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "role_jceks_password",
                                        "value": "e0jofgcxribdpfggifu0ltme9",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-JOURNALNODE-BASE"
                            }
                        },
                        {
                            "name": "hdfs-NAMENODE-0f374c2d85352e9f4847549481f31e3e",
                            "type": "NAMENODE",
                            "hostRef": {
                                "hostId": "d13f2945-6ac1-400f-aa0a-bdf83db9296a"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "autofailover_enabled",
                                        "value": "true",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_federation_namenode_nameservice",
                                        "value": "nameservice1",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_namenode_quorum_journal_name",
                                        "value": "nameservice1",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "namenode_id",
                                        "value": "54",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "role_jceks_password",
                                        "value": "aq35omviwek187moj90y9el7z",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-NAMENODE-BASE"
                            }
                        },
                        {
                            "name": "hdfs-NAMENODE-4e51eba8a74e489282a8cd682ff63470",
                            "type": "NAMENODE",
                            "hostRef": {
                                "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                            },
                            "config": {
                                "items": [
                                    {
                                        "name": "autofailover_enabled",
                                        "value": "true",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_federation_namenode_nameservice",
                                        "value": "nameservice1",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_name_dir_list",
                                        "value": "/dfs/2/nn",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_namenode_quorum_journal_name",
                                        "value": "nameservice1",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "namenode_id",
                                        "value": "60",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "role_jceks_password",
                                        "value": "de0d5p7ef7mdibfdo4ype8e2a",
                                        "sensitive": true
                                    }
                                ]
                            },
                            "roleConfigGroupRef": {
                                "roleConfigGroupName": "hdfs-NAMENODE-BASE"
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
                                "items": []
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
                                        "name": "datanode_java_heapsize",
                                        "value": "1073741824",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_data_dir_list",
                                        "value": "/dfs/dn",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_datanode_du_reserved",
                                        "value": "3157157068",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "dfs_datanode_max_locked_memory",
                                        "value": "4294967296",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "rm_cpu_shares",
                                        "value": "400",
                                        "sensitive": false
                                    },
                                    {
                                        "name": "rm_io_weight",
                                        "value": "200",
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
                                "items": [
                                    {
                                        "name": "dfs_journalnode_edits_dir",
                                        "value": "/dfs/jn",
                                        "sensitive": false
                                    }
                                ]
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
                                        "value": "3221225472",
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
                                        "value": "3221225472",
                                        "sensitive": false
                                    }
                                ]
                            }
                        }
                    ],
                    "replicationSchedules": [],
                    "snapshotPolicies": []
                }
            ],
            "parcels": [
                {
                    "product": "CDH",
                    "version": "5.14.2-1.cdh5.14.2.p0.3",
                    "stage": "DISTRIBUTED",
                    "clusterRef": {
                        "clusterName": "cluster"
                    }
                },
                {
                    "product": "CDH",
                    "version": "5.14.2-1.cdh5.14.2.p0.3",
                    "stage": "ACTIVATED",
                    "clusterRef": {
                        "clusterName": "cluster"
                    }
                }
            ],
            "uuid": "5a342aa2-c9bb-4bcd-8fa3-7b78a91d43a9"
        }
    ],
    "hosts": [
        {
            "hostId": "d13f2945-6ac1-400f-aa0a-bdf83db9296a",
            "ipAddress": "172.30.1.187",
            "hostname": "hadoop5.expecc.com",
            "rackId": "/default",
            "config": {
                "items": []
            }
        },
        {
            "hostId": "55900e52-fbc9-451c-af3b-0585cb240662",
            "ipAddress": "172.30.1.33",
            "hostname": "hadoop6.expecc.com",
            "rackId": "/default",
            "config": {
                "items": []
            }
        },
        {
            "hostId": "818da701-7df3-403d-b07b-03b4e9256c37",
            "ipAddress": "172.30.1.74",
            "hostname": "hadoop7.expecc.com",
            "rackId": "/default",
            "config": {
                "items": []
            }
        },
        {
            "hostId": "e778680b-bd7a-44d4-b772-f561204d3f7c",
            "ipAddress": "172.30.1.51",
            "hostname": "hadoop8.expecc.com",
            "rackId": "/default",
            "config": {
                "items": []
            }
        },
        {
            "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0",
            "ipAddress": "172.30.1.252",
            "hostname": "hadoop9.expecc.com",
            "rackId": "/default",
            "config": {
                "items": []
            }
        }
    ],
    "users": [
        {
            "name": "__cloudera_internal_user__hue-HUE_SERVER-0f374c2d85352e9f4847549481f31e3e",
            "roles": [
                "ROLE_NAVIGATOR_ADMIN"
            ],
            "pwHash": "cc116bb1261a7d5034b547c51884bcaacb2f58232912341914a60882cd044692",
            "pwSalt": 3916222308721042693,
            "pwLogin": true
        },
        {
            "name": "__cloudera_internal_user__hue-HUE_SERVER-4e51eba8a74e489282a8cd682ff63470",
            "roles": [
                "ROLE_NAVIGATOR_ADMIN"
            ],
            "pwHash": "b8ae6a452b00bee28d40d0ea264812aa9efa8efb9bf29f52aab9f773c344286f",
            "pwSalt": -11710423397642045,
            "pwLogin": true
        },
        {
            "name": "__cloudera_internal_user__mgmt-EVENTSERVER-0f374c2d85352e9f4847549481f31e3e",
            "roles": [
                "ROLE_USER"
            ],
            "pwHash": "3e87d521f41f7eb4f2b9ac465d0265f468b8914541db3f64c21f4e7548dd4ec8",
            "pwSalt": 234093130136245208,
            "pwLogin": true
        },
        {
            "name": "__cloudera_internal_user__mgmt-EVENTSERVER-4e51eba8a74e489282a8cd682ff63470",
            "roles": [
                "ROLE_USER"
            ],
            "pwHash": "7ea3a11713a09e8df4a770f053fc241d83f89fb948b9ef89f96df588b506d98d",
            "pwSalt": -1828623711779321463,
            "pwLogin": true
        },
        {
            "name": "__cloudera_internal_user__mgmt-HOSTMONITOR-0f374c2d85352e9f4847549481f31e3e",
            "roles": [
                "ROLE_USER"
            ],
            "pwHash": "cd80b274df72ee6f43da60ef429b8d828b6b365807a9da284c77d3da94b5eb34",
            "pwSalt": -1081207360012209188,
            "pwLogin": true
        },
        {
            "name": "__cloudera_internal_user__mgmt-HOSTMONITOR-4e51eba8a74e489282a8cd682ff63470",
            "roles": [
                "ROLE_USER"
            ],
            "pwHash": "6a646aa8a27a9ce609dbecfb8c133479e71f1cc5648a7c824dccf5652a336d83",
            "pwSalt": 3461548300622681535,
            "pwLogin": true
        },
        {
            "name": "__cloudera_internal_user__mgmt-REPORTSMANAGER-0f374c2d85352e9f4847549481f31e3e",
            "roles": [
                "ROLE_USER"
            ],
            "pwHash": "7ef31518475abf774c905732888db57db5d3b0bb44da9f902919338126319c20",
            "pwSalt": -3190286944678758429,
            "pwLogin": true
        },
        {
            "name": "__cloudera_internal_user__mgmt-REPORTSMANAGER-4e51eba8a74e489282a8cd682ff63470",
            "roles": [
                "ROLE_USER"
            ],
            "pwHash": "0163de4d212385c2dbbe10b7558fe4329b69c53bdb6bdbe6356d6085a864e1e0",
            "pwSalt": 1368315024829110956,
            "pwLogin": true
        },
        {
            "name": "__cloudera_internal_user__mgmt-SERVICEMONITOR-0f374c2d85352e9f4847549481f31e3e",
            "roles": [
                "ROLE_USER"
            ],
            "pwHash": "065d0fc7a7f977f581fd17c421df9ffcfcc7986cfb8c386e9645a9b3ee072906",
            "pwSalt": 2721645481119369795,
            "pwLogin": true
        },
        {
            "name": "__cloudera_internal_user__mgmt-SERVICEMONITOR-4e51eba8a74e489282a8cd682ff63470",
            "roles": [
                "ROLE_USER"
            ],
            "pwHash": "267c0a5d7cef767ffc97e511c806c8a21683704a92ed1f05987f6a3120425a73",
            "pwSalt": -1139145653699330993,
            "pwLogin": true
        },
        {
            "name": "admin",
            "roles": [
                "ROLE_LIMITED"
            ],
            "pwHash": "83c2f1cddaa493045bcd6624f0f029a828e7c5e2cf6383a6b361c18c4c11a424",
            "pwSalt": 2327474047372406607,
            "pwLogin": true
        },
        {
            "name": "doddys",
            "roles": [
                "ROLE_ADMIN"
            ],
            "pwHash": "1787c4caf62a8ba1167894190611dde54c5408004e4f392dcc2f983fc3b9d5f2",
            "pwSalt": -1095767444076073719,
            "pwLogin": true
        },
        {
            "name": "minotaur",
            "roles": [
                "ROLE_CONFIGURATOR"
            ],
            "pwHash": "6062a6abade9f6ab543c2191cd530ce85c67419290c8613381ec56131e6fd671",
            "pwSalt": -3974073686669123070,
            "pwLogin": true
        }
    ],
    "versionInfo": {
        "version": "5.14.3",
        "buildUser": "jenkins",
        "buildTimestamp": "20180414-0404",
        "gitHash": "7f2725eea4edeb1d184a2888db790d332167b6f8",
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
                "name": "mgmt-ALERTPUBLISHER-4e51eba8a74e489282a8cd682ff63470",
                "type": "ALERTPUBLISHER",
                "hostRef": {
                    "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                },
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password",
                            "value": "6qgt8sjirh8w1o9l8s7p72vuu",
                            "sensitive": true
                        }
                    ]
                },
                "roleConfigGroupRef": {
                    "roleConfigGroupName": "mgmt-ALERTPUBLISHER-BASE"
                }
            },
            {
                "name": "mgmt-EVENTSERVER-4e51eba8a74e489282a8cd682ff63470",
                "type": "EVENTSERVER",
                "hostRef": {
                    "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                },
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password",
                            "value": "4uv6k0wk7dpgwr0i4vpthu01i",
                            "sensitive": true
                        }
                    ]
                },
                "roleConfigGroupRef": {
                    "roleConfigGroupName": "mgmt-EVENTSERVER-BASE"
                }
            },
            {
                "name": "mgmt-HOSTMONITOR-4e51eba8a74e489282a8cd682ff63470",
                "type": "HOSTMONITOR",
                "hostRef": {
                    "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                },
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password",
                            "value": "d3dhf48tj2kxibabv6osej9z4",
                            "sensitive": true
                        }
                    ]
                },
                "roleConfigGroupRef": {
                    "roleConfigGroupName": "mgmt-HOSTMONITOR-BASE"
                }
            },
            {
                "name": "mgmt-REPORTSMANAGER-4e51eba8a74e489282a8cd682ff63470",
                "type": "REPORTSMANAGER",
                "hostRef": {
                    "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                },
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password",
                            "value": "art5mwulxujgyr9fmndlff5xn",
                            "sensitive": true
                        }
                    ]
                },
                "roleConfigGroupRef": {
                    "roleConfigGroupName": "mgmt-REPORTSMANAGER-BASE"
                }
            },
            {
                "name": "mgmt-SERVICEMONITOR-4e51eba8a74e489282a8cd682ff63470",
                "type": "SERVICEMONITOR",
                "hostRef": {
                    "hostId": "7b13a41e-9c94-4e55-8e31-9b21973025c0"
                },
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password",
                            "value": "3vg0vrwqffjhsbdghmk2cuufl",
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
                            "value": "639631360",
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
                    "items": []
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
                            "value": "hadoop5.expecc.com",
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
                            "value": "639631360",
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
                            "name": "firehose_non_java_memory_bytes",
                            "value": "6442450944",
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
                "name": "CLUSTER_STATS_START",
                "value": "10/26/2012 22:40",
                "sensitive": false
            },
            {
                "name": "PUBLIC_CLOUD_STATUS",
                "value": "ON_PUBLIC_CLOUD",
                "sensitive": false
            },
            {
                "name": "REMOTE_PARCEL_REPO_URLS",
                "value": "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,http://archive.cloudera.com/kudu/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/,http://hadoop9.expecc.com/cdh5.13/",
                "sensitive": false
            }
        ]
    },
    "allHostsConfig": {
        "items": [
            {
                "name": "rm_enabled",
                "value": "true",
                "sensitive": false
            }
        ]
    },
    "peers": [],
    "hostTemplates": {
        "items": []
    }
}
```
