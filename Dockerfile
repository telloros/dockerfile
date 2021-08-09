FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
ENV ROS_DISTRO melodic

# VScode setting
RUN apt update && \
    apt install -y --no-install-recommends \
    wget \
    git \
    libssl-dev \
    libbz2-dev \
    libsqlite3-dev \
    libreadline-dev \
    zlib1g-dev \
    libasound2-dev \
    libxss1 \
    libxtst6 \
    gdebi \
    gnupg \
    gnupg2 \
    curl \
    apt-utils

# normal setting
RUN apt update && \
    apt install -y --no-install-recommends \
    gedit \
    xfce4-terminal \
    libfmt-dev \
    libspdlog-dev

# ROS setting
RUN apt update && \
    apt install -y --no-install-recommends \
    lsb-release

# setup my source.list
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
RUN apt update && \
    apt install -y --no-install-recommends \
    libboost-all-dev
RUN apt update && \
    apt install -y --no-install-recommends \
    libopencv-dev
RUN apt update && \
    apt install -y --no-install-recommends \
    ros-melodic-ros-base
RUN apt update && \
    apt install -y --no-install-recommends \
    ros-melodic-desktop-full

# installation
RUN apt update && \
    apt install -y --no-install-recommends \
    ros-melodic-moveit \
    ros-melodic-moveit-visual-tools \
    ros-melodic-gazebo-ros-control \
    ros-melodic-ros-control \
    ros-melodic-ros-controllers \
    ros-melodic-rqt \
    ros-melodic-joint-state-publisher-gui \
    python-rosdep \
    python-rosinstall \
    python-rosinstall-generator \
    python-wstool \
    python-catkin-tools \
    build-essential \
    tree \
    python-tk \
    python-pip \
    unzip \
    meshlab \