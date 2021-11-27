#07-ladp-logging.sh

	>$ vi /etc/rsyslog.conf
	local4.* /var/log/ldap.log


	>$ systemctl restart rsyslog

	