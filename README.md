# kubernetes-baremetal
Step by Step Setup Kubernetes Bare Metal - Calico - Nginx Inc Ingress Controller - Haproxy Load Balancer 

Install Kubernetes di Bare Metal
================================

Server yang disiapkan VMWare/VBox: 

1. Docker
   Linux Centos 7.9 Core
   RAM 4Gb
   Processor 2x
   Storage 100Gb
   IP Bridge: 192.168.10.105
   
2. Kube Master
   Linux Centos 7.9 Core
   RAM 4Gb
   Processor 2x
   Storage 100Gb
   IP Bridge: 192.168.10.121
   
3. Kube Node
   Linux Centos 7.9 Core
   RAM 2Gb
   Processor 2x
   Storage 100Gb
   IP Bridge: 192.168.10.133

===
Tiap virtual tambahkan di /etc/hosts
#docker
192.168.10.105   docker.example.com

#sample ingress address
192.168.10.105   app.example.com

#kubemaster
192.168.10.121   kubemaster01.example.com
192.168.10.122   kubemaster01.example.com  #jika ada
#dst

#kubenode
192.168.10.131   kubenode01.example.com  #jika ada
192.168.10.132   kubenode02.example.com #jika ada
192.168.10.133   kubenode03.example.com
#dst

===   
Setup Server Docker (192.168.10.105)
(Step by step detail bisa dilihat pada sub folder)
1. Setting port firewalld (cari di subfolder cara settingnya)
2. Install docker
3. Install docker-compose
4. Buat container untuk Docker private registry
5. Buat container untuk Haproxy load balancer (arahkan ke Ip Kube Node: 192.168.10.131)
6. Buat container untuk Mongo Db
7. Buat container untuk Oxisia OpenLdap

Setup Server Kube Master (192.168.10.121)
(Step by step detail bisa dilihat pada sub folder)
1. Disable firewalld supaya lancar (idupin lagi kalau up semua)
2. Disable selinux
3. Disable swap
4. Install Kubeadm 
5. Install Docker
6. Setup kubernetes: kubadm init --podcidr=192.169.0.0
7. Setup Calico CNI
8. Install calicoctl (kubectl-calico)
9. Gunakan calicoctl untuk ubah podcidr=192.169.0.0 menjadi podcidr=10.0.0.0
Step 10 pilih salah satu:
10. Setup kubernetes ingress controller dari Nginx Inc (lebih simple tidak perlu service dgn nodeport)
atau
10. Setup kubernetes ingress controller dari Nginx Community (menggunakan service dgn nodeport 30000 keatas)
atau
10. Setup kubernetes ingress controller dari haproxy (juga menggunakan service dgn nodeport 30000 keatas)
11. Setup ingress sample dari Nginx Inc

Setup Server Kube Node03 (192.168.10.133)
(Step by step detail bisa dilihat pada sub folder)
1. Disable firewalld supaya lancar (idupin lagi kalau up semua)
2. Disable selinux
3. Disable swap
4. Install Kubeadm 
5. Install Docker
6. Setup kubeadm join

