FROM nginx:latest
MAINTAINER Philip G <gp@gpcentre.net>

# Some useful debugging tools I use locally for development
RUN apt-get update && apt-get dist-upgrade -y && \
    apt-get install -y wget curl locate zip unzip telnet vim && \ 
    apt-get clean && \
  	apt-get autoremove -y && \
  	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV HOME /root
ENV TERM xterm

WORKDIR /etc/nginx

RUN echo 'alias ls="ls --color=auto"' >> ~/.bashrc
RUN echo 'alias ll="ls --color=auto -l"' >> ~/.bashrc