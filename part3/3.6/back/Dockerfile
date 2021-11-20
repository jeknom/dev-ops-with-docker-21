FROM golang:1.16-alpine3.14 as build-stage

RUN apk update && \
  apk add --no-cache git && \
  git clone https://github.com/docker-hy/material-applications.git && \
  cd /go/material-applications/example-backend && \
  export CGO_ENABLED=0 && \
  go build

FROM scratch

COPY --from=build-stage /go/material-applications/example-backend/server /

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost

CMD ["./server"]