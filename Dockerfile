FROM golang:latest AS builder

RUN make lint
RUN make test
RUN make builder

FROM alpine:latest

COPY --from=builder /build/dynamic-cloud-dns /dynamic-cloud-dns

CMD ["/dynamic-cloud-dns"]