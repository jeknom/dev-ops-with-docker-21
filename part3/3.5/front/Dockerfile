FROM node:14.17.1-alpine3.12

RUN apk update && \
  apk add --no-cache git && \
  npm install -g serve && \
  git clone https://github.com/docker-hy/material-applications.git && \
  mv /material-applications/example-frontend /example-frontend && \
  rm -rf /material-applications && \
  cd /example-frontend && \
  npm install && \
  npm run build && \
  adduser -S appuser && \
  apk del git && \
  chown -R appuser /example-frontend

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost/api

USER appuser

WORKDIR /example-frontend

CMD serve -s -l 5000 build