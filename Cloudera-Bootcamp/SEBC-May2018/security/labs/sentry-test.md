Beeline Test Resulst

```
[centos@hadoop9 ~]$ beeline
Beeline version 1.1.0-cdh5.14.2 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/hadoop9.expecc.com@EXPECC.COM
scan complete in 3ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/hadoop9.expecc.com@EXPECC.COM
Connected to: Apache Hive (version 1.1.0-cdh5.14.2)
Driver: Hive JDBC (version 1.1.0-cdh5.14.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20180517002424_9622e0c3-f569-4748-b799-326b586b9c6c): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20180517002424_9622e0c3-f569-4748-b799-326b586b9c6c); Time taken: 0.752 seconds
INFO  : Executing command(queryId=hive_20180517002424_9622e0c3-f569-4748-b799-326b586b9c6c): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20180517002424_9622e0c3-f569-4748-b799-326b586b9c6c); Time taken: 0.328 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
+-----------+--+
No rows selected (2.427 seconds)
0: jdbc:hive2://localhost:10000/default>
```

## enable role

```
1: jdbc:hive2://localhost:10000/default> GRANT ROLE sentry_admin TO GROUP doddys;
INFO  : Compiling command(queryId=hive_20180517005555_037d32c5-2f46-4921-86e2-a720f8560d35): GRANT ROLE sentry_admin TO GROUP doddys
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:null, properties:null)
INFO  : Completed compiling command(queryId=hive_20180517005555_037d32c5-2f46-4921-86e2-a720f8560d35); Time taken: 0.07 seconds
INFO  : Executing command(queryId=hive_20180517005555_037d32c5-2f46-4921-86e2-a720f8560d35): GRANT ROLE sentry_admin TO GROUP doddys
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20180517005555_037d32c5-2f46-4921-86e2-a720f8560d35); Time taken: 0.015 seconds
INFO  : OK
No rows affected (0.097 seconds)
1: jdbc:hive2://localhost:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20180517005555_dad796cf-3c21-43eb-835e-b0fcf7a7a452): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20180517005555_dad796cf-3c21-43eb-835e-b0fcf7a7a452); Time taken: 0.065 seconds
INFO  : Executing command(queryId=hive_20180517005555_dad796cf-3c21-43eb-835e-b0fcf7a7a452): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20180517005555_dad796cf-3c21-43eb-835e-b0fcf7a7a452); Time taken: 0.128 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.221 seconds)

```


## Testing George Access

```
[centos@hadoop9 ~]$ sudo su - george
[george@hadoop9 ~]$ kinit george
Password for george@EXPECC.COM:
[george@hadoop9 ~]$ beeline
Beeline version 1.1.0-cdh5.14.2 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/hadoop9.expecc.com@EXPECC.COM
scan complete in 3ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/hadoop9.expecc.com@EXPECC.COM
Connected to: Apache Hive (version 1.1.0-cdh5.14.2)
Driver: Hive JDBC (version 1.1.0-cdh5.14.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20180517010808_35af6cdf-84d2-47d0-a651-000eb195d7e1): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20180517010808_35af6cdf-84d2-47d0-a651-000eb195d7e1); Time taken: 0.075 seconds
INFO  : Executing command(queryId=hive_20180517010808_35af6cdf-84d2-47d0-a651-000eb195d7e1): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20180517010808_35af6cdf-84d2-47d0-a651-000eb195d7e1); Time taken: 0.132 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.303 seconds)

```

## Testing Ferdinand Access

```
[centos@hadoop9 ~]$ sudo su - ferdinand
[ferdinand@hadoop9 ~]$ kinit ferdinand
Password for ferdinand@EXPECC.COM:
[ferdinand@hadoop9 ~]$ beeline
Beeline version 1.1.0-cdh5.14.2 by Apache Hive
beeline> !connect jdbc:hive2://localhost:10000/default;principal=hive/hadoop9.expecc.com@EXPECC.COM
scan complete in 2ms
Connecting to jdbc:hive2://localhost:10000/default;principal=hive/hadoop9.expecc.com@EXPECC.COM
Connected to: Apache Hive (version 1.1.0-cdh5.14.2)
Driver: Hive JDBC (version 1.1.0-cdh5.14.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://localhost:10000/default>
0: jdbc:hive2://localhost:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20180517011010_350c5235-e450-4a4a-b1fe-01046a9d66c9): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20180517011010_350c5235-e450-4a4a-b1fe-01046a9d66c9); Time taken: 0.075 seconds
INFO  : Executing command(queryId=hive_20180517011010_350c5235-e450-4a4a-b1fe-01046a9d66c9): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20180517011010_350c5235-e450-4a4a-b1fe-01046a9d66c9); Time taken: 0.118 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| sample_07  |
+------------+--+
1 row selected (0.289 seconds)

```
