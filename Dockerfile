FROM codercom/code-server
LABEL maintainer="Narate Ketram <koonnarate@gmail.com>"
USER root
ENV DOCKER_VERSION=19.03.2
RUN cd /tmp  & \
    wget https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VERSION.tgz && \
    tar xzvf docker-$DOCKER_VERSION.tgz && \
    cp docker/docker /usr/local/bin/docker && \
    rm -rf docker* && \
    apt-get update && \
    apt-get install -y --no-install-recommends python-pip python-dev build-essential && \
    rm -rf /var/lib/apt/lists/* && \
    pip install setuptools && \
    pip install docker-compose && \
    apt-get autoremove
