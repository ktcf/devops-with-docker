FROM golang:1.20
WORKDIR /app
COPY useless.go .
RUN go build -o useless useless.go
ENTRYPOINT [ "./useless" ]