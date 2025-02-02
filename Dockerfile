FROM alpine:3.12

ARG DOCKER_CLI_VERSION=${DOCKER_CLI_VERSION}
RUN wget -O- https://download.docker.com/linux/static/stable/x86_64/docker-20.10.21.tgz | \
    tar -xzf - docker/docker --strip-component=1 && \
    mv docker /usr/local/bin

#COPY dive /usr/local/bin/
COPY dist/dive_linux_amd64_v1/dive /usr/local/bin

ENTRYPOINT ["/usr/local/bin/dive"]
