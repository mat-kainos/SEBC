# Hive status

`curl -u <user>:<pwd> 'http://localhost:7180/api/v14/clusters/<cluster-name>/services/hive/'`
~~~
{
  "name" : "hive",
  "type" : "HIVE",
  "clusterRef" : {
    "clusterName" : "cluster"
  },
  "serviceUrl" : "http://ip-172-31-31-21.eu-west-1.compute.internal:7180/cmf/serviceRedirect/hive",
  "roleInstancesUrl" : "http://ip-172-31-31-21.eu-west-1.compute.internal:7180/cmf/serviceRedirect/hive/instances",
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
~~~
# Hive Stop
`curl -X POST -u <user>:<pwd> -w "\n" http://loclhost:7180/api/v14/clusters/<cluster-name>s/services/hive/commands/stop`
~~~
{
  "id" : 629,
  "name" : "Stop",
  "startTime" : "2019-05-22T13:54:16.432Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
~~~
# Confirmation that Hive is stopped
`curl -u <user>:<pwd> 'http://localhost:7180/apiv14/clusters/<cluster-name>/services/hive/' | grep entityStatus`
~~~
  "entityStatus" : "STOPPED"
~~~

# Start Hive

`curl -X POST -u <user>:<pwd> -w "\n" http://localhost:7180/api/v14/clusters/<cluster-name>/services/hive/commands/start`
~~~
{
  "id" : 633,
  "name" : "Start",
  "startTime" : "2019-05-22T13:58:33.359Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}
~~~

# Confirmation that Hive is started
`curl -u <user>:<pwd> 'http://localhost:7180/apiv14/clusters/<cluster-name>/services/hive/' | grep entityStatus`
~~~
  "entityStatus" : "GOOD_HEALTH"
~~~