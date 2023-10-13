#https://github.com/dymosoftware/Drivers
#https://www.reddit.com/r/dymo/comments/14zv98i/how_to_use_dymo_5xl_on_linux_ubuntu_based_distros/
apt update
git clone https://github.com/dymosoftware/Drivers
apt-get install libboost-all-dev build-essential autotools-dev libcups2-dev libcupsimage2-dev cups -y


bash ./configure
autoreconf -ivf
make
