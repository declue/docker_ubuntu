ARG BASE_IMAGE

FROM $BASE_IMAGE

ENV DEBIAN_FORNTEND="noninteractive"

RUN apt-get update 
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt upgrade -y
 
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
RUN apt-get install -y iputils-ping
RUN apt-get install -y curl
RUN apt-get install -y wget
