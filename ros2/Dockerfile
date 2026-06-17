FROM osrf/ros:jazzy-desktop

ENV DEBIAN_FRONTEND=noninteractive

# 基础工具
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    lsb-release \
    locales \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    ros-jazzy-xacro \
    ros-jazzy-joint-state-publisher-gui \
    ros-jazzy-moveit* \
    ros-jazzy-ros2-control \
    ros-jazzy-ros2-controllers

ENV TOPIC_BASED_WS=/opt/topic_based_ros2_control_ws
RUN mkdir -p ${TOPIC_BASED_WS}/src && \
    git clone https://github.com/PickNikRobotics/topic_based_ros2_control.git \
    ${TOPIC_BASED_WS}/src/topic_based_ros2_contro && \
    apt-get update && \
    . /opt/ros/jazzy/setup.sh && \
    cd ${TOPIC_BASED_WS} && \
    colcon build --merge-install --cmake-args -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF && \
    rm -rf /var/lib/apt/lists/*

RUN echo "source ${TOPIC_BASED_WS}/install/setup.bash" >> ~/.bashrc

# locale
RUN locale-gen en_US en_US.UTF-8
ENV LANG=en_US.UTF-8

RUN echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc

CMD ["bash"]
