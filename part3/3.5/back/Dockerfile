FROM golang:1.16-alpine3.14

RUN apk update && \
  apk add --no-cache git && \
  git clone https://github.com/docker-hy/material-applications.git && \
  mv /go/material-applications/example-backend /go/example-backend && \
  rm -rf /go/material-applications && \
  cd /go/example-backend/ && \
  go build && \
  adduser -S appuser && \
  chown -R appuser /go/example-backend/ && \
  apk del git

WORKDIR /go/example-backend/

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost

USER appuser

CMD ./server