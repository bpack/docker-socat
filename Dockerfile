FROM alpine

LABEL maintainer="Benjamin Pack <ben.pack@gmail.com>"

RUN apk --no-cache add socat

ENTRYPOINT ["socat"]
