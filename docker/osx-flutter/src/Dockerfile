FROM sickcodes/docker-osx:latest

LABEL maintainer="tiendung.vk0895@gmail.com"

SHELL ["/bin/bash", "-c"]

ENV JVM_OPTS="Xmx3200m"


### Install Brew
RUN "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

### Add Homebrew to your PATH in /home/arch/.profile:
RUN    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/arch/.profile
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

### Install Java