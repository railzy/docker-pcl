FROM ubuntu:20.04

# install prereqs
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get update
RUN apt-get install -y git build-essential linux-libc-dev
RUN apt-get install -y cmake cmake-gui 
RUN apt-get install -y libusb-1.0-0-dev libusb-dev libudev-dev
RUN apt-get install -y mpi-default-dev openmpi-bin openmpi-common  


RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libboost-all-dev \
  libeigen3-dev \
  libflann-dev \
  libopenni-dev  \
  libopenni2-dev \
  libpcl-apps1.10  \
  libpcl-common1.10  \
  libpcl-features1.10  \
  libpcl-filters1.10  \
  libpcl-io1.10  \
  libpcl-kdtree1.10  \
  libpcl-keypoints1.10  \
  libpcl-ml1.10  \
  libpcl-octree1.10  \
  libpcl-outofcore1.10  \
  libpcl-people1.10  \
  libpcl-recognition1.10  \
  libpcl-registration1.10  \
  libpcl-sample-consensus1.10  \
  libpcl-search1.10 \
  libpcl-segmentation1.10  \
  libpcl-stereo1.10  \
  libpcl-surface1.10  \
  libpcl-tracking1.10 \
  libpcl-visualization1.10  \
  libqhull-dev \
  libvtk7-dev \
  libvtk7-qt-dev \
  libpcl-doc


RUN apt-get install -y freeglut3-dev pkg-config
RUN apt-get install -y libxmu-dev libxi-dev 
RUN apt-get install -y mono-complete
RUN apt-get install -y openjdk-8-jdk openjdk-8-jre
RUN apt-get install -y openssh-server
RUN apt-get install -y openssh-client

RUN git clone https://github.com/PointCloudLibrary/pcl pcl-trunk

# install pcl
RUN cd pcl-trunk && mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. 
RUN cd pcl-trunk/build && make 
RUN cd pcl-trunk/build && make  install

ENV  DISPLAY=unix$DISPLAY
