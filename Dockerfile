FROM openjdk:8u151-jdk-alpine

MAINTAINER Subha

user root
WORKDIR /app
COPY . .

RUN apk add --no-cache --update ca-certificates

RUN apk add --no-cache curl maven && \
cd /app && mvn clean install -Dmaven.test.skip=true

#COPY target/svc.jar .

COPY start.sh .

RUN chmod +x start.sh

USER root
EXPOSE 1111
CMD ["./start.sh"]
