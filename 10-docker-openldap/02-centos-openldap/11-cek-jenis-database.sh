#11-cek-jenis-database.sh


	>$ ldapsearch -H ldapi:/// -Y EXTERNAL -b "cn=config" -LLL -Q "olcDatabase=*" dn