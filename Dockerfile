FROM kalilinux/kali-rolling

ENV RUNTIME_FOLDER=/root/workspace

WORKDIR ${RUNTIME_FOLDER}

RUN apt update -y && apt install -y proxychains \
    tor \
    curl \
    telnet \
    netcat-traditional \
    libcap2-bin \
    net-tools \
    traceroute \
    ldnsutils \
    nikto \
    nmap \
    whatweb \
    amass

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY proxychains.conf /etc/proxychains.conf

RUN chmod +x /usr/local/bin/entrypoint.sh

VOLUME [ "/root/workspace/runtime" ]

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
