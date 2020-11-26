FROM alpine

COPY http-server /tmp

CMD /tmp/http-server

EXPOSE 9898
