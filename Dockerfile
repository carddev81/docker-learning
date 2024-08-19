FROM golang:1.23

WORKDIR /pkrates-web-api

COPY go.mod go.sum ./

RUN go mod download && go mod verify

COPY . .

RUN go build

ENV PORT=8081
EXPOSE 8081

CMD ["./pkrates-web-api"]
