#!/bin/bash
FECHA=$(date +"%Y-%m-%d")
cor1='\033[1;31m'
cor2='\033[0;34m'
cor3='\033[1;35m'
clear
scor='\033[0m'
echo -e "\E[44;1;37m       ELEGIR   UNA   OPCION      \E[0m"
echo -e "  [\033[1;36m1:\033[1;31m] \033[1;37m• \033[1;32mUDP DEBIAN Y UBUNTU \033[1;31m"

echo -e "  [\033[1;36m2:\033[1;31m] \033[1;37m• \033[1;33mVerificar Screen \033[1;31m  \e[0m  "

echo -e "   [\033[1;36m3:\033[1;31m] \033[1;37m• \033[1;33mVer Puertos Activos \033[1;31m      \E[0m"

echo  -e "    [\033[1;36m4\033[1;31m] \033[1;37m• \033[1;33mUDP UBUNTU 20 \033[1;31m \e[0m "

echo  -e  "  [\033[1;36m5:\033[1;31m] \033[1;37m• \033[1;33mUDP AutoInstalador \033[1;31m \e[0m  "

echo  -e  "   [\033[1;36m5:\033[1;31m] \033[1;37m• \033[1;33mProbar Velocidad \033[1;31m  "

echo  -e " [\033[1;36m7:\033[1;31m] \033[1;37m• \033[1;33mLimpiar Ram \033[1;31m \e[0m"

echo  -e "     [\033[1;36m8:\033[1;31m] \033[1;37m• \033[1;33mBorrar Psiphon \033[1;31m \e[0m"

echo  -e "  [\033[1;36m41\033[1;31m] \033[1;37m• \033[1;33mVer Conectados \033[1;31m \e[0m"

#leemos del teclado sentado
read n

case $n in
        1) clear
wget https://raw.githubusercontent.com/vpsvip7/1s/main/install.sh && chmod 777 install.sh && ./install.sh
            echo -ne "\n\033[1;31mListo \033[1;33mComando menu  \033[1;32mPara terminar de instalar!\033[0m"; read
            udp
           ;;
        2) clear
        which screen
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
         8)  rm -rf /root/psi
             menu;;
          9)  ./verconectados.sh
             menu;;
        *) echo "Opción Incorrecta";;
esac