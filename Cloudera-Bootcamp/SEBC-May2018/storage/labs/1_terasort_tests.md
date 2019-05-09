Generated 10GB file with 32MB block size
```
[centos@hadoop5 ~]$ time sudo -u doddys hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Ddfs.blocksize=33554432 -Dmapreduce.job.maps=4 100000000 /user/doddys/tgen512m
18/05/15 03:02:49 INFO client.RMProxy: Connecting to ResourceManager at hadoop5.expecc.com/172.30.1.187:8032
18/05/15 03:02:50 INFO terasort.TeraGen: Generating 100000000 using 4
18/05/15 03:02:50 INFO mapreduce.JobSubmitter: number of splits:4
18/05/15 03:02:50 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1526343652645_0002
18/05/15 03:02:50 INFO impl.YarnClientImpl: Submitted application application_1526343652645_0002
18/05/15 03:02:50 INFO mapreduce.Job: The url to track the job: http://hadoop5.expecc.com:8088/proxy/application_1526343652645_0002/
18/05/15 03:02:50 INFO mapreduce.Job: Running job: job_1526343652645_0002
18/05/15 03:02:58 INFO mapreduce.Job: Job job_1526343652645_0002 running in uber mode : false
18/05/15 03:02:58 INFO mapreduce.Job:  map 0% reduce 0%
18/05/15 03:03:16 INFO mapreduce.Job:  map 8% reduce 0%
18/05/15 03:03:19 INFO mapreduce.Job:  map 15% reduce 0%
18/05/15 03:03:21 INFO mapreduce.Job:  map 23% reduce 0%
18/05/15 03:03:22 INFO mapreduce.Job:  map 25% reduce 0%
18/05/15 03:03:25 INFO mapreduce.Job:  map 27% reduce 0%
18/05/15 03:03:27 INFO mapreduce.Job:  map 31% reduce 0%
18/05/15 03:03:28 INFO mapreduce.Job:  map 32% reduce 0%
18/05/15 03:03:31 INFO mapreduce.Job:  map 35% reduce 0%
18/05/15 03:03:33 INFO mapreduce.Job:  map 38% reduce 0%
18/05/15 03:03:34 INFO mapreduce.Job:  map 41% reduce 0%
18/05/15 03:03:37 INFO mapreduce.Job:  map 43% reduce 0%
18/05/15 03:03:39 INFO mapreduce.Job:  map 47% reduce 0%
18/05/15 03:03:40 INFO mapreduce.Job:  map 49% reduce 0%
18/05/15 03:03:43 INFO mapreduce.Job:  map 52% reduce 0%
18/05/15 03:03:45 INFO mapreduce.Job:  map 55% reduce 0%
18/05/15 03:03:46 INFO mapreduce.Job:  map 57% reduce 0%
18/05/15 03:03:49 INFO mapreduce.Job:  map 59% reduce 0%
18/05/15 03:03:51 INFO mapreduce.Job:  map 62% reduce 0%
18/05/15 03:03:52 INFO mapreduce.Job:  map 64% reduce 0%
18/05/15 03:03:55 INFO mapreduce.Job:  map 66% reduce 0%
18/05/15 03:03:57 INFO mapreduce.Job:  map 68% reduce 0%
18/05/15 03:03:58 INFO mapreduce.Job:  map 70% reduce 0%
18/05/15 03:04:01 INFO mapreduce.Job:  map 72% reduce 0%
18/05/15 03:04:03 INFO mapreduce.Job:  map 75% reduce 0%
18/05/15 03:04:04 INFO mapreduce.Job:  map 76% reduce 0%
18/05/15 03:04:07 INFO mapreduce.Job:  map 77% reduce 0%
18/05/15 03:04:09 INFO mapreduce.Job:  map 79% reduce 0%
18/05/15 03:04:10 INFO mapreduce.Job:  map 81% reduce 0%
18/05/15 03:04:13 INFO mapreduce.Job:  map 83% reduce 0%
18/05/15 03:04:15 INFO mapreduce.Job:  map 87% reduce 0%
18/05/15 03:04:21 INFO mapreduce.Job:  map 93% reduce 0%
18/05/15 03:04:27 INFO mapreduce.Job:  map 98% reduce 0%
18/05/15 03:04:29 INFO mapreduce.Job:  map 100% reduce 0%
18/05/15 03:04:29 INFO mapreduce.Job: Job job_1526343652645_0002 completed successfully
18/05/15 03:04:29 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=595120
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=344
		HDFS: Number of bytes written=10000000000
		HDFS: Number of read operations=16
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=8
	Job Counters
		Launched map tasks=4
		Other local map tasks=4
		Total time spent by all maps in occupied slots (ms)=319232
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=319232
		Total vcore-milliseconds taken by all map tasks=319232
		Total megabyte-milliseconds taken by all map tasks=326893568
	Map-Reduce Framework
		Map input records=100000000
		Map output records=100000000
		Input split bytes=344
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=1051
		CPU time spent (ms)=138890
		Physical memory (bytes) snapshot=723148800
		Virtual memory (bytes) snapshot=6264893440
		Total committed heap usage (bytes)=911736832
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=214760662691937609
	File Input Format Counters
		Bytes Read=0
	File Output Format Counters
		Bytes Written=10000000000

real	1m42.428s
user	0m5.707s
sys	0m0.319s

```


