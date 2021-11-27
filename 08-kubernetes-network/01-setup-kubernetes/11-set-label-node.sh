#11-set-label-node.sh

command:
	>$ kubectl label nodes <your-node-name> disktype=ssd

	>$ kubectl label nodes kubenode03.codephile.com eoffice=node03