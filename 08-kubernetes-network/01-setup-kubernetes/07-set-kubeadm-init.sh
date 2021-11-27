#07-set-kubeadm-init.sh
Step 07: Set Kubeadm Init


Pre flight Optional:
	>$ kubeadm config images pull

then create cluster:

	>$ kubeadm init --pod-network-cidr=10.0.0.0/16

default calico (ganti kalo bukan calico):
	>$ kubeadm init --pod-network-cidr=192.168.0.0/16


Hasil init:
[addons] Applied essential addon: CoreDNS
[addons] Applied essential addon: kube-proxy

Your Kubernetes control-plane has initialized successfully!

To start using your cluster, you need to run the following as a regular user:

  	>$ mkdir -p $HOME/.kube
  	>$ sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  	>$ sudo chown $(id -u):$(id -g) $HOME/.kube/config

Alternatively, if you are the root user, you can run:

  	>$ export KUBECONFIG=/etc/kubernetes/admin.conf

You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  https://kubernetes.io/docs/concepts/cluster-administration/addons/

Then you can join any number of worker nodes by running the following on each as root:

kubeadm join 192.168.10.121:6443 --token gllm51.q19zfq5xhgewr9dm \
	--discovery-token-ca-cert-hash sha256:3c47c64cb363185b0f26d951e8f3e8a5d3b1c17a8b2e7bc85f55db78688e8d8c 

New 4 Nov
	>$kubeadm join 192.168.10.121:6443 --token izu949.7og749ba1hil0n2r \
	--discovery-token-ca-cert-hash sha256:c4141520f8d0efc3d0fb7d2bc3e63b031e94d7f84fb69b780e1059ac127e6940


