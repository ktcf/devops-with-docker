FROM ubuntu:22.04

EXPOSE 5000

WORKDIR /app
COPY . .

RUN apt update && \
    apt install -y curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash && \
    apt update && \
    apt install -y nodejs && \
    npm ci && \
    npm run build && \
    npm install -g serve && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/*

CMD ["serve", "-s", "-l", "5000", "build"]