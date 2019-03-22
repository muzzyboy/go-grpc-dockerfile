FROM golang:latest
  
RUN mkdir -p /gopath/src

WORKDIR /gopath/src

ENV GOPATH /gopath
ENV PATH $PATH:$GOPATH/bin

RUN apt-get update &&  \
        apt-get install protobuf-compiler -y && \
        apt-get install vim -y

# Install protobuf, grpc, and some dependencies of grpc
RUN go get -u github.com/golang/protobuf/protoc-gen-go && \
    git clone https://github.com/grpc/grpc-go.git $GOPATH/src/google.golang.org/grpc && \
    git clone https://github.com/golang/net.git $GOPATH/src/golang.org/x/net && \
    git clone https://github.com/golang/text.git $GOPATH/src/golang.org/x/text && \
    git clone https://github.com/golang/sys.git $GOPATH/src/golang.org/x/sys && \
    git clone https://github.com/google/go-genproto.git $GOPATH/src/google.golang.org/genproto && \
    go install $GOPATH/src/google.golang.org/grpc

RUN touch /deamon

CMD tail -f /deamon
