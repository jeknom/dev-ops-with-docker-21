FROM golang:1.16

RUN apt-get update -y && \
  apt-get install git -y && \
  git clone https://github.com/docker-hy/material-applications.git && \
  mv /go/material-applications/example-backend /go/example-backend && \
  rm -rf /go/material-applications && \
  cd /go/example-backend/ && \
  go build && \
  useradd -m appuser && \
  chown -R appuser /go/example-backend/ && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get purge -y --auto-remove git

WORKDIR /go/example-backend/

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost

USER appuser

CMD ./server