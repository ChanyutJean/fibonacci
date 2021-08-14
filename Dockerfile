FROM alpine:latest
RUN apk add make 
RUN apk add python3
RUN apk add nodejs
RUN apk add go
RUN apk add openjdk8
RUN apk add build-base
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"
COPY . .
CMD make $LANGUAGE INDEX=$INDEX
