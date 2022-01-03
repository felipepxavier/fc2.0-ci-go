FROM golang:latest

WORKDIR /app

COPY . .

RUN go env -w GO111MODULE=auto && go build -o math

CMD ["./math"]