# docker

This tool helps to create infrastructure for web projects using the power of Docker. 
After installing as described below open localhost in your browser.

Install on Ubuntu

    chmod +x install_ubuntu.sh
    ./install_ubuntu.sh $(lsb_release -cs)
    chmod +x start.sh
    ./start.sh

Install on Linux Mint

    chmod +x install_ubuntu.sh
    source /etc/os-release
    ./install_ubuntu.sh $UBUNTU_CODENAME
    chmod +x start.sh
    ./start.sh