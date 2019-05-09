Teragen

```
[root@ip-172-30-1-50 cloudera-scm-server]# time sudo -u groot hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen \
> -Ddfs.blocksize=67108864 \
> -Dmapreduce.job.maps=40 \
> -Dmapreduce.map.memory.mb=1024 50000000 /user/groot/tgen
18/05/18 03:52:39 INFO client.RMProxy: Connecting to ResourceManager at ip-172-30-1-139.ap-southeast-1.compute.internal/172.30.1.139:8032
18/05/18 03:52:40 INFO terasort.TeraGen: Generating 50000000 using 40
18/05/18 03:52:40 INFO mapreduce.JobSubmitter: number of splits:40
18/05/18 03:52:40 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1526614794299_0002
18/05/18 03:52:40 INFO impl.YarnClientImpl: Submitted application application_1526614794299_0002
18/05/18 03:52:40 INFO mapreduce.Job: The url to track the job: http://ip-172-30-1-139.ap-southeast-1.compute.internal:8088/proxy/application_1526614794299_0002/
18/05/18 03:52:40 INFO mapreduce.Job: Running job: job_1526614794299_0002
18/05/18 03:52:46 INFO mapreduce.Job: Job job_1526614794299_0002 running in uber mode : false
18/05/18 03:52:46 INFO mapreduce.Job:  map 0% reduce 0%
18/05/18 03:52:54 INFO mapreduce.Job:  map 3% reduce 0%
18/05/18 03:52:55 INFO mapreduce.Job:  map 8% reduce 0%
18/05/18 03:52:56 INFO mapreduce.Job:  map 17% reduce 0%
18/05/18 03:52:59 INFO mapreduce.Job:  map 20% reduce 0%
18/05/18 03:53:02 INFO mapreduce.Job:  map 22% reduce 0%
18/05/18 03:53:03 INFO mapreduce.Job:  map 30% reduce 0%
18/05/18 03:53:04 INFO mapreduce.Job:  map 35% reduce 0%
18/05/18 03:53:05 INFO mapreduce.Job:  map 38% reduce 0%
18/05/18 03:53:08 INFO mapreduce.Job:  map 40% reduce 0%
18/05/18 03:53:11 INFO mapreduce.Job:  map 43% reduce 0%
18/05/18 03:53:15 INFO mapreduce.Job:  map 52% reduce 0%
18/05/18 03:53:18 INFO mapreduce.Job:  map 55% reduce 0%
18/05/18 03:53:21 INFO mapreduce.Job:  map 57% reduce 0%
18/05/18 03:53:22 INFO mapreduce.Job:  map 60% reduce 0%
18/05/18 03:53:23 INFO mapreduce.Job:  map 63% reduce 0%
18/05/18 03:53:25 INFO mapreduce.Job:  map 68% reduce 0%
18/05/18 03:53:29 INFO mapreduce.Job:  map 70% reduce 0%
18/05/18 03:53:30 INFO mapreduce.Job:  map 75% reduce 0%
18/05/18 03:53:31 INFO mapreduce.Job:  map 85% reduce 0%
18/05/18 03:53:34 INFO mapreduce.Job:  map 88% reduce 0%
18/05/18 03:53:40 INFO mapreduce.Job:  map 90% reduce 0%
18/05/18 03:53:41 INFO mapreduce.Job:  map 95% reduce 0%
18/05/18 03:53:42 INFO mapreduce.Job:  map 100% reduce 0%
18/05/18 03:53:42 INFO mapreduce.Job: Job job_1526614794299_0002 completed successfully
18/05/18 03:53:42 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=5120590
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=3423
		HDFS: Number of bytes written=5000000000
		HDFS: Number of read operations=160
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=80
	Job Counters
		Launched map tasks=40
		Other local map tasks=40
		Total time spent by all maps in occupied slots (ms)=315348
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=315348
		Total vcore-milliseconds taken by all map tasks=315348
		Total megabyte-milliseconds taken by all map tasks=322916352
	Map-Reduce Framework
		Map input records=50000000
		Map output records=50000000
		Input split bytes=3423
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=3407
		CPU time spent (ms)=160320
		Physical memory (bytes) snapshot=10445938688
		Virtual memory (bytes) snapshot=111436275712
		Total committed heap usage (bytes)=11147411456
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=107387891658806101
	File Input Format Counters
		Bytes Read=0
	File Output Format Counters
		Bytes Written=5000000000

real	1m4.725s
user	0m7.230s
sys	0m0.476s
[root@ip-172-30-1-50 cloudera-scm-server]#
[root@ip-172-30-1-50 cloudera-scm-server]# sudo -u hdfs hdfs dfs -ls /user/groot/tgen
Found 41 items
-rw-r--r--   3 groot supergroup          0 2018-05-18 03:53 /user/groot/tgen/_SUCCESS
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:52 /user/groot/tgen/part-m-00000
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:52 /user/groot/tgen/part-m-00001
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:52 /user/groot/tgen/part-m-00002
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:52 /user/groot/tgen/part-m-00003
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:52 /user/groot/tgen/part-m-00004
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:52 /user/groot/tgen/part-m-00005
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:52 /user/groot/tgen/part-m-00006
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:52 /user/groot/tgen/part-m-00007
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00008
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00009
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00010
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00011
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00012
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00013
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00014
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00015
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00016
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00017
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00018
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00019
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00020
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00021
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00022
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00023
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00024
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00025
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00026
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00027
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00028
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00029
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00030
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00031
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00032
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00033
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00034
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00035
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00036
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00037
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00038
-rw-r--r--   3 groot supergroup  125000000 2018-05-18 03:53 /user/groot/tgen/part-m-00039
[root@ip-172-30-1-50 cloudera-scm-server]# sudo -u hdfs hadoop fsck -blocks /user/groot
DEPRECATED: Use of this script to execute hdfs command is deprecated.
Instead use the hdfs command for it.

Connecting to namenode via http://ip-172-30-1-139.ap-southeast-1.compute.internal:50070
FSCK started by hdfs (auth:SIMPLE) from /172.30.1.50 for path /user/groot at Fri May 18 03:54:01 UTC 2018
.........................................Status: HEALTHY
 Total size:	5000000000 B
 Total dirs:	3
 Total files:	41
 Total symlinks:		0
 Total blocks (validated):	80 (avg. block size 62500000 B)
 Minimally replicated blocks:	80 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Fri May 18 03:54:01 UTC 2018 in 6 milliseconds


The filesystem under path '/user/groot' is HEALTHY



```
