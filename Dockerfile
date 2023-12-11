FROM debian:bullseye

RUN echo "#Debian (11) bullseye \n\
deb http://ftp.debian.sk/debian/ bullseye main contrib non-free \n\
deb-src http://ftp.debian.sk/debian/ bullseye main contrib non-free \n\
\n\
deb http://ftp.debian.sk/debian/ bullseye-updates main contrib non-free \n\
deb-src http://ftp.debian.sk/debian/ bullseye-updates main contrib non-free \n\
\n\
deb http://ftp.debian.sk/debian/ bullseye-proposed-updates main contrib non-free \n\
deb-src http://ftp.debian.sk/debian/ bullseye-proposed-updates main contrib non-free \n\
\n\
deb http://ftp.debian.sk/debian/ bullseye-backports main contrib non-free \n\
deb-src http://ftp.debian.sk/debian/ bullseye-backports main contrib non-free \n\
\n\
deb http://security.debian.org/ bullseye/updates main contrib \n\
deb-src http://security.debian.org/ bullseye/updates main contrib" > /etc/apt/sources.list

RUN apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade && apt-get -y autoremove
