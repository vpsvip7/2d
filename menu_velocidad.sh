#!/bin/bash

while true; do
  echo "MENÚ LIMiTADOr de Velocidad"
  echo "Seleccione una opción:"
  echo "1. INSTALAR LIMITADOR"
  echo "2. LIMITAR A 5MB APROX "
  echo "3. LIMITAR A 8MB APROX "
  echo "4. Medir la Velocidad de tu maquina "
  echo "5. Salir"

  read -p "Opción: " opcion

  case $opcion in
    1)
      wget https://raw.githubusercontent.com/vpsvip7/json24/refs/heads/main/limit_bandwidth.sh && chmod 777 limit_bandwidth.sh && ./limit_bandwidth.sh
      echo "INSTALANDO LIMITADOR"
      ;;
    2)
      ./limit_bandwidth.sh eth0 10mbit 10mbit
      echo "Limitar a 5mb aprox"
      ;;
    3)
      ./limit_bandwidth.sh eth0 15mbit 15mbit
      echo "Limitar a 8mb aprox"
      ;;
4)
      speedtest
      echo "Testear la velocidad de tu maquina"
      ;;
    5)
      echo "Saliendo del script..."
      break
      ;;
    *)
      echo "Opción inválida"
      ;;
  esac

  echo
done
