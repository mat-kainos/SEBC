# Replication Slave status
    ~~~
        MariaDB [(none)]> SHOW SLAVE STATUS \G
               Slave_IO_State: Waiting for master to send event
                  Master_Host: cm
                  Master_User: root
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql-bin.000005
          Read_Master_Log_Pos: 377
               Relay_Log_File: mariadb-relay-bin.000005
                Relay_Log_Pos: 661
        Relay_Master_Log_File: mysql-bin.000005
             Slave_IO_Running: Yes
            Slave_SQL_Running: Yes
    ~~~

# Master
    ~~~
    MariaDB [(none)]> show databases;
    +--------------------+
    | Database           |
    +--------------------+
    | information_schema |
    | amon               |
    | hue                |
    | metastore          |
    | mysql              |
    | nav                |
    | navms              |
    | oozie              |
    | performance_schema |
    | rman               |
    | scm                |
    | sentry             |
    +--------------------+
    12 rows in set (0.01 sec)
    ~~~

# Slave
    ~~~
    MariaDB [(none)]> show databases;
    +--------------------+
    | Database           |
    +--------------------+
    | information_schema |
    | amon               |
    | hue                |
    | metastore          |
    | mysql              |
    | nav                |
    | navms              |
    | oozie              |
    | performance_schema |
    | rman               |
    | scm                |
    | sentry             |
    +--------------------+
    12 rows in set (0.00 sec)
    ~~~