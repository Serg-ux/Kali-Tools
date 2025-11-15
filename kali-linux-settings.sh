#!/bin/bash

# Check if the user is root
if [ "$EUID" -ne 0 ]; then
  echo "This script must be run with superuser privileges."
  exit 1
fi
# Current user's .zshrc file
ZSHRC_FILE="$HOME/.zshrc"

# Add lines to the end of the .zshrc file
echo "cd /home/kali/Desktop" >> "$ZSHRC_FILE"
echo "sudo su" >> "$ZSHRC_FILE"

# Check if there were any errors while adding the lines
if [ $? -eq 0 ]; then
  echo "Configuration successfully added to $ZSHRC_FILE."
else
  echo "There was an error adding the configuration to $ZSHRC_FILE."
  exit 1
fi

# Update and install packages
sudo apt update && sudo apt upgrade -y
sudo apt install -y \
  hydra \
  nmap \
  john \
  evil-winrm \
  dnsenum \
  whatweb \
  faketime \
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
  sqsh \
  sqlcmd \
  crowbar \
  fierce \
  subfinder \
  ettercap \
  bettercap \
  autopsy \
  swaks \
  ntpsec-ntpdate

# Update and install exploitdb
sudo apt update && sudo apt -y install exploitdb

# Change font size
dconf write /org/gnome/terminal/legacy/profiles:/default/font "'Monospace 12'"

# Set opaque background
dconf write /org/gnome/terminal/legacy/profiles:/default/use-theme-colors "false"
dconf write /org/gnome/terminal/legacy/profiles:/default/background-use-theme-color "false"
dconf write /org/gnome/terminal/legacy/profiles:/default/background-color "'#000000'"
dconf write /org/gnome/terminal/legacy/profiles:/default/background-darkness "0.8"

# Clone exploit-database repository
git clone https://github.com/offensive-security/exploit-database.git

# Create a folder named pentest_tools
mkdir -p ~/pentest_tools
cd ~/pentest_tools

# Clone the repositories into the pentest_tools folder

# Download PEAS for privilege escalation in Windows and Linux
git clone https://github.com/peass-ng/PEASS-ng
# SSH
git clone https://github.com/jtesta/ssh-audit.git
# Oracle-Tools
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