Sorting 10GB

```
[centos@hadoop5 ~]$ time sudo -u doddys hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar \
> terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=3 \
>                      -Dmapreduce.map.memory.mb=1024 \
>                      -Dmapreduce.map.java.opts.max.heap=800 \
>                      -Dmapreduce.reduce.memory.mb=1025 \
>                      -Dmapreduce.reduce.java.opts.max.heap=800 \
>  /user/doddys/tgen512m /user/doddys/tsort512m
18/05/15 03:30:00 INFO terasort.TeraSort: starting
18/05/15 03:30:01 INFO input.FileInputFormat: Total input paths to process : 4
Spent 202ms computing base-splits.
Spent 5ms computing TeraScheduler splits.
Computing input splits took 208ms
Sampling 10 splits of 300
Making 3 from 100000 sampled records
Computing parititions took 707ms
Spent 917ms computing partitions.
18/05/15 03:30:02 INFO client.RMProxy: Connecting to ResourceManager at hadoop5.expecc.com/172.30.1.187:8032
18/05/15 03:30:02 INFO mapreduce.JobSubmitter: number of splits:300
18/05/15 03:30:02 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1526343652645_0004
18/05/15 03:30:03 INFO impl.YarnClientImpl: Submitted application application_1526343652645_0004
18/05/15 03:30:03 INFO mapreduce.Job: The url to track the job: http://hadoop5.expecc.com:8088/proxy/application_1526343652645_0004/
18/05/15 03:30:03 INFO mapreduce.Job: Running job: job_1526343652645_0004
18/05/15 03:30:11 INFO mapreduce.Job: Job job_1526343652645_0004 running in uber mode : false
18/05/15 03:30:11 INFO mapreduce.Job:  map 0% reduce 0%
18/05/15 03:30:19 INFO mapreduce.Job:  map 1% reduce 0%
18/05/15 03:30:25 INFO mapreduce.Job:  map 2% reduce 0%
18/05/15 03:30:26 INFO mapreduce.Job:  map 3% reduce 0%
18/05/15 03:30:33 INFO mapreduce.Job:  map 4% reduce 0%
18/05/15 03:30:35 INFO mapreduce.Job:  map 6% reduce 0%
18/05/15 03:30:41 INFO mapreduce.Job:  map 7% reduce 0%
18/05/15 03:30:44 INFO mapreduce.Job:  map 8% reduce 0%
18/05/15 03:30:45 INFO mapreduce.Job:  map 9% reduce 0%
18/05/15 03:30:50 INFO mapreduce.Job:  map 10% reduce 0%
18/05/15 03:30:53 INFO mapreduce.Job:  map 11% reduce 0%
18/05/15 03:30:55 INFO mapreduce.Job:  map 12% reduce 0%
18/05/15 03:30:58 INFO mapreduce.Job:  map 13% reduce 0%
18/05/15 03:31:02 INFO mapreduce.Job:  map 14% reduce 0%
18/05/15 03:31:03 INFO mapreduce.Job:  map 15% reduce 0%
18/05/15 03:31:09 INFO mapreduce.Job:  map 16% reduce 0%
18/05/15 03:31:10 INFO mapreduce.Job:  map 17% reduce 0%
18/05/15 03:31:14 INFO mapreduce.Job:  map 18% reduce 0%
18/05/15 03:31:17 INFO mapreduce.Job:  map 19% reduce 0%
18/05/15 03:31:20 INFO mapreduce.Job:  map 20% reduce 0%
18/05/15 03:31:23 INFO mapreduce.Job:  map 21% reduce 0%
18/05/15 03:31:27 INFO mapreduce.Job:  map 22% reduce 0%
18/05/15 03:31:30 INFO mapreduce.Job:  map 23% reduce 0%
18/05/15 03:31:31 INFO mapreduce.Job:  map 24% reduce 0%
18/05/15 03:31:36 INFO mapreduce.Job:  map 25% reduce 0%
18/05/15 03:31:38 INFO mapreduce.Job:  map 26% reduce 0%
18/05/15 03:31:43 INFO mapreduce.Job:  map 27% reduce 0%
18/05/15 03:31:46 INFO mapreduce.Job:  map 28% reduce 0%
18/05/15 03:31:47 INFO mapreduce.Job:  map 29% reduce 0%
18/05/15 03:31:52 INFO mapreduce.Job:  map 30% reduce 0%
18/05/15 03:31:55 INFO mapreduce.Job:  map 31% reduce 0%
18/05/15 03:31:58 INFO mapreduce.Job:  map 32% reduce 0%
18/05/15 03:32:00 INFO mapreduce.Job:  map 33% reduce 0%
18/05/15 03:32:03 INFO mapreduce.Job:  map 34% reduce 0%
18/05/15 03:32:07 INFO mapreduce.Job:  map 35% reduce 0%
18/05/15 03:32:11 INFO mapreduce.Job:  map 36% reduce 0%
18/05/15 03:32:13 INFO mapreduce.Job:  map 37% reduce 0%
18/05/15 03:32:16 INFO mapreduce.Job:  map 38% reduce 0%
18/05/15 03:32:20 INFO mapreduce.Job:  map 39% reduce 0%
18/05/15 03:32:21 INFO mapreduce.Job:  map 40% reduce 0%
18/05/15 03:32:26 INFO mapreduce.Job:  map 41% reduce 0%
18/05/15 03:32:28 INFO mapreduce.Job:  map 42% reduce 0%
18/05/15 03:32:31 INFO mapreduce.Job:  map 43% reduce 0%
18/05/15 03:32:35 INFO mapreduce.Job:  map 44% reduce 0%
18/05/15 03:32:37 INFO mapreduce.Job:  map 45% reduce 0%
18/05/15 03:32:41 INFO mapreduce.Job:  map 46% reduce 0%
18/05/15 03:32:44 INFO mapreduce.Job:  map 47% reduce 0%
18/05/15 03:32:46 INFO mapreduce.Job:  map 48% reduce 0%
18/05/15 03:32:49 INFO mapreduce.Job:  map 49% reduce 0%
18/05/15 03:32:54 INFO mapreduce.Job:  map 50% reduce 0%
18/05/15 03:32:55 INFO mapreduce.Job:  map 51% reduce 0%
18/05/15 03:33:00 INFO mapreduce.Job:  map 52% reduce 0%
18/05/15 03:33:03 INFO mapreduce.Job:  map 53% reduce 0%
18/05/15 03:33:04 INFO mapreduce.Job:  map 54% reduce 0%
18/05/15 03:33:09 INFO mapreduce.Job:  map 55% reduce 0%
18/05/15 03:33:12 INFO mapreduce.Job:  map 56% reduce 0%
18/05/15 03:33:13 INFO mapreduce.Job:  map 57% reduce 0%
18/05/15 03:33:17 INFO mapreduce.Job:  map 58% reduce 0%
18/05/15 03:33:21 INFO mapreduce.Job:  map 59% reduce 0%
18/05/15 03:33:22 INFO mapreduce.Job:  map 60% reduce 0%
18/05/15 03:33:29 INFO mapreduce.Job:  map 61% reduce 0%
18/05/15 03:33:30 INFO mapreduce.Job:  map 62% reduce 0%
18/05/15 03:33:31 INFO mapreduce.Job:  map 63% reduce 0%
18/05/15 03:33:37 INFO mapreduce.Job:  map 64% reduce 0%
18/05/15 03:33:38 INFO mapreduce.Job:  map 65% reduce 0%
18/05/15 03:33:42 INFO mapreduce.Job:  map 66% reduce 0%
18/05/15 03:33:45 INFO mapreduce.Job:  map 67% reduce 0%
18/05/15 03:33:48 INFO mapreduce.Job:  map 68% reduce 0%
18/05/15 03:33:51 INFO mapreduce.Job:  map 69% reduce 0%
18/05/15 03:33:55 INFO mapreduce.Job:  map 70% reduce 0%
18/05/15 03:33:57 INFO mapreduce.Job:  map 71% reduce 0%
18/05/15 03:34:00 INFO mapreduce.Job:  map 72% reduce 0%
18/05/15 03:34:04 INFO mapreduce.Job:  map 73% reduce 0%
18/05/15 03:34:06 INFO mapreduce.Job:  map 74% reduce 0%
18/05/15 03:34:10 INFO mapreduce.Job:  map 75% reduce 0%
18/05/15 03:34:13 INFO mapreduce.Job:  map 76% reduce 0%
18/05/15 03:34:15 INFO mapreduce.Job:  map 77% reduce 0%
18/05/15 03:34:19 INFO mapreduce.Job:  map 78% reduce 0%
18/05/15 03:34:22 INFO mapreduce.Job:  map 79% reduce 0%
18/05/15 03:34:23 INFO mapreduce.Job:  map 80% reduce 0%
18/05/15 03:34:27 INFO mapreduce.Job:  map 81% reduce 0%
18/05/15 03:34:31 INFO mapreduce.Job:  map 82% reduce 0%
18/05/15 03:34:34 INFO mapreduce.Job:  map 83% reduce 0%
18/05/15 03:34:40 INFO mapreduce.Job:  map 84% reduce 0%
18/05/15 03:34:42 INFO mapreduce.Job:  map 85% reduce 0%
18/05/15 03:34:48 INFO mapreduce.Job:  map 85% reduce 5%
18/05/15 03:34:49 INFO mapreduce.Job:  map 85% reduce 9%
18/05/15 03:34:50 INFO mapreduce.Job:  map 86% reduce 9%
18/05/15 03:34:51 INFO mapreduce.Job:  map 86% reduce 13%
18/05/15 03:34:54 INFO mapreduce.Job:  map 86% reduce 16%
18/05/15 03:34:55 INFO mapreduce.Job:  map 87% reduce 17%
18/05/15 03:34:57 INFO mapreduce.Job:  map 87% reduce 18%
18/05/15 03:35:00 INFO mapreduce.Job:  map 87% reduce 19%
18/05/15 03:35:01 INFO mapreduce.Job:  map 88% reduce 22%
18/05/15 03:35:03 INFO mapreduce.Job:  map 88% reduce 24%
18/05/15 03:35:06 INFO mapreduce.Job:  map 89% reduce 24%
18/05/15 03:35:07 INFO mapreduce.Job:  map 89% reduce 26%
18/05/15 03:35:09 INFO mapreduce.Job:  map 90% reduce 27%
18/05/15 03:35:12 INFO mapreduce.Job:  map 90% reduce 28%
18/05/15 03:35:13 INFO mapreduce.Job:  map 90% reduce 29%
18/05/15 03:35:15 INFO mapreduce.Job:  map 91% reduce 30%
18/05/15 03:35:19 INFO mapreduce.Job:  map 92% reduce 30%
18/05/15 03:35:24 INFO mapreduce.Job:  map 92% reduce 31%
18/05/15 03:35:25 INFO mapreduce.Job:  map 93% reduce 31%
18/05/15 03:35:28 INFO mapreduce.Job:  map 94% reduce 31%
18/05/15 03:35:33 INFO mapreduce.Job:  map 95% reduce 31%
18/05/15 03:35:37 INFO mapreduce.Job:  map 95% reduce 32%
18/05/15 03:35:38 INFO mapreduce.Job:  map 96% reduce 32%
18/05/15 03:35:41 INFO mapreduce.Job:  map 97% reduce 32%
18/05/15 03:35:45 INFO mapreduce.Job:  map 98% reduce 32%
18/05/15 03:35:49 INFO mapreduce.Job:  map 98% reduce 33%
18/05/15 03:35:50 INFO mapreduce.Job:  map 99% reduce 33%
18/05/15 03:35:55 INFO mapreduce.Job:  map 100% reduce 33%
18/05/15 03:35:57 INFO mapreduce.Job:  map 100% reduce 40%
18/05/15 03:36:00 INFO mapreduce.Job:  map 100% reduce 52%
18/05/15 03:36:01 INFO mapreduce.Job:  map 100% reduce 63%
18/05/15 03:36:03 INFO mapreduce.Job:  map 100% reduce 69%
18/05/15 03:36:06 INFO mapreduce.Job:  map 100% reduce 71%
18/05/15 03:36:07 INFO mapreduce.Job:  map 100% reduce 72%
18/05/15 03:36:09 INFO mapreduce.Job:  map 100% reduce 74%
18/05/15 03:36:12 INFO mapreduce.Job:  map 100% reduce 76%
18/05/15 03:36:13 INFO mapreduce.Job:  map 100% reduce 78%
18/05/15 03:36:15 INFO mapreduce.Job:  map 100% reduce 80%
18/05/15 03:36:18 INFO mapreduce.Job:  map 100% reduce 82%
18/05/15 03:36:19 INFO mapreduce.Job:  map 100% reduce 84%
18/05/15 03:36:21 INFO mapreduce.Job:  map 100% reduce 85%
18/05/15 03:36:24 INFO mapreduce.Job:  map 100% reduce 87%
18/05/15 03:36:25 INFO mapreduce.Job:  map 100% reduce 89%
18/05/15 03:36:27 INFO mapreduce.Job:  map 100% reduce 90%
18/05/15 03:36:30 INFO mapreduce.Job:  map 100% reduce 92%
18/05/15 03:36:31 INFO mapreduce.Job:  map 100% reduce 93%
18/05/15 03:36:32 INFO mapreduce.Job:  map 67% reduce 33%
18/05/15 03:36:40 INFO mapreduce.Job:  map 68% reduce 33%
18/05/15 03:36:42 INFO mapreduce.Job:  map 69% reduce 33%
18/05/15 03:36:47 INFO mapreduce.Job:  map 70% reduce 33%
18/05/15 03:36:51 INFO mapreduce.Job:  map 71% reduce 33%
18/05/15 03:36:58 INFO mapreduce.Job:  map 72% reduce 33%
18/05/15 03:37:00 INFO mapreduce.Job:  map 73% reduce 33%
18/05/15 03:37:07 INFO mapreduce.Job:  map 74% reduce 33%
18/05/15 03:37:09 INFO mapreduce.Job:  map 75% reduce 33%
18/05/15 03:37:15 INFO mapreduce.Job:  map 76% reduce 33%
18/05/15 03:37:21 INFO mapreduce.Job:  map 77% reduce 33%
18/05/15 03:37:26 INFO mapreduce.Job:  map 78% reduce 33%
18/05/15 03:37:29 INFO mapreduce.Job:  map 79% reduce 33%
18/05/15 03:37:35 INFO mapreduce.Job:  map 80% reduce 33%
18/05/15 03:37:39 INFO mapreduce.Job:  map 81% reduce 33%
18/05/15 03:37:43 INFO mapreduce.Job:  map 82% reduce 33%
18/05/15 03:37:49 INFO mapreduce.Job:  map 83% reduce 33%
18/05/15 03:37:53 INFO mapreduce.Job:  map 84% reduce 33%
18/05/15 03:37:58 INFO mapreduce.Job:  map 85% reduce 33%
18/05/15 03:38:04 INFO mapreduce.Job:  map 86% reduce 33%
18/05/15 03:38:09 INFO mapreduce.Job:  map 87% reduce 33%
18/05/15 03:38:12 INFO mapreduce.Job:  map 88% reduce 33%
18/05/15 03:38:18 INFO mapreduce.Job:  map 89% reduce 33%
18/05/15 03:38:23 INFO mapreduce.Job:  map 90% reduce 33%
18/05/15 03:38:27 INFO mapreduce.Job:  map 91% reduce 33%
18/05/15 03:38:32 INFO mapreduce.Job:  map 92% reduce 33%
18/05/15 03:38:37 INFO mapreduce.Job:  map 93% reduce 33%
18/05/15 03:38:40 INFO mapreduce.Job:  map 94% reduce 33%
18/05/15 03:38:42 INFO mapreduce.Job:  map 95% reduce 33%
18/05/15 03:38:46 INFO mapreduce.Job:  map 96% reduce 33%
18/05/15 03:38:50 INFO mapreduce.Job:  map 97% reduce 33%
18/05/15 03:38:53 INFO mapreduce.Job:  map 98% reduce 33%
18/05/15 03:38:55 INFO mapreduce.Job:  map 99% reduce 33%
18/05/15 03:39:00 INFO mapreduce.Job:  map 100% reduce 33%
18/05/15 03:39:10 INFO mapreduce.Job:  map 100% reduce 38%
18/05/15 03:39:12 INFO mapreduce.Job:  map 100% reduce 43%
18/05/15 03:39:16 INFO mapreduce.Job:  map 100% reduce 45%
18/05/15 03:39:18 INFO mapreduce.Job:  map 100% reduce 47%
18/05/15 03:39:22 INFO mapreduce.Job:  map 100% reduce 49%
18/05/15 03:39:24 INFO mapreduce.Job:  map 100% reduce 51%
18/05/15 03:39:28 INFO mapreduce.Job:  map 100% reduce 53%
18/05/15 03:39:30 INFO mapreduce.Job:  map 100% reduce 55%
18/05/15 03:39:34 INFO mapreduce.Job:  map 100% reduce 67%
18/05/15 03:39:36 INFO mapreduce.Job:  map 100% reduce 79%
18/05/15 03:39:40 INFO mapreduce.Job:  map 100% reduce 80%
18/05/15 03:39:42 INFO mapreduce.Job:  map 100% reduce 82%
18/05/15 03:39:46 INFO mapreduce.Job:  map 100% reduce 84%
18/05/15 03:39:48 INFO mapreduce.Job:  map 100% reduce 85%
18/05/15 03:39:52 INFO mapreduce.Job:  map 100% reduce 87%
18/05/15 03:39:54 INFO mapreduce.Job:  map 100% reduce 89%
18/05/15 03:39:57 INFO mapreduce.Job:  map 100% reduce 90%
18/05/15 03:39:59 INFO mapreduce.Job:  map 100% reduce 91%
18/05/15 03:40:04 INFO mapreduce.Job:  map 100% reduce 92%
18/05/15 03:40:06 INFO mapreduce.Job:  map 100% reduce 93%
18/05/15 03:40:10 INFO mapreduce.Job:  map 100% reduce 94%
18/05/15 03:40:16 INFO mapreduce.Job:  map 100% reduce 95%
18/05/15 03:40:18 INFO mapreduce.Job:  map 100% reduce 96%
18/05/15 03:40:22 INFO mapreduce.Job:  map 100% reduce 97%
18/05/15 03:40:24 INFO mapreduce.Job:  map 100% reduce 98%
18/05/15 03:40:26 INFO mapreduce.Job:  map 100% reduce 99%
18/05/15 03:40:38 INFO mapreduce.Job:  map 100% reduce 67%
18/05/15 03:40:39 INFO mapreduce.Job:  map 58% reduce 67%
18/05/15 03:40:48 INFO mapreduce.Job:  map 59% reduce 67%
18/05/15 03:40:50 INFO mapreduce.Job:  map 60% reduce 67%
18/05/15 03:40:58 INFO mapreduce.Job:  map 61% reduce 67%
18/05/15 03:41:01 INFO mapreduce.Job:  map 62% reduce 67%
18/05/15 03:41:07 INFO mapreduce.Job:  map 63% reduce 67%
18/05/15 03:41:09 INFO mapreduce.Job:  map 64% reduce 67%
18/05/15 03:41:16 INFO mapreduce.Job:  map 65% reduce 67%
18/05/15 03:41:21 INFO mapreduce.Job:  map 66% reduce 67%
18/05/15 03:41:26 INFO mapreduce.Job:  map 67% reduce 67%
18/05/15 03:41:31 INFO mapreduce.Job:  map 68% reduce 67%
18/05/15 03:41:35 INFO mapreduce.Job:  map 69% reduce 67%
18/05/15 03:41:40 INFO mapreduce.Job:  map 70% reduce 67%
18/05/15 03:41:45 INFO mapreduce.Job:  map 71% reduce 67%
18/05/15 03:41:50 INFO mapreduce.Job:  map 72% reduce 67%
18/05/15 03:41:55 INFO mapreduce.Job:  map 73% reduce 67%
18/05/15 03:41:57 INFO mapreduce.Job:  map 74% reduce 67%
18/05/15 03:42:04 INFO mapreduce.Job:  map 75% reduce 67%
18/05/15 03:42:10 INFO mapreduce.Job:  map 76% reduce 67%
18/05/15 03:42:13 INFO mapreduce.Job:  map 77% reduce 67%
18/05/15 03:42:19 INFO mapreduce.Job:  map 78% reduce 67%
18/05/15 03:42:22 INFO mapreduce.Job:  map 79% reduce 67%
18/05/15 03:42:30 INFO mapreduce.Job:  map 80% reduce 67%
18/05/15 03:42:31 INFO mapreduce.Job:  map 81% reduce 67%
18/05/15 03:42:38 INFO mapreduce.Job:  map 82% reduce 67%
18/05/15 03:42:40 INFO mapreduce.Job:  map 83% reduce 67%
18/05/15 03:42:48 INFO mapreduce.Job:  map 84% reduce 67%
18/05/15 03:42:51 INFO mapreduce.Job:  map 85% reduce 67%
18/05/15 03:42:58 INFO mapreduce.Job:  map 86% reduce 67%
18/05/15 03:42:59 INFO mapreduce.Job:  map 87% reduce 67%
18/05/15 03:43:06 INFO mapreduce.Job:  map 88% reduce 67%
18/05/15 03:43:12 INFO mapreduce.Job:  map 89% reduce 67%
18/05/15 03:43:16 INFO mapreduce.Job:  map 90% reduce 67%
18/05/15 03:43:20 INFO mapreduce.Job:  map 91% reduce 67%
18/05/15 03:43:25 INFO mapreduce.Job:  map 92% reduce 67%
18/05/15 03:43:33 INFO mapreduce.Job:  map 93% reduce 67%
18/05/15 03:43:34 INFO mapreduce.Job:  map 94% reduce 67%
18/05/15 03:43:41 INFO mapreduce.Job:  map 95% reduce 67%
18/05/15 03:43:44 INFO mapreduce.Job:  map 96% reduce 67%
18/05/15 03:43:50 INFO mapreduce.Job:  map 97% reduce 67%
18/05/15 03:43:54 INFO mapreduce.Job:  map 98% reduce 67%
18/05/15 03:44:00 INFO mapreduce.Job:  map 99% reduce 67%
18/05/15 03:44:02 INFO mapreduce.Job:  map 100% reduce 67%
18/05/15 03:44:16 INFO mapreduce.Job:  map 100% reduce 72%
18/05/15 03:44:22 INFO mapreduce.Job:  map 100% reduce 74%
18/05/15 03:44:28 INFO mapreduce.Job:  map 100% reduce 76%
18/05/15 03:44:34 INFO mapreduce.Job:  map 100% reduce 89%
18/05/15 03:44:40 INFO mapreduce.Job:  map 100% reduce 91%
18/05/15 03:44:46 INFO mapreduce.Job:  map 100% reduce 92%
18/05/15 03:44:53 INFO mapreduce.Job:  map 100% reduce 95%
18/05/15 03:44:59 INFO mapreduce.Job:  map 100% reduce 97%
18/05/15 03:45:05 INFO mapreduce.Job:  map 100% reduce 99%
18/05/15 03:45:09 INFO mapreduce.Job:  map 100% reduce 100%
18/05/15 03:45:09 INFO mapreduce.Job: Job job_1526343652645_0004 completed successfully
18/05/15 03:45:09 INFO mapreduce.Job: Counters: 51
	File System Counters
		FILE: Number of bytes read=4499107572
		FILE: Number of bytes written=8919915953
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=10000038700
		HDFS: Number of bytes written=10000000000
		HDFS: Number of read operations=909
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=6
	Job Counters
		Killed map tasks=224
		Killed reduce tasks=1
		Launched map tasks=524
		Launched reduce tasks=4
		Other local map tasks=126
		Total time spent by all maps in occupied slots (ms)=870106
		Total time spent by all reduces in occupied slots (ms)=133902
		Total time spent by all map tasks (ms)=870106
		Total time spent by all reduce tasks (ms)=66951
		Total vcore-milliseconds taken by all map tasks=870106
		Total vcore-milliseconds taken by all reduce tasks=66951
		Total megabyte-milliseconds taken by all map tasks=890988544
		Total megabyte-milliseconds taken by all reduce tasks=102836736
	Map-Reduce Framework
		Map input records=100000000
		Map output records=100000000
		Map output bytes=10200000000
		Map output materialized bytes=4375145350
		Input split bytes=38700
		Combine input records=0
		Combine output records=0
		Reduce input groups=100000000
		Reduce shuffle bytes=4375145350
		Reduce input records=100000000
		Reduce output records=100000000
		Spilled Records=200000000
		Shuffled Maps =900
		Failed Shuffles=0
		Merged Map outputs=900
		GC time elapsed (ms)=31679
		CPU time spent (ms)=1286950
		Physical memory (bytes) snapshot=150763032576
		Virtual memory (bytes) snapshot=475066499072
		Total committed heap usage (bytes)=178191335424
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=10000000000
	File Output Format Counters
		Bytes Written=10000000000
18/05/15 03:45:09 INFO terasort.TeraSort: done

real	15m10.072s
user	0m10.101s
sys	0m0.663s

```


