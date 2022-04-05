FROM golang:alpine3.15 AS builder
WORKDIR /app
RUN go mod init hello
COPY hello.go .
RUN go build -o ./out/go .


FROM scratch
COPY --from=builder /app .
ENTRYPOINT ["./out/go"]