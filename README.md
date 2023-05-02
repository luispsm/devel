# devel
Development environment

Steps:
* Enable WSL (Windows Subsytem for Linux)
* Install Linux kernel update pacakage for windows (https://learn.microsoft.com/es-es/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package)
* Set WSL2 as default version
** wsl --set-default-version 2
* Install ubuntu distribution
* Install docker desktop
* Enable WSL integration
* On Ubuntu from WSL, create a docker group and join the group:
** sudo groupadd docker
** sudo usermod -aG docker ${USER}

Once everything is ready you can build your image and create your container:
./develctl build
./develctl run

