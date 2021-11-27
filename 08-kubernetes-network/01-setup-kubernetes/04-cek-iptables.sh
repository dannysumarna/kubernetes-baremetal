#04-cek-iptables.sh
#for master and node
Step 04: Update Iptables Settings

Set the net.bridge.bridge-nf-call-iptables to '1' in your sysctl config file. This ensures that packets are properly processed by IP tables during filtering and port forwarding.

>$ cat <<EOF > /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-arptables = 1
EOF

>$ sysctl --system
