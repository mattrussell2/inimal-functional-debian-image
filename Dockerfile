FROM --platform=linux/amd64 debian:bookworm-slim

RUN apt update && apt upgrade -y 
RUN apt install openssh-client rsync git python3 python3-pip -y

RUN python3 -m pip install toml-cli --break-system-packages