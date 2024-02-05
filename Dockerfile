ARG BASE_IMAGE

FROM $BASE_IMAGE

ENV UBUNTU_UPDATED_TIME="2024-02-05"
ENV DEBIAN_FORNTEND="noninteractive"

RUN apt-get update && \ 
    apt-get install -y --no-install-recommends apt-utils && \
    apt upgrade -y
 
# for Hangul
RUN apt-get install -y language-pack-ko && \
    dpkg-reconfigure locales && \
    locale-gen ko_KR.UTF-8 && \
    /usr/sbin/update-locale LANG=ko_KR.UTF-8  && \
    apt-get install -y fonts-nanum fonts-nanum-coding 

ENV LANG=ko_KR.UTF-8 
ENV LANGUAGE=ko_KR.UTF-8 
ENV LC_ALL=ko_KR.UTF-8

# Timezone
ENV TZ Asia/Seoul 
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get install -y vim net-tools iputils-ping curl wget tree jq
