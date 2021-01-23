FROM alpine:latest

RUN apk add openssh python3 ansible \
    && rm -rf /var/cache/apk/*

WORKDIR /ansible

CMD [ "ansible-playbook", "--version" ]
