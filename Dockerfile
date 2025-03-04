ARG BASE_IMAGE
ARG BUILD_DATE

FROM $BASE_IMAGE

# Set build date as an environment variable
ENV UBUNTU_UPDATED_TIME=${BUILD_DATE}
# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND="noninteractive"

ENV TERM=xterm-256color

# Update system and install essential packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        apt-utils locales vim net-tools iputils-ping curl wget tree jq htop unzip zip traceroute \
        software-properties-common lsb-release ca-certificates dnsutils  && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Manually configure Korean locale (Fix for missing language-pack-ko)
RUN echo "ko_KR.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen ko_KR.UTF-8 && \
    update-locale LANG=ko_KR.UTF-8
    
# Install Nanum fonts (with error handling for unsupported platforms)
RUN apt-get update && \
    apt-get install -y --no-install-recommends fonts-nanum fonts-nanum-coding || true && \
    fc-cache -fv && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
    
# Set environment variables for Korean language support    
ENV LANG=ko_KR.UTF-8 
ENV LANGUAGE=ko_KR.UTF-8 
ENV LC_ALL=ko_KR.UTF-8

# Timezone
ENV TZ Asia/Seoul 
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


