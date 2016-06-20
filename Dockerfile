FROM library/debian:wheezy
MAINTAINER Kenneth Peiruza <kenneth@floss.cat>
# Minimal changes to httpd
# "nameserver 10.27.100.2" > /etc/resolv.conf && \
RUN echo apt-get update && \
apt-get -y upgrade && \
apt-get install -y iputils-ping netcat-traditional && \
apt-get clean && apt-get autoclean && \
  rm -rf /var/lib/apt/lists/* 
