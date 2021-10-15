#!/bin/zsh

# ---------------------------------------------------------------------------------
# Stop All Docker Containers
echo "Stopping containers"
docker stop telegraf >/dev/null 2>&1
docker stop influxdb >/dev/null 2>&1
docker stop nginx >/dev/null 2>&1



# ---------------------------------------------------------------------------------
# Remove All Docker Containers
echo "Removing Containers"
docker rm telegraf >/dev/null 2>&1
docker rm influxdb >/dev/null 2>&1
docker rm nginx >/dev/null 2>&1

# ---------------------------------------------------------------------------------
# Remove InfluxDB Volume
docker volume rm grafana_influxdb_influxdbv2

# ---------------------------------------------------------------------------------
# Remove Config & Data dirs
rm -rf data
rm -rf config