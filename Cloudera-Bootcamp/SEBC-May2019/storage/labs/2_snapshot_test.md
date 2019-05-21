# Snapshot directory and clone of zipped SEBC repo
~~~
[hdfs@ip-172-31-31-233 root]$ hdfs dfs -ls / | grep precious & hdfs dfs -ls /precious
Found 1 items
-rw-r--r--   3 hdfs supergroup        730 2019-05-21 12:05 /precious/SEBC.zip
drwxr-xr-x   - hdfs supergroup          0 2019-05-21 12:05 /precious
~~~

# Blocked folder deletion after enabling snapshots

~~~
[hdfs@ip-172-31-31-233 root]$ hdfs dfs -rm -r /precious
rm: Failed to move to trash: hdfs://ip-172-31-31-233.eu-west-1.compute.internal:8020/precious: The directory /precious cannot be deleted since /precious is snapshottable and already has snapshots
~~~

# Successful deletion of file

~~~
[hdfs@ip-172-31-31-233 root]$ hdfs dfs -rm -r /precious/SEBC.zip
19/05/21 12:09:33 INFO fs.TrashPolicyDefault: Moved: 'hdfs://ip-172-31-31-233.eu-west-1.compute.internal:8020/precious/SEBC.zip' to trash at: hdfs://ip-172-31-31-233.eu-west-1.compute.internal:8020/user/hdfs/.Trash/Current/precious/SEBC.zip
~~~

# Successful restoration of file
~~~
[hdfs@ip-172-31-31-233 root]$ hdfs dfs -ls /precious
Found 1 items
-rw-r--r--   3 hdfs supergroup        730 2019-05-21 12:12 /precious/SEBC.zip
~~~

