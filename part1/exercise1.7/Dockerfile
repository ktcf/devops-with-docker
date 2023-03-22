FROM ubuntu:20.04
WORKDIR /usr/src/app
COPY script.sh .
RUN chmod +x script.sh
RUN apt update && apt install -y curl
CMD ./script.sh