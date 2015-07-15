FROM ubuntu:14.04

RUN locale-gen en_GB en_GB.UTF-8 && dpkg-reconfigure locales

RUN apt-get update && apt-get install -y \
    libreadline-dev \
    libssl-dev \
    wget \
    git-core \
    build-essential &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install ruby-build and then ruby
ENV CONFIGURE_OPTS --disable-install-rdoc
RUN git clone https://github.com/sstephenson/ruby-build.git && \
    ./ruby-build/install.sh && \
    ruby-build 2.2.2 /usr/local && \
    rm ruby-build -r && \
    gem update --system && \
    gem install bundler

ENTRYPOINT /bin/bash
