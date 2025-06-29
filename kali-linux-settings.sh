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
git clone https://github.com/offensive-security/exploit-databas

