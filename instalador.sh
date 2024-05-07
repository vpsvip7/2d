 #!/bin/bash  
# Configuración de colores 
RED='\033[0;31m' GREEN='\033[0;32m' YELLOW='\033[1;33m' NC='\033[0m' 
# No Color BLUE='\033[0;34m'LIGHT_BLUE='\033[1;34m' LIGHT_BLUE_CYAN='\033[38;2;0;212;255m'  
# URLs de los recursos con un parámetro de cache-busting 
timestamp=$(date +%s) 
VPN_SCRIPT_URL="https://raw.githubusercontent.com/joa2025/instalador/main/vpn?timestamp=${timestamp}" 
IP_LIST_URL="https://raw.githubusercontent.com/joa2025/instalador/main/ip?timestamp=${timestamp}"   
# Ruta al archivo cifrado con las IPs permitidas 
CONFIG_DIR="/home/usuario/.config/.system/.data/.security" 
CONFIG_FILE="${CONFIG_DIR}/.conf"  
# Clave de cifrado utilizada para cifrar las IPs 
ENCRYPTION_KEY="clave_secreta_123"  
# Verificar y crear directorio de configuración 
mkdir -p "${CONFIG_DIR}"
# Función para descargar y verificar IPs permitidas 
function update_ip_list() {     
if ! curl -s "${IP_LIST_URL}" | openssl enc -aes-256-cbc -e -a -pass pass:"${ENCRYPTION_KEY}" -out "${CONFIG_FILE}" 2>/dev/null; then
echo -e  "${RED}Error al actualizar la lista de IPs permitidas.${NC}"         
exit 1
fi 
}  
function check_ip_permission() {     
local IP_ADDRESS=$(hostname -I | awk '{print $1}')  
local DECRYPTED_IPS=$(openssl enc -aes-256-cbc -d -a -in "${CONFIG_FILE}" -pass pass:"${ENCRYPTION_KEY}" 2>/dev/null)     
if ! echo "${DECRYPTED_IPS}" | grep -q "^${IP_ADDRESS}$"; then         
echo -e "${RED}IP no permitida${NC}"         
echo -e "${LIGHT_BLUE_CYAN}Para asistencia, contáctame en Telegram: https://t.me/joaquinH2${NC}"         
exit 1     
fi 
}  
 # Función para instalar VPN 
function install_vpn() {     
local VPN_INSTALL_PATH="/usr/local/bin/vpn "     
echo -e "${YELLOW}Instalando VPN...${NC}"     
if ! curl -s "${VPN_SCRIPT_URL}" -o "${VPN_INSTALL_PATH}"; then         
echo -e "${RED}Error al descargar el archivo VPN. Instalación fallida.${NC}"         
exit 1     
fi     
chmod +x "${VPN_INSTALL_PATH}"     
echo "alias vpn='${VPN_INSTALL_PATH}'" >> ~/.bashrc     
source ~/.bashrc     
echo -e "${GREEN}Instalación completada. Alias 'vpn' creado.${NC}" }  
# Menú principal 
function main_menu() {     
while true; do         
clear         
echo -e "${BLUE}====================================${NC}"         
echo -e "${LIGHT_BLUE}   Menú Principal de Instalación   ${NC}"         
echo -e "${BLUE}====================================${NC}"         
echo -e "${YELLOW}1. Instalar VPN${NC}"         
echo -e "${YELLOW}2. Contacto${NC}"         
echo -e "${YELLOW}3. Salir${NC}"         
echo -e "${BLUE}====================================${NC}"         
echo -e "${GREEN}Introduzca su elección y presione ENTER: ${NC}"  
read choice          
case $choice in 
1)                 
update_ip_list                 
check_ip_permission
install_vpn                                                                                                         
echo -e "${BLUE}Presione ENTER para continuar...${NC}"                                                                                                         
read                 
;;             
2)                 
echo -e "${LIGHT_BLUE_CYAN}Contáctame en Telegram: https://t.me/joaquinH2${NC}"                 
echo -e "${BLUE}Presione ENTER para continuar...${NC}"                 
read                                                                                                         
;;             
3)                 
exit 0                 
;;             
*)                                                                                                         
echo -e "${RED}Opción inválida. Intente de nuevo.${NC}"                                                                                                         
sleep 2         
esac     
done }