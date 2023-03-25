FROM alpine:3.13 AS build

WORKDIR /usr/src/app
COPY . .

RUN apk add --no-cache go && go build

FROM scratch

EXPOSE 8080

WORKDIR /app

COPY --from=build /usr/src/app/server /app/server

ENTRYPOINT ["/app/server"]