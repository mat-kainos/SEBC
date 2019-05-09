# Check Hive Status
```
D0MBP:SEBC 2 doddys$ curl -u user:pass   'http://13.229.108.65:7180/api/v1/clusters/doddys/services/hive'
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://hadoop9.expecc.com:7180/cmf/serviceRedirect/hive",
  "serviceState" : "STARTED",
  "healthSummary" : "GOOD",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "GOOD"
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "GOOD"
  } ],
  "configStale" : false
```

# Stopping Hive Service

```
D0MBP:SEBC 2 doddys$ curl -X POST -u user:pass \
>   'http://13.229.108.65:7180/api/v19/clusters/doddys/services/hive/commands/stop'
{
  "id" : 886,
  "name" : "Stop",
  "startTime" : "2018-05-16T03:54:57.801Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}

D0MBP:SEBC 2 doddys$ curl -u user:pass   'http://13.229.108.65:7180/api/v19/clusters/doddys/services/hive'
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://hadoop9.expecc.com:7180/cmf/serviceRedirect/hive",
  "roleInstancesUrl" : "http://hadoop9.expecc.com:7180/cmf/serviceRedirect/hive/instances",
  "serviceState" : "STOPPED",
  "healthSummary" : "DISABLED",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "DISABLED",
    "suppressed" : false
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "DISABLED",
    "suppressed" : false
  } ],
  "configStalenessStatus" : "FRESH",
  "clientConfigStalenessStatus" : "FRESH",
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive",
  "entityStatus" : "STOPPED"
}
```

# Starting Hive Service

```
D0MBP:SEBC 2 doddys$ curl X POST -u user:pass   'http://13.229.108.65:7180/api/v1/clusters/doddys/services/hive/commands/start'
{
  "id" : 890,
  "name" : "Start",
  "startTime" : "2018-05-16T03:58:21.691Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}

D0MBP:SEBC 2 doddys$ curl -u user:pass   'http://13.229.108.65:7180/api/v19/clusters/doddys/services/hive''
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://hadoop9.expecc.com:7180/cmf/serviceRedirect/hive",
  "roleInstancesUrl" : "http://hadoop9.expecc.com:7180/cmf/serviceRedirect/hive/instances",
  "serviceState" : "STARTED",
  "healthSummary" : "GOOD",
  "healthChecks" : [ {
    "name" : "HIVE_HIVEMETASTORES_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  }, {
    "name" : "HIVE_HIVESERVER2S_HEALTHY",
    "summary" : "GOOD",
    "suppressed" : false
  } ],
  "configStalenessStatus" : "FRESH",
  "clientConfigStalenessStatus" : "FRESH",
  "maintenanceMode" : false,
  "maintenanceOwners" : [ ],
  "displayName" : "Hive",
  "entityStatus" : "GOOD_HEALTH"
}
```
