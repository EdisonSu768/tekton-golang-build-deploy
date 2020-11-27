FROM alpine

COPY /go/src/github.com/EdisonSu768/tekton-golang-build-deploy/http-server /tmp

CMD /tmp/http-server

EXPOSE 9898
