# Prerequisites

## Hardware requirements
For this workshop, participants will need the following hardware requirements:
* 40GB of storage available
* Moderately recent CPU (minimum i5 processor)
* 8 GB of RAM (not occupied by many other applications/services)

## Operating System
Operating System requirements (one of the options specified below):
* Windows 10 (fall creators update or higher)
* Windows Server 2012
* macOS 10.13 (High Sierra)
* Ubuntu 16.04, 17.10 or 18.04

In case of Windows 7, a virtual machine running Ubuntu 18.04, with 4-6 GB of RAM allocated would work as well.

## Software
Software mandatory for the hackathon is:
* [Docker Community Edition](https://www.docker.com/community-edition) (native on Ubuntu, "for Windows" or "for Mac")
* [Python 2.7](https://www.python.org/downloads/) (with pip as dependency manager)

### Installing docker

#### On Ubuntu
You can follow the instructions on [this page](https://docs.docker.com/install/linux/docker-ce/ubuntu/#set-up-the-repository).
To do it faster, you can also perform the following commands in your terminal:
```
wget https://raw.githubusercontent.com/jvsoest/UnixSettings/master/installDocker.sh
sh installDocker.sh
```
After installation, it requires a logout/login to bring all changes into effect.

#### On Windows 10
You can download it from [this page](https://store.docker.com/editions/community/docker-ce-desktop-windows), and follow the installation instructions.

#### On MacOS
You can download it from [this page](https://store.docker.com/editions/community/docker-ce-desktop-mac), and follow the installation instructions.

#### Testing your installation
After succesfully installing docker, you can run the following command in your terminal ```docker run hello-world```. This should give a response that every works, and is configured correctly.
