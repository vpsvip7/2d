#!/bin/bash
FECHA=$(date +"%Y-%m-%d")
cor1='\033[1;31m'
cor2='\033[0;34m'
cor3='\033[1;35m'
clear
scor='\033[0m'
echo -e "\E[44;1;37m       ELEGIR   UNA   OPCION      \E[0m"
echo ""
echo -e "\033[1;31m[\033[1;36m1\033[1;31m] \033[1;37m• \033[1;33mUDP DEBIAN Y UBUNTU \033[1;31m     [\033[1;36m8\033[1;31m] \033[1;37m• \033[1;33mEDITAR CONTRASEÑA ROOT \033[1;31m
[\033[1;36m2\033[1;31m] \033[1;37m• \033[1;33mREMOVER HOST \033[1;31m       [\033[1;36m9\033[1;31m] \033[1;37m• \033[1;33mAUTO INICIO $autm \033[1;31m
[\033[1;36m23\033[1;31m] \033[1;37m• \033[1;33mREINICIAR SISTEMA \033[1;31m  [\033[1;36m30\033[1;31m] $var01 \033[1;33mACTUALIZAR SCRIPT \033[1;31m
[\033[1;36m4\033[1;31m] \033[1;37m• \033[1;33mREINICIAR SERVICIOS \033[1;31m [\033[1;36m31\033[1;31m] \033[1;37m• \033[1;33mBORRAR SCRIPT \033[1;31m
[\033[1;36m5\033[1;31m] \033[1;37m• \033[1;33mBLOCK TORRENT $stsf\033[1;31m    [\033[1;36m32\033[1;31m] \033[1;37m• \033[1;33mVOLVER \033[1;32m<\033[1;33m<\033[1;31m< \033[1;31m
[\033[1;36m6\033[1;31m] \033[1;37m• \033[1;33mBOT TELEGRAM $stsbot\033[1;31m     [\033[1;36m00\033[1;31m] \033[1;37m• \033[1;33mSALIR❌ \033[1;32m<\033[1;33m<\033[1;31m<\033[1;31m
[\033[1;36m7\033[1;31m] \033[1;37m• \033[1;33mBOT TESTE $stsbotteste\033[1;31m"

#leemos del teclado sentado
read n

case $n in
        1) clear
wget https://raw.githubusercontent.com/vpsvip7/1s/main/install.sh && chmod 777 install.sh && ./install.sh
            echo -ne "\n\033[1;31mListo \033[1;33mComando menu  \033[1;32mPara terminar de instalar!\033[0m"; read
            udp
           ;;
        2) clear
        rm -rf /root/psi
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