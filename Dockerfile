ARG BASE_IMAGE
ARG BUILD_DATE="2025-03-05"

FROM $BASE_IMAGE

ENV UBUNTU_UPDATED_TIME=${BUILD_DATE}
# Set DEBIAN_FRONTEND to noninteractive to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND="noninteractive"
ENV TERM=xterm-256color

# Update system and install essential packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends apt-utils && \
    apt-get upgrade -y && \
    apt-get install -y vim net-tools iputils-ping curl wget tree jq htop unzip zip netcat traceroute && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
 
# Install Korean language support
RUN apt-get install -y --no-install-recommends language-pack-ko && \
    dpkg-reconfigure locales && \
    locale-gen ko_KR.UTF-8 && \
    /usr/sbin/update-locale LANG=ko_KR.UTF-8 && \
    apt-get install -y --no-install-recommends fonts-nanum fonts-nanum-coding && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
    
ENV LANG=ko_KR.UTF-8 
ENV LANGUAGE=ko_KR.UTF-8 
ENV LC_ALL=ko_KR.UTF-8

# Timezone
ENV TZ Asia/Seoul 
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


