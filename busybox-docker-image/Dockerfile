FROM busybox:latest

MAINTAINER Yaniv Norman <ynorman@vmware.com>

WORKDIR /

RUN wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && mv jq-linux64 /bin/jq && chmod 755 /bin/jq

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/linux/amd64/kubectl && chmod 755 kubectl && mv kubectl /bin/kubectl

ADD label-node.sh .

RUN chmod 755 label-node.sh

CMD ["tail", "-f", "/dev/null"]
