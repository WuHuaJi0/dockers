FROM ubuntu:18.04
# 安装必要工具
RUN sed -i s/archive.ubuntu.com/mirrors.aliyun.com/g /etc/apt/sources.list \
    && sed -i s/security.ubuntu.com/mirrors.aliyun.com/g /etc/apt/sources.list \
    && apt update && apt install -y \
	vim \
	git \
	curl \
	wget \
	#ifconfig 
	net-tools \ 
	# ping
	iputils-ping \
	&& rm -rf /var/lib/apt/lists/*; \
	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;

WORKDIR /root
