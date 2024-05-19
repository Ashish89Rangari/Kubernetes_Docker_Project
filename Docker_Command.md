# DOCKER COMMANDS #

1) To check the docker version 
```
docker --version
docker -v
```
2) To build docker image from docker file (app1 docker image name)
```
docker build -t app1 .
```
3) To list the docker images
```
docker image ls
docker images
```
4) To create a docker container out of docker image

```
docker run -d -p 8080:80 app1
```
<br/>
	- -d – detachable mode so to execute the command it will get into next terminal <br/>
	- -p – port mapping <br/>
	- -8080 – host machine port,we already have given in docker file  <br/>
	- -80 -nginx base image port  <br/>
	- app1 – image name or can give image id <br/>

5) To list the docker container
```
docker ps -a
```
6) To to check  the application by hitting port 8080 or we can check on web browser
```
curl 0.0.0.0:8080
```
7) To push th docker image in docker hub we need to login docker hub
```
docker login
```
8) To tag the docker image before pushing in docker hub (here you can give webapp name also)
```
docker tag app1:latest ashishr99/app99:latest
```
<br/>

	- app1- docker image name <br/>
	- latest -tagb name <br/>
	- ashishr99 - Docker hub username  <br/>
	- app99 - Docker hub repository name  <br/>
	
<br/>

7) To push th docker image in docker hub 
```
docker push ashishr99/app99
```