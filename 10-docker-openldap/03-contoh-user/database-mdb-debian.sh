#database-mdb-debian.sh
>$ vi database-mdb-debian.ldif 
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


>$ sudo ldapadd -Y EXTERNAL -H ldapi:/// -f database-mdb-debian.ldif