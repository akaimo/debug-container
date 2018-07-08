FROM debian:stretch

RUN apt-get update \
 && apt-get -y install \
    redis-tools \
    mysql-client \
    dnsutils \
    telnet \
    net-tools \
    traceroute \
    mtr \
    tcpdump \
    nmap \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

CMD ["sh", "-c", "tail -f /dev/null"]
