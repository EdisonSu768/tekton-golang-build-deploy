FROM golang:1.15.5

ENV APP_NAME http-server
ENV PORT 9898

COPY ./http-server /go/src/${APP_NAME}
WORKDIR /go/src/${APP_NAME}

CMD ./${APP_NAME}

EXPOSE ${PORT}
