FROM alpine:latest
RUN apk add make 
RUN apk add python3
RUN apk add nodejs
RUN apk add go
RUN apk add openjdk8
RUN apk add build-base
RUN apk add rust
RUN apk add ruby
RUN apk add php7
RUN apk add ghc
RUN apk add lua
RUN apk add bash
RUN apk add clisp
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"
COPY . .
RUN ghc --make fibonacci
CMD make $LANGUAGE INDEX=$INDEX
