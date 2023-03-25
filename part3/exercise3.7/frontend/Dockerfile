FROM alpine:3.13

EXPOSE 5000
WORKDIR /usr/src/app

COPY . .
RUN apk add --no-cache nodejs npm && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    rm -rf /var/lib/apt/lists/*

CMD ["serve", "-s", "-l", "5000", "build"]