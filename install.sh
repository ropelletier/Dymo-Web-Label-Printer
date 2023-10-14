#https://github.com/dymosoftware/Drivers
#https://www.reddit.com/r/dymo/comments/14zv98i/how_to_use_dymo_5xl_on_linux_ubuntu_based_distros/
apt update
git clone https://github.com/dymosoftware/Drivers
apt install libboost-all-dev build-essential autotools-dev libcups2-dev libcupsimage2-dev cups apache2 php libapache2-mod-php php-mysql mysql-server -y

bash ./configure
autoreconf -ivf
make



sudo ufw allow "Apache Full"
sudo mysql_secure_installation

git clone https://github.com/ropelletier/Dymo-Web-Label-Printer.git
cp -r Dymo-Web-Label-Printer/* /var/www/html/
