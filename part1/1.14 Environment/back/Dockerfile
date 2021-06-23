FROM golang:1.16

RUN apt-get update -y && apt-get install git -y

RUN git clone https://github.com/docker-hy/material-applications.git

ENV REQUEST_ORIGIN=http://localhost:5000

RUN cd /go/material-applications/example-backend && go build

EXPOSE 8080

CMD cd /go/material-applications/example-backend/ && ./server