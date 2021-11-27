#10-create-user.sh

#buat file Nama User
>$ vi nama-user.ldif

dn: uid=rizkysenior,ou=People,dc=codephile,dc=com
objectClass: top
objectClass: account
objectClass: posixAccount
objectClass: shadowAccount
cn: Rizky Senior
uid: riskysenior
uidNumber: 9999
gidNumber: 100
homeDirectory: /home/raj
loginShell: /bin/bash
gecos: Raj [Admin (at) ITzGeek]
userPassword: {crypt}x
shadowLastChange: 17058
shadowMin: 0
shadowMax: 99999
shadowWarning: 7

#Eksekusi ldap command
>$ ldapadd -x -W -D "cn=ldapadm,dc=codephile,dc=com" -f nama-user.ldif

#Kasih password
>$ ldappasswd -s password123 -W -D "cn=ldapadm,dc=codephile,dc=com" -x "uid=rizkysenior,ou=People,dc=codephile,dc=com"

#Test cari
>$ ldapsearch -x cn=rizkysenior -b dc=codephile,dc=com


