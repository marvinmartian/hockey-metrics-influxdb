# Hockey Metrics to InfluxDB

## Description
This project aims to add the events of an NHL game as events/metrics into InfluxDB. 

## Requirements
To run this project, you will need the following software: 
* Docker
* docker-compose

## Setup
To run the project, you will need to create a .env file. You can copy the .env-EXAMPLE file to get started. 
```shell
$ cp .env-EXAMPLE .env
```

Once copied, it's advised to modify the following ENV variables in the .env file: 
- DOCKER_INFLUXDB_INIT_USERNAME
- DOCKER_INFLUXDB_INIT_PASSWORD
- DOCKER_INFLUXDB_INIT_ADMIN_TOKEN

## Starting InfluxDB
Use the following commands to start InfluxDB

```shell
$ docker-compose up -d
```
If this is the first time, you may see the docker images being pulled from Docker Hub. 

## Accessing InfluxDB
Once running, you should be able to access InfluxDB by opening http://localhost:8086 in your local browser. The USERNAME and PASSWORD above will be the credentials required to login. 

More instructions around how to query/view the metrics will be added when this capability is added to the repository. 