Generating 1GB

```
[centos@hadoop5 ~]$ time sudo -u doddys hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Ddfs.blocksize=33554432 -Dmapreduce.job.maps=4 10000000 /user/doddys/tgen1g
18/05/15 03:47:37 INFO client.RMProxy: Connecting to ResourceManager at hadoop5.expecc.com/172.30.1.187:8032
18/05/15 03:47:37 INFO terasort.TeraGen: Generating 10000000 using 4
18/05/15 03:47:37 INFO mapreduce.JobSubmitter: number of splits:4
18/05/15 03:47:38 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1526343652645_0005
18/05/15 03:47:38 INFO impl.YarnClientImpl: Submitted application application_1526343652645_0005
18/05/15 03:47:38 INFO mapreduce.Job: The url to track the job: http://hadoop5.expecc.com:8088/proxy/application_1526343652645_0005/
18/05/15 03:47:38 INFO mapreduce.Job: Running job: job_1526343652645_0005
18/05/15 03:47:46 INFO mapreduce.Job: Job job_1526343652645_0005 running in uber mode : false
18/05/15 03:47:46 INFO mapreduce.Job:  map 0% reduce 0%
18/05/15 03:47:57 INFO mapreduce.Job:  map 25% reduce 0%
18/05/15 03:47:58 INFO mapreduce.Job:  map 50% reduce 0%
18/05/15 03:48:01 INFO mapreduce.Job:  map 100% reduce 0%
18/05/15 03:48:01 INFO mapreduce.Job: Job job_1526343652645_0005 completed successfully
18/05/15 03:48:01 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=595108
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=337
		HDFS: Number of bytes written=1000000000
		HDFS: Number of read operations=16
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=8
	Job Counters
		Launched map tasks=4
		Other local map tasks=4
		Total time spent by all maps in occupied slots (ms)=40534
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=40534
		Total vcore-milliseconds taken by all map tasks=40534
		Total megabyte-milliseconds taken by all map tasks=41506816
	Map-Reduce Framework
		Map input records=10000000
		Map output records=10000000
		Input split bytes=337
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=647
		CPU time spent (ms)=25020
		Physical memory (bytes) snapshot=1513226240
		Virtual memory (bytes) snapshot=6254039040
		Total committed heap usage (bytes)=1792540672
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=21472776955442690
	File Input Format Counters
		Bytes Read=0
	File Output Format Counters
		Bytes Written=1000000000

real	0m26.880s
user	0m5.328s
sys	0m0.341s
```

