#skrip-compose-registry.sh

#create
	>$ docker-compose -f local-registry.yaml up -d

#delete

	>$ docker-compose -f local-registry.yaml down

#Dockerfile

	>$ docker build -t registry-webui:v2 .