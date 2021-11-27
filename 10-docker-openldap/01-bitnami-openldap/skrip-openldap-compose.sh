#skrip-openldap-compose.yaml
#skrip-compose.sh

#create
docker-compose -f openldap-composer.yaml up -d

#delete
docker-compose -f openldap-composer.yaml down

