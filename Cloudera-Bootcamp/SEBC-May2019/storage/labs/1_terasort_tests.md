# Linux user and HDFS user directory
~~~
[hdfs@ip-172-31-31-233 root]$ id mat-kainos & hdfs dfs -ls /user | grep mat-kainos
uid=1002(mat-kainos) gid=1002(mat-kainos) groups=1002(mat-kainos)
drwxr-xr-x   - mat-kainos mat-kainos          0 2019-05-21 11:25 /user/mat-kainos
~~~

# 10 GB file generation using newly created user in his directory

~~~
[mat-kainos@ip-172-31-31-233 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=4 -Ddfs.blocksize=33554432 107374182 /user/mat-kainos/teragen-10gb
19/05/21 11:36:31 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-31-235.eu-west-1.compute.internal/172.31.31.235:8032
19/05/21 11:36:31 INFO terasort.TeraGen: Generating 107374182 using 4
19/05/21 11:36:31 INFO mapreduce.JobSubmitter: number of splits:4
19/05/21 11:36:31 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1558429842624_0004
19/05/21 11:36:32 INFO impl.YarnClientImpl: Submitted application application_1558429842624_0004
19/05/21 11:36:32 INFO mapreduce.Job: The url to track the job: http://ip-172-31-31-235.eu-west-1.compute.internal:8088/proxy/application_1558429842624_0004/
19/05/21 11:36:32 INFO mapreduce.Job: Running job: job_1558429842624_0004
19/05/21 11:36:37 INFO mapreduce.Job: Job job_1558429842624_0004 running in uber mode : false
19/05/21 11:36:37 INFO mapreduce.Job:  map 0% reduce 0%
19/05/21 11:36:53 INFO mapreduce.Job:  map 18% reduce 0%
19/05/21 11:36:54 INFO mapreduce.Job:  map 30% reduce 0%
19/05/21 11:36:59 INFO mapreduce.Job:  map 36% reduce 0%
19/05/21 11:37:00 INFO mapreduce.Job:  map 42% reduce 0%
19/05/21 11:37:05 INFO mapreduce.Job:  map 51% reduce 0%
19/05/21 11:37:06 INFO mapreduce.Job:  map 58% reduce 0%
19/05/21 11:37:11 INFO mapreduce.Job:  map 62% reduce 0%
19/05/21 11:37:12 INFO mapreduce.Job:  map 67% reduce 0%
19/05/21 11:37:17 INFO mapreduce.Job:  map 73% reduce 0%
19/05/21 11:37:18 INFO mapreduce.Job:  map 77% reduce 0%
19/05/21 11:37:21 INFO mapreduce.Job:  map 80% reduce 0%
19/05/21 11:37:23 INFO mapreduce.Job:  map 85% reduce 0%
19/05/21 11:37:24 INFO mapreduce.Job:  map 93% reduce 0%
19/05/21 11:37:28 INFO mapreduce.Job:  map 96% reduce 0%
19/05/21 11:37:29 INFO mapreduce.Job:  map 100% reduce 0%
19/05/21 11:37:29 INFO mapreduce.Job: Job job_1558429842624_0004 completed successfully
19/05/21 11:37:29 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=598136
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=344
		HDFS: Number of bytes written=10737418200
		HDFS: Number of read operations=16
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=8
	Job Counters
		Launched map tasks=4
		Other local map tasks=4
		Total time spent by all maps in occupied slots (ms)=185281
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=185281
		Total vcore-milliseconds taken by all map tasks=185281
		Total megabyte-milliseconds taken by all map tasks=189727744
	Map-Reduce Framework
		Map input records=107374182
		Map output records=107374182
		Input split bytes=344
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=1219
		CPU time spent (ms)=132820
		Physical memory (bytes) snapshot=946028544
		Virtual memory (bytes) snapshot=6341242880
		Total committed heap usage (bytes)=1049624576
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=230593859918397906
	File Input Format Counters
		Bytes Read=0
	File Output Format Counters
		Bytes Written=10737418200

real	1m0.706s
user	0m4.278s
sys	0m0.248s
~~~


Result:

~~~
[mat-kainos@ip-172-31-31-233 ~]$ hdfs dfs -ls /user/mat-kainos/teragen-10gb
Found 5 items
-rw-r--r--   3 mat-kainos mat-kainos          0 2019-05-21 11:37 /user/mat-kainos/teragen-10gb/_SUCCESS
-rw-r--r--   3 mat-kainos mat-kainos 2684354600 2019-05-21 11:37 /user/mat-kainos/teragen-10gb/part-m-00000
-rw-r--r--   3 mat-kainos mat-kainos 2684354500 2019-05-21 11:37 /user/mat-kainos/teragen-10gb/part-m-00001
-rw-r--r--   3 mat-kainos mat-kainos 2684354600 2019-05-21 11:37 /user/mat-kainos/teragen-10gb/part-m-00002
-rw-r--r--   3 mat-kainos mat-kainos 2684354500 2019-05-21 11:37 /user/mat-kainos/teragen-10gb/part-m-00003
~~~

# Terasort result

~~~
[mat-kainos@ip-172-31-31-233 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort /user/mat-kainos/teragen-10gb /user/mat-kainos/terasort
19/05/21 11:43:16 INFO terasort.TeraSort: starting
19/05/21 11:43:17 INFO input.FileInputFormat: Total input paths to process : 4
Spent 202ms computing base-splits.
Spent 5ms computing TeraScheduler splits.
Computing input splits took 208ms
Sampling 10 splits of 320
Making 8 from 100000 sampled records
Computing parititions took 600ms
Spent 810ms computing partitions.
19/05/21 11:43:18 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-31-235.eu-west-1.compute.internal/172.31.31.235:8032
19/05/21 11:43:18 INFO mapreduce.JobSubmitter: number of splits:320
19/05/21 11:43:18 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1558429842624_0005
19/05/21 11:43:19 INFO impl.YarnClientImpl: Submitted application application_1558429842624_0005
19/05/21 11:43:19 INFO mapreduce.Job: The url to track the job: http://ip-172-31-31-235.eu-west-1.compute.internal:8088/proxy/application_1558429842624_0005/
19/05/21 11:43:19 INFO mapreduce.Job: Running job: job_1558429842624_0005
19/05/21 11:43:24 INFO mapreduce.Job: Job job_1558429842624_0005 running in uber mode : false
19/05/21 11:43:24 INFO mapreduce.Job:  map 0% reduce 0%
19/05/21 11:43:31 INFO mapreduce.Job:  map 1% reduce 0%
19/05/21 11:43:33 INFO mapreduce.Job:  map 2% reduce 0%
19/05/21 11:43:37 INFO mapreduce.Job:  map 3% reduce 0%
19/05/21 11:43:40 INFO mapreduce.Job:  map 4% reduce 0%
19/05/21 11:43:43 INFO mapreduce.Job:  map 5% reduce 0%
19/05/21 11:43:44 INFO mapreduce.Job:  map 6% reduce 0%
19/05/21 11:43:48 INFO mapreduce.Job:  map 7% reduce 0%
19/05/21 11:43:50 INFO mapreduce.Job:  map 8% reduce 0%
19/05/21 11:43:55 INFO mapreduce.Job:  map 9% reduce 0%
19/05/21 11:43:56 INFO mapreduce.Job:  map 10% reduce 0%
19/05/21 11:44:01 INFO mapreduce.Job:  map 11% reduce 0%
19/05/21 11:44:02 INFO mapreduce.Job:  map 12% reduce 0%
19/05/21 11:44:07 INFO mapreduce.Job:  map 13% reduce 0%
19/05/21 11:44:08 INFO mapreduce.Job:  map 14% reduce 0%
19/05/21 11:44:13 INFO mapreduce.Job:  map 15% reduce 0%
19/05/21 11:44:14 INFO mapreduce.Job:  map 16% reduce 0%
19/05/21 11:44:16 INFO mapreduce.Job:  map 17% reduce 0%
19/05/21 11:44:20 INFO mapreduce.Job:  map 18% reduce 0%
19/05/21 11:44:23 INFO mapreduce.Job:  map 19% reduce 0%
19/05/21 11:44:26 INFO mapreduce.Job:  map 20% reduce 0%
19/05/21 11:44:30 INFO mapreduce.Job:  map 21% reduce 0%
19/05/21 11:44:31 INFO mapreduce.Job:  map 22% reduce 0%
19/05/21 11:44:37 INFO mapreduce.Job:  map 24% reduce 0%
19/05/21 11:44:43 INFO mapreduce.Job:  map 25% reduce 0%
19/05/21 11:44:44 INFO mapreduce.Job:  map 26% reduce 0%
19/05/21 11:44:45 INFO mapreduce.Job:  map 27% reduce 0%
19/05/21 11:44:50 INFO mapreduce.Job:  map 28% reduce 0%
19/05/21 11:44:52 INFO mapreduce.Job:  map 29% reduce 0%
19/05/21 11:44:56 INFO mapreduce.Job:  map 30% reduce 0%
19/05/21 11:44:59 INFO mapreduce.Job:  map 31% reduce 0%
19/05/21 11:45:02 INFO mapreduce.Job:  map 32% reduce 0%
19/05/21 11:45:06 INFO mapreduce.Job:  map 33% reduce 0%
19/05/21 11:45:08 INFO mapreduce.Job:  map 34% reduce 0%
19/05/21 11:45:11 INFO mapreduce.Job:  map 35% reduce 0%
19/05/21 11:45:14 INFO mapreduce.Job:  map 37% reduce 0%
19/05/21 11:45:20 INFO mapreduce.Job:  map 39% reduce 0%
19/05/21 11:45:26 INFO mapreduce.Job:  map 40% reduce 0%
19/05/21 11:45:27 INFO mapreduce.Job:  map 41% reduce 0%
19/05/21 11:45:32 INFO mapreduce.Job:  map 43% reduce 0%
19/05/21 11:45:38 INFO mapreduce.Job:  map 44% reduce 0%
19/05/21 11:45:39 INFO mapreduce.Job:  map 45% reduce 0%
19/05/21 11:45:44 INFO mapreduce.Job:  map 47% reduce 0%
19/05/21 11:45:50 INFO mapreduce.Job:  map 49% reduce 0%
19/05/21 11:45:55 INFO mapreduce.Job:  map 50% reduce 0%
19/05/21 11:45:56 INFO mapreduce.Job:  map 51% reduce 0%
19/05/21 11:46:02 INFO mapreduce.Job:  map 53% reduce 0%
19/05/21 11:46:08 INFO mapreduce.Job:  map 55% reduce 0%
19/05/21 11:46:13 INFO mapreduce.Job:  map 56% reduce 0%
19/05/21 11:46:14 INFO mapreduce.Job:  map 57% reduce 0%
19/05/21 11:46:20 INFO mapreduce.Job:  map 59% reduce 0%
19/05/21 11:46:23 INFO mapreduce.Job:  map 60% reduce 0%
19/05/21 11:46:26 INFO mapreduce.Job:  map 61% reduce 0%
19/05/21 11:46:31 INFO mapreduce.Job:  map 62% reduce 0%
19/05/21 11:46:33 INFO mapreduce.Job:  map 63% reduce 0%
19/05/21 11:46:38 INFO mapreduce.Job:  map 64% reduce 0%
19/05/21 11:46:39 INFO mapreduce.Job:  map 65% reduce 0%
19/05/21 11:46:42 INFO mapreduce.Job:  map 66% reduce 0%
19/05/21 11:46:45 INFO mapreduce.Job:  map 68% reduce 0%
19/05/21 11:46:51 INFO mapreduce.Job:  map 69% reduce 0%
19/05/21 11:46:52 INFO mapreduce.Job:  map 70% reduce 0%
19/05/21 11:46:57 INFO mapreduce.Job:  map 71% reduce 0%
19/05/21 11:46:59 INFO mapreduce.Job:  map 72% reduce 0%
19/05/21 11:47:03 INFO mapreduce.Job:  map 73% reduce 0%
19/05/21 11:47:07 INFO mapreduce.Job:  map 74% reduce 0%
19/05/21 11:47:09 INFO mapreduce.Job:  map 75% reduce 0%
19/05/21 11:47:11 INFO mapreduce.Job:  map 76% reduce 0%
19/05/21 11:47:15 INFO mapreduce.Job:  map 77% reduce 0%
19/05/21 11:47:17 INFO mapreduce.Job:  map 78% reduce 0%
19/05/21 11:47:21 INFO mapreduce.Job:  map 79% reduce 0%
19/05/21 11:47:22 INFO mapreduce.Job:  map 80% reduce 0%
19/05/21 11:47:27 INFO mapreduce.Job:  map 82% reduce 0%
19/05/21 11:47:34 INFO mapreduce.Job:  map 83% reduce 0%
19/05/21 11:47:42 INFO mapreduce.Job:  map 83% reduce 3%
19/05/21 11:47:43 INFO mapreduce.Job:  map 83% reduce 10%
19/05/21 11:47:45 INFO mapreduce.Job:  map 84% reduce 14%
19/05/21 11:47:46 INFO mapreduce.Job:  map 84% reduce 17%
19/05/21 11:47:51 INFO mapreduce.Job:  map 84% reduce 18%
19/05/21 11:47:53 INFO mapreduce.Job:  map 85% reduce 18%
19/05/21 11:47:59 INFO mapreduce.Job:  map 86% reduce 18%
19/05/21 11:48:08 INFO mapreduce.Job:  map 87% reduce 18%
19/05/21 11:48:14 INFO mapreduce.Job:  map 88% reduce 18%
19/05/21 11:48:24 INFO mapreduce.Job:  map 89% reduce 18%
19/05/21 11:48:30 INFO mapreduce.Job:  map 89% reduce 19%
19/05/21 11:48:33 INFO mapreduce.Job:  map 90% reduce 19%
19/05/21 11:48:39 INFO mapreduce.Job:  map 91% reduce 19%
19/05/21 11:48:48 INFO mapreduce.Job:  map 92% reduce 19%
19/05/21 11:48:54 INFO mapreduce.Job:  map 93% reduce 19%
19/05/21 11:49:04 INFO mapreduce.Job:  map 94% reduce 19%
19/05/21 11:49:07 INFO mapreduce.Job:  map 94% reduce 20%
19/05/21 11:49:13 INFO mapreduce.Job:  map 95% reduce 20%
19/05/21 11:49:19 INFO mapreduce.Job:  map 96% reduce 20%
19/05/21 11:49:28 INFO mapreduce.Job:  map 97% reduce 20%
19/05/21 11:49:34 INFO mapreduce.Job:  map 98% reduce 20%
19/05/21 11:49:44 INFO mapreduce.Job:  map 99% reduce 20%
19/05/21 11:49:46 INFO mapreduce.Job:  map 99% reduce 21%
19/05/21 11:49:53 INFO mapreduce.Job:  map 100% reduce 21%
19/05/21 11:50:01 INFO mapreduce.Job:  map 100% reduce 24%
19/05/21 11:50:03 INFO mapreduce.Job:  map 100% reduce 27%
19/05/21 11:50:04 INFO mapreduce.Job:  map 100% reduce 31%
19/05/21 11:50:06 INFO mapreduce.Job:  map 100% reduce 36%
19/05/21 11:50:07 INFO mapreduce.Job:  map 100% reduce 43%
19/05/21 11:50:09 INFO mapreduce.Job:  map 100% reduce 45%
19/05/21 11:50:10 INFO mapreduce.Job:  map 100% reduce 47%
19/05/21 11:50:12 INFO mapreduce.Job:  map 100% reduce 49%
19/05/21 11:50:13 INFO mapreduce.Job:  map 100% reduce 53%
19/05/21 11:50:14 INFO mapreduce.Job:  map 100% reduce 57%
19/05/21 11:50:15 INFO mapreduce.Job:  map 100% reduce 59%
19/05/21 11:50:16 INFO mapreduce.Job:  map 100% reduce 61%
19/05/21 11:50:17 INFO mapreduce.Job:  map 100% reduce 67%
19/05/21 11:50:19 INFO mapreduce.Job:  map 100% reduce 68%
19/05/21 11:50:20 INFO mapreduce.Job:  map 100% reduce 75%
19/05/21 11:50:26 INFO mapreduce.Job:  map 100% reduce 77%
19/05/21 11:50:28 INFO mapreduce.Job:  map 100% reduce 78%
19/05/21 11:50:29 INFO mapreduce.Job:  map 100% reduce 84%
19/05/21 11:50:30 INFO mapreduce.Job:  map 100% reduce 89%
19/05/21 11:50:35 INFO mapreduce.Job:  map 100% reduce 92%
19/05/21 11:50:36 INFO mapreduce.Job:  map 100% reduce 96%
19/05/21 11:50:38 INFO mapreduce.Job:  map 100% reduce 97%
19/05/21 11:50:42 INFO mapreduce.Job:  map 100% reduce 100%
19/05/21 11:50:43 INFO mapreduce.Job: Job job_1558429842624_0005 completed successfully
19/05/21 11:50:43 INFO mapreduce.Job: Counters: 51
	File System Counters
		FILE: Number of bytes read=4777673261
		FILE: Number of bytes written=9490134270
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=10737470040
		HDFS: Number of bytes written=10737418200
		HDFS: Number of read operations=984
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=16
	Job Counters
		Killed reduce tasks=2
		Launched map tasks=320
		Launched reduce tasks=10
		Data-local map tasks=317
		Rack-local map tasks=3
		Total time spent by all maps in occupied slots (ms)=1625449
		Total time spent by all reduces in occupied slots (ms)=946162
		Total time spent by all map tasks (ms)=1625449
		Total time spent by all reduce tasks (ms)=946162
		Total vcore-milliseconds taken by all map tasks=1625449
		Total vcore-milliseconds taken by all reduce tasks=946162
		Total megabyte-milliseconds taken by all map tasks=1664459776
		Total megabyte-milliseconds taken by all reduce tasks=968869888
	Map-Reduce Framework
		Map input records=107374182
		Map output records=107374182
		Map output bytes=10952166564
		Map output materialized bytes=4662863455
		Input split bytes=51840
		Combine input records=0
		Combine output records=0
		Reduce input groups=107374182
		Reduce shuffle bytes=4662863455
		Reduce input records=107374182
		Reduce output records=107374182
		Spilled Records=214748364
		Shuffled Maps =2560
		Failed Shuffles=0
		Merged Map outputs=2560
		GC time elapsed (ms)=30922
		CPU time spent (ms)=1141660
		Physical memory (bytes) snapshot=167150448640
		Virtual memory (bytes) snapshot=520150122496
		Total committed heap usage (bytes)=189520674816
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=10737418200
	File Output Format Counters
		Bytes Written=10737418200
19/05/21 11:50:43 INFO terasort.TeraSort: done

real	7m28.282s
user	0m6.940s
sys	0m0.421s
~~~