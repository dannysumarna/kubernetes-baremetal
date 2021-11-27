#09-opendldap-ssl.sh

#Now we will generate a certificate and a private key so we can communicate securely with the OpenLDAP server. We will use the command below to do that:

	>$ openssl req -new -x509 -nodes -out \
/etc/openldap/certs/myldap.field.linuxhostsupport.com.cert \
-keyout /etc/openldap/certs/myldap.field.linuxhostsupport.com.key \
-days 365

#Change the owner and group permissions so OpenLDAP can read the files:

	>$ chown -R ldap:ldap /etc/openldap/certs

#Now create certs.ldif to configure OpenLDAP to use the LDAPS protocol:

	>$ vi certs.ldif

dn: cn=config
changetype: modify
replace: olcTLSCertificateFile
olcTLSCertificateFile: /etc/openldap/certs/myldap.field.linuxhostsupport.com.cert

dn: cn=config
changetype: modify
replace: olcTLSCertificateKeyFile
olcTLSCertificateKeyFile: /etc/openldap/certs/myldap.field.linuxhostsupport.com.key

#We can then deploy the configuration again:

	>$ ldapmodify -Y EXTERNAL -H ldapi:/// -f certs.ldif

