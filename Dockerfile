FROM ubuntu:latest
LABEL maintainer=gitxpresso@outlook.com

# setup a nearby package repository
RUN rm /etc/apt/sources.list
ADD sources.list /etc/apt/sources.list

# Set correct environment variables
ENV HOME /root/
ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apt-get update && \
    apt-get install -y \
        ca-certificates \
        git \
        xvfb \
        x11vnc \
        xdotool \
        curl
        wget \
        unzip \
        firefox \
        openbox \
        menu \
        supervisor \
        x11-apps \
        net-tools \
        --no-install-recommends && \
        rm -rf /var/lib/apt/lists/*
RUN 
ENV DISPLAY :0.0

WORKDIR /root/

RUN cd /root && git clone https://github.com/kanaka/noVNC.git
RUN cd /root/noVNC/utils/ && git clone https://github.com/kanaka/websockify websockify

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Expose Port
EXPOSE 6080

CMD ["/usr/bin/supervisord", "/usr/bin/brave-browser"]
