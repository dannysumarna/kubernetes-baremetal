Tutorial
In the following example, we created a Kubernetes cluster using kubeadm. But we accidentially assigned the CIDR for pods to be: 192.168.0.0/16. We now want to change the CIDR to: 10.0.0.0/16 (within the cluster CIDR).

Let’s run calicoctl get ippool -o wide to see the IP pool, default-ipv4-ippool.

NAME                  CIDR             NAT    IPIPMODE   VXLANMODE   DISABLED
default-ipv4-ippool   192.168.0.0/16   true   Always     Never       false
When we run calicoctl get wep --all-namespaces, we see that a pod is created using the default range (192.168.52.130/32).

NAMESPACE     WORKLOAD                   NODE      NETWORKS            INTERFACE
kube-system   coredns-6f4fd4bdf-8q7zp   vagrant   192.168.52.130/32   cali800a63073ed
Let’s get started changing this pod to the new IP pool (10.0.0.0/16).

Step 1: Add a new IP pool
We add a new IPPool with the CIDR range, 10.0.0.0/16.

apiVersion: projectcalico.org/v3
kind: IPPool
metadata:
  name: new-pool
spec:
  cidr: 10.0.0.0/16
  ipipMode: Always
  natOutgoing: true
Let’s verify the new IP pool.

calicoctl get ippool -o wide

NAME                  CIDR             NAT    IPIPMODE   DISABLED
default-ipv4-ippool   192.168.0.0/16   true   Always     false
new-pool              10.0.0.0/16      true   Always     false
Step 2: Disable the old IP pool
List the existing IP pool definition.

calicoctl get ippool -o yaml > pool.yaml

apiVersion: projectcalico.org/v3
items:
- apiVersion: projectcalico.org/v3
  kind: IPPool
  metadata:
    name: default-ipv4-ippool
  spec:
    cidr: 192.0.0.0/16
    ipipMode: Always
    natOutgoing: true
- apiVersion: projectcalico.org/v3
  kind: IPPool
  metadata:
    name: new-pool
  spec:
    cidr: 10.0.0.0/16
    ipipMode: Always
    natOutgoing: true
Edit pool.yaml.

Disable this IP pool by setting: disabled: true

apiVersion: projectcalico.org/v3
kind: IPPool
metadata:
  name: default-ipv4-ippool
spec:
  cidr: 192.0.0.0/16
  ipipMode: Always
  natOutgoing: true
  disabled: true
Apply the changes.

Remember, disabling a pool only affects new IP allocations; networking for existing pods is not affected.

calicoctl apply -f pool.yaml

Verify the changes.

calicoctl get ippool -o wide

NAME                  CIDR             NAT    IPIPMODE   DISABLED
default-ipv4-ippool   192.168.0.0/16   true   Always     true
new-pool              10.0.0.0/16      true   Always     false
Step 3: Delete pods from the old IP pool
Next, we delete all of the existing pods from the old IP pool. (In our example, coredns is our only pod; for multiple pods you would trigger a deletion for all pods in the cluster.)

kubectl delete pod -n kube-system coredns-6f4fd4bdf-8q7zp

Step 4: Verify that new pods get an address from the new IP pool
Create a test namespace and nginx pod.

kubectl create ns ippool-test

Create an nginx pod.

kubectl -n ippool-test create deployment nginx --image nginx

Verify that the new pod gets an IP address from the new range.

kubectl -n ippool-test get pods -l app=nginx -o wide

Clean up the ippool-test namespace.

kubectl delete ns ippool-test

Step 5: Delete the old IP pool
Now that you’ve verified that pods are getting IPs from the new range, you can safely delete the old pool.

calicoctl delete pool default-ipv4-ippool