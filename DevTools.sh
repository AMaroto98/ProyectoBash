3) while [ $nestedOption -ne 4 ]; do

			clear
		
			echo "----- Developer Tools -----"
			echo "========================"
			echo "1) VSCode"
			echo "2) Eclipse"
			echo "3) JDK"
			echo "4) Python"
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
					Java --version
					
					sleep 4 
					;;

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