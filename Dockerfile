From ubuntu:latest

# install tools
RUN apt-get update && apt-get install -y wget

 # install go
RUN wget https://dl.google.com/go/go1.14.5.linux-amd64.tar.gz && \
  tar -C /usr/local -xzf go1.14.5.linux-amd64.tar.gz
ENV PATH=$PATH:/usr/local/go/bin

# mount source
WORKDIR /go/src
COPY ./go/src .
CMD ["/bin/bash"]
