FROM alpine:3.13

EXPOSE 8080
WORKDIR /usr/src/app
COPY . .

RUN apk add --no-cache go && go build && apk del go

ENTRYPOINT ["./server"]