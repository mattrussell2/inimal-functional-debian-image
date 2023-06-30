FROM docker:git

RUN apt update && apt upgrade -y 

RUN apt install openssh-client rsync git -y

# python
RUN apt-get update && apt-get install --assume-yes --no-install-recommends \
    python3 \
    python3-pip \
    python3-venv && \
    # Remove unused packages, erase archive files, and remove lists of packages
    apt-get autoremove --assume-yes && \
    apt-get clean && \
    rm --recursive --force /var/lib/apt/lists/*

# Python extras
RUN \
  # Install build dependencies of Python packages
  apt-get update && apt-get install --assume-yes --no-install-recommends \
    build-essential \
    python3-dev && \
  # Remove unused packages, erase archive files, and remove lists of packages
  apt-get autoremove --assume-yes && \
  apt-get clean && \
  rm --recursive --force /var/lib/apt/lists/*

# necessary packages
RUN pip3 install toml --break-system-packages