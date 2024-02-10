#!/usr/bin/env bash

# Colors
string_red='\033[0;31m'
string_green='\033[0;32m'
string_yellow='\033[1;33m'
Bstring_blue='\e[34m'
string_reset='\033[0m'  # No Color

echo -e "$string_green#############################################################
#          Inserting the promethes configuration files      #
#############################################################$string_reset"

if [[ ! -d  "/etc/prometheus" ]]; then
     mkdir /etc/prometheus
     cp prometheus/prometheus.yaml /etc/prometheus/prometheus.yaml
     echo "Done!"
     echo
else
     cp prometheus/prometheus.yaml /etc/prometheus/prometheus.yaml
     echo "Done!"
     echo
fi

echo -e "$string_green#############################################################
#          Inserting the traefik configuration files        #
#############################################################$string_reset"

if [[ ! -d  "/etc/traefik" ]]; then
    mkdir /etc/traefik
    cp traefik/dinamic.yaml traefik/traefik.yaml /etc/traefik 
    echo "Done!"
    echo
else
     cp traefik/dinamic.yaml traefik/traefik.yaml /etc/traefik 
     echo "Done!"
     echo
fi

echo -e "$string_green#############################################################
#                   Runing Docker Compose                   #
#############################################################$string_reset"
docker compose up -d
echo "Done!"
echo