FROM alpine:latest

RUN apk update && apk add postgresql python3 py3-pip && pip3 install awscli && rm -rf /var/cache/apk/*

ENV POSTGRES_DATABASE **None**
ENV POSTGRES_HOST **None**
ENV POSTGRES_PORT 5432
ENV POSTGRES_USER **None**
ENV POSTGRES_PASSWORD **None**
ENV S3_ACCESS_KEY_ID **None**
ENV S3_SECRET_ACCESS_KEY **None**
ENV S3_BUCKET **None**
ENV S3_REGION us-west-1
ENV S3_PATH 'backup'
ENV S3_ENDPOINT **None**
ENV SCHEDULE **None**

ADD backup.sh backup.sh

CMD ["sh", "backup.sh"]
