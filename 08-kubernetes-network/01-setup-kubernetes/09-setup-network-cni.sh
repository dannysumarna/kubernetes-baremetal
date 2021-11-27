#09-setup-network-cni.sh
Step 09: Container Network Interface

Dapetin podCIDR
	>$ kubectl get nodes -o jsonpath='{.items[*].spec.podCIDR}'
	>$ kubectl cluster-info dump | grep -m 1 cluster-cidr

New Calico Network:
Install Calico with Kubernetes API datastore, 50 nodes or less
	>$ curl https://docs.projectcalico.org/manifests/calico.yaml -O

Install Calico with Kubernetes API datastore, more than 50 nodes
	>$ curl https://docs.projectcalico.org/manifests/calico-typha.yaml -o calico.yaml

Old Calico Network:
	>$ kubectl apply -f https://docs.projectcalico.org/v2.6/getting-started/kubernetes/installation/hosted/kubeadm/1.6/calico.yaml
	>$ kubectl delete -f https://docs.projectcalico.org/v2.6/getting-started/kubernetes/installation/hosted/kubeadm/1.6/calico.yaml

atau
Weave:
	>$kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"

# export kubever=$(kubectl version | base64 | tr -d '\n')
# kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$kubever"

atau
Flannel:
	>$ kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
	
atau

