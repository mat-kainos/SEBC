Current Conclusion:

- When generating the data, the higher the number of mapper the faster the performance
- When doing Sorting the smaller the number of files being sorted the faster the performance (reducer = 1)
- above performance improvement is very little (few seconds), it may be due to io bound in EBS storage (100 IOPS)



| Map | Reducer | Gen Time | Sort Time |
|-----|---------|----------|-----------|
| 1| 1|1m17.143s|2m28.226s|
| 8| 1|1m1.111s|2m32.185s|
|16| 1|1m2.554s|2m41.551s|
| 8| 4|0m57.878s|2m10.114s|
| 8| 8|0m59.199s|1m50.970s|
|16|16|1m4.379s|2m9.129s|


Baseline Result
```
[centos@hadoop5 ~]$ ./testYarn.sh
Testing loop started on Tue May 15 07:54:32 UTC 2018
# of Maps          :  8
# of Reducer       :  1
Maps Memory        :  512
Maps Max Memory    :  409
Reducer Max Memory :  409
Generating Test data

real	1m1.111s
user	0m5.540s
sys	0m0.337s
\nSorting data

real	2m32.185s
user	0m7.430s
sys	0m0.406s
Deleted /user/centos/tg-10GB-8-1-512
Deleted /user/centos/ts-10GB-8-1-512
# of Maps          :  8
# of Reducer       :  1
Maps Memory        :  1024
Maps Max Memory    :  819
Reducer Max Memory :  819
Generating Test data

real	0m59.015s
user	0m5.613s
sys	0m0.328s
\nSorting data

real	2m35.898s
user	0m7.666s
sys	0m0.453s
Deleted /user/centos/tg-10GB-8-1-1024
Deleted /user/centos/ts-10GB-8-1-1024
Testing loop ended on Tue May 15 08:01:50 UTC 2018

```

Setting minimum # of Mapper
```
centos@hadoop5 ~]$ ./testYarn.sh
Testing loop started on Tue May 15 08:06:24 UTC 2018
# of Maps          :  1
# of Reducer       :  1
Maps Memory        :  512
Maps Max Memory    :  409
Reducer Max Memory :  409
Generating Test data

real	1m17.143s
user	0m5.603s
sys	0m0.324s
\nSorting data

real	2m28.226s
user	0m7.803s
sys	0m0.408s
Deleted /user/centos/tg-10GB-1-1-512
Deleted /user/centos/ts-10GB-1-1-512
# of Maps          :  1
# of Reducer       :  1
Maps Memory        :  1024
Maps Max Memory    :  819
Reducer Max Memory :  819
Generating Test data

real	1m17.321s
user	0m5.613s
sys	0m0.400s
\nSorting data

real	2m28.109s
user	0m8.081s
sys	0m0.444s
Deleted /user/centos/tg-10GB-1-1-1024
Deleted /user/centos/ts-10GB-1-1-1024
Testing loop ended on Tue May 15 08:14:05 UTC 2018
```

Setting Higher mapper
```
[centos@hadoop5 ~]$ ./testYarn.sh
Testing loop started on Tue May 15 08:15:24 UTC 2018
# of Maps          :  16
# of Reducer       :  1
Maps Memory        :  512
Maps Max Memory    :  409
Reducer Max Memory :  409
Generating Test data

real	1m2.554s
user	0m5.552s
sys	0m0.353s
\nSorting data

real	2m41.551s
user	0m7.870s
sys	0m0.386s
Deleted /user/centos/tg-10GB-16-1-512
Deleted /user/centos/ts-10GB-16-1-512
# of Maps          :  16
# of Reducer       :  1
Maps Memory        :  1024
Maps Max Memory    :  819
Reducer Max Memory :  819
Generating Test data

real	0m59.387s
user	0m5.767s
sys	0m0.354s
\nSorting data

real	2m37.635s
user	0m7.906s
sys	0m0.500s
Deleted /user/centos/tg-10GB-16-1-1024
Deleted /user/centos/ts-10GB-16-1-1024
Testing loop ended on Tue May 15 08:22:55 UTC 2018
```

Incresing reducer
```
[centos@hadoop5 ~]$ ./testYarn.sh
Testing loop started on Tue May 15 08:24:21 UTC 2018
# of Maps          :  8
# of Reducer       :  4
Maps Memory        :  512
Maps Max Memory    :  409
Reducer Max Memory :  409
Generating Test data

real	0m57.878s
user	0m5.455s
sys	0m0.346s
\nSorting data

real	1m58.225s
user	0m7.388s
sys	0m0.470s
Deleted /user/centos/tg-10GB-8-4-512
Deleted /user/centos/ts-10GB-8-4-512
# of Maps          :  8
# of Reducer       :  4
Maps Memory        :  1024
Maps Max Memory    :  819
Reducer Max Memory :  819
Generating Test data

real	1m0.758s
user	0m5.992s
sys	0m0.387s
\nSorting data

real	2m10.114s
user	0m7.581s
sys	0m0.431s
Deleted /user/centos/tg-10GB-8-4-1024
Deleted /user/centos/ts-10GB-8-4-1024
Testing loop ended on Tue May 15 08:30:38 UTC 2018
```

```
[centos@hadoop5 ~]$ ./testYarn.sh
Testing loop started on Tue May 15 08:32:11 UTC 2018
# of Maps          :  8
# of Reducer       :  8
Maps Memory        :  512
Maps Max Memory    :  409
Reducer Max Memory :  409
Generating Test data

real	0m59.199s
user	0m5.460s
sys	0m0.331s
\nSorting data

real	1m50.970s
user	0m7.763s
sys	0m0.419s
Deleted /user/centos/tg-10GB-8-8-512
Deleted /user/centos/ts-10GB-8-8-512
# of Maps          :  8
# of Reducer       :  8
Maps Memory        :  1024
Maps Max Memory    :  819
Reducer Max Memory :  819
Generating Test data

real	1m0.595s
user	0m5.686s
sys	0m0.353s
\nSorting data

real	1m52.529s
user	0m7.296s
sys	0m0.387s
Deleted /user/centos/tg-10GB-8-8-1024
Deleted /user/centos/ts-10GB-8-8-1024
Testing loop ended on Tue May 15 08:38:04 UTC 2018
```

Maximum Reducer and mapper
```
[centos@hadoop5 ~]$ ./testYarn.sh
Testing loop started on Tue May 15 08:41:33 UTC 2018
# of Maps          :  16
# of Reducer       :  16
Maps Memory        :  512
Maps Max Memory    :  409
Reducer Max Memory :  409
Generating Test data

real	1m4.379s
user	0m5.689s
sys	0m0.331s
\nSorting data

real	2m9.129s
user	0m7.498s
sys	0m0.381s
Deleted /user/centos/tg-10GB-16-16-512
Deleted /user/centos/ts-10GB-16-16-512
# of Maps          :  16
# of Reducer       :  16
Maps Memory        :  1024
Maps Max Memory    :  819
Reducer Max Memory :  819
Generating Test data

real	0m58.986s
user	0m5.505s
sys	0m0.335s
\nSorting data

real	2m7.108s
user	0m7.550s
sys	0m0.441s
Deleted /user/centos/tg-10GB-16-16-1024
Deleted /user/centos/ts-10GB-16-16-1024
Testing loop ended on Tue May 15 08:48:02 UTC 2018
```
