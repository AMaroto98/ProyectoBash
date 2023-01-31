2) 	while [ $nestedOption -ne 4 ]; do

    clear

    echo "----- Multimedia -----"
    echo "========================"
    echo "1) Spotify"
    echo "2) VLC"
    echo "3) Audacity"
    echo "4) KdenLive"
    echo "========================"

    read -p "Selecciona una de las opciones: " nestedOption

    case $nestedOption in

        # SPOTIFY

        1) 	echo "Ahora empezará la descarga de Spotify"

            # Agrega la clave de reserva para que el sistema sepa que vamos a descargar algo seguro
            sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410

            # Al agregar esta dirección de repositorio, 
            # Los usuarios pueden instalar Spotify utilizando el gestor de paquetes de su sistema operativo.
            echo deb http://repository.spotify.com stable non-free 

            # Actualiza las fuentes de software
            sudo apt-get update

            # Instala la aplicación
            sudo apt-get install spotify-client -y
            sleep 2
            echo -e "Instalación completada"
            
            sleep 4 
            ;;

        # VLC

        2) 	echo "Ahora empezará la descarga de VLC"

            sudo apt remove vlc -y
            sudo snap install vlc -y
            sleep 2
            echo -e "Instalación completada"

            sleep 4 

            echo -e "Comprobando la versión de VLC"
            sleep 2
            vlc --version
            
            sleep 4 
            ;;

        # AUDACITY

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
            
            sudo apt install git -y
            sudo snap install kdenlive -y
            sleep 2
            echo -e "Instalación completada"

            sleep 4 

            echo -e "Comprobando la versión de KdenLive"
            sleep 2
            KdenLive --version
            
            sleep 4 
            ;;

        # RESTO DE OPCIONES

        *) clear
            echo " $nestedOption no es una opción valida"

            sleep 2

            echo "Volviendo al menú anterior"

            sleep 4
            ;;
        esac
    done
    ;;