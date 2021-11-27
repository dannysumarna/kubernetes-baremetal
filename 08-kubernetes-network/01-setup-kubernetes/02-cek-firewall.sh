#02-cek-firewall.sh

Kamau mau lancar matiin firewalld

01. Status Firewalld

Status:
	>$ systemctl status firewalld

Disable:
	>$ systemctl disable firewalld
	>$ systemctl stop firewalld
	>$ firewall-cmd --get-active-zone

02. Step Configure Firewall

The nodes, containers, and pods need to be able to communicate across the cluster to perform their functions. Firewalld is enabled in CentOS by default on the front-end. Add the following ports by entering the listed commands.
On the Master Node enter:
	>$ sudo firewall-cmd --permanent --add-port=6443/tcp
	>$ sudo firewall-cmd --permanent --add-port=2379-2380/tcp
	>$ sudo firewall-cmd --permanent --add-port=10250/tcp
	>$ sudo firewall-cmd --permanent --add-port=10251/tcp
	>$ sudo firewall-cmd --permanent --add-port=10252/tcp
	>$ sudo firewall-cmd --permanent --add-port=10255/tcp
	>$ sudo firewall-cmd --reload


Enter the following commands on each worker node:
	>$ sudo firewall-cmd --permanent --add-port=10251/tcp
	>$ sudo firewall-cmd --permanent --add-port=10255/tcp
	>$ sudo firewall-cmd --permanent --add-port=30000-32767/tcp
	>$ sudo firewall-cmd --reload

	>$ firewall-cmd --get-active-zone
	>$ firewall-cmd --list-all-zone
	>$ firewall-cmd --zone=public --list-all