FROM alpine:3.8
MAINTAINER breakersun <leosunsl@outlook.com>

WORKDIR /
ENV NPC_VERSION 0.23.2

RUN set -x && \
	wget --no-check-certificate https://github.com/cnlh/nps/releases/download/v${NPC_VERSION}/linux_amd64_client.tar.gz && \
	mkdir \npc && \
	mv linux_amd64_client* /npc && \
	cd /npc && \
	tar xzf linux_amd64_client.tar.gz && \
	rm -rf *.tar.gz

ENV SERVERIP 127.0.0.1:8024
ENV VKEY 123

CMD /npc/nps/npc -server=${SERVERIP} -vkey=${VKEY}
