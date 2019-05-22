~~~
{
  "timestamp" : "2019-05-22T13:47:13.614Z",
  "clusters" : [ {
    "name" : "mat-kainos",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "1345323008"
          }, {
            "name" : "hive_metastore_server_max_message_size",
            "value" : "134532300"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "1345323008"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "1486671052"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "250"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "ip-172-31-31-21.eu-west-1.compute.internal"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "Password.123"
        }, {
          "name" : "hive_metastore_database_user",
          "value" : "metastore"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-f311b9a9c6860046156b8da2c3acc038",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "61d62c14-edc9-4cbc-8809-82ad91bed75d"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-f311b9a9c6860046156b8da2c3acc038",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "61d62c14-edc9-4cbc-8809-82ad91bed75d"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2yrlq3ycvvaog6e55xdjwvzr4"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-f311b9a9c6860046156b8da2c3acc038",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "61d62c14-edc9-4cbc-8809-82ad91bed75d"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "55hpja1f2zdivwseaj5gp0wsu"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-7f4f47df5a50b920be1575bb12aea8a4",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "22012f69-9caf-43d8-886e-01931498abab"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "22yucvzfpduzhm9lvflodzkjt"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-f311b9a9c6860046156b8da2c3acc038",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "61d62c14-edc9-4cbc-8809-82ad91bed75d"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e0iy8b6nwc10qpfoz91ul3nl9"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-fbbb5b7393536a5d1601e28e0df19e66",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "bdf2d466-6ba3-489b-90ae-de34945a73c4"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "4ukrhgmc08zkwtg72uelbb30n"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "ip-172-31-31-21.eu-west-1.compute.internal"
        }, {
          "name" : "database_password",
          "value" : "Password.123"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-NAMENODE-f311b9a9c6860046156b8da2c3acc038"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "service_config_suppression_hue_load_balancer_count_validator",
          "value" : "true"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-1a0e20b3f59c2b780541c12b5c6aa40a",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "9a1bac4f-61cb-48c4-99bc-457276d70cba"
        },
        "config" : {
          "items" : [ {
            "name" : "navmetadataserver_cmdb_password",
            "value" : "361a7906-f0a0-4641-8bbb-fa04e3177d11"
          }, {
            "name" : "role_jceks_password",
            "value" : "cgy79ctbadag3b1701lpugciy"
          }, {
            "name" : "secret_key",
            "value" : "EnPHN7wvW8QQBvwiQccxpBi4FfRptN"
          } ]
        }
      } ],
      "displayName" : "Hue"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "ip-172-31-31-21.eu-west-1.compute.internal"
          }, {
            "name" : "oozie_database_password",
            "value" : "Password.123"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-7178a72d7f757a190f7105158176ac7b",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "c1822a75-fb06-4c8b-8816-5de290cb5287"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2c9o36as7hbh5i0pk4qv7a4ya"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "8"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "3"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "4"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "3991"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "3991"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "cm_yarn_container_usage_job_user",
          "value" : "root"
        }, {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "90"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "false"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "false"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "uEkn2UOOKMK2iVXolH99g1f6NNANMG"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-1a0e20b3f59c2b780541c12b5c6aa40a",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "9a1bac4f-61cb-48c4-99bc-457276d70cba"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ank7ang4c4b0nuh4rzyqvyjlr"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-1a0e20b3f59c2b780541c12b5c6aa40a",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "9a1bac4f-61cb-48c4-99bc-457276d70cba"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "50e68c43uh5m04lsret6evpj1"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-7f4f47df5a50b920be1575bb12aea8a4",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "22012f69-9caf-43d8-886e-01931498abab"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7eqqq5te5c9l2yb49c9z64vl3"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-f311b9a9c6860046156b8da2c3acc038",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "61d62c14-edc9-4cbc-8809-82ad91bed75d"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2hbvlvl07ry744y3p9ecy61cd"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-fbbb5b7393536a5d1601e28e0df19e66",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "bdf2d466-6ba3-489b-90ae-de34945a73c4"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "4bmk6ogpvxzad4b6u9hx7hkfw"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-fbbb5b7393536a5d1601e28e0df19e66",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "bdf2d466-6ba3-489b-90ae-de34945a73c4"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "45"
          }, {
            "name" : "role_jceks_password",
            "value" : "v8dk2anozn7xfjqlu6wh9dha"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "dfs_data_dir_list",
            "value" : "/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "6441295462"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/dfs/jn"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "namenode_java_heapsize",
            "value" : "1345323008"
          }, {
            "name" : "role_config_suppression_namenode_java_heapsize_minimum_validator",
            "value" : "true"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/dfs/snn"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "1345323008"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "G5xV7oCvKtpuhnBxbSuFn1A14qdx2e"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "Sv7cpepTG1LxuePsDnrXilqqNTgo7s"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "uXFnSLFb3UH9116d38rsQtoojU9KDa"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "10"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-fbbb5b7393536a5d1601e28e0df19e66",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "bdf2d466-6ba3-489b-90ae-de34945a73c4"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-1a0e20b3f59c2b780541c12b5c6aa40a",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "9a1bac4f-61cb-48c4-99bc-457276d70cba"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "fxg567bcwanclpul3a53j1uw"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-7f4f47df5a50b920be1575bb12aea8a4",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "22012f69-9caf-43d8-886e-01931498abab"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e6kcltcmkiizlk006l1nx9n96"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-f311b9a9c6860046156b8da2c3acc038",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "61d62c14-edc9-4cbc-8809-82ad91bed75d"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2nz5l61wvogxccbjqi8lamjtr"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-fbbb5b7393536a5d1601e28e0df19e66",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "bdf2d466-6ba3-489b-90ae-de34945a73c4"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bvlda42y07ba4xziuxqdbh64x"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-7f4f47df5a50b920be1575bb12aea8a4",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "22012f69-9caf-43d8-886e-01931498abab"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9vnvcb04yd2ifduazyzj8dnu1"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-f311b9a9c6860046156b8da2c3acc038",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "61d62c14-edc9-4cbc-8809-82ad91bed75d"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5gqckyu446axz006c82rt9i26"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-7f4f47df5a50b920be1575bb12aea8a4",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "22012f69-9caf-43d8-886e-01931498abab"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "biy2j14bs9dwpvsd893bcvib"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-f311b9a9c6860046156b8da2c3acc038",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "61d62c14-edc9-4cbc-8809-82ad91bed75d"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3oiola3zawhg04c0luhvrn9xo"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-fbbb5b7393536a5d1601e28e0df19e66",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "bdf2d466-6ba3-489b-90ae-de34945a73c4"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dvzl75qlyth8hmd4iv8xre2i"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-7f4f47df5a50b920be1575bb12aea8a4",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "22012f69-9caf-43d8-886e-01931498abab"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "HA-nameservice"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "HA-nameservice"
          }, {
            "name" : "namenode_id",
            "value" : "53"
          }, {
            "name" : "role_jceks_password",
            "value" : "a56xiqipy8nk5dlzh08705463"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-f311b9a9c6860046156b8da2c3acc038",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "61d62c14-edc9-4cbc-8809-82ad91bed75d"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "HA-nameservice"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "HA-nameservice"
          }, {
            "name" : "namenode_id",
            "value" : "47"
          }, {
            "name" : "role_jceks_password",
            "value" : "cv29cpkjukyjimtmbtl089q74"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "22012f69-9caf-43d8-886e-01931498abab",
    "ipAddress" : "172.31.31.163",
    "hostname" : "ip-172-31-31-163.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "c1822a75-fb06-4c8b-8816-5de290cb5287",
    "ipAddress" : "172.31.31.21",
    "hostname" : "ip-172-31-31-21.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "61d62c14-edc9-4cbc-8809-82ad91bed75d",
    "ipAddress" : "172.31.31.233",
    "hostname" : "ip-172-31-31-233.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "host_config_suppression_memory_overcommitted_validator",
        "value" : "true"
      } ]
    }
  }, {
    "hostId" : "bdf2d466-6ba3-489b-90ae-de34945a73c4",
    "ipAddress" : "172.31.31.235",
    "hostname" : "ip-172-31-31-235.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "host_config_suppression_memory_overcommitted_validator",
        "value" : "true"
      } ]
    }
  }, {
    "hostId" : "9a1bac4f-61cb-48c4-99bc-457276d70cba",
    "ipAddress" : "172.31.31.49",
    "hostname" : "ip-172-31-31-49.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__hue-HUE_SERVER-1a0e20b3f59c2b780541c12b5c6aa40a",
    "roles" : [ "ROLE_NAVIGATOR_ADMIN" ],
    "pwHash" : "be1e6a633c596b736aa8af2c64d64a3a70ac3136c1167175ca251ea137de6d8d",
    "pwSalt" : -825594007506180063,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-7178a72d7f757a190f7105158176ac7b",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "8f5704331b28ed8a9eda2b2ef54eb29dece3e8424e055c2a750e01650a4614a2",
    "pwSalt" : -7852036879709092370,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-7178a72d7f757a190f7105158176ac7b",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "4a565046c9028e1d714b5bf96ee07218d4c33ab8dd371bd1b00f18d72da92fcc",
    "pwSalt" : -1986095523882278463,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-7178a72d7f757a190f7105158176ac7b",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "e792b907886ab2111ff812e0d4490a6a50981e49af3da0a4c53caefd32afc98b",
    "pwSalt" : -7209298704793783433,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-7178a72d7f757a190f7105158176ac7b",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "dcc9837ca59aaead3f1711c20a887064368c47050924fa6b0d8ade774c4d5003",
    "pwSalt" : -6645029514299257433,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "4eb3434c2578e5ca55ef00d41efc8d31dda3a695de49748be9f3a5fd74767e09",
    "pwSalt" : -3763568049932168597,
    "pwLogin" : true
  }, {
    "name" : "mat-kainos",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "9532b1b16eea57ddf7ca5c1111ab53327161d0879c2332d9e65982cc4259c568",
    "pwSalt" : -2292450094711990999,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "333154fd87779c71b98af2afdaaa61281d4de9dfe8b5a9fc6a281f615a72d073",
    "pwSalt" : -7042398315985034118,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.14.4",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20180707-0445",
    "gitHash" : "0971e84bdceb60db9b96533f46451f40ed8cbdf9",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        }, {
          "name" : "role_config_suppression_firehose_host_monitor_non_java_memory_role_validator",
          "value" : "true"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "ip-172-31-31-21.eu-west-1.compute.internal"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "Password.123"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        }, {
          "name" : "role_config_suppression_firehose_service_monitor_non_java_memory_role_validator",
          "value" : "true"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ALERTPUBLISHER-7178a72d7f757a190f7105158176ac7b",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "c1822a75-fb06-4c8b-8816-5de290cb5287"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "cxbrzsby2vc2wixykelaxnbkv"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-7178a72d7f757a190f7105158176ac7b",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "c1822a75-fb06-4c8b-8816-5de290cb5287"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "bg4debnl5z55cqsqlo12os0wy"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-7178a72d7f757a190f7105158176ac7b",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "c1822a75-fb06-4c8b-8816-5de290cb5287"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "9qzszk883i8uep70ipqmzxbtm"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-7178a72d7f757a190f7105158176ac7b",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "c1822a75-fb06-4c8b-8816-5de290cb5287"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "1xcm02a0635jjzw5374llyrva"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-7178a72d7f757a190f7105158176ac7b",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "c1822a75-fb06-4c8b-8816-5de290cb5287"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "5x6q1en169rzg0kl539men0sn"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/23/2012 2:30"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,http://archive.cloudera.com/kudu/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/,http://localhost/cdh/ "
    } ]
  }
}
~~~