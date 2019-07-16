FROM ubuntu:18.04

MAINTAINER bkperio@gmail.com

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils

# for Hangul
RUN apt-get install -y language-pack-ko
RUN dpkg-reconfigure locales
RUN locale-gen ko_KR.UTF-8
RUN /usr/sbin/update-locale LANG=ko_KR.UTF-8

RUN apt-get install -y fonts-nanum 
RUN apt-get install -y fonts-nanum-coding

ENV LANG=ko_KR.UTF-8 
ENV LANGUAGE=ko_KR.UTF-8 
ENV LC_ALL=ko_KR.UTF-8

# Timezone
ENV TZ Asia/Seoul 

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get install -y vim 
RUN apt-get install -y net-tools

