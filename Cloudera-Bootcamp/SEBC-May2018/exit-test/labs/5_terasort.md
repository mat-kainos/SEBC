terasort

```
[ec2-user@ip-172-30-1-139 ~]$ kinit groot
Password for groot@DODDYS.SG:
[ec2-user@ip-172-30-1-139 ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_1000
Default principal: groot@DODDYS.SG

Valid starting     Expires            Service principal
05/18/18 04:09:02  05/19/18 04:09:02  krbtgt/DODDYS.SG@DODDYS.SG
	renew until 05/25/18 04:09:02
[ec2-user@ip-172-30-1-139 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar \
> terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=8 \
>                       -Dmapreduce.map.memory.mb=1024 \
>                       -Dmapreduce.map.java.opts.max.heap=800 \
>                       -Dmapreduce.reduce.memory.mb=1025 \
>                       -Dmapreduce.reduce.java.opts.max.heap=800 \
>                       /user/groot/tgen /user/groot/tsort
18/05/18 04:09:15 INFO terasort.TeraSort: starting
18/05/18 04:09:17 INFO hdfs.DFSClient: Created token for groot: HDFS_DELEGATION_TOKEN owner=groot@DODDYS.SG, renewer=yarn, realUser=, issueDate=1526616557249, maxDate=1527221357249, sequenceNumber=1, masterKeyId=4 on 172.30.1.139:8020
18/05/18 04:09:17 INFO security.TokenCache: Got dt for hdfs://ip-172-30-1-139.ap-southeast-1.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.30.1.139:8020, Ident: (token for groot: HDFS_DELEGATION_TOKEN owner=groot@DODDYS.SG, renewer=yarn, realUser=, issueDate=1526616557249, maxDate=1527221357249, sequenceNumber=1, masterKeyId=4)
18/05/18 04:09:17 INFO input.FileInputFormat: Total input paths to process : 40
Spent 374ms computing base-splits.
Spent 3ms computing TeraScheduler splits.
Computing input splits took 378ms
Sampling 10 splits of 80
Making 8 from 100000 sampled records
Computing parititions took 1252ms
Spent 1632ms computing partitions.
18/05/18 04:09:18 INFO client.RMProxy: Connecting to ResourceManager at ip-172-30-1-139.ap-southeast-1.compute.internal/172.30.1.139:8032
18/05/18 04:09:19 INFO mapreduce.JobSubmitter: number of splits:80
18/05/18 04:09:19 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1526616307523_0001
18/05/18 04:09:19 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.30.1.139:8020, Ident: (token for groot: HDFS_DELEGATION_TOKEN owner=groot@DODDYS.SG, renewer=yarn, realUser=, issueDate=1526616557249, maxDate=1527221357249, sequenceNumber=1, masterKeyId=4)
18/05/18 04:09:20 INFO impl.YarnClientImpl: Submitted application application_1526616307523_0001
18/05/18 04:09:20 INFO mapreduce.Job: The url to track the job: http://ip-172-30-1-139.ap-southeast-1.compute.internal:8088/proxy/application_1526616307523_0001/
18/05/18 04:09:20 INFO mapreduce.Job: Running job: job_1526616307523_0001
18/05/18 04:09:30 INFO mapreduce.Job: Job job_1526616307523_0001 running in uber mode : false
18/05/18 04:09:30 INFO mapreduce.Job:  map 0% reduce 0%
18/05/18 04:09:37 INFO mapreduce.Job:  map 1% reduce 0%
18/05/18 04:09:42 INFO mapreduce.Job:  map 6% reduce 0%
18/05/18 04:09:43 INFO mapreduce.Job:  map 10% reduce 0%
18/05/18 04:09:50 INFO mapreduce.Job:  map 11% reduce 0%
18/05/18 04:09:51 INFO mapreduce.Job:  map 16% reduce 0%
18/05/18 04:09:52 INFO mapreduce.Job:  map 19% reduce 0%
18/05/18 04:09:56 INFO mapreduce.Job:  map 20% reduce 0%
18/05/18 04:09:58 INFO mapreduce.Job:  map 22% reduce 0%
18/05/18 04:09:59 INFO mapreduce.Job:  map 26% reduce 0%
18/05/18 04:10:00 INFO mapreduce.Job:  map 28% reduce 0%
18/05/18 04:10:02 INFO mapreduce.Job:  map 29% reduce 0%
18/05/18 04:10:05 INFO mapreduce.Job:  map 30% reduce 0%
18/05/18 04:10:06 INFO mapreduce.Job:  map 32% reduce 0%
18/05/18 04:10:07 INFO mapreduce.Job:  map 38% reduce 0%
18/05/18 04:10:12 INFO mapreduce.Job:  map 39% reduce 0%
18/05/18 04:10:13 INFO mapreduce.Job:  map 44% reduce 0%
18/05/18 04:10:14 INFO mapreduce.Job:  map 45% reduce 0%
18/05/18 04:10:15 INFO mapreduce.Job:  map 46% reduce 0%
18/05/18 04:10:19 INFO mapreduce.Job:  map 50% reduce 0%
18/05/18 04:10:20 INFO mapreduce.Job:  map 54% reduce 0%
18/05/18 04:10:21 INFO mapreduce.Job:  map 55% reduce 0%
18/05/18 04:10:25 INFO mapreduce.Job:  map 57% reduce 0%
18/05/18 04:10:26 INFO mapreduce.Job:  map 60% reduce 0%
18/05/18 04:10:27 INFO mapreduce.Job:  map 63% reduce 0%
18/05/18 04:10:28 INFO mapreduce.Job:  map 64% reduce 0%
18/05/18 04:10:31 INFO mapreduce.Job:  map 65% reduce 0%
18/05/18 04:10:32 INFO mapreduce.Job:  map 66% reduce 0%
18/05/18 04:10:33 INFO mapreduce.Job:  map 68% reduce 0%
18/05/18 04:10:34 INFO mapreduce.Job:  map 70% reduce 0%
18/05/18 04:10:35 INFO mapreduce.Job:  map 71% reduce 0%
18/05/18 04:10:36 INFO mapreduce.Job:  map 73% reduce 0%
18/05/18 04:10:37 INFO mapreduce.Job:  map 74% reduce 0%
18/05/18 04:10:40 INFO mapreduce.Job:  map 76% reduce 0%
18/05/18 04:10:41 INFO mapreduce.Job:  map 77% reduce 0%
18/05/18 04:10:42 INFO mapreduce.Job:  map 80% reduce 0%
18/05/18 04:10:43 INFO mapreduce.Job:  map 82% reduce 0%
18/05/18 04:10:48 INFO mapreduce.Job:  map 86% reduce 0%
18/05/18 04:10:49 INFO mapreduce.Job:  map 91% reduce 0%
18/05/18 04:10:55 INFO mapreduce.Job:  map 94% reduce 0%
18/05/18 04:10:58 INFO mapreduce.Job:  map 95% reduce 0%
18/05/18 04:11:01 INFO mapreduce.Job:  map 98% reduce 0%
18/05/18 04:11:03 INFO mapreduce.Job:  map 99% reduce 0%
18/05/18 04:11:04 INFO mapreduce.Job:  map 99% reduce 12%
18/05/18 04:11:05 INFO mapreduce.Job:  map 99% reduce 16%
18/05/18 04:11:06 INFO mapreduce.Job:  map 100% reduce 16%
18/05/18 04:11:10 INFO mapreduce.Job:  map 100% reduce 29%
18/05/18 04:11:11 INFO mapreduce.Job:  map 100% reduce 35%
18/05/18 04:11:15 INFO mapreduce.Job:  map 100% reduce 47%
18/05/18 04:11:16 INFO mapreduce.Job:  map 100% reduce 50%
18/05/18 04:11:31 INFO mapreduce.Job:  map 100% reduce 88%
18/05/18 04:11:32 INFO mapreduce.Job:  map 100% reduce 100%
18/05/18 04:11:33 INFO mapreduce.Job: Job job_1526616307523_0001 completed successfully
18/05/18 04:11:33 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=2223350303
		FILE: Number of bytes written=4410009842
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=5000012240
		HDFS: Number of bytes written=5000000000
		HDFS: Number of read operations=264
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=16
	Job Counters
		Launched map tasks=80
		Launched reduce tasks=8
		Data-local map tasks=80
		Total time spent by all maps in occupied slots (ms)=495589
		Total time spent by all reduces in occupied slots (ms)=327908
		Total time spent by all map tasks (ms)=495589
		Total time spent by all reduce tasks (ms)=163954
		Total vcore-milliseconds taken by all map tasks=495589
		Total vcore-milliseconds taken by all reduce tasks=163954
		Total megabyte-milliseconds taken by all map tasks=507483136
		Total megabyte-milliseconds taken by all reduce tasks=251833344
	Map-Reduce Framework
		Map input records=50000000
		Map output records=50000000
		Map output bytes=5100000000
		Map output materialized bytes=2175171973
		Input split bytes=12240
		Combine input records=0
		Combine output records=0
		Reduce input groups=50000000
		Reduce shuffle bytes=2175171973
		Reduce input records=50000000
		Reduce output records=50000000
		Spilled Records=100000000
		Shuffled Maps =640
		Failed Shuffles=0
		Merged Map outputs=640
		GC time elapsed (ms)=11044
		CPU time spent (ms)=520090
		Physical memory (bytes) snapshot=45966925824
		Virtual memory (bytes) snapshot=245373259776
		Total committed heap usage (bytes)=47005040640
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=5000000000
	File Output Format Counters
		Bytes Written=5000000000
18/05/18 04:11:33 INFO terasort.TeraSort: done

real	2m18.838s
user	0m11.152s
sys	0m0.563s



```
