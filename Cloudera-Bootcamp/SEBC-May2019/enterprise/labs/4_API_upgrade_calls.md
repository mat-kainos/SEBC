# API version before the upgrade

`curl -u <user>:<pwd> 'http://localhost:7180/api/version'`
~~~
v14
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

# CM users before the upgrade
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

# DB used by CM before the upgrade
`curl -u <user>:<pwd> 'http://localhost:7180/api/v14/cm/scmDbInfo'`
~~~
{
  "scmDbType" : "MYSQL",
  "embeddedDbUsed" : false
}
~~~


# API version after the upgrade
`curl -u <user>:<pwd> 'http://localhost:7180/api/version'`
~~~
v19
~~~


# CM Version after the upgrade
`curl -u <user>:<pwd> 'http://localhost:7180/api/v14/cm/version'`
~~~
{
  "version" : "5.15.2",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20181111-0722",
  "gitHash" : "bb8bf45c81fd454610b53e4945ceb482361f7568",
  "snapshot" : false
}
~~~

# CM users after the upgrade
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

# DB used by CM after the upgrae
`curl -u <user>:<pwd> 'http://localhost:7180/api/v14/cm/scmDbInfo'`
~~~
{
  "scmDbType" : "MYSQL",
  "embeddedDbUsed" : false
}
~~~

