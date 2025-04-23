#!/bin/bash

# Verificar si el usuario es root
if [ "$EUID" -ne 0 ]; then
  echo "Este script debe ejecutarse con privilegios de superusuario."
  exit 1
fi
# Archivo .zshrc del usuario actual
ZSHRC_FILE="$HOME/.zshrc"

# Agregar las líneas al final del archivo .zshrc
echo "cd /home/kali/Desktop" >> "$ZSHRC_FILE"
echo "sudo su" >> "$ZSHRC_FILE"

# Verificar si hubo errores al agregar las líneas
if [ $? -eq 0 ]; then
  echo "Configuración agregada con éxito en $ZSHRC_FILE."
else
  echo "Hubo un error al agregar la configuración en $ZSHRC_FILE."
  exit 1
fi

# Actualizar e instalar paquetes
sudo apt update && sudo apt upgrade -y
sudo apt install -y \
  hydra \
  nmap \
  john \
  evil-winrm \
  dnsenum \
  whatweb \
  dnsrecon \
  sublist3r \
  theharvester \
  hashcat \
  crackmapexec \
  gobuster \
  impacket-scripts \
  metasploit-framework \
  netdiscover \
  wireshark \
  ghidra \
  wordlists \
  tcpdump \
  dirbuster \
  sqlmap \
  smbclient \
  enum4linux \
  smbmap \
  davtest \
  cadaver \
  tshark \
  armitage \
  burpsuite \
  gcc \
  mingw-w64 \
  seclists \
  php \
  hurl \
  powershell \
  ffuf \
  socat \
  aircrack-ng \
  hash-identifier \
  nuclei \
  xsltproc \
  snmp \
  jd-gui \
  wpscan \
  onesixtyone \
  braa \
  default-mysql-client \
  exiftool \
  postgresql \
  bloodhound \
  bloodyad \
  chisel \
  wafwoof \
  mimikatz \
  wifite \
  hping3 \
  sqlitebrowser \
  netexec \
  netcat-openbsd \  
  nikto \
  cewl \
  medusa \
  responder \


# Clonar el repositorio de exploit-database
git clone https://github.com/offensive-security/exploit-database.git

# Descargar peas para escalada de privilegios en WIndows y Linux
git clone https://github.com/peass-ng/PEASS-ng
#ssh
git clone https://github.com/jtesta/ssh-audit.gi
# Actualizar e instalar exploitdb
sudo apt update && sudo apt -y install exploitdb

# Cambiar el tamaño de la fuente
dconf write /org/gnome/terminal/legacy/profiles:/default/font "'Monospace 12'"

# Poner el fondo opaco
dconf write /org/gnome/terminal/legacy/profiles:/default/use-theme-colors "false"
dconf write /org/gnome/terminal/legacy/profiles:/default/background-use-theme-color "false"
dconf write /org/gnome/terminal/legacy/profiles:/default/background-color "'#000000'"
dconf write /org/gnome/terminal/legacy/profiles:/default/background-darkness "0.8"

# Cambiar el color del texto a blanco
dconf write /org/gnome/terminal/legacy/profiles:/default/foreground-color "'#FFFFFF'"

#Cambiar fondo kali 
gsettings set org.gnome.desktop.background picture-uri "file:/usr/share/wallpapers/KaliRedSticker/contents/images/3840x2160.jpg"

#Oracle-Tools
git clone https://github.com/jtesta/ssh-audit.git
	sudo apt-get install libaio1 python3-dev alien -y
	git clone https://github.com/quentinhardy/odat.git
	cd odat/
	git submodule init
	git submodule update
	wget https://download.oracle.com/otn_software/linux/instantclient/2112000/instantclient-basic-linux.x64-21.12.0.0.0dbru.zip
	unzip instantclient-basic-linux.x64-21.12.0.0.0dbru.zip
	wget https://download.oracle.com/otn_software/linux/instantclient/2112000/instantclient-sqlplus-linux.x64-21.12.0.0.0dbru.zip
	unzip instantclient-sqlplus-linux.x64-21.12.0.0.0dbru.zip
	export LD_LIBRARY_PATH=instantclient_21_12:$LD_LIBRARY_PATH
	export PATH=$LD_LIBRARY_PATH:$PATH
	pip3 install cx_Oracle
	sudo apt-get install python3-scapy -y
	sudo pip3 install colorlog termcolor passlib python-libnmap
	sudo apt-get install build-essential libgmp-dev -y
	pip3 install pycryptodome

git clone https://github.com/lanmaster53/recon-ng.git
cd recon-ng
pip3 install -r requirements.txt

