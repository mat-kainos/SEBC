## krb5.conf

```
[logging]
 default = FILE:/var/log/krb5libs.log
 kdc = FILE:/var/log/krb5kdc.log
 admin_server = FILE:/var/log/kadmind.log

[libdefaults]
 default_realm = EXPECC.COM
 dns_lookup_realm = false
 dns_lookup_kdc = false
 ticket_lifetime = 12h
 renew_lifetime = 7d
 forwardable = true

[realms]
 EXPECC.COM = {
  kdc = hadoop5.expecc.com
  admin_server = hadoop5.expecc.com
 }

[domain_realm]
 .expecc.com = EXPECC.COM
 expecc.com = EXPECC.COM
```
