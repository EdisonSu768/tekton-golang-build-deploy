FROM alpine

RUN ls
RUN pwd
RUN ls /workspace
COPY /workspace/source/http-server /tmp

CMD /tmp/http-server

EXPOSE 9898
