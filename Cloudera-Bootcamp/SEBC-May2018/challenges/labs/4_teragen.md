## HDFS TEST

teragen command
```
[ec2-user@ip-172-30-1-171 rc.d]$ time sudo -u jimenez hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen \
> -Ddfs.blocksize=67108864 \
> -Dmapreduce.job.maps=8 \
> -Dmapreduce.map.memory.mb=1024 \
> -Dmapred.map.tasks=6 65536000 /user/jimenez/tgen
18/05/17 07:40:50 INFO client.RMProxy: Connecting to ResourceManager at ip-172-30-1-171.ap-southeast-1.compute.internal/172.30.1.171:8032
18/05/17 07:40:50 INFO terasort.TeraGen: Generating 65536000 using 8
18/05/17 07:40:51 INFO mapreduce.JobSubmitter: number of splits:8
18/05/17 07:40:51 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
18/05/17 07:40:51 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1526542304999_0002
18/05/17 07:40:51 INFO impl.YarnClientImpl: Submitted application application_1526542304999_0002
18/05/17 07:40:51 INFO mapreduce.Job: The url to track the job: http://ip-172-30-1-171.ap-southeast-1.compute.internal:8088/proxy/application_1526542304999_0002/
18/05/17 07:40:51 INFO mapreduce.Job: Running job: job_1526542304999_0002
18/05/17 07:40:58 INFO mapreduce.Job: Job job_1526542304999_0002 running in uber mode : false
18/05/17 07:40:58 INFO mapreduce.Job:  map 0% reduce 0%
18/05/17 07:41:14 INFO mapreduce.Job:  map 8% reduce 0%
18/05/17 07:41:15 INFO mapreduce.Job:  map 31% reduce 0%
18/05/17 07:41:16 INFO mapreduce.Job:  map 41% reduce 0%
18/05/17 07:41:21 INFO mapreduce.Job:  map 49% reduce 0%
18/05/17 07:41:22 INFO mapreduce.Job:  map 50% reduce 0%
18/05/17 07:41:26 INFO mapreduce.Job:  map 52% reduce 0%
18/05/17 07:41:27 INFO mapreduce.Job:  map 61% reduce 0%
18/05/17 07:41:28 INFO mapreduce.Job:  map 66% reduce 0%
18/05/17 07:41:33 INFO mapreduce.Job:  map 73% reduce 0%
18/05/17 07:41:34 INFO mapreduce.Job:  map 79% reduce 0%
18/05/17 07:41:35 INFO mapreduce.Job:  map 80% reduce 0%
18/05/17 07:41:36 INFO mapreduce.Job:  map 82% reduce 0%
18/05/17 07:41:37 INFO mapreduce.Job:  map 84% reduce 0%
18/05/17 07:41:39 INFO mapreduce.Job:  map 88% reduce 0%
18/05/17 07:41:49 INFO mapreduce.Job:  map 92% reduce 0%
18/05/17 07:41:55 INFO mapreduce.Job:  map 95% reduce 0%
18/05/17 07:41:59 INFO mapreduce.Job:  map 100% reduce 0%
18/05/17 07:42:00 INFO mapreduce.Job: Job job_1526542304999_0002 completed successfully
18/05/17 07:42:00 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=1185464
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=682
		HDFS: Number of bytes written=6553600000
		HDFS: Number of read operations=32
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=16
	Job Counters
		Launched map tasks=8
		Other local map tasks=8
		Total time spent by all maps in occupied slots (ms)=278538
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=278538
		Total vcore-milliseconds taken by all map tasks=278538
		Total megabyte-milliseconds taken by all map tasks=285222912
	Map-Reduce Framework
		Map input records=65536000
		Map output records=65536000
		Input split bytes=682
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=1173
		CPU time spent (ms)=121470
		Physical memory (bytes) snapshot=3172237312
		Virtual memory (bytes) snapshot=22319439872
		Total committed heap usage (bytes)=2992111616
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=140750829423462787
	File Input Format Counters
		Bytes Read=0
	File Output Format Counters
		Bytes Written=6553600000

real	1m12.812s
user	0m7.255s
sys	0m0.450s
```

HDFS Test Result
```
[ec2-user@ip-172-30-1-171 rc.d]$ sudo -u hdfs hdfs dfs -ls /user/jimenez/tgen
Found 9 items
-rw-r--r--   3 jimenez supergroup          0 2018-05-17 07:41 /user/jimenez/tgen/_SUCCESS
-rw-r--r--   3 jimenez supergroup  819200000 2018-05-17 07:41 /user/jimenez/tgen/part-m-00000
-rw-r--r--   3 jimenez supergroup  819200000 2018-05-17 07:41 /user/jimenez/tgen/part-m-00001
-rw-r--r--   3 jimenez supergroup  819200000 2018-05-17 07:41 /user/jimenez/tgen/part-m-00002
-rw-r--r--   3 jimenez supergroup  819200000 2018-05-17 07:41 /user/jimenez/tgen/part-m-00003
-rw-r--r--   3 jimenez supergroup  819200000 2018-05-17 07:41 /user/jimenez/tgen/part-m-00004
-rw-r--r--   3 jimenez supergroup  819200000 2018-05-17 07:41 /user/jimenez/tgen/part-m-00005
-rw-r--r--   3 jimenez supergroup  819200000 2018-05-17 07:41 /user/jimenez/tgen/part-m-00006
-rw-r--r--   3 jimenez supergroup  819200000 2018-05-17 07:41 /user/jimenez/tgen/part-m-00007
[ec2-user@ip-172-30-1-171 rc.d]$ sudo -u hdfs hadoop fsck -blocks /user/jimenez
DEPRECATED: Use of this script to execute hdfs command is deprecated.
Instead use the hdfs command for it.

Connecting to namenode via http://ip-172-30-1-171.ap-southeast-1.compute.internal:50070/fsck?ugi=hdfs&blocks=1&path=%2Fuser%2Fjimenez
FSCK started by hdfs (auth:SIMPLE) from /172.30.1.171 for path /user/jimenez at Thu May 17 07:42:48 UTC 2018
.........Status: HEALTHY
 Total size:	6553600000 B
 Total dirs:	3
 Total files:	9
 Total symlinks:		0
 Total blocks (validated):	104 (avg. block size 63015384 B)
 Minimally replicated blocks:	104 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Thu May 17 07:42:48 UTC 2018 in 4 milliseconds


The filesystem under path '/user/jimenez' is HEALTHY
```
