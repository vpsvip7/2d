#!/bin/bash

while true; do
  echo "BIENVENIDO AL MENU PARA VER CONECTADOS"
  echo "Seleccione una opción:"
  echo "1. Ver conectados en el puerto 80"
  echo "2. Ver conectados en el puerto 443"
  echo "3. Ver conectados en el puerto 2052"
  echo "4. Ver conectados en el puerto 22"  
  echo "5. INSTALAR VER Conectados"
  echo "6. Salir"

  read -p "Opción: " opcion

  case $opcion in
    1)
      PSIPHON_PORT_80=$(sudo netstat -tn | awk '$4 ~ /:80$/ {print $5}' | cut -d: -f1 | sort | uniq -c | wc -l)
      echo "CONEXIONES EN EL PUERTO 80 : $PSIPHON_PORT_80"
      ;;
    2)
      PSIPHON_PORT_443=$(sudo netstat -tn | awk '$4 ~ /:443$/ {print $5}' | cut -d: -f1 | sort | uniq -c | wc -l)
      echo "CONEXIONES EN EL PUERTO 443 : $PSIPHON_PORT_443"
      ;;
    3)
      PSIPHON_PORT_2052=$(sudo netstat -tn | awk '$4 ~ /:2052$/ {print $5}' | cut -d: -f1 | sort | uniq -c | wc -l)
      echo "CONEXIONES EN EL PUERTO 2052 : $PSIPHON_PORT_2052"
      ;;  
   4)
      PSIPHON_PORT_22=$(sudo netstat -tn | awk '$4 ~ /:22$/ {print $5}' | cut -d: -f1 | sort | uniq -c | wc -l)
      echo "CONEXIONES EN EL PUERTO 22 : $PSIPHON_PORT_22"
      ;;      
    5)  
        wget https://raw.githubusercontent.com/vpsvip7/2d/main/verconectados.sh  && chmod +x verconectados.sh
      ;;
    6)
      echo "Saliendo del script..."
      break
      ;;
    *)
      echo "Opción inválida"
      ;;
  esac

  echo
done
