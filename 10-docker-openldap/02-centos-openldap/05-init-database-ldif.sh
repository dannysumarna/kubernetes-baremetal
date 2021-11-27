#05-init-database-ldif.sh

#Masuk kedalam folder openldap:
	>$ cd /etc/openldap

#Buat file db.ldif
    >$ vi db.ldif
    dn: olcDatabase={2}hdb,cn=config
    changetype: modify
    replace: olcSuffix
    olcSuffix: dc=codephile,dc=com
    
    dn: olcDatabase={2}hdb,cn=config
    changetype: modify
    replace: olcRootDN
    olcRootDN: cn=ldapadm,dc=codephile,dc=com
    
    dn: olcDatabase={2}hdb,cn=config
    changetype: modify
    replace: olcRootPW
    olcRootPW: {SSHA}TgmvdkR7NU+SgDv8ptD21yyVYVx+6sTZ

#Jalankan perintah berikut:
	>$ sudo ldapadd -Y EXTERNAL -H ldapi:/// -f db.ldif


#Sample
#contoh file db.ldif
    dn: olcDatabase={2}hdb,cn=config
    changetype: modify
    replace: olcSuffix
    olcSuffix: dc=itzgeek,dc=local

    dn: olcDatabase={2}hdb,cn=config
    changetype: modify
    replace: olcRootDN
    olcRootDN: cn=ldapadm,dc=itzgeek,dc=local

    dn: olcDatabase={2}hdb,cn=config
    changetype: modify
    replace: olcRootPW
    olcRootPW: {SSHA}d/thexcQUuSfe3rx3gRaEhHpNJ52N8D3
	
 #contoh file db.ldif
    dn: olcDatabase={2}hdb,cn=config
    changetype: modify
    replace: olcSuffix
    olcSuffix: dc=field,dc=linuxhostsupport,dc=com
 
    dn: olcDatabase={2}hdb,cn=config
    changetype: modify
    replace: olcRootDN
    olcRootDN: cn=ldapadm,dc=field,dc=linuxhostsupport,dc=com
 
    dn: olcDatabase={2}hdb,cn=config
    changetype: modify
    replace: olcRootPW
    olcRootPW: hashed_output_from_the_slappasswd_command   
