Pi

```
[ec2-user@ip-172-30-1-139 ~]$ kinit thanos
Password for thanos@DODDYS.SG:
[ec2-user@ip-172-30-1-139 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar pi 2 4
Number of Maps  = 2
Samples per Map = 4
Wrote input for Map #0
Wrote input for Map #1
Starting Job
18/05/18 04:13:45 INFO client.RMProxy: Connecting to ResourceManager at ip-172-30-1-139.ap-southeast-1.compute.internal/172.30.1.139:8032
18/05/18 04:13:45 INFO hdfs.DFSClient: Created token for thanos: HDFS_DELEGATION_TOKEN owner=thanos@DODDYS.SG, renewer=yarn, realUser=, issueDate=1526616825272, maxDate=1527221625272, sequenceNumber=3, masterKeyId=4 on 172.30.1.139:8020
18/05/18 04:13:45 INFO security.TokenCache: Got dt for hdfs://ip-172-30-1-139.ap-southeast-1.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.30.1.139:8020, Ident: (token for thanos: HDFS_DELEGATION_TOKEN owner=thanos@DODDYS.SG, renewer=yarn, realUser=, issueDate=1526616825272, maxDate=1527221625272, sequenceNumber=3, masterKeyId=4)
18/05/18 04:13:45 INFO input.FileInputFormat: Total input paths to process : 2
18/05/18 04:13:45 INFO mapreduce.JobSubmitter: number of splits:2
18/05/18 04:13:45 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1526616307523_0003
18/05/18 04:13:45 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.30.1.139:8020, Ident: (token for thanos: HDFS_DELEGATION_TOKEN owner=thanos@DODDYS.SG, renewer=yarn, realUser=, issueDate=1526616825272, maxDate=1527221625272, sequenceNumber=3, masterKeyId=4)
18/05/18 04:13:46 INFO impl.YarnClientImpl: Submitted application application_1526616307523_0003
18/05/18 04:13:46 INFO mapreduce.Job: The url to track the job: http://ip-172-30-1-139.ap-southeast-1.compute.internal:8088/proxy/application_1526616307523_0003/
18/05/18 04:13:46 INFO mapreduce.Job: Running job: job_1526616307523_0003
18/05/18 04:13:54 INFO mapreduce.Job: Job job_1526616307523_0003 running in uber mode : false
18/05/18 04:13:54 INFO mapreduce.Job:  map 0% reduce 0%
18/05/18 04:14:04 INFO mapreduce.Job:  map 100% reduce 0%
18/05/18 04:14:10 INFO mapreduce.Job:  map 100% reduce 100%
18/05/18 04:14:10 INFO mapreduce.Job: Job job_1526616307523_0003 completed successfully
18/05/18 04:14:10 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=47
		FILE: Number of bytes written=388412
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=608
		HDFS: Number of bytes written=215
		HDFS: Number of read operations=11
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=3
	Job Counters
		Launched map tasks=2
		Launched reduce tasks=1
		Data-local map tasks=2
		Total time spent by all maps in occupied slots (ms)=14438
		Total time spent by all reduces in occupied slots (ms)=2789
		Total time spent by all map tasks (ms)=14438
		Total time spent by all reduce tasks (ms)=2789
		Total vcore-milliseconds taken by all map tasks=14438
		Total vcore-milliseconds taken by all reduce tasks=2789
		Total megabyte-milliseconds taken by all map tasks=14784512
		Total megabyte-milliseconds taken by all reduce tasks=2855936
	Map-Reduce Framework
		Map input records=2
		Map output records=4
		Map output bytes=36
		Map output materialized bytes=67
		Input split bytes=372
		Combine input records=0
		Combine output records=0
		Reduce input groups=2
		Reduce shuffle bytes=67
		Reduce input records=4
		Reduce output records=0
		Spilled Records=8
		Shuffled Maps =2
		Failed Shuffles=0
		Merged Map outputs=2
		GC time elapsed (ms)=209
		CPU time spent (ms)=2340
		Physical memory (bytes) snapshot=1107329024
		Virtual memory (bytes) snapshot=8373477376
		Total committed heap usage (bytes)=1203765248
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters
		Bytes Read=236
	File Output Format Counters
		Bytes Written=97
Job Finished in 25.387 seconds
Estimated value of Pi is 3.50000000000000000000

real	0m28.162s
user	0m9.026s
sys	0m0.465s

```
