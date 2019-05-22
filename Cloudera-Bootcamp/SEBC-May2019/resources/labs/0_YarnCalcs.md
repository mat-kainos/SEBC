# Doing the Math

Input:
10 worker nodes, total 20 virtual cores, total 128 GB RAM, 12 disks total

Spreadsheet values:
~~~
Worker vcores	20
Worker spindles	12
Worker RAM	128
Workload factor	2
Worker nodes	10
~~~

Spreadheet output:

~~~
	            Memory	vcores
OS	            12,8	2
YARN resources	112,2	15
~~~

Conclusion: The formula for calculating OS memory always uses 10% of the total memory which can be too high or too low depending on the total memory available on all worker nodes. It would be better to have a flat number depending on the needs - let's say 10GB for OS and the rest for YARN resources.


# Workload factor

By modyfing the number we can increase/decrease the default number of map tasks per job and default number of reduce tasks per job. The output depends on mapreduce.map.memory.mb and mapreduce.map.cpu.vcores.
These are the possible combinations:

~~~
            	    -D mapreduce.job.maps &
Workload factor	     mapreduce.job.reduces
	0		            	0
	1			            10
	2			            15
	3		            	15
	4		            	15
   ...			            15
~~~