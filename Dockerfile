FROM golang:1.15.5

ENV APP_NAME edisonServer
ENV PORT 9898

COPY ./cmd /go/src/${APP_NAME}
WORKDIR /go/src/${APP_NAME}

RUN go get ./
RUN go build -o ${APP_NAME}

CMD ./${APP_NAME}

EXPOSE ${PORT}
