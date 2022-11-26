#!/bin/bash

PURPLE='0;35'
NC='\033[0m' 
VERSAO=11
echo "
  ______      _ _           _______        _     
 |  ____|    (_) |         |__   __|      | |    
 | |__  __  ___| |_ ___       | | ___  ___| |__  
 |  __| \ \/ / | __/ _ \      | |/ _ \/ __| '_ \ 
 | |____ >  <| | || (_) |     | |  __/ (__| | | |
 |______/_/\_\_|\__\___/      |_|\___|\___|_| |_|           

"
echo "Bem vindo ao Assistente de instalação da ExitoTech"

echo "Irei instalar tudo que é necessario para sua maquina estar perfeita para o Software de coleta de dados da ExitoTech"	
sleep 2
echo  "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Verificando aqui se você possui o java instalado...;"
java --version
if [ $? -eq 0 ];
	then
		echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) Opa você já tem o java instalado!!"
		sleep 2
	else
		echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Opa! Não identifiquei nenhum java instalado, mas sem problemas, irei resolver isso agora!"
		sleep 2
		echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Confirme para mim se realmente deseja instalar o java (Y/n)?"		
		read inst
		if [ \"$inst\" == \"Y\" ];
		then
			echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Ok! Você escolheu instalar o Java ;D"
			sleep 2
			echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Instalando o Java!"
			sleep 2
			sudo add-apt-repository ppa:webupd8team/java -y
			sudo apt update -y
			sudo apt install default-jre && sudo apt install openjdk-11-jre-headless -y
			clear
			echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Instalando java! Quase lá."
			sleep 2
			echo "Java instalado!"
			clear
			
		else 	
			echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Você optou por não instalar o Java por enquanto, até a próxima então!"
			sleep 1
		fi
			
fi


		  sleep 2	

		echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) Continuando com a instalação, agora devemos instalar o Docker! em poucos minutos tudo estara correto!"
docker --version
if [ $? -eq 0 ];
	then
		echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) Opa você já tem o Docker instalado!!"
		sleep 2
	else
		echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Opa! Não identifiquei nenhuma versão do Docker instalado, mas sem problemas, irei resolver isso agora!"
		sleep 2
		echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Confirme para mim se realmente deseja instalar o Docker (Y/n)?"		
		read inst
		if [ \"$inst\" == \"Y\" ];
		then
			echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Ok! Você escolheu instalar o Docker ;D"
			sleep 2
			echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Instalando o Docker!"
			sleep 2
			sudo apt install docker.io
			sudo systemctl start docker
			sudo systemctl enable docker
			sleep 2
			clear
			sleep 2
			echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Docker instalado!"
			clear
			echo "Neste momento tambem iremos instalar o MySql, os dados que são capturados irão ser armazenados nele ;D"
			sudo docker pull mysql:5.7
			clear
			sleep 2
			echo "Baixando nossa aplicação..."
			git clone https://github.com/ExitoTech/Executavel-ExitoTech-GUI.git
			cd Executavel-ExitoTech-GUI
			chmod 777 exitoTech-jar-1.0-SNAPSHOT-jar-with-dependencies.jar
			java -jar exitoTech-jar-1.0-SNAPSHOT-jar-with-dependencies.jar
			sleep 2
			
			clear
			echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) Tudo correto, Agora você pode desfrutar da nossa aplicação!"
			sleep 2
			
			echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) ExitoTech, exito em suas aplicações é com a gente!!"
echo "
  ______      _ _           _______        _     
 |  ____|    (_) |         |__   __|      | |    
 | |__  __  ___| |_ ___       | | ___  ___| |__  
 |  __| \ \/ / | __/ _ \      | |/ _ \/ __| '_ \ 
 | |____ >  <| | || (_) |     | |  __/ (__| | | |
 |______/_/\_\_|\__\___/      |_|\___|\___|_| |_|           

"	
		else 	
			echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Você optou por não instalar o Docker por enquanto, até a próxima então!"
			sleep 1
		fi
			
fi



