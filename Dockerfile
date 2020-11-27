FROM alpine

COPY github.com/EdisonSu768/tekton-golang-build-deploy/cmd/http-server /tmp

CMD /tmp/http-server

EXPOSE 9898
