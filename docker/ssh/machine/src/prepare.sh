#! /bin/bash
apt update && apt install -y sudo passwd ssh && apt clean;

useradd -m -s /bin/bash linuxmaster;
useradd -m -s /bin/bash mercury;
useradd -m -s /bin/bash webmaster;
echo "USUARIOS CREADOS";

echo "linuxmaster:mercurymeandiameteris4880km" | chpasswd;
echo "mercury:jasudhaiudgshiashgsdiagsdkuhasd" | chpasswd;
echo "webmaster:mercuryisthesizeof0.056Earths" | chpasswd;
echo "CONTRASEÑAS ASIGNADAS";

usermod -aG sudo mercury;
echo "MERCURY ES SUDO";

chown root:root /usr/bin/check_syslog.sh
chmod 744 /usr/bin/check_syslog.sh

echo "linuxmaster ALL=(root) NOPASSWD: /usr/bin/check_syslog.sh" > /etc/sudoers.d/linuxmaster;
chmod 440 /etc/sudoers.d/linuxmaster;