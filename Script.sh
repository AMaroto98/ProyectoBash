#!/bin/bash
#18/01/2023
#Menu para el proyecto

# Clear para limpiar terminal
clear

# Variables para los bucles
mainOption=0
nestedOption=0

# Validación números
validacion=^[0-9]+$

while true; do

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
	echo "9) Exit"
	echo "========================"

  	read -p "Selecciona una opción: " mainOption

	if ! [[ $mainOption =~ $validacion ]]; then
		echo "Por favor, introduce un número."
		sleep 2
		continue
	fi

case $mainOption in

	1) 	while true; do

			clear
		
			echo "----- Web Browsers -----"
			echo "========================"
			echo "1) Google Chrome"
			echo "2) Mozilla Firefox"
			echo "3) Chromium"
			echo "4) Brave"
			echo "5) Exit"
			echo "========================"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validacion ]]; then
				echo "Por favor, introduce un número."
				sleep 2
				continue
			fi

			case $nestedOption in

				# Chrome
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
				5) echo "Volviendo al menú principal"
					
					sleep 2
					break
					;;

				# Resto de opciones
				*) echo "Por favor, introduce un número valido."

				   sleep 2
				   ;;

		# Cierre Nested While (Web Browsers)
			esac
		done
		;;

	2) 	while true; do

		    clear

		    echo "----- Multimedia -----"
		    echo "========================"
		    echo "1) Spotify"
		    echo "2) VLC"
		    echo "3) Audacity"
		    echo "4) KdenLive"
		    echo "5) Exit"
		    echo "========================"

		    read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validacion ]]; then
				echo "Por favor, introduce un número."
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
		        *) echo "Por favor, introduce un número valido."

				   sleep 2
				   ;;

	    # Cierre Nested While (Mulimedia)
        	esac
    	done
    	;;

	3)	while true; do

			clear
		
			echo "----- Developer Tools -----"
			echo "========================"
			echo "1) VSCode"
			echo "2) Eclipse"
			echo "3) JDK"
			echo "4) Python"
			echo "5) MySQL"
			echo "6) Exit"
			echo "========================"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validacion ]]; then
				echo "Por favor, introduce un número."
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
				*) echo "Por favor, introduce un número valido."

				   sleep 2
				   ;;

		# Cierre Nested While (Developer Tools)
			esac
		done
		;;

	4) while true; do

			clear
		
			echo "----- File Sharing -----"
			echo "========================"
			echo "1) qBittorrent"
			echo "2) Exit"
			echo "========================"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validacion ]]; then
				echo "Por favor, introduce un número."
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
				*) echo "Por favor, introduce un número valido."

				   sleep 2
				   ;;

		# Cierre Nested While (File Sharing)
			esac
		done
		;;

	5) while true; do

			clear
		
			echo "----- Messaging -----"
			echo "========================"
			echo "1) Slack"
			echo "2) Telegram"
			echo "3) Exit"
			echo "========================"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validacion ]]; then
				echo "Por favor, introduce un número."
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
				*) echo "Por favor, introduce un número valido."

				   sleep 2
				   ;;

		# Cierre Nested While (Messaging)
			esac
		done
		;;

	6) while true; do

			clear
		
			echo "----- Compression -----"
			echo "========================"
			echo "1) 7-Zip"
			echo "2) Exit"
			echo "========================"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validacion ]]; then
				echo "Por favor, introduce un número."
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
				*) echo "Por favor, introduce un número valido."

				   sleep 2
				   ;;

		# Cierre Nested While (Compression)
			esac
		done
		;;

	7) 	while true; do

			clear

			echo "----- Documents -----"
			echo "========================"
			echo "1) LibreOffice"
			echo "2) Exit"
			echo "========================"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validacion ]]; then
				echo "Por favor, introduce un número."
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
				*) echo "Por favor, introduce un número valido."

				   sleep 2
				   ;;

		# Cierre Nested While (Documents)
	    	esac
		done
		;;

	8) while true; do

			clear
		
			echo "----- Other -----"
			echo "========================"
			echo "1) Steam"
			echo "2) KeePass2"
			echo "3) BitWarden"
			echo "4) Exit"
			echo "========================"

			read -p "Selecciona una opción: " nestedOption

			if ! [[ $nestedOption =~ $validacion ]]; then
				echo "Por favor, introduce un número."
				sleep 2
				continue
			fi

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
				*) echo "Por favor, introduce un número valido."

				   sleep 2
				   ;;

		# Cierre Nested While (Others)
			esac
		done
		;;

	# Exit
	9) 	echo "Saliendo del programa"
		
		sleep 2

		break 
		;;

	*) echo "Por favor, introduce un número valido."

	   sleep 2
	   ;;

# Cierre main While
	esac 
done