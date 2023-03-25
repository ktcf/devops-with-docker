FROM alpine:3.13 AS build

RUN apk add --no-cache go

WORKDIR /build
COPY useless.go .
RUN go build -o useless useless.go

FROM scratch

WORKDIR /app
COPY --from=build /build/useless /app/useless

ENTRYPOINT ["/app/useless"]