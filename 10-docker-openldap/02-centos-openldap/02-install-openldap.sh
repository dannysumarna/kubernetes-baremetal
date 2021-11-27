#02-install-openldap.sh

	>$ yum -y install openldap compat-openldap openldap-clients openldap-servers openldap-servers-sql openldap-devel

	>$ systemctl start slapd
	>$ systemctl enable slapd

	>$ netstat -antup | grep -i 389
	>$ systemctl status slapd
