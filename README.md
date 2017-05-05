# docker-kerio
Kerio Connect Test

Installation

 docker pull adito/docker-kerio:latest

Run

 docker run --name=<name> -p 4040:4040 -p 25:25 -p 465:465 -p 587:587 -p 110:110 -p 995:995 -p 143:143 -p 993:993 -p 119:119 -p 563:563 -p 389:389 -p 636:636 -p 80:80 -p 443:443 -p 5222:5222 -p 5223:5223 -t adito/docker-kerio:latest