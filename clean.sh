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

#kill & remove container and network
function clean {

	echo -e "${RED}${BOLD}Stopping cdbdb: ${NORMAL}"
	docker stop cdbdb
	echo -e "${RED}${BOLD}Stopping cdbapp: ${NORMAL}"
	docker stop cdbapp
	echo -e "${RED}${BOLD}Removing cdbdb: ${NORMAL}"
	docker rm cdbdb
	echo -e "${RED}${BOLD}Removing cdbapp: ${NORMAL}"
	docker rm cdbapp
	echo -e "${GREEN}${BOLD}Done !${NORMAL}"
	
	echo -e "${RED}${BOLD}Removing cdb-net... ${NORMAL}"
	docker network rm cdb-net

	echo -e "${GREEN}${BOLD}Done !${NORMAL}"

	echo -e "${BLUE}${BOLD}"
	echo "+------------------------------+"
	echo "|        clean finished !      |"
	echo "+------------------------------+"
	echo -e "${NORMAL}"
}

clean
