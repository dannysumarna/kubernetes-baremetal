#buat-image.sh
docker build -t dn-haproxy:1.0.0 .


docker build -t haproxy-eoffice:1.0.0 .

#
#Jalanin nya:
docker-compose -d -f local-registry.yaml up

#atau 
#langsung jalan
docker-compose -f local-docker-compose.yaml up -d

#langsung down
docker-compose -f local-docker-compose.yaml down

#cek log kalau ada msg error:
docker container logs registry-eoffice

#intall dockercompose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose