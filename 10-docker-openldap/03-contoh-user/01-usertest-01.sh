#01-usertest-01.ldif
dn: uid=usertest01,ou=People,dc=codephile,dc=com
objectClass: top
objectClass: account
objectClass: posixAccount
objectClass: shadowAccount
cn: User Test01
userid: usertest01
uidNumber: 9999
gidNumber: 100
homeDirectory: /home/001
loginShell: /bin/bash
gecos: usertest01 [usertest01 (at) codephile]
userPassword: {crypt}x
shadowLastChange: 17058
shadowMin: 0
shadowMax: 99999
shadowWarning: 7
Pangkat: Pembina 1
Jabatan: Direktur Utama Test
Direktorat: Direktorat Utama Test
gelarDepan: Dr. H.
gelarBelakang: MM. SKom. Lc. MA 

#Eksekusi ldap command
>$ ldapadd -x -W -D "cn=ldapadm,dc=codephile,dc=com" -f 01-usertest-01.ldif

#Kasih password
>$ ldappasswd -s passw0rd -W -D "cn=ldapadm,dc=codephile,dc=com" -x "uid=usertest01,ou=People,dc=codephile,dc=com"

#Test cari
>$ ldapsearch -x cn=usertest01 -b dc=codephile,dc=com
