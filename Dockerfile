FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

COPY feed.py /usr/bin/feed.py 

COPY entrypoint.sh /enrtypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
