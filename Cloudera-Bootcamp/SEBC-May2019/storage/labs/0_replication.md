# HDFS folder creation with GitHub handle

~~~
[hdfs@ip-172-31-31-233 root]$ hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen 5242880 /mat-kainos
19/05/21 09:49:19 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-31-235.eu-west-1.compute.internal/172.31.31.235:8032
19/05/21 09:49:20 INFO terasort.TeraGen: Generating 5242880 using 2
19/05/21 09:49:20 INFO mapreduce.JobSubmitter: number of splits:2
19/05/21 09:49:20 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1558429842624_0001
19/05/21 09:49:21 INFO impl.YarnClientImpl: Submitted application application_1558429842624_0001
19/05/21 09:49:21 INFO mapreduce.Job: The url to track the job: http://ip-172-31-31-235.eu-west-1.compute.internal:8088/proxy/application_1558429842624_0001/
19/05/21 09:49:21 INFO mapreduce.Job: Running job: job_1558429842624_0001
19/05/21 09:49:27 INFO mapreduce.Job: Job job_1558429842624_0001 running in uber mode : false
19/05/21 09:49:27 INFO mapreduce.Job:  map 0% reduce 0%
19/05/21 09:49:37 INFO mapreduce.Job:  map 50% reduce 0%
19/05/21 09:49:38 INFO mapreduce.Job:  map 100% reduce 0%
19/05/21 09:49:38 INFO mapreduce.Job: Job job_1558429842624_0001 completed successfully
19/05/21 09:49:38 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=298950
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=167
		HDFS: Number of bytes written=524288000
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=4
	Job Counters
		Launched map tasks=2
		Other local map tasks=2
		Total time spent by all maps in occupied slots (ms)=14914
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=14914
		Total vcore-milliseconds taken by all map tasks=14914
		Total megabyte-milliseconds taken by all map tasks=15271936
	Map-Reduce Framework
		Map input records=5242880
		Map output records=5242880
		Input split bytes=167
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=238
		CPU time spent (ms)=10750
		Physical memory (bytes) snapshot=751296512
		Virtual memory (bytes) snapshot=3158024192
		Total committed heap usage (bytes)=862453760
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=11257830824958050
	File Input Format Counters
		Bytes Read=0
	File Output Format Counters
		Bytes Written=524288000
~~~

~~~
[hdfs@ip-172-31-31-233 root]$ hdfs dfs -ls /mat-kainos
Found 3 items
-rw-r--r--   3 hdfs supergroup          0 2019-05-21 09:49 /mat-kainos/_SUCCESS
-rw-r--r--   3 hdfs supergroup  262144000 2019-05-21 09:49 /mat-kainos/part-m-00000
-rw-r--r--   3 hdfs supergroup  262144000 2019-05-21 09:49 /mat-kainos/part-m-00001
~~~


## Distcp

Local transfer in the same cluster:
~~~
[hdfs@ip-172-31-31-233 root]$ hadoop distcp /mat-kainos /mat/kainos-copy
19/05/21 11:02:49 INFO tools.OptionsParser: parseChunkSize: blocksperchunk false
19/05/21 11:02:50 INFO tools.DistCp: Input Options: DistCpOptions{atomicCommit=false, syncFolder=false, deleteMissing=false, ignoreFailures=false, overwrite=false, append=false, useDiff=false, useRdiff=false, fromSnapshot=null, toSnapshot=null, skipCRC=false, blocking=true, numListstatusThreads=0, maxMaps=20, mapBandwidth=100, sslConfigurationFile='null', copyStrategy='uniformsize', preserveStatus=[], preserveRawXattrs=false, atomicWorkPath=null, logPath=null, sourceFileListing=null, sourcePaths=[/mat-kainos], targetPath=/mat/kainos-copy, targetPathExists=false, filtersFile='null', blocksPerChunk=0, copyBufferSize=8192}
19/05/21 11:02:50 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-31-235.eu-west-1.compute.internal/172.31.31.235:8032
19/05/21 11:02:50 INFO tools.SimpleCopyListing: Paths (files+dirs) cnt = 4; dirCnt = 1
19/05/21 11:02:50 INFO tools.SimpleCopyListing: Build file listing completed.
19/05/21 11:02:50 INFO Configuration.deprecation: io.sort.mb is deprecated. Instead, use mapreduce.task.io.sort.mb
19/05/21 11:02:50 INFO Configuration.deprecation: io.sort.factor is deprecated. Instead, use mapreduce.task.io.sort.factor
19/05/21 11:02:50 INFO tools.DistCp: Number of paths in the copy list: 4
19/05/21 11:02:50 INFO tools.DistCp: Number of paths in the copy list: 4
19/05/21 11:02:50 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-31-235.eu-west-1.compute.internal/172.31.31.235:8032
19/05/21 11:02:51 INFO mapreduce.JobSubmitter: number of splits:3
19/05/21 11:02:51 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1558429842624_0002
19/05/21 11:02:51 INFO impl.YarnClientImpl: Submitted application application_1558429842624_0002
19/05/21 11:02:51 INFO mapreduce.Job: The url to track the job: http://ip-172-31-31-235.eu-west-1.compute.internal:8088/proxy/application_1558429842624_0002/
19/05/21 11:02:51 INFO tools.DistCp: DistCp job-id: job_1558429842624_0002
19/05/21 11:02:51 INFO mapreduce.Job: Running job: job_1558429842624_0002
19/05/21 11:02:57 INFO mapreduce.Job: Job job_1558429842624_0002 running in uber mode : false
19/05/21 11:02:57 INFO mapreduce.Job:  map 0% reduce 0%
19/05/21 11:03:04 INFO mapreduce.Job:  map 33% reduce 0%
19/05/21 11:03:07 INFO mapreduce.Job:  map 100% reduce 0%
19/05/21 11:03:07 INFO mapreduce.Job: 
Job job_1558429842624_0002 completed successfully
19/05/21 11:03:07 INFO mapreduce.Job: Counters: 33
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=459177
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=524289813
		HDFS: Number of bytes written=524288000
		HDFS: Number of read operations=50
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=13
	Job Counters
		Launched map tasks=3
		Other local map tasks=3
		Total time spent by all maps in occupied slots (ms)=16587
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=16587
		Total vcore-milliseconds taken by all map tasks=16587
		Total megabyte-milliseconds taken by all map tasks=16985088
	Map-Reduce Framework
		Map input records=4
		Map output records=0
		Input split bytes=345
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=146
		CPU time spent (ms)=6990
		Physical memory (bytes) snapshot=981524480
		Virtual memory (bytes) snapshot=4747907072
		Total committed heap usage (bytes)=1170735104
	File Input Format Counters
		Bytes Read=1468
	File Output Format Counters
		Bytes Written=0
	DistCp Counters
		Bytes Copied=524288000
		Bytes Expected=524288000
		Files Copied=4
