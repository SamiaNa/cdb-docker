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




function build {
	echo -e "${BLUE}${BOLD}"
	echo "+------------------------------+"
	echo "|   Computer-database build    |"
	echo "+------------------------------+"
	echo -e "${NORMAL}"

	#Building docker mysql image
	echo -e "\n${BLUE}Building mysql image : ${NORMAL}"
	docker build -t cdbdb ./db 
	
	
	#Building docker webapp image
	echo -e "\n${BLUE}Building capico env image : ${NORMAL}"
	docker build -t cdbapp ./webapp  

	echo -e "${BLUE}${BOLD}"
	echo "+------------------------------+"
	echo "|        Build finished !      |"
	echo "+------------------------------+"
	echo -e "${NORMAL}"
}



build 


