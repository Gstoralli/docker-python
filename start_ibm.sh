#!/bin/bash

source docker/secrets.sh

# kill all running containers
echo "Parando containers que estavam rodando"
STR=$(docker ps -q)
if [ -z "$STR" ];
then
    echo "Nenhum container estava rodando"
else
    echo "Parando containers"
    docker stop $(docker ps -q)
fi

# inicia bash do container
echo "Iniciando containers ibm"

STR=$(docker ps -f name=ibm -q)
if [ -z "$STR" ];
then
    echo "Iniciando ibm"
    docker run --name ibm --rm -it \
        -p 5000:5000 \
        -v "$(pwd)"/python:/codigo \
        -e WATSON_APIKEY=$VAR_WATSON_APIKEY \
        -e WATSON_URL_KEY=$VAR_WATSON_URL_KEY \
        -e IBM_URL_DOMAIN=$VAR_IBM_URL_DOMAIN \
        -e CLOUDANT_URL_KEY=$VAR_CLOUDANT_URL_KEY \
        -e CLOUDANT_APIKEY=$VAR_CLOUDANT_APIKEY \
        ibm-fs:2 python3 manage.py runserver '0.0.0.0:5000'
else
    echo "ibm já estava rodando"
fi

echo "Iniciando bash"
#docker exec -it ibm bash