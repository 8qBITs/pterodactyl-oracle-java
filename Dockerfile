# ----------------------------------
# Oracle Java egg for Pterodactyl
# Environment: Java (glibc support)
# Minimum Panel Version: 0.6.0
# ----------------------------------
FROM        debian:buster-slim

LABEL       author="8qBIT"

RUN apt-get update -y \
    && apt-get install -y curl ca-certificates openssl git tar wget sqlite fontconfig tzdata iproute2 \
    && useradd -d /home/container -m container
 



WORKDIR     /opt/jdk

RUN         wget http://PRIVATE MIRROR/jdk-8u291-linux-x64.tar.gz \
            && tar zxvf jdk-8u291-linux-x64.tar.gz \
            && rm jdk-8u291-linux-x64.tar.gz \
            && update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_291/bin/java 100

USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]