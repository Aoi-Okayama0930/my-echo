FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y curl 
RUN apt-get autoremove
RUN apt-get install -y glibc

COPY _output/my-echo /my-echo

EXPOSE 1323

ENTRYPOINT ["/my-echo"]