~~~

Result:
~~~
[hdfs@ip-172-31-31-233 root]$  hdfs dfs -ls /mat/kainos-copy
Found 3 items
-rw-r--r--   3 hdfs supergroup          0 2019-05-21 11:03 /mat/kainos-copy/_SUCCESS
-rw-r--r--   3 hdfs supergroup  262144000 2019-05-21 11:03 /mat/kainos-copy/part-m-00000
-rw-r--r--   3 hdfs supergroup  262144000 2019-05-21 11:03 /mat/kainos-copy/part-m-00001
~~~

# HDFS filesystem check

Source:
~~~
[hdfs@ip-172-31-31-233 root]$ hdfs fsck /mat-kainos -files -blocks
Connecting to namenode via http://ip-172-31-31-233.eu-west-1.compute.internal:50070/fsck?ugi=hdfs&files=1&blocks=1&path=%2Fmat-kainos
FSCK started by hdfs (auth:SIMPLE) from /172.31.31.233 for path /mat-kainos at Tue May 21 11:17:51 UTC 2019
/mat-kainos <dir>
/mat-kainos/_SUCCESS 0 bytes, 0 block(s):  OK

/mat-kainos/part-m-00000 262144000 bytes, 2 block(s):  OK
0. BP-786741189-172.31.31.233-1558428396196:blk_1073742634_1810 len=134217728 Live_repl=3
1. BP-786741189-172.31.31.233-1558428396196:blk_1073742636_1812 len=127926272 Live_repl=3

/mat-kainos/part-m-00001 262144000 bytes, 2 block(s):  OK
0. BP-786741189-172.31.31.233-1558428396196:blk_1073742635_1811 len=134217728 Live_repl=3
1. BP-786741189-172.31.31.233-1558428396196:blk_1073742637_1813 len=127926272 Live_repl=3

Status: HEALTHY
 Total size:	524288000 B
 Total dirs:	1
 Total files:	3
 Total symlinks:		0
 Total blocks (validated):	4 (avg. block size 131072000 B)
 Minimally replicated blocks:	4 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Tue May 21 11:17:51 UTC 2019 in 2 milliseconds


The filesystem under path '/mat-kainos' is HEALTHY

~~~

Traget:

~~~

[hdfs@ip-172-31-31-233 root]$ hdfs fsck /mat/kainos-copy -files -blocks
Connecting to namenode via http://ip-172-31-31-233.eu-west-1.compute.internal:50070/fsck?ugi=hdfs&files=1&blocks=1&path=%2Fmat%2Fkainos-copy
FSCK started by hdfs (auth:SIMPLE) from /172.31.31.233 for path /mat/kainos-copy at Tue May 21 11:22:51 UTC 2019
/mat/kainos-copy <dir>
/mat/kainos-copy/_SUCCESS 0 bytes, 0 block(s):  OK

/mat/kainos-copy/part-m-00000 262144000 bytes, 2 block(s):  OK
0. BP-786741189-172.31.31.233-1558428396196:blk_1073742724_1900 len=134217728 Live_repl=3
1. BP-786741189-172.31.31.233-1558428396196:blk_1073742727_1903 len=127926272 Live_repl=3

/mat/kainos-copy/part-m-00001 262144000 bytes, 2 block(s):  OK
0. BP-786741189-172.31.31.233-1558428396196:blk_1073742725_1901 len=134217728 Live_repl=3
1. BP-786741189-172.31.31.233-1558428396196:blk_1073742728_1904 len=127926272 Live_repl=3

Status: HEALTHY
 Total size:	524288000 B
 Total dirs:	1
 Total files:	3
 Total symlinks:		0
 Total blocks (validated):	4 (avg. block size 131072000 B)
 Minimally replicated blocks:	4 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Tue May 21 11:22:51 UTC 2019 in 1 milliseconds


The filesystem under path '/mat/kainos-copy' is HEALTHY
~~~