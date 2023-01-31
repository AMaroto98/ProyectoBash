#!/bin/bash
#18/01/2023
#Menu para el proyecto

clear
mainOption=0
nestedOption=0

# Colors
RED='\033[1;31m' # El 1 hace la letra Bold
WHITE='\033[1;37m' 


while [ $mainOption -ne 9 ]; do

	clear

	echo "--------- Menu ---------"
	echo "========================"
	echo "1) Web Browsers"
	echo "2) Multimedia"
	echo "3) Developer Tools"
	echo "4) File Sharing"
	echo "5) Messaging"
	echo "6) Compression"
	echo "7) Documents"
	echo "8) Other"
	echo "========================"

read -p "Selecciona una de las opciones: " mainOption


case $mainOption in

	1) 	while [ $nestedOption -ne 4 ]; do

			clear
		
			echo "----- Web Browsers -----"
			echo "========================"
			echo "1) Google Chrome"
			echo "2) Mozilla Firefox"
			echo "3) Chromium"
			echo "4) Brave"
			echo "========================"

			read -p "Selecciona una de las opciones: " nestedOption

			case $nestedOption in

				# GOOGLE CHROME

				1) 	echo "Ahora empezará la descarga de Google Chrome"
					echo "Se descargará wget en caso de no tenerlo"

					sudo apt-get install wget -y 
					
					sleep 2

					echo -e "Instalación de wget completada"

					sudo apt-get update

					sleep 2

					wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

					sudo apt install ./google-chrome-stable_current_amd64.deb

					echo -e "Google Chrome se ha instalado exitosamente"
					
					sleep 4 
					;;

				# MOZILLA FIREFOX

				2) 	echo "Ahora empezará la descarga de Mozilla Firefox"
					
					sudo snap install firefox -y

					sleep 2
					echo -e "Instalación completada"

					sleep 2 

					echo -e "Comprobando la versión de Mozilla Firefox"
					sleep 2
					firefox --version
					
					sleep 4 
					;;

				# Chromium

				3) 	echo "Ahora empezará la descarga de Chromium"
					
					sudo snap install Chromium -y 
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de Chromium"
					sleep 2
					Chromium --version
					
					sleep 4 
					;;

				# BRAVE

				4) 	echo "Ahora empezará la descarga de Brave"
					
					sudo snap install brave -y 
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de Brave"
					sleep 2
					brave --version
					
					sleep 4 
					;;

				# RESTO DE OPCIONES

				*) clear

				   echo " $nestedOption no es una opción valida"

				   sleep 2

				   echo "Volviendo al menú anterior"

				   sleep 2
				   ;;

		# Cierre Nested While (Web Browsers)
			esac
		done
		;;

	3)	while [ $nestedOption -ne 4 ]; do

			clear
		
			echo "----- Developer Tools -----"
			echo "========================"
			echo "1) VSCode"
			echo "2) Eclipse"
			echo "3) JDK"
			echo "4) Python"
			echo "5) MySQL"
			echo "========================"

			read -p "Selecciona una de las opciones: " nestedOption

			case $nestedOption in

				# VS Code

				1) 	echo "Ahora empezará la descarga de VS Code"
					
					sudo snap install --classic code 
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de VS Code"
					sleep 2
					code --version
					
					sleep 4 
					;;

				# ECLIPSE

				2) 	echo "Ahora empezará la descarga de Eclipse"
					
					sudo apt install default-jre
                    sudo snap install --classic eclipse 
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de Eclipse"
					sleep 2
					eclipse --version
					
					sleep 4 
					;;

                # JDK

				3) 	echo "Ahora empezará la descarga de JDK"
					
					sudo apt install default-jdk
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de JDK"
					sleep 2
					java --version
					
					sleep 4 
					;;

				# Python

				4) 	echo "Ahora empezará la descarga de Python"
					
					sudo apt install python3
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de Python"
					sleep 2
					python3 --version
					
					sleep 4 
					;;

				#MySQL

				5) 	echo "Ahora empezará la descarga de MySQL"
					
					sudo apt install mysql-server
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de MySQL"
					sleep 2
					mysql --version
					
					sleep 4 
					;;

				# RESTO DE OPCIONES

				*) clear
                    echo " $nestedOption no es una opción valida"

                    sleep 2

                    echo "Volviendo al menú anterior"

                    sleep 4
                    ;;

		# Cierre Nested While (Developer Tools)
			esac
		done
		;;

	4) while [ $nestedOption -ne 1 ]; do

			clear
		
			echo "----- File Sharing -----"
			echo "========================"
			echo "1) qBittorrent"
			echo "========================"

			read -p "Selecciona una de las opciones: " nestedOption

			case $nestedOption in

				# qBittorrent

				1) 	echo "Ahora empezará la descarga de qBittorrent"
					
					sudo apt update
					sudo apt install qbittorrent -y
					
					sleep 2

					echo -e "Se ha completado la instalación de qBittorrent"

					echo -e "Comprobando la versión de qBittorrent"

					qbittorrent --version
					
					sleep 2 
					;;

				# RESTO DE OPCIONES

				*) clear

				   echo " $nestedOption no es una opción valida"

				   sleep 2

				   echo "Volviendo al menú anterior"

				   sleep 2
				   ;;

		# Cierre Nested While (File Sharing)
			esac
		done
		;;

	6) while [ $nestedOption -ne 1 ]; do

			clear
		
			echo "----- Compression -----"
			echo "========================"
			echo "1) 7-Zip"
			echo "2) PeaZip"
			echo "========================"

			read -p "Selecciona una de las opciones: " nestedOption

			case $nestedOption in

				# 7-Zip

				1) 	echo "Ahora empezará la descarga de 7-Zip"
					
					sudo apt update
					sudo apt install p7zip-full -y
					
					sleep 2

					echo -e "Se ha completado la instalación de 7-Zip"

					echo -e "Comprobando la versión de 7-Zip"

					 --version
					
					sleep 2 
					;;

				# PeaZip

				2) 	echo "Ahora empezará la descarga de PeaZip"
					
					sudo apt update
					wget ttps://github.com/peazip/PeaZip/releases/download/8.6.0/peazip_8.6.0.LINUX.GTK2-1_amd64.deb
					sudo apt install ./peazip_8.6.0.LINUX.GTK2-1_amd64.deb
					sleep 2

					echo -e "Se ha completado la instalación de PeaZip"

					echo -e "Comprobando la versión de PeaZip"

					peazip --version
					
					sleep 2 
					;;

				# RESTO DE OPCIONES

				*) clear

				   echo " $nestedOption no es una opción valida"

				   sleep 2

				   echo "Volviendo al menú anterior"

				   sleep 2
				   ;;

		# Cierre Nested While (Compression)
			esac
		done
		;;

	8) while [ $nestedOption -ne 4 ]; do

			clear
		
			echo "----- Other -----"
			echo "========================"
			echo "1) Steam"
			echo "2) KeePass2"
			echo "3) BitWarden"
			echo "4) Añadir más"
			echo "========================"

			read -p "Selecciona una de las opciones: " nestedOption

			case $nestedOption in

				# Steam
				1) 	echo "Ahora empezará la descarga de VS Code"
					
					sudo snap install --classic code 
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de VS Code"
					sleep 2
					code --version
					
					sleep 4 
					;;

               	# KeePass2
				2) 	echo "Ahora empezará la descarga de KeePass2"
					
					sudo apt install keepass2
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de KeePass2"
					sleep 2
					keepass2 --version
					
					sleep 4 
					;;

                # BitWarden
				3) 	echo "Ahora empezará la descarga de BitWarden"
					
					sudo snap install bitwarden
					sleep 2
					echo -e "Instalación completada"
					
					sleep 4 
					;;

				# RESTO DE OPCIONES

				*) clear
                    echo " $nestedOption no es una opción valida"

                    sleep 2

                    echo "Volviendo al menú anterior"

                    sleep 4
                    ;;

		# Cierre Nested While (Dev Tools)
			esac
		done
		;;

# Cierre main While
esac 
done
;;