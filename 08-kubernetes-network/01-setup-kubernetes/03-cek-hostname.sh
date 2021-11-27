#03-Cek-HostName.sh

Set Hostname on Nodes

To give a unique hostname to each of your nodes, use this command:
	>$ sudo hostnamectl set-hostname master-node
or
	>$ sudo hostnamectl set-hostname worker-node1

In this example, the master node is now named master-node, while a worker node is named worker-node1.
Make a host entry or DNS record to resolve the hostname for all nodes:
	>$ sudo vi /etc/hosts

With the entry:

#-------
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6

#docker
192.168.10.105   docker.codephile.com

#kubemaster
192.168.10.121   kubemaster01.codephile.com
192.168.10.122   kubemaster02.codephile.com


#kubenode
192.168.10.131   kubenode01.codephile.com
192.168.10.132   kubenode02.codephile.com
192.168.10.133   kubenode03.codephile.com
192.168.10.134   kubenode04.codephile.com
192.168.10.135   kubenode05.codephile.com
#-------