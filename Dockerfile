FROM alpine:latest
RUN apk add make 
RUN apk add python3
RUN apk add nodejs
RUN apk add go
RUN apk add openjdk8
RUN apk add build-base
RUN apk add rust
RUN apk add ruby
RUN apk add nginx php7 php7-fpm php7-opcache
RUN apk add sbcl
RUN apk add ghc
RUN apk add nginx-mod-http-lua
RUN apk add perl
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"
COPY . .
CMD make $LANGUAGE INDEX=$INDEX
