FROM ubuntu:18.04

RUN apt update && apt install curl -y

COPY curl-script.sh .

RUN chmod +x curl-script.sh

CMD ./curl-script.sh