#!/bin/bash

echo "\e[34mLe sachiez vous, lancez le script avec l'argument ''all'' afin d'update les fichiers systems. Et avec l'argument ''clean'' pour nettoyer le fichier de logs.\e[0m"
if [ "$1" = "all" ];
then
	echo -e "\e[93mUpdating core + others packages started\e[0m"
	echo -e "\e[31m"
	apt-get update --yes >> /var/log/update_script.log
       	apt-get dist-upgrade --yes >> /var/log/update_script.log
	echo -e "\e[32mFinish :3\e[0m"
	echo -e "\e[35mAction added to logfile at /var/log/update_script.log\e[0m"
elif [ "$1" = "clean" ];
then
	echo -e "\e[93mDeleting logs files\e[0m"
	echo -e "\e[31m"
	rm /var/log/update_script.log > /dev/null
	echo -e "\e[32mLogs files cleaned\e[0m"
else
	echo -e "\e[93mUpdating others packages started\e[0m"
	echo -e "\e[31m"
	apt-get update --yes >> /var/log/update_script.log
       	apt-get upgrade --yes >> /var/log/update_script.log
	echo -e "\e[32mFinish :3\e[0m"
	echo -e "\e[35mAction added to logfile at /var/log/update_script.log\e[0m"
fi
