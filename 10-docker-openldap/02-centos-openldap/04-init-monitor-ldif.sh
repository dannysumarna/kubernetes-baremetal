#04-init-monitor-ldif.sh

	>$ vi monitor.ldif

	dn: olcDatabase={1}monitor,cn=config
	changetype: modify
	replace: olcAccess
	olcAccess: {0}to * by dn.base="gidNumber=0+uidNumber=0,cn=peercred,cn=external, cn=auth" read by dn.base="cn=ldapadm,dc=codephile,dc=com" read by * none

	>$ sudo ldapmodify -Y EXTERNAL  -H ldapi:/// -f monitor.ldif
