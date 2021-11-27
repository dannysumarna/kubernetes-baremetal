#07-ldap-unit-organisasi.sh


	>$ vi base.ldif

	dn: dc=codephile,dc=com
	dc: codephile
	objectClass: top
	objectClass: domain

	dn: cn=ldapadm,dc=codephile,dc=com
	objectClass: organizationalRole
	cn: ldapadm
	description: LDAP Manager

	dn: ou=People,dc=codephile,dc=com
	objectClass: organizationalUnit
	ou: People

	dn: ou=Group,dc=codephile,dc=com
	objectClass: organizationalUnit
	ou: Group
	
	dn: ou=Direktorat Umum,dc=codephile,dc=com
	objectClass: organizationalUnit
	ou: Direktorat Umum

	dn: ou=Direktorat Keuangan,dc=codephile,dc=com
	objectClass: organizationalUnit
	ou: Direktorat Keuangan

	dn: ou=Direktorat Pendidikan Dasar,dc=codephile,dc=com
	objectClass: organizationalUnit
	ou: Direktorat Pendidikan Dasar


	>$ ldapadd -x -W -D "cn=ldapadm,dc=codephile,dc=com" -f base.ldif

=====================
#sample 1
#nambah ou
	>$ vi nambah-ou.ldif
	dn: ou=Direktorat Pendidikan Dasar,dc=codephile,dc=com
	objectClass: organizationalUnit
	ou: Direktorat Pendidikan Dasar
	>$ ldapadd -x -W -D "cn=ldapadm,dc=codephile,dc=com" -f nambah-ou.ldif

=====================
#Sample 6
	dn: dc=codephile,dc=com
	dc: codephile
	objectClass: top
	objectClass: domain

	dn: cn=ldapadm ,dc=codephile,dc=com
	objectClass: organizationalRole
	cn: ldapadm
	description: LDAP Manager

	dn: ou=People,dc=codephile,dc=com
	objectClass: organizationalUnit
	ou: People

	dn: ou=Group,dc=codephile,dc=com
	objectClass: organizationalUnit
	ou: Group

	dn: cn=service,dc=test,dc=com
	objectClass: organizationalRole
	cn: service
	description: Service Account

	dn: ou=service1,dc=codephile,dc=com
	objectClass: organizationalUnit
	ou: Account

	dn: ou=servicegroup,dc=test,dc=com
	objectClass: organizationalUnit
	ou: Group

	dn: ou=servicegroup1,dc=test,dc=com
	objectClass: organizationalUnit
	ou: Group

	dn: ou=Direktorat Umum,dc=codephile,dc=com
	objectClass: organizationalUnit
	ou: Direktorat Umum

	dn: ou=Direktorat Keuangan,dc=test,dc=com
	objectClass: organizationalUnit
	ou: Direktorat Keuangan

	dn: ou=Direktorat Pendidikan Dasar,dc=codephile,dc=com
	objectClass: organizationalUnit
	ou: Direktorat Pendidikan Dasar


	>$ ldapadd -x -W -D "cn=ldapadm,dc=codephile,dc=com" -f base.ldif

=====================
#Sample 2

	dn: dc=test,dc=com
	objectClass: top
	objectClass: dcObject
	objectclass: organization
	o: test com
	dc: test

	dn: cn=service,dc=test,dc=com
	objectClass: organizationalRole
	cn: service
	description: Service Account

	dn: ou=service1,dc=test,dc=com
	objectClass: organizationalUnit
	ou: Account

	dn: ou=servicegroup,dc=test,dc=com
	objectClass: organizationalUnit
	ou: Group

	dn: ou=servicegroup1,dc=test,dc=com
	objectClass: organizationalUnit
	ou: Group


