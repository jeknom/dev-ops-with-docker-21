FROM alpine:latest

COPY clone-and-push.sh clone-and-push.sh

RUN apk update

RUN apk add --no-cache --upgrade bash
RUN apk add git
RUN apk add docker

RUN chmod +x ./clone-and-push.sh

ENV GIT_REPO ${GIT_REPO}
ENV DOCKER_REPO ${DOCKER_REPO}
ENV DOCKER_USER ${DOCKER_USER}
ENV DOCKER_PASS ${DOCKER_PASS}

ENTRYPOINT ./clone-and-push.sh ${GIT_REPO} ${DOCKER_REPO} ${DOCKER_USER} ${DOCKER_PASS}