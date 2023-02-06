#!/bin/bash
#18/01/2023
#Menu para el proyecto

# Clear para limpiar terminal
clear

# Variables para los bucles
mainOption=0
nestedOption=0

# Validación números
validation=^[0-9]+$

echo -e "\033[1;36mBienvenido a Option Master.\033[0m"
echo -e "\033[1;36mTu instalador de programas de confianza.\033[0m"

sleep 4

while true; do

	clear

	echo -e "\033[1;36m--------- Menu ---------\033[0m"
	echo -e "\033[1;36m========================\033[0m"
	echo -e "\033[1;36m1) Web Browsers\033[0m"
	echo -e "\033[1;36m2) Multimedia\033[0m"
	echo -e "\033[1;36m3) Developer Tools\033[0m"
	echo -e "\033[1;36m4) File Sharing\033[0m"
	echo -e "\033[1;36m5) Messaging\033[0m"
	echo -e "\033[1;36m6) Compression\033[0m"
	echo -e "\033[1;36m7) Documents\033[0m"
	echo -e "\033[1;36m8) Other\033[0m"
	echo -e "\033[1;36m9) About Option Master\033[0m"
	echo -e "\033[1;36m10) Exit\033[0m"
	echo -e "\033[1;36m========================\033[0m"

	read -p $'\033[1;32mSelecciona una opción:\033[0m ' mainOption

	if ! [[ $mainOption =~ $validation ]]; then
		echo -e "\033[1;31mPor favor, introduce un número.\033[0m"
		sleep 2
		continue
	fi

