FROM alpine:3.9.4

MAINTAINER Yaniv Norman <ynorman@vmware.com>

WORKDIR /

RUN apk --no-cache add curl

RUN apk --no-cache add jq 

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/linux/amd64/kubectl && chmod 755 kubectl && mv kubectl /bin/kubectl

ADD label-node.sh .

RUN chmod 755 label-node.sh

CMD ["/bin/sh", "-c" , "sleep 60m"]
