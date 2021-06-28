FROM node:14.17.1

RUN apt-get update -y && apt-get install git -y && apt-get install sqlite3 -y

RUN git clone https://github.com/jeknom/portfolio.git

RUN touch /portfolio/portfolio.db

RUN sqlite3 /portfolio/portfolio.db < /portfolio/db-schema.sql

RUN echo 'ENVIRONMENT="dev"\nSQLITE_DATABASE_PATH="/portfolio/portfolio.db"' > /portfolio/.env.local

RUN cd portfolio/ && npm install && npm run build

EXPOSE 3000/tcp

CMD cd portfolio/ && npx next start