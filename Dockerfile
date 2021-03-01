FROM ubuntu:20.04

# install prereqs
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get update
RUN apt-get install -y git build-essential linux-libc-dev
RUN apt-get install -y cmake cmake-gui 
RUN apt-get install -y libusb-1.0-0-dev libusb-dev libudev-dev
RUN apt-get install -y mpi-default-dev openmpi-bin openmpi-common  

RUN apt-get install -y libboost-all-dev
RUN apt-get install -y libeigen3-dev
RUN apt-get install -y libflann-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libvtk7-qt-dev
RUN apt-get install -y libqhull-dev 
RUN apt-get install -y libopenni-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libcuda1-340

RUN apt-get install -y libqhull* libgtest-dev

RUN apt-get install -y freeglut3-dev pkg-config
RUN apt-get install -y libxmu-dev libxi-dev 
RUN apt-get install -y mono-complete
RUN apt-get install -y qt5-default
RUN apt-get install -y openjdk-8-jdk openjdk-8-jre
RUN apt-get install -y openssh

RUN git clone https://github.com/PointCloudLibrary/pcl pcl-trunk

# install pcl
RUN cd pcl-trunk && mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DBUILD_GPU=ON -DBUILD_apps=ON -DBUILD_examples=ON ..
RUN cd pcl-trunk/build && make -j2
RUN cd pcl-trunk/build && make -j2 install