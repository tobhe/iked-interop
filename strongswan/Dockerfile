FROM debian:bullseye

RUN apt-get update && apt-get install -y \
	autoconf \
	automake \
	gettext \
	git \
	iptables \
	kmod \
	pkg-config \
	supervisor \
	strongswan \
	xl2tpd

ADD run.sh /run.sh
ADD ipsec.d /etc/ipsec.d

EXPOSE 4500/udp 500/udp

CMD ["/run.sh"]
