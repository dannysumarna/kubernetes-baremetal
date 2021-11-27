#12-get-calico-datastore.sh

export DATASTORE_TYPE=kubernetes
export KUBECONFIG=~/.kube/config
calicoctl get workloadendpoints