FROM centos:8.3.2011
ENV container=docker

RUN set -ex \
 && dnf update -y \
 && dnf install -y vim wget net-tools iproute traceroute bash-completion procps iputils \
 && echo "TZ='Asia/Shanghai'; export TZ" >> /etc/profile \
 && ln -sf /usr/share/zoneinfo/Asia/Hong_Kong /etc/localtime \
 && chattr +i /etc/localtime \
 && mkdir /gobgp -p \
 && wget https://github.com/osrg/gobgp/releases/download/v2.24.0/gobgp_2.24.0_linux_amd64.tar.gz -O /gobgp/gobgp.tar.gz \
 && tar xvf /gobgp/gobgp.tar.gz -C /gobgp \
 && dnf clean all

COPY config.toml /gobgp

WORKDIR /gobgp

ENV PATH=/gobgp:$PATH

CMD ["/gobgp/gobgpd", "-f", "/gobgp/config.toml", "--api-hosts=:50051", "--pprof-disable"]
