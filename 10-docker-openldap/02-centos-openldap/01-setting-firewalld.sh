#01-setting-firewalld.sh


	>$ firewall-cmd --zone=public --list-all
	>$ firewall-cmd --permanent --add-service=ldap
	>$ firewall-cmd --permanent --add-port=389/tcp
	>$ firewall-cmd --permanent --add-port=1389/tcp
	>$ firewall-cmd --permanent --add-port=636/tcp
	>$ firewall-cmd --permanent --add-port=1636/tcp
	>$ firewall-cmd --reload

