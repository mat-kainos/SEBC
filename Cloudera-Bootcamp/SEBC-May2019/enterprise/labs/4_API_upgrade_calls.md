# API version before the upgrade

`curl -u <user>-kainos:Password.123 'http://localhost:7180/api/version'`
~~~
v19
~~~

# CM Version before the upgrade
`curl -u <user>:<pwd> 'http://localhost:7180/api/v14/cm/version'`
~~~
{
  "version" : "5.14.4",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20180707-0445",
  "gitHash" : "0971e84bdceb60db9b96533f46451f40ed8cbdf9",
  "snapshot" : false
}
~~~

# CM users
`curl -u <user>:<pwd> 'http://localhost:7180/api/v14/users'`
~~~
{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ]
  }, {
    "name" : "<redacted>",
    "roles" : [ "ROLE_ADMIN" ]
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ]
  } ]
}
~~~

# DB used by CM
`curl -u <user>:<pwd> 'http://localhost:7180/api/v14/cm/scmDbInfo'`
~~~
{
  "scmDbType" : "MYSQL",
  "embeddedDbUsed" : false
}
~~~

TODO

[centos@ip-172-31-31-21 ~]$ curl -u $a:$b 'http://localhost:7180/api/v14/cm/version'
{
  "version" : "5.15.2",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20181111-0722",
  "gitHash" : "bb8bf45c81fd454610b53e4945ceb482361f7568",
  "snapshot" : false
}


}[centos@ip-172-31-31-21 ~]$ curl -u $a:$b 'http://localhost:7180/api/v14/users'
{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ]
  }, {
    "name" : "mat-kainos",
    "roles" : [ "ROLE_ADMIN" ]
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ]
  } ]
}

[centos@ip-172-31-31-21 ~]$ curl -u $a:$b 'http://localhost:7180/api/version'
v19