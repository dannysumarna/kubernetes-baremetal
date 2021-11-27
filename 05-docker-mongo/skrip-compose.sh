#skrip-compose.sh

#create
docker-compose -f mongo-composer.yaml up -d

#delete
docker-compose -f mongo-composer.yaml down

