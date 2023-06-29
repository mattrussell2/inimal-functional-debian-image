FROM debian:bookworm-slim

RUN apt update && apt upgrade -y 
RUN apt install openssh-client rsync git -y