## terasort

```
[root@ip-172-30-1-171 cloudera-scm-server]# kinit jiminez
kinit: Client 'jiminez@DODDYS.SG' not found in Kerberos database while getting initial credentials
[root@ip-172-30-1-171 cloudera-scm-server]# kinit jimenez
Password for jimenez@DODDYS.SG:
[root@ip-172-30-1-171 cloudera-scm-server]# time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar \
> terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=8 \
>                       -Dmapreduce.map.memory.mb=1024 \
>                       -Dmapreduce.map.java.opts.max.heap=800 \
>                       -Dmapreduce.reduce.memory.mb=1025 \
>                       -Dmapreduce.reduce.java.opts.max.heap=800 \
>                       /user/jimenez/tgen /user/jimenez/tsort
18/05/17 08:17:56 INFO terasort.TeraSort: starting
18/05/17 08:17:57 INFO hdfs.DFSClient: Created token for jimenez: HDFS_DELEGATION_TOKEN owner=jimenez@DODDYS.SG, renewer=yarn, realUser=, issueDate=1526545077919, maxDate=1527149877919, sequenceNumber=1, masterKeyId=2 on 172.30.1.171:8020
18/05/17 08:17:57 INFO security.TokenCache: Got dt for hdfs://ip-172-30-1-171.ap-southeast-1.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.30.1.171:8020, Ident: (token for jimenez: HDFS_DELEGATION_TOKEN owner=jimenez@DODDYS.SG, renewer=yarn, realUser=, issueDate=1526545077919, maxDate=1527149877919, sequenceNumber=1, masterKeyId=2)
18/05/17 08:17:58 INFO input.FileInputFormat: Total input paths to process : 8
Spent 352ms computing base-splits.
Spent 3ms computing TeraScheduler splits.
Computing input splits took 356ms
Sampling 10 splits of 104
Making 8 from 100000 sampled records
Computing parititions took 658ms
Spent 1016ms computing partitions.
18/05/17 08:17:58 INFO client.RMProxy: Connecting to ResourceManager at ip-172-30-1-171.ap-southeast-1.compute.internal/172.30.1.171:8032
18/05/17 08:17:59 INFO mapreduce.JobSubmitter: number of splits:104
18/05/17 08:17:59 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1526544793924_0001
18/05/17 08:17:59 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.30.1.171:8020, Ident: (token for jimenez: HDFS_DELEGATION_TOKEN owner=jimenez@DODDYS.SG, renewer=yarn, realUser=, issueDate=1526545077919, maxDate=1527149877919, sequenceNumber=1, masterKeyId=2)
18/05/17 08:18:00 INFO impl.YarnClientImpl: Submitted application application_1526544793924_0001
18/05/17 08:18:00 INFO mapreduce.Job: The url to track the job: http://ip-172-30-1-171.ap-southeast-1.compute.internal:8088/proxy/application_1526544793924_0001/
18/05/17 08:18:00 INFO mapreduce.Job: Running job: job_1526544793924_0001
18/05/17 08:18:08 INFO mapreduce.Job: Job job_1526544793924_0001 running in uber mode : false
18/05/17 08:18:08 INFO mapreduce.Job:  map 0% reduce 0%
18/05/17 08:18:15 INFO mapreduce.Job:  map 1% reduce 0%
18/05/17 08:18:20 INFO mapreduce.Job:  map 5% reduce 0%
18/05/17 08:18:21 INFO mapreduce.Job:  map 8% reduce 0%
18/05/17 08:18:27 INFO mapreduce.Job:  map 10% reduce 0%
18/05/17 08:18:28 INFO mapreduce.Job:  map 13% reduce 0%
18/05/17 08:18:29 INFO mapreduce.Job:  map 14% reduce 0%
18/05/17 08:18:33 INFO mapreduce.Job:  map 15% reduce 0%
18/05/17 08:18:34 INFO mapreduce.Job:  map 16% reduce 0%
18/05/17 08:18:35 INFO mapreduce.Job:  map 20% reduce 0%
18/05/17 08:18:36 INFO mapreduce.Job:  map 21% reduce 0%
18/05/17 08:18:40 INFO mapreduce.Job:  map 22% reduce 0%
18/05/17 08:18:42 INFO mapreduce.Job:  map 23% reduce 0%
18/05/17 08:18:43 INFO mapreduce.Job:  map 25% reduce 0%
18/05/17 08:18:44 INFO mapreduce.Job:  map 28% reduce 0%
18/05/17 08:18:46 INFO mapreduce.Job:  map 29% reduce 0%
18/05/17 08:18:49 INFO mapreduce.Job:  map 30% reduce 0%
18/05/17 08:18:50 INFO mapreduce.Job:  map 32% reduce 0%
18/05/17 08:18:51 INFO mapreduce.Job:  map 35% reduce 0%
18/05/17 08:18:52 INFO mapreduce.Job:  map 36% reduce 0%
18/05/17 08:18:56 INFO mapreduce.Job:  map 37% reduce 0%
18/05/17 08:18:57 INFO mapreduce.Job:  map 38% reduce 0%
18/05/17 08:18:58 INFO mapreduce.Job:  map 40% reduce 0%
18/05/17 08:18:59 INFO mapreduce.Job:  map 42% reduce 0%
18/05/17 08:19:03 INFO mapreduce.Job:  map 43% reduce 0%
18/05/17 08:19:04 INFO mapreduce.Job:  map 46% reduce 0%
18/05/17 08:19:05 INFO mapreduce.Job:  map 47% reduce 0%
18/05/17 08:19:06 INFO mapreduce.Job:  map 48% reduce 0%
18/05/17 08:19:07 INFO mapreduce.Job:  map 49% reduce 0%
18/05/17 08:19:09 INFO mapreduce.Job:  map 50% reduce 0%
18/05/17 08:19:10 INFO mapreduce.Job:  map 51% reduce 0%
18/05/17 08:19:11 INFO mapreduce.Job:  map 53% reduce 0%
18/05/17 08:19:12 INFO mapreduce.Job:  map 54% reduce 0%
18/05/17 08:19:13 INFO mapreduce.Job:  map 55% reduce 0%
18/05/17 08:19:14 INFO mapreduce.Job:  map 56% reduce 0%
18/05/17 08:19:15 INFO mapreduce.Job:  map 57% reduce 0%
18/05/17 08:19:17 INFO mapreduce.Job:  map 58% reduce 0%
18/05/17 08:19:18 INFO mapreduce.Job:  map 60% reduce 0%
18/05/17 08:19:19 INFO mapreduce.Job:  map 61% reduce 0%
18/05/17 08:19:20 INFO mapreduce.Job:  map 62% reduce 0%
18/05/17 08:19:21 INFO mapreduce.Job:  map 63% reduce 0%
18/05/17 08:19:24 INFO mapreduce.Job:  map 64% reduce 0%
18/05/17 08:19:25 INFO mapreduce.Job:  map 67% reduce 0%
18/05/17 08:19:26 INFO mapreduce.Job:  map 68% reduce 0%
18/05/17 08:19:27 INFO mapreduce.Job:  map 69% reduce 0%
18/05/17 08:19:28 INFO mapreduce.Job:  map 70% reduce 0%
18/05/17 08:19:30 INFO mapreduce.Job:  map 71% reduce 0%
18/05/17 08:19:31 INFO mapreduce.Job:  map 72% reduce 0%
18/05/17 08:19:32 INFO mapreduce.Job:  map 74% reduce 0%
18/05/17 08:19:33 INFO mapreduce.Job:  map 75% reduce 0%
18/05/17 08:19:34 INFO mapreduce.Job:  map 76% reduce 0%
18/05/17 08:19:35 INFO mapreduce.Job:  map 78% reduce 0%
18/05/17 08:19:38 INFO mapreduce.Job:  map 79% reduce 0%
18/05/17 08:19:39 INFO mapreduce.Job:  map 81% reduce 0%
18/05/17 08:19:40 INFO mapreduce.Job:  map 82% reduce 0%
18/05/17 08:19:41 INFO mapreduce.Job:  map 84% reduce 0%
18/05/17 08:19:42 INFO mapreduce.Job:  map 85% reduce 0%
18/05/17 08:19:45 INFO mapreduce.Job:  map 86% reduce 0%
18/05/17 08:19:46 INFO mapreduce.Job:  map 88% reduce 0%
18/05/17 08:19:49 INFO mapreduce.Job:  map 89% reduce 0%
18/05/17 08:19:53 INFO mapreduce.Job:  map 90% reduce 0%
18/05/17 08:19:55 INFO mapreduce.Job:  map 92% reduce 0%
18/05/17 08:19:56 INFO mapreduce.Job:  map 92% reduce 4%
18/05/17 08:19:57 INFO mapreduce.Job:  map 93% reduce 4%
18/05/17 08:19:58 INFO mapreduce.Job:  map 93% reduce 8%
18/05/17 08:19:59 INFO mapreduce.Job:  map 94% reduce 8%
18/05/17 08:20:00 INFO mapreduce.Job:  map 95% reduce 12%
18/05/17 08:20:01 INFO mapreduce.Job:  map 96% reduce 12%
18/05/17 08:20:02 INFO mapreduce.Job:  map 96% reduce 16%
18/05/17 08:20:03 INFO mapreduce.Job:  map 97% reduce 16%
18/05/17 08:20:04 INFO mapreduce.Job:  map 98% reduce 16%
18/05/17 08:20:05 INFO mapreduce.Job:  map 99% reduce 16%
18/05/17 08:20:07 INFO mapreduce.Job:  map 100% reduce 16%
18/05/17 08:20:08 INFO mapreduce.Job:  map 100% reduce 24%
18/05/17 08:20:10 INFO mapreduce.Job:  map 100% reduce 29%
18/05/17 08:20:12 INFO mapreduce.Job:  map 100% reduce 35%
18/05/17 08:20:14 INFO mapreduce.Job:  map 100% reduce 42%
18/05/17 08:20:16 INFO mapreduce.Job:  map 100% reduce 50%
18/05/17 08:20:31 INFO mapreduce.Job:  map 100% reduce 82%
18/05/17 08:20:32 INFO mapreduce.Job:  map 100% reduce 92%
18/05/17 08:20:34 INFO mapreduce.Job:  map 100% reduce 96%
18/05/17 08:20:35 INFO mapreduce.Job:  map 100% reduce 100%
18/05/17 08:20:36 INFO mapreduce.Job: Job job_1526544793924_0001 completed successfully
18/05/17 08:20:36 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=2912057503
		FILE: Number of bytes written=5780910121
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=6553616120
		HDFS: Number of bytes written=6553600000
		HDFS: Number of read operations=336
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=16
	Job Counters
		Launched map tasks=104
		Launched reduce tasks=8
		Data-local map tasks=103
		Rack-local map tasks=1
		Total time spent by all maps in occupied slots (ms)=602921
		Total time spent by all reduces in occupied slots (ms)=396470
		Total time spent by all map tasks (ms)=602921
		Total time spent by all reduce tasks (ms)=198235
		Total vcore-milliseconds taken by all map tasks=602921
		Total vcore-milliseconds taken by all reduce tasks=198235
		Total megabyte-milliseconds taken by all map tasks=617391104
		Total megabyte-milliseconds taken by all reduce tasks=304488960
	Map-Reduce Framework
		Map input records=65536000
		Map output records=65536000
		Map output bytes=6684672000
		Map output materialized bytes=2851938216
		Input split bytes=16120
		Combine input records=0
		Combine output records=0
		Reduce input groups=65536000
		Reduce shuffle bytes=2851938216
		Reduce input records=65536000
		Reduce output records=65536000
		Spilled Records=131072000
		Shuffled Maps =832
		Failed Shuffles=0
		Merged Map outputs=832
		GC time elapsed (ms)=13396
		CPU time spent (ms)=648750
		Physical memory (bytes) snapshot=59060805632
		Virtual memory (bytes) snapshot=312804777984
		Total committed heap usage (bytes)=59069431808
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=6553600000
	File Output Format Counters
		Bytes Written=6553600000
18/05/17 08:20:36 INFO terasort.TeraSort: done

real	2m41.274s
user	0m10.196s
sys	0m0.499s
```

