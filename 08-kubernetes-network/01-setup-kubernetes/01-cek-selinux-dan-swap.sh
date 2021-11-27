#01-cek-selinux-dan-swap.sh


01. Disable selinux

	Status:
		>$ sestatus

	Disable:
		>$ vi /etc/selinux/config

		>$ Add net.ipv4.ip_nonlocal_bind=1 on /etc/sysctl.conf
		>$ sysctl -p

02. Status Swap
	
	Status
		>$ free -h
		>$ blkid
		>$ lsblk

		>$ swapoff /dev/mapper/nama_swap_yg_akan_dihapus

	lihat di blkid dan lsblk
	cek lagi 
		>$free -h

	edit file
		>$vi /etc/fstab

	remark kasih # nama swap yg di swapoff tadi


