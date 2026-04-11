FROM nvcr.io/nvidia/cuda:12.3.0-base-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

# base tool
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    git \
    vim \
    && rm -rf /var/lib/apt/lists/*

# GUI + OpenGL
RUN apt-get update && apt-get install -y \
    x11-apps \
    mesa-utils \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libxext6 \
    libsm6 \
    libxrender1 \
    && rm -rf /var/lib/apt/lists/*

# Python
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# 设置默认shell
SHELL ["/bin/bash", "-c"]

# 默认启动
CMD ["bash"]