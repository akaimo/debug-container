FROM debian:stretch

RUN apt-get update \
 && apt-get -y install \
    redis-tools \
    mysql-client \
    postgresql-client \
    dnsutils \
    telnet \
    net-tools \
    traceroute \
    mtr \
    tcpdump \
    nmap \
    curl \
    vim \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

CMD ["sh", "-c", "tail -f /dev/null"]
