FROM --platform=linux/amd64 docker:git

RUN apk update
RUN apk add --no-cache python3 py3-pip

# necessary packages
RUN pip3 install toml toml-cli
