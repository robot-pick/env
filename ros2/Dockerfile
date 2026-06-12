FROM osrf/ros:jazzy-desktop

ENV DEBIAN_FRONTEND=noninteractive

# 基础工具
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    lsb-release \
    locales \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    ros-jazzy-xacro \
    ros-jazzy-joint-state-publisher-gui \
    ros-jazzy-moveit* \
    ros-jazzy-ros2-control \
    ros-jazzy-ros2-controllers

# locale
RUN locale-gen en_US en_US.UTF-8
ENV LANG=en_US.UTF-8

RUN echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc

CMD ["bash"]
