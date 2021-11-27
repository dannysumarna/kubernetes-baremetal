#08-catat-kubeadm-init.sh

#Sample
New 4 Nov
	>$ kubeadm join 192.168.10.121:6443 --token izu949.7og749ba1hil0n2r \
	--discovery-token-ca-cert-hash sha256:c4141520f8d0efc3d0fb7d2bc3e63b031e94d7f84fb69b780e1059ac127e6940

22 Nov 10.00
	>$ kubeadm join 192.168.10.121:6443 --token 2oaald.92zozdhxh30jwn0r \
	--discovery-token-ca-cert-hash sha256:6bfc82f63a5069bb49833ebf58ab8823c760408a0a4b08108c388de399974c71

22 Nov 12.23
	>$ kubeadm join 192.168.10.121:6443 --token 70n282.9z2lgof2ujrs9qgy \
	--discovery-token-ca-cert-hash sha256:acc21055c4dcfc5bbaeef63c0d884a465f0b52fb89ffcb48c167516d23496c60

	>$ kubectl -n kube-system get cm kubeadm-config -o yaml

22 nov 23.31
	>$ kubeadm join 192.168.10.121:6443 --token a7l0s7.rkjqb9fpuxu1ulza \
	--discovery-token-ca-cert-hash sha256:1f1437f48cf452d3a14cf1116eb8d6b9f44e12a78d38b6db910aa068b7b9a40e	


	kubeadm join 192.168.10.121:6443 --token 44626u.s9hxbb3iinfqh911 \
	--discovery-token-ca-cert-hash sha256:87ad9e64515e69492ff1bcada86a9c79f199eebbb81571fb7d92e44e53815d73


	kubeadm join 192.168.10.121:6443 --token m3ebxg.sgkxk59v9h4s0xl9 \
	--discovery-token-ca-cert-hash sha256:f8521eafbb99c739e70667b266d223889c4c98f4eb5f75b59cb478920eb7d8d5

23 Nov 08.34
	kubeadm join 192.168.10.121:6443 --token mcq309.64c8w23v7uevyv9e \
	--discovery-token-ca-cert-hash sha256:bf5d97db94524c93228dc3300a0fc732a3ea16532dacea7bf32dd879ea1608b9	