FROM dapor/docker-kerio-connect:latest
MAINTAINER a.mayr@adito.de

RUN apt-get update && \
    apt-get install -y curl

COPY ./src/config/entrypoint.sh /
RUN chmod +x /entrypoint.sh 

COPY ./src/backup/BACKUP.zip /backup/

ENTRYPOINT /entrypoint.sh 
