#!/bin/bash

#Colors
RED="\033[0;31m"
LRED="\033[1;31m"
BLUE="\033[0;34m"
LBLUE="\033[1;36m"
YELLOW="\033[0;33m"
LYELLOW="\033[1;33m"
GREEN="\033[0;32m"
LGREEN="\033[1;32m"
MAGENTA="\033[1;35m"
NORMAL="\033[0m"
BOLD="\033[1m"

function deploy {
	network_present=`docker network ls -q -f name=cdb-net`
	if [ -z "$network_present" ]; then
		#Creating capico-network
		echo -e "${BLUE}${BOLD}Creating cdb-net...\n"
		docker network create cdb-net
	else
		echo -e "${GREEN}${BOLD}cdb-net is already present, Skipping...${NORMAL}"
	fi

	echo "${BLUE}${BOLD}Building cdbdb...\n"
	docker run -d --name cdbdb --network cdb-net cdbdb
	echo "${BLUE}${BOLD}Building cdbapp...\n"
	docker run --name cdbapp --network cdb-net -p 8080:8080 cdbapp
}


deploy
