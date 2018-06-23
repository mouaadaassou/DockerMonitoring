# DockerMonitoring
you wanna try monitoring Docker containers using Prometheus &amp; Grafana. this repo contains all the necessary 
config files to collect data from Docker containers. Here everything is a container ;) 

This guide go through the process of collecting data from docker machines using Prometheus and visualizing them using Grafana

### Pre-requisite
1. Docker Engine installed
2. Docker machine utility installed too
3. some pre-knowledge of Docker (but it is not mandatory)

After installing all the necessary tools, and clonning the projectin your locale environment. first things first you have to run the docker_machine_creation.sh script as follow : 

```
./docker_machine_creation.sh 3
```

this command will create 3 boot2docker machines using the docker-machine utility, and they are named as follow : 
1. Node1 --> Manager Node
2. Node2 --> Worker Node
3. Node3 --> Worker Node

Now you can ssh into each of the instances using the command : 
```
docker-machine ssh Node-Name
```

After clonning the prject inside one of the node, you can just run the follwing command : 
```
docker stack deploy -c docker-compose.yml DockerMonitoring
```
***
you can just visit all the containers :
***
http://node-ip:9090 ---> for prometheus
***
http://node-ip:8080 ---> for cAdvisor
***
http://node-ip:9100 ---> for node-exporter
***
http://node-ip:9090 ---> for Grafana
***


then we have to configure the grafana datasource : 

Inline-style: 
![alt text](https://github.com/mouaadaassou/DockerMonitoring/blob/master/Screenshot%20from%202018-06-23%2018-21-05.png "GrafanaDataSource")