## PI

```
[root@ip-172-30-1-171 cloudera-scm-server]# kinit beltran
Password for beltran@DODDYS.SG:
[root@ip-172-30-1-171 cloudera-scm-server]# time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar pi 50 100
Number of Maps  = 50
Samples per Map = 100
Wrote input for Map #0
Wrote input for Map #1
Wrote input for Map #2
Wrote input for Map #3
Wrote input for Map #4
Wrote input for Map #5
Wrote input for Map #6
Wrote input for Map #7
Wrote input for Map #8
Wrote input for Map #9
Wrote input for Map #10
Wrote input for Map #11
Wrote input for Map #12
Wrote input for Map #13
Wrote input for Map #14
Wrote input for Map #15
Wrote input for Map #16
Wrote input for Map #17
Wrote input for Map #18
Wrote input for Map #19
Wrote input for Map #20
Wrote input for Map #21
Wrote input for Map #22
Wrote input for Map #23
Wrote input for Map #24
Wrote input for Map #25
Wrote input for Map #26
Wrote input for Map #27
Wrote input for Map #28
Wrote input for Map #29
Wrote input for Map #30
Wrote input for Map #31
Wrote input for Map #32
Wrote input for Map #33
Wrote input for Map #34
Wrote input for Map #35
Wrote input for Map #36
Wrote input for Map #37
Wrote input for Map #38
Wrote input for Map #39
Wrote input for Map #40
Wrote input for Map #41
Wrote input for Map #42
Wrote input for Map #43
Wrote input for Map #44
Wrote input for Map #45
Wrote input for Map #46
Wrote input for Map #47
Wrote input for Map #48
Wrote input for Map #49
Starting Job
18/05/17 08:22:07 INFO client.RMProxy: Connecting to ResourceManager at ip-172-30-1-171.ap-southeast-1.compute.internal/172.30.1.171:8032
18/05/17 08:22:07 INFO hdfs.DFSClient: Created token for beltran: HDFS_DELEGATION_TOKEN owner=beltran@DODDYS.SG, renewer=yarn, realUser=, issueDate=1526545327341, maxDate=1527150127341, sequenceNumber=2, masterKeyId=2 on 172.30.1.171:8020
18/05/17 08:22:07 INFO security.TokenCache: Got dt for hdfs://ip-172-30-1-171.ap-southeast-1.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.30.1.171:8020, Ident: (token for beltran: HDFS_DELEGATION_TOKEN owner=beltran@DODDYS.SG, renewer=yarn, realUser=, issueDate=1526545327341, maxDate=1527150127341, sequenceNumber=2, masterKeyId=2)
18/05/17 08:22:07 INFO input.FileInputFormat: Total input paths to process : 50
18/05/17 08:22:07 INFO mapreduce.JobSubmitter: number of splits:50
18/05/17 08:22:07 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1526544793924_0002
18/05/17 08:22:07 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.30.1.171:8020, Ident: (token for beltran: HDFS_DELEGATION_TOKEN owner=beltran@DODDYS.SG, renewer=yarn, realUser=, issueDate=1526545327341, maxDate=1527150127341, sequenceNumber=2, masterKeyId=2)
18/05/17 08:22:08 INFO impl.YarnClientImpl: Submitted application application_1526544793924_0002
18/05/17 08:22:08 INFO mapreduce.Job: The url to track the job: http://ip-172-30-1-171.ap-southeast-1.compute.internal:8088/proxy/application_1526544793924_0002/
18/05/17 08:22:08 INFO mapreduce.Job: Running job: job_1526544793924_0002
18/05/17 08:22:15 INFO mapreduce.Job: Job job_1526544793924_0002 running in uber mode : false
18/05/17 08:22:15 INFO mapreduce.Job:  map 0% reduce 0%
18/05/17 08:22:20 INFO mapreduce.Job:  map 2% reduce 0%
18/05/17 08:22:23 INFO mapreduce.Job:  map 4% reduce 0%
18/05/17 08:22:24 INFO mapreduce.Job:  map 16% reduce 0%
18/05/17 08:22:27 INFO mapreduce.Job:  map 18% reduce 0%
18/05/17 08:22:28 INFO mapreduce.Job:  map 20% reduce 0%
18/05/17 08:22:29 INFO mapreduce.Job:  map 30% reduce 0%
18/05/17 08:22:30 INFO mapreduce.Job:  map 32% reduce 0%
18/05/17 08:22:32 INFO mapreduce.Job:  map 34% reduce 0%
18/05/17 08:22:33 INFO mapreduce.Job:  map 40% reduce 0%
18/05/17 08:22:34 INFO mapreduce.Job:  map 46% reduce 0%
18/05/17 08:22:36 INFO mapreduce.Job:  map 50% reduce 0%
18/05/17 08:22:37 INFO mapreduce.Job:  map 54% reduce 0%
18/05/17 08:22:38 INFO mapreduce.Job:  map 56% reduce 0%
18/05/17 08:22:39 INFO mapreduce.Job:  map 60% reduce 0%
18/05/17 08:22:40 INFO mapreduce.Job:  map 64% reduce 0%
18/05/17 08:22:41 INFO mapreduce.Job:  map 68% reduce 0%
18/05/17 08:22:42 INFO mapreduce.Job:  map 70% reduce 0%
18/05/17 08:22:43 INFO mapreduce.Job:  map 72% reduce 0%
18/05/17 08:22:44 INFO mapreduce.Job:  map 78% reduce 0%
18/05/17 08:22:45 INFO mapreduce.Job:  map 82% reduce 0%
18/05/17 08:22:46 INFO mapreduce.Job:  map 86% reduce 0%
18/05/17 08:22:48 INFO mapreduce.Job:  map 88% reduce 0%
18/05/17 08:22:49 INFO mapreduce.Job:  map 96% reduce 0%
18/05/17 08:22:50 INFO mapreduce.Job:  map 100% reduce 0%
18/05/17 08:22:53 INFO mapreduce.Job:  map 100% reduce 100%
18/05/17 08:22:53 INFO mapreduce.Job: Job job_1526544793924_0002 completed successfully
18/05/17 08:22:53 INFO mapreduce.Job: Counters: 50
	File System Counters
		FILE: Number of bytes read=249
		FILE: Number of bytes written=7640561
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=15240
		HDFS: Number of bytes written=215
		HDFS: Number of read operations=203
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=3
	Job Counters
		Launched map tasks=50
		Launched reduce tasks=1
		Data-local map tasks=49
		Rack-local map tasks=1
		Total time spent by all maps in occupied slots (ms)=177989
		Total time spent by all reduces in occupied slots (ms)=2751
		Total time spent by all map tasks (ms)=177989
		Total time spent by all reduce tasks (ms)=2751
		Total vcore-milliseconds taken by all map tasks=177989
		Total vcore-milliseconds taken by all reduce tasks=2751
		Total megabyte-milliseconds taken by all map tasks=182260736
		Total megabyte-milliseconds taken by all reduce tasks=2817024
	Map-Reduce Framework
		Map input records=50
		Map output records=100
		Map output bytes=900
		Map output materialized bytes=1700
		Input split bytes=9340
		Combine input records=0
		Combine output records=0
		Reduce input groups=2
		Reduce shuffle bytes=1700
		Reduce input records=100
		Reduce output records=0
		Spilled Records=200
		Shuffled Maps =50
		Failed Shuffles=0
		Merged Map outputs=50
		GC time elapsed (ms)=3472
		CPU time spent (ms)=28870
		Physical memory (bytes) snapshot=23958519808
		Virtual memory (bytes) snapshot=142296993792
		Total committed heap usage (bytes)=24829755392
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=5900
	File Output Format Counters
		Bytes Written=97
Job Finished in 46.743 seconds
Estimated value of Pi is 3.14160000000000000000

real	0m50.255s
user	0m8.048s
sys	0m0.469s

```
