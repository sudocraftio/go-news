# syntax=docker/dockerfile:1

FROM golang:1.16-alpine
WORKDIR /app

COPY go.mod ./
COPY go.sum ./
COPY *.go ./
COPY ./news ./news/
COPY ./index.html ./
COPY ./.env ./

RUN go build -o /go-news

EXPOSE 80

CMD [ "/go-news" ]
