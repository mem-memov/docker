# docker

Install on Ubuntu

    chmod +x install_ubuntu.sh
    ./install_ubuntu.sh $(lsb_release -cs)
    chmod +x start.sh
    ./start.sh

Install on Linix Mint

    chmod +x install_ubuntu.sh
    source /etc/os-release
    ./install_ubuntu.sh $UBUNTU_CODENAME
    chmod +x start.sh