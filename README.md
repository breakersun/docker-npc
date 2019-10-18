# docker-npc

执行命令

docker run -d --name npc -e SERVERIP=127.0.0.1:8284 -e VKEY=123 breakersun/npc:amd64

docker run -d --name npc -e SERVERIP=127.0.0.1:8284 -e VKEY=123 breakersun/npc:aarch64

or

docker run -d --name npc --net=host -e SERVERIP=127.0.0.1:8284 -e VKEY=123 breakersun/npc:amd64

docker run -d --name npc --net=host -e SERVERIP=127.0.0.1:8284 -e VKEY=123 breakersun/npc:aarch64