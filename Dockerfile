FROM ubuntu:latest

COPY http-server /tmp

CMD /tmp/http-server

EXPOSE 9898
