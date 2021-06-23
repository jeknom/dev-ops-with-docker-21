FROM node:14.17.1

RUN apt-get update -y && apt-get install git -y

RUN npm install -g serve

RUN git clone https://github.com/docker-hy/material-applications.git

RUN cd /material-applications/example-frontend/ && npm install

RUN cd /material-applications/example-frontend/ && npm run build

RUN cd /material-applications/example-frontend/ && npm run build

EXPOSE 5000

CMD cd /material-applications/example-frontend/ && serve -s -l 5000 build