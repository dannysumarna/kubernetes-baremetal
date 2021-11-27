#04-install-kubeadm
Step 04: Install kubeadm 

dan kawan kawannya.

Update:
	>$ yum -y update

kubeadm:	
	>$ yum install -y kubeadm

Akan terinstall: kubeadm, kubectl, kube

	>$ systemctl enable kubelet
	>$ systemctl start kubelet

docker:
	>$ yum install -y docker

	>$ systemctl enable docker
	>$ systemctl start docker
