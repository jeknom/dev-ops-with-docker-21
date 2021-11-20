FROM golang:1.16

RUN apt-get update -y && apt-get install git -y

RUN git clone https://github.com/docker-hy/material-applications.git

ENV REQUEST_ORIGIN=http://localhost

WORKDIR /go/material-applications/example-backend/

RUN go build

EXPOSE 8080

RUN useradd -m appuser

RUN chown -R appuser /go/material-applications/example-backend/

USER appuser

CMD ./server