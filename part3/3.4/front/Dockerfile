FROM node:14.17.1

RUN apt-get update -y && \
  apt-get install git -y && \
  npm install -g serve && \
  git clone https://github.com/docker-hy/material-applications.git && \
  mv /material-applications/example-frontend /example-frontend && \
  rm -rf /material-applications && \
  cd /example-frontend && \
  npm install && \
  npm run build && \
  useradd -m appuser && \
  apt-get purge -y --auto-remove git && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R appuser /example-frontend

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://localhost/api

USER appuser

WORKDIR /example-frontend

CMD serve -s -l 5000 build