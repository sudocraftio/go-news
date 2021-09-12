# syntax=docker/dockerfile:1

FROM golang:1.16-alpine
WORKDIR /app

COPY go.mod ./
COPY go.sum ./
COPY *.go ./
COPY ./news ./news/
COPY ./assets ./assets/
COPY ./index.html ./
COPY ./config/.env ./config/

RUN go build -o /go-news

EXPOSE 80

CMD [ "/go-news" ]
