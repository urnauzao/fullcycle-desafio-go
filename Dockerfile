FROM scratch
COPY ./build_linux/go /
ENTRYPOINT ["/go"]