case $mainOption in

	1) 	while true; do

			clear
		
			echo -e "\033[1;36m----- Web Browsers -----\033[0m"
			echo -e "\033[1;36m========================\033[0m"
			echo -e "\033[1;36m1) Google Chrome\033[0m"
			echo -e "\033[1;36m2) Mozilla Firefox\033[0m"
			echo -e "\033[1;36m3) Chromium\033[0m"
			echo -e "\033[1;36m4) Brave\033[0m"
			echo -e "\033[1;36m5) Exit\033[0m"
			echo -e "\033[1;36m========================\033[0m"

			read -p $'\033[1;32mSelecciona una opción:\033[0m ' nestedOption

			if ! [[ $nestedOption =~ $validation ]]; then
				echo -e "\033[1;31mPor favor, introduce un número.\033[0m"
				sleep 2
				continue
			fi

			case $nestedOption in

				# Chrome
				1) 	echo -e "\033[1;32mAhora empezará la descarga de Google Chrome\033[0m"
					echo -e "\033[1;32mSe descargará wget en caso de no tenerlo\033[0m"

					sudo apt-get install wget -y 
					
					sleep 2

					echo -e "\033[1;32mInstalación de wget completada\033[0m"

					sudo apt-get update

					sleep 2

					wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

					sudo apt install ./google-chrome-stable_current_amd64.deb

					echo -e "\033[1;32mGoogle Chrome se ha instalado exitosamente\033[0m"
					
					sleep 4 
					;;

				# Firefox
				2) 	echo "Ahora empezará la descarga de Mozilla Firefox"
					
					sudo snap install firefox

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
					
					sudo snap install chromium
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de Chromium"
					sleep 2
					chromium --version
					
					sleep 4 
					;;

				# Brave
				4) 	echo "Ahora empezará la descarga de Brave"
					
					sudo snap install brave
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de Brave"
					sleep 2
					brave --version
					
					sleep 4 
					;;

				# Exit
				5) echo -e "\033[1;32mVolviendo al menú principal\033[0m"
					
					sleep 2
					break
					;;

				# Resto de opciones
				*) echo -e "\033[1;31mPor favor, introduce un número valido.\033[0m"

				   sleep 2
				   ;;

		# Cierre Nested While (Web Browsers)
			esac
		done
		;;

	2) 	while true; do

		    clear

		    echo -e "\033[1;36m------ Multimedia -----\033[0m"
		    echo -e "\033[1;36m========================\033[0m"
		    echo -e "\033[1;36m1) Spotify\033[0m"
		    echo -e "\033[1;36m2) VLC\033[0m"
		    echo -e "\033[1;36m3) Audacity\033[0m"
		    echo -e "\033[1;36m4) KdenLive\033[0m"
		    echo -e "\033[1;36m5) Exit\033[0m"
		    echo -e "\033[1;36m========================\033[0m"

			read -p $'\033[1;32mSelecciona una opción:\033[0m ' nestedOption

			if ! [[ $nestedOption =~ $validation ]]; then
				echo -e "\033[1;31mPor favor, introduce un número.\033[0m"
				sleep 2
				continue
			fi

	    	case $nestedOption in

	        	# Spotify
		        1) 	echo "Ahora empezará la descarga de Spotify"

		            sudo snap install spotify
		            sleep 2
		            echo -e "Instalación completada"
		            
		            sleep 4 
		            ;;

	        	# VLC
		        2) 	echo "Ahora empezará la descarga de VLC"

		            sudo snap install vlc
		            sleep 2
		            echo -e "Instalación completada"

		            sleep 4 

		            echo -e "Comprobando la versión de VLC"
		            sleep 2
		            vlc --version
		            
		            sleep 4 
		            ;;

		        # Audacity
		        3) 	echo "Ahora empezará la descarga de Audacity"
		            
		            sudo apt install audacity -y
		            sleep 2
		            echo -e "Instalación completada"

		            sleep 4 

		            echo -e "Comprobando la versión de Audacity"
		            sleep 2
		            audacity --version
		            
		            sleep 4 
		            ;;

		        # KDENLIVE
		        4) 	echo "Ahora empezará la descarga de KdenLive"
		            
		            sudo snap install kdenlive
		            sleep 2
		            echo -e "Instalación completada"

		            sleep 4 

		            echo -e "Comprobando la versión de KdenLive"
		            sleep 2
		            kdenlive --version
		            
		            sleep 4 
		            ;;

		        # Exit
				5) echo "Volviendo al menú principal"
					
					sleep 2
					break
					;;

		        # Resto de opciones
		        *) echo -e "\033[1;31mPor favor, introduce un número valido.\033[0m"

				   sleep 2
				   ;;

	    # Cierre Nested While (Mulimedia)
        	esac
    	done
    	;;

	3)	while true; do

			clear
		
			echo -e "\033[1;36m--- Developer Tools ---\033[0m"
			echo -e "\033[1;36m========================\033[0m"
			echo -e "\033[1;36m1) VSCode\033[0m"
			echo -e "\033[1;36m2) Eclipse\033[0m"
			echo -e "\033[1;36m3) JDK\033[0m"
			echo -e "\033[1;36m4) Python\033[0m"
			echo -e "\033[1;36m5) MySQL\033[0m"
			echo -e "\033[1;36m6) Exit\033[0m"
			echo -e "\033[1;36m========================\033[0m"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validation ]]; then
				echo -e "\033[1;31mPor favor, introduce un número.\033[0m"
				sleep 2
				continue
			fi

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

				# Eclipse
				2) 	echo "Ahora empezará la descarga de Eclipse"
					
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
					
					sudo apt install default-jdk -y 
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
					
					sudo apt install mysql-server -y
					sleep 2
					echo -e "Instalación completada"

					sleep 4 

					echo -e "Comprobando la versión de MySQL"
					sleep 2
					mysql --version
					
					sleep 4 
					;;

				# Exit
				6) echo "Volviendo al menú principal"
					
					sleep 2
					break
					;;

				# Resto de opciones
				*) echo -e "\033[1;31mPor favor, introduce un número valido.\033[0m"

				   sleep 2
				   ;;

		# Cierre Nested While (Developer Tools)
			esac
		done
		;;

	4) while true; do

			clear
		
			echo -e "\033[1;36m----- File Sharing -----\033[0m"
			echo -e "\033[1;36m========================\033[0m"
			echo -e "\033[1;36m1) qBittorrent\033[0m"
			echo -e "\033[1;36m2) Exit\033[0m"
			echo -e "\033[1;36m========================\033[0m"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validation ]]; then
				echo -e "\033[1;31mPor favor, introduce un número.\033[0m"
				sleep 2
				continue
			fi

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

				# Exit
				2) echo "Volviendo al menú principal"
					
					sleep 2
					break
					;;

				# Resto de opciones
				*) echo -e "\033[1;31mPor favor, introduce un número valido.\033[0m"

				   sleep 2
				   ;;

		# Cierre Nested While (File Sharing)
			esac
		done
		;;

	5) while true; do

			clear
		
			echo -e "\033[1;36m------ Messaging -------\033[0m"
			echo -e "\033[1;36m========================\033[0m"
			echo -e "\033[1;36m1) Slack\033[0m"
			echo -e "\033[1;36m2) Telegram\033[0m"
			echo -e "\033[1;36m3) Exit\033[0m"
			echo -e "\033[1;36m========================\033[0m"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validation ]]; then
				echo -e "\033[1;31mPor favor, introduce un número.\033[0m"
				sleep 2
				continue
			fi

			case $nestedOption in

				# Slack
				1) 	echo "Ahora empezará la descarga de Slack"
					
					sudo snap install slack
					
					sleep 2

					echo -e "Se ha completado la instalación de Slack"

					echo -e "Comprobando la versión de Slack"

					slack --version
					
					sleep 2 
					;;

				# Telegram
				2) 	echo "Ahora empezará la descarga de Telegram"
					
					sudo snap install telegram-desktop

					sleep 2

					echo -e "Se ha completado la instalación de Telegram"
					;;

				# Exit
				3) echo "Volviendo al menú principal"
					
					sleep 2
					break
					;;

				# Resto de opciones
				*) echo -e "\033[1;31mPor favor, introduce un número valido.\033[0m"

				   sleep 2
				   ;;

		# Cierre Nested While (Messaging)
			esac
		done
		;;

	6) while true; do

			clear
		
			echo -e "\033[1;36m----- Compression ------\033[0m"
			echo -e "\033[1;36m========================\033[0m"
			echo -e "\033[1;36m1) 7-Zip\033[0m"
			echo -e "\033[1;36m2) Exit\033[0m"
			echo -e "\033[1;36m========================\033[0m"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validation ]]; then
				echo -e "\033[1;31mPor favor, introduce un número.\033[0m"
				sleep 2
				continue
			fi

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

				# Exit
				2) echo "Volviendo al menú principal"
					
					sleep 2
					break
					;;

				# Resto de opciones
				*) echo -e "\033[1;31mPor favor, introduce un número valido.\033[0m"

				   sleep 2
				   ;;

		# Cierre Nested While (Compression)
			esac
		done
		;;

	7) 	while true; do

			clear

			echo -e "\033[1;36m------ Documents -------\033[0m"
			echo -e "\033[1;36m========================\033[0m"
			echo -e "\033[1;36m1) LibreOffice\033[0m"
			echo -e "\033[1;36m2) Exit\033[0m"
			echo -e "\033[1;36m========================\033[0m"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validation ]]; then
				echo -e "\033[1;31mPor favor, introduce un número.\033[0m"
				sleep 2
				continue
			fi

			case $nestedOption in

			    # LibreOffice
		        1) 	echo "Ahora empezará la descarga de LibreOffice"

		            sudo add-apt-repository ppa:libreoffice/ppa  

		            sudo apt update     
		            sudo apt install libreoffice -y

		            sleep 2
		            echo -e "Instalación completada"
		            
		            sleep 4 

		            echo -e "Comprobando la versión de LibreOffice"
		            sleep 2
		            libreoffice --version
		            ;;

		        # Exit
				2) echo "Volviendo al menú principal"
					
					sleep 2
					break
					;;

	        	# Resto de opciones
				*) echo -e "\033[1;31mPor favor, introduce un número valido.\033[0m"

				   sleep 2
				   ;;

		# Cierre Nested While (Documents)
	    	esac
		done
		;;

	8) while true; do

			clear
		
			echo -e "\033[1;36m--------- Other --------\033[0m"
			echo -e "\033[1;36m========================\033[0m"
			echo -e "\033[1;36m1) Steam\033[0m"
			echo -e "\033[1;36m2) KeePass2\033[0m"
			echo -e "\033[1;36m3) BitWarden\033[0m"
			echo -e "\033[1;36m4) Exit\033[0m"
			echo -e "\033[1;36m========================\033[0m"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validation ]]; then
				echo -e "\033[1;31mPor favor, introduce un número.\033[0m"
				sleep 2
				continue
			fi

			case $nestedOption in

				# Steam
				1) 	echo "Ahora empezará la descarga de Steam"
					
					sudo add-apt-repository multiverse
					sudo apt update
					sudo apt install steam
					sleep 2
					echo -e "Instalación completada"
					
					sleep 4
					;;

               	# KeePass2
				2) 	echo "Ahora empezará la descarga de KeePass2"
					
					sudo apt install keepass2 -y
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

				# Exit
				4) echo "Volviendo al menú principal"
					
					sleep 2
					break
					;;

				# Resto de opciones
				*) echo -e "\033[1;31mPor favor, introduce un número valido.\033[0m"

				   sleep 2
				   ;;

		# Cierre Nested While (Others)
			esac
		done
		;;

	# About OM
	9) while true; do

			clear
		
			echo -e "\033[1;36m------- About OM -------\033[0m"
			echo -e "\033[1;36m========================\033[0m"
			echo -e "\033[1;36m1) Exit\033[0m"
			echo -e "\033[1;36m========================\033[0m"

			echo -e "\033[1;36mOption Master nace de la necesidad de aprobar la asignatura de Sistemas Informáticos.\033[0m"
			echo -e "\033[1;36mImpartida por el grandioso Marc Costa.\033[0m"

			echo -e "\033[1;36mAutores de la gran proeza:\033[0m"
			echo -e "\033[1;36m=========================\033[0m"
			echo -e "\033[1;36mDavid\033[0m"
			echo -e "\033[1;36mSergio\033[0m"
			echo -e "\033[1;36mAntonio Maroto\033[0m"
			echo -e "\033[1;36m=========================\033[0m"

			echo -e "\033[1;36mNo hay mucho más que ver aquí, vuelve por donde has venido.\033[0m"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validation ]]; then
				echo -e "\033[1;31mPor favor, introduce un número.\033[0m"
				sleep 2
				continue
			fi

			case $nestedOption in

				# Exit
				1) echo "Volviendo al menú principal"
					
					sleep 2
					break
					;;

				# Resto de opciones
				*) echo -e "\033[1;31mPor favor, introduce un número valido.\033[0m"

				   sleep 2
				   ;;

		# Cierre Nested While (About OM)
			esac
		done
		;;

	# Exit
	10) echo "Saliendo del programa"

		echo "Muchas gracias por utilizar Option Master."
		
		sleep 2

		break 
		;;

	*) echo -e "\033[1;31mPor favor, introduce un número valido.\033[0m"

	   sleep 2
	   ;;

# Cierre main While
	esac 
done