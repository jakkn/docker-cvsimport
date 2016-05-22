FROM f69m/ubuntu32:lts

MAINTAINER jakkn <jakobknutsen@gmail.com>

RUN apt-get update \
    && apt-get install -y rsync cvsps git-cvs \
    && rm -rf /var/lib/apt/lists/* \
    && sudo apt-get clean

WORKDIR /home

CMD ["/bin/bash"]
