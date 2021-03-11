FROM debian:latest

RUN apt update
RUN apt install mumble-server -y

RUN useradd -ms /bin/sh murmur

RUN mkdir -p /opt/murmur/data
RUN chown murmur:murmur /opt/murmur/data

ENTRYPOINT ["murmurd", "-fg", "-ini", "/etc/murmur-docker.ini"]
