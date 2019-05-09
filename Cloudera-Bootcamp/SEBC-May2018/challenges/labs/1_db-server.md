## Database Information

```
[ec2-user@ip-172-30-1-183 ~]$ hostname -f
ip-172-30-1-183.ap-southeast-1.compute.internal
[ec2-user@ip-172-30-1-183 ~]$ mysql -u root -p -e "status;"
Enter password: 
--------------
mysql  Ver 15.1 Distrib 5.5.56-MariaDB, for Linux (x86_64) using readline 5.1

Connection id:		12
Current database:
Current user:		root@localhost
SSL:			Not in use
Current pager:		stdout
Using outfile:		''
Using delimiter:	;
Server:			MariaDB
Server version:		5.5.56-MariaDB MariaDB Server
Protocol version:	10
Connection:		Localhost via UNIX socket
Server characterset:	latin1
Db     characterset:	latin1
Client characterset:	latin1
Conn.  characterset:	latin1
UNIX socket:		/var/lib/mysql/mysql.sock
Uptime:			4 min 27 sec

Threads: 1  Questions: 43  Slow queries: 0  Opens: 1  Flush tables: 2  Open tables: 27  Queries per second avg: 0.161
--------------

[ec2-user@ip-172-30-1-183 ~]$ mysql -u root -p -e "show databases;"
Enter password:
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hive               |
| hue                |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
```
