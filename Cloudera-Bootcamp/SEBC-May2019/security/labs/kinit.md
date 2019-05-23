# Post kerberos installation checks

`klist`
~~~
Ticket cache: FILE:/tmp/krb5cc_0
Default principal: cloudera-scm@GDANSKBDA.COM

Valid starting       Expires              Service principal
05/23/2019 09:50:22  05/24/2019 09:50:22  krbtgt/GDANSKBDA.COM@GDANSKBDA.COM
	renew until 05/30/2019 09:50:22
~~~

`klist -e -f`
~~~
Ticket cache: FILE:/tmp/krb5cc_0
Default principal: cloudera-scm@GDANSKBDA.COM

Valid starting       Expires              Service principal
05/23/2019 09:50:22  05/24/2019 09:50:22  krbtgt/GDANSKBDA.COM@GDANSKBDA.COM
	renew until 05/30/2019 09:50:22, Flags: FRI
	Etype (skey, tkt): aes128-cts-hmac-sha1-96, aes256-cts-hmac-sha1-96
~~~

Kinit command: `kinit cloudera-scm@GDANSKBDA.COM`