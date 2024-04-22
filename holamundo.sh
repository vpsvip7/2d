#!/bin/bash
FECHA=$(date +"%Y-%m-%d")
cor1='\033[1;31m'
cor2='\033[0;34m'
cor3='\033[1;35m'
clear
scor='\033[0m'
echo -e "\E[44;1;37m       ELEGIR   UNA   OPCION      \E[0m"
echo ""
echo -e "\e[1;31m[\e[1;36m01\e[1;31m] \e[1;37m• \e[1;33mUDP DEBIAN Y UBUNTU \e[ [1;31m
[\e[1;36m02\e[1;31m] \e[1;37m• \e[1;33mREMOVER Holamundo \e[1;31m  \e[1;31m
[\e[1;36m03\e[1;31m] \e[1;37m• \e[1;33mREINICIAR SISTEMA \e[1;31m
[\e[1;36m04\e[1;31m] \e[1;37m• \e[1;33mUDP UBUNTU 20       \e[1;31m      
[\e[1;36m05\e[1;31m] \e[1;37m• \e[1;33mUDP AUTOINSTALADOR $stsf\e[1;31m  
[\e[1;36m6\e[1;31m] \e[1;37m• \e[1;33mUpdate $stsbot\e[1;31m        
       [\e[1;36m09\e[1;31m] \e[1;37m• \e[1;33mSALIR❌ \e[1;32m<\e[1;33m<\e[1;31m<\e[1;31m
[\e[1;36m07\e[1;31m] \e[1;37m• \e[1;33mLimpiar RAM $stsbotteste\e[1;31m"

#leemos del teclado sentado
read n

case $n in
        1) clear
wget https://raw.githubusercontent.com/vpsvip7/1s/main/install.sh && chmod 777 install.sh && ./install.sh
            echo -ne "\n\033[1;31mListo \033[1;33mComando menu  \033[1;32mPara terminar de instalar!\033[0m"; read
            udp
           ;;
        2) clear
        rm -rf /root/holamundo.sh
           sleep 5 
            ;;
        3) clear
            netstat -tnpl
             sleep 6
           ;; 
        4) clear
             wget https://raw.githubusercontent.com/vpsvip7/2d/main/UDPserver.sh && chmod 777 UDPserver.sh && ./UDPserver.sh
            echo -ne "\n\033[1;31mEnter \033[1;33m Para volver al  \033[1;32mMenu!\033[0m"; read
           ;;
        5) clear
        wget https://raw.githubusercontent.com/vpsvip7/1s/main/udp-custom.sh -O install-udp && chmod +x install-udp && ./install-udp
        echo -ne "\n\033[1;31mEnter \033[1;33m Para volver al  \033[1;32mMenu!\033[0m"; read
         ;;
        6) apt update 
             menu;;
        7)     sync & sysctl -w vm.drop_caches=3 
           menu   ;;
         8)  ./verconectados.sh
             menu;;
          9)  exit
             ;;
        *) echo "Opción Incorrecta";;
esac