Sorting 1GB

```
[centos@hadoop5 ~]$ time sudo -u doddys hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar \
> terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=3 \
>                      -Dmapreduce.map.memory.mb=1024 \
>                      -Dmapreduce.map.java.opts.max.heap=800 \
>                      -Dmapreduce.reduce.memory.mb=1025 \
>                      -Dmapreduce.reduce.java.opts.max.heap=800 \
>  /user/doddys/tgen1g /user/doddys/tsort1g
18/05/15 03:49:01 INFO terasort.TeraSort: starting
18/05/15 03:49:02 INFO input.FileInputFormat: Total input paths to process : 4
Spent 136ms computing base-splits.
Spent 2ms computing TeraScheduler splits.
Computing input splits took 139ms
Sampling 10 splits of 32
Making 3 from 100000 sampled records
Computing parititions took 779ms
Spent 920ms computing partitions.
18/05/15 03:49:03 INFO client.RMProxy: Connecting to ResourceManager at hadoop5.expecc.com/172.30.1.187:8032
18/05/15 03:49:03 INFO mapreduce.JobSubmitter: number of splits:32
18/05/15 03:49:04 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1526343652645_0006
18/05/15 03:49:04 INFO impl.YarnClientImpl: Submitted application application_1526343652645_0006
18/05/15 03:49:04 INFO mapreduce.Job: The url to track the job: http://hadoop5.expecc.com:8088/proxy/application_1526343652645_0006/
18/05/15 03:49:04 INFO mapreduce.Job: Running job: job_1526343652645_0006
18/05/15 03:49:12 INFO mapreduce.Job: Job job_1526343652645_0006 running in uber mode : false
18/05/15 03:49:12 INFO mapreduce.Job:  map 0% reduce 0%
18/05/15 03:49:21 INFO mapreduce.Job:  map 6% reduce 0%
18/05/15 03:49:26 INFO mapreduce.Job:  map 13% reduce 0%
18/05/15 03:49:27 INFO mapreduce.Job:  map 22% reduce 0%
18/05/15 03:49:28 INFO mapreduce.Job:  map 31% reduce 0%
18/05/15 03:49:35 INFO mapreduce.Job:  map 44% reduce 0%
18/05/15 03:49:36 INFO mapreduce.Job:  map 56% reduce 0%
18/05/15 03:49:42 INFO mapreduce.Job:  map 63% reduce 0%
18/05/15 03:49:43 INFO mapreduce.Job:  map 66% reduce 0%
18/05/15 03:49:44 INFO mapreduce.Job:  map 69% reduce 0%
18/05/15 03:49:45 INFO mapreduce.Job:  map 78% reduce 0%
18/05/15 03:49:46 INFO mapreduce.Job:  map 81% reduce 0%
18/05/15 03:49:48 INFO mapreduce.Job:  map 84% reduce 0%
18/05/15 03:49:49 INFO mapreduce.Job:  map 88% reduce 0%
18/05/15 03:49:50 INFO mapreduce.Job:  map 91% reduce 0%
18/05/15 03:49:51 INFO mapreduce.Job:  map 94% reduce 0%
18/05/15 03:49:53 INFO mapreduce.Job:  map 100% reduce 0%
18/05/15 03:50:00 INFO mapreduce.Job:  map 100% reduce 33%
18/05/15 03:50:02 INFO mapreduce.Job:  map 100% reduce 100%
18/05/15 03:50:02 INFO mapreduce.Job: Job job_1526343652645_0006 completed successfully
18/05/15 03:50:02 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=443034433
		FILE: Number of bytes written=885563153
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=1000004064
		HDFS: Number of bytes written=1000000000
		HDFS: Number of read operations=105
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=6
	Job Counters
		Launched map tasks=32
		Launched reduce tasks=3
		Data-local map tasks=30
		Rack-local map tasks=2
		Total time spent by all maps in occupied slots (ms)=255635
		Total time spent by all reduces in occupied slots (ms)=75170
		Total time spent by all map tasks (ms)=255635
		Total time spent by all reduce tasks (ms)=37585
		Total vcore-milliseconds taken by all map tasks=255635
		Total vcore-milliseconds taken by all reduce tasks=37585
		Total megabyte-milliseconds taken by all map tasks=261770240
		Total megabyte-milliseconds taken by all reduce tasks=57730560
	Map-Reduce Framework
		Map input records=10000000
		Map output records=10000000
		Map output bytes=1020000000
		Map output materialized bytes=437254651
		Input split bytes=4064
		Combine input records=0
		Combine output records=0
		Reduce input groups=10000000
		Reduce shuffle bytes=437254651
		Reduce input records=10000000
		Reduce output records=10000000
		Spilled Records=20000000
		Shuffled Maps =96
		Failed Shuffles=0
		Merged Map outputs=96
		GC time elapsed (ms)=4372
		CPU time spent (ms)=144340
		Physical memory (bytes) snapshot=17857286144
		Virtual memory (bytes) snapshot=54908735488
		Total committed heap usage (bytes)=21030764544
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=1000000000
	File Output Format Counters
		Bytes Written=1000000000
18/05/15 03:50:02 INFO terasort.TeraSort: done

real	1m2.600s
user	0m7.450s
sys	0m0.370s
```
