#!/bin/bash
FECHA=$(date +"%Y-%m-%d")
cor1='\033[1;31m'
cor2='\033[0;34m'
cor3='\033[1;35m'
clear
scor='\033[0m'
echo -e "\E[44;1;37m       MENU PSIPHON 🇦🇷⭐⭐⭐      \E[0m"
echo -e""
echo -e "
\e[1;31m[\e[1;36m01\e[1;31m] \e[1;37m• \e[1;33mINICIAR o REINICIAR PSIPHON \e[ [1;31m
[\e[1;36m02\e[1;31m] \e[1;37m• \e[1;33mINSTALAR PSIPHON 443 \e[1;31m  \e[1;31m
[\e[1;36m03\e[1;31m] \e[1;37m• \e[1;33mVER PUERTOS \e[1;31m
[\e[1;36m04\e[1;31m] \e[1;37m• \e[1;33mVER CODIGO TARGET\e[1;31m      
[\e[1;36m05\e[1;31m] \e[1;37m• \e[1;33mINSTALAR PSIPHON 80 \e[1;31m  
[\e[1;36m06\e[1;31m] \e[1;37m• \e[1;33mVER CONECTADOS \e[1;31m        
[\e[1;36m07\e[1;31m] \e[1;37m• \e[1;33mLIMPIAR RAM \e[1;31m
[\e[1;36m08\e[1;31m] \e[1;37m• \e[1;33mBORRAR PSIPHON ❌\e[1;31m
[\e[1;36m09\e[1;31m] \e[1;37m• \e[1;33mSALIR ❌ \e[1;31m"

#leemos el teclado sentado
read n

case $n in
        1) clear
cd /root/psi && screen -dmS PSI ./psiphond run
            echo -ne "\n\033[1;31mListo \033[1;33mPsiphon Iniciado o  \033[1;32mReiniciado!\033[0m"; read
           ;;
        2) clear
        cd /root && mkdir psi && cd /root/psi && wget https://raw.githubusercontent.com/Psiphon-Labs/psiphon-tunnel-core-binaries/master/psiphond/psiphond && chmod 777 psiphond && ./psiphond --ipaddress 0.0.0.0 --protocol FRONTED-MEEK-OSSH:443 generate && screen -dmS PSI ./psiphond run && cat /root/psi/server-entry.dat;echo ''
           echo -ne "\n\033[1;31mEnter \033[1;33m Para volver al  \033[1;32mMenu2!\033[0m"; read 
            ;;
        3) clear
            netstat -tnpl
             sleep 3
             menu
           ;; 
        4) clear
        cd /root/psi&&cat /root/psi/server-entry.dat;echo ''
       echo -ne "\n\033[1;31mEnter \033[1;33m Para volver al  \033[1;32mMenu2!\033[0m"; read
           ;;
        5) cd /root && mkdir psi && cd /root/psi && wget https://raw.githubusercontent.com/Psiphon-Labs/psiphon-tunnel-core-binaries/master/psiphond/psiphond && chmod 777 psiphond && ./psiphond --ipaddress 0.0.0.0 --protocol FRONTED-MEEK-OSSH:80 generate && screen -dmS PSI ./psiphond run && cat /root/psi/server-entry.dat;echo ''
        echo -ne "\n\033[1;31mEnter \033[1;33m Para volver al  \033[1;32mMenu2!\033[0m"; read
         ;;
        6) ./verconectados.sh
        echo -ne "\n\033[1;31mEnter \033[1;33m Para volver al  \033[1;32mMenu2!\033[0m"; read
             sleep 6
             ;;
        7)     sync & sysctl -w vm.drop_caches=3 
           menu2   ;;
         8)  rm -rf /root/psi
             menu2;;
          9)  menu
        echo -ne "\n\033[1;31mEnter \033[1;33m Para volver al  \033[1;32mMenu2!\033[0m"; read
             ;;
        *) echo "OPCION INCORREPTA ";;
esac