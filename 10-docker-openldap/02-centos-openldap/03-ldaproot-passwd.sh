#03-ldaproot-passwd.sh

1. Generate Password
	>$ slappasswd

	catat passwordnya dan simpan SSHA
	password: c0d3ph1l3
	SSHA: {SSHA}TgmvdkR7NU+SgDv8ptD21yyVYVx+6sTZ

2. Buat file
	>$ sudo vim ldaprootpasswd.ldif

	dn: olcDatabase={0}config,cn=config	
	changetype: modify
	add: olcRootPW
	olcRootPW: {SSHA}PASSWORD_CREATED

	>$ sudo ldapadd -Y EXTERNAL -H ldapi:/// -f ldaprootpasswd.ldif


