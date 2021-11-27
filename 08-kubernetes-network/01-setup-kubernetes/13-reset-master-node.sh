#12-reset-master-node.sh

# If you followed the instructions you should be currently connected as user **ubuntu**
# When prompted for password enter "default" without the quotes
>$ su -

# This resets the master to default settings
# You may need to run this command on the "nodes" if a fully functioning cluster is configured
>$ kubeadm reset --force

# This removes the admin references to the broken cluster
>$ rm -rf /home/ubuntu/.kube /root/.kube

>$ kubectl -n kube-system get cm kubeadm-config -o yaml
