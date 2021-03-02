FROM ubuntu:20.04

# install prereqs
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get update
RUN apt-get install -y git build-essential linux-libc-dev
RUN apt-get install -y cmake cmake-gui 
RUN apt-get install -y libusb-1.0-0-dev libusb-dev libudev-dev
RUN apt-get install -y mpi-default-dev openmpi-bin openmpi-common  

RUN apt-get install -y freeglut3-dev pkg-config
RUN apt-get install -y libxmu-dev libxi-dev 
RUN apt-get install -y mono-complete
RUN apt-get install -y openjdk-8-jdk openjdk-8-jre
RUN apt-get install -y openssh-server
RUN apt-get install -y openssh-client

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libpcl-dev