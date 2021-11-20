FROM node:14.17.1-alpine3.12 as build-stage

RUN apk update && \
  apk add --no-cache git && \
  git clone https://github.com/docker-hy/material-applications.git && \
  mv /material-applications/example-frontend /example-frontend && \
  rm -rf /material-applications && \
  cd /example-frontend && \
  npm install && \
  npm run build && \
  apk del git

FROM node:14.17.1-alpine3.12

COPY --from=build-stage /example-frontend/build /build

RUN npm install -g serve && \
  adduser -S appuser && \
  chown -R appuser build

USER appuser

ENV REACT_APP_BACKEND_URL=http://localhost/api

EXPOSE 5000

CMD serve -s -l 5000 build