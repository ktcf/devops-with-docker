FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app
COPY . .

RUN go build && \
    rm -rf /usr/local/go/pkg /usr/local/go/src /usr/src/app/.git

CMD ["./server"]