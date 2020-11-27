FROM alpine

COPY /workspace/source/http-server /tmp

CMD /tmp/http-server

EXPOSE 9898
