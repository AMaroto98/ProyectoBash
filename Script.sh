#!/bin/bash
#18/01/2023
#Menu para el proyecto

clear
mainOption=0
nestedOption=0

# Colors
RED='\033[1;31m' # El 1 hace la letra Bold
WHITE='\033[1;37m' 


while [ $mainOption -ne 5 ]; do

	clear

	echo "----- Menu -----"
	echo "========================"
	echo "1) Web Browsers"
	echo "2) Multimedia"
	echo "3) Developer Tools"
	echo "4) File Sharing"
	echo "5) Messaging"
	echo "6) Media"
	echo "7) Compression"
	echo "8) Documents"
	echo "9) Other"
	echo "========================"

read -p "Selecciona una de las opciones: " mainOption


case $mainOption in


	1) 	while [ $nestedOption -ne 4 ]; do

			clear
		
			echo "----- Web Browsers -----"
			echo "========================"
			echo "1) Google Chrome"
			echo "2) Mozilla Firefox"
			echo "3) DuckDuckGo"
			echo "4) Brave"
			echo "========================"

			read -p "Selecciona una de las opciones: " nestedOption

			case $nestedOption in

				# GOOGLE CHROME

				1) 	echo "Ahora empezará la descarga de Google Chrome"
					
					sudo apt install git -y 
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de Google Chrome"
					sleep 2
					git --version
					
					sleep 4 
					;;

				# MOZILLA FIREFOX

				2) 	echo "Ahora empezará la descarga de Mozilla Firefox"
					
					sudo apt install git -y 
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de Mozilla Firefox"
					sleep 2
					git --version
					
					sleep 4 
					;;

				# DUCKDUCKGO

				3) 	echo "Ahora empezará la descarga de DuckDuckGo"
					
					sudo apt install git -y 
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de DuckDuckGo"
					sleep 2
					git --version
					
					sleep 4 
					;;

				# BRAVE

				4) 	echo "Ahora empezará la descarga de Brave"
					
					sudo apt install git -y 
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de Brave"
					sleep 2
					git --version
					
					sleep 4 
					;;

				# RESTO DE OPCIONES

				*) clear

				   echo " $nestedOption no es una opción valida"

				   sleep 2

				   echo "Volviendo al menú anterior"

				   sleep 4
				   ;;

					

		# Cierre Nested While (Web Browsers)
		esac
		done

# Cierre main While
esac 
done
