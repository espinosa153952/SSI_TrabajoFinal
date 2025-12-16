sudo apt update
sudo apt upgrade -y
sudo apt install -y docker docker-compose apt-transport-https ca-certificates curl software-properties-common lsb-release gnupg sqlmap nmap
sudo usermod -aG docker $USER