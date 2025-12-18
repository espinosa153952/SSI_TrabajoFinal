#! /bin/bash
apt update && apt install -y ssh sqlmap nmap && apt clean;

useradd -m -s /bin/bash ssi;
echo "USUARIOS CREADOS";

echo "ssi:ssi" | chpasswd;
echo "CONTRASEÑAS ASIGNADAS";