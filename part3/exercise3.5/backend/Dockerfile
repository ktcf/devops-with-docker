FROM golang:1.16-alpine

RUN adduser -D appuser
WORKDIR /home/appuser/app

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -o server
RUN chown -R appuser:appuser /home/appuser/app
USER appuser
EXPOSE 8080

CMD ["./server"]