FROM osrf/ros:humble-desktop

ENV DEBIAN_FRONTEND=noninteractive

# 基础工具
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    lsb-release \
    locales \
    && rm -rf /var/lib/apt/lists/*

# locale
RUN locale-gen en_US en_US.UTF-8
ENV LANG=en_US.UTF-8

RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

CMD ["bash"]