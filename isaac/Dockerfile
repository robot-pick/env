FROM nvcr.io/nvidia/isaac-sim:5.1.0

# ✅ 必须 root
USER root

ENV DEBIAN_FRONTEND=noninteractive

# =========================
# 1. 修复 apt + 安装基础工具
# =========================
RUN rm -rf /var/lib/apt/lists && \
    mkdir -p /var/lib/apt/lists/partial && \
    apt-get update && \
    apt-get install -y \
        wget \
        curl \
        git \
        vim \
        lsb-release \
        gnupg \
        locales && \
    rm -rf /var/lib/apt/lists/*

# =========================
# 2. locale
# =========================
RUN locale-gen en_US en_US.UTF-8 && \
    update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

ENV LANG=en_US.UTF-8