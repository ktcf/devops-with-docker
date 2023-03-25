FROM alpine:3.13 AS build

WORKDIR /usr/src/app
COPY . .

RUN apk add --no-cache nodejs npm && \
    npm install && \
    npm run build && \
    rm -rf /var/lib/apt/lists/*

FROM alpine:3.13

EXPOSE 5000
WORKDIR /app

RUN apk add --no-cache caddy
COPY --from=build /usr/src/app/build /app

CMD ["caddy", "file-server", "--listen", ":5000", "--root", "/app"]