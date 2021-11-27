#09-cek-firewall-node.sh

Enter the following commands on each worker node:
	>$ sudo firewall-cmd --permanent --add-port=10251/tcp
	>$ sudo firewall-cmd --permanent --add-port=10255/tcp
	>$ sudo firewall-cmd --permanent --add-port=30000-32767/tcp
	>$ sudo firewall-cmd --reload

	>$ firewall-cmd --get-active-zone
	>$ firewall-cmd --list-all-zone
	>$ firewall-cmd --zone=public --list-all


	>$ echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables