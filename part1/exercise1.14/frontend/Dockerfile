FROM ubuntu:22.04
EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost:8080

COPY . .
RUN apt update
RUN apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt update
RUN apt install -y nodejs
RUN npm install
RUN npm run build
RUN npm install -g serve
CMD serve -s -l 5000 build