FROM joshdev/alpine-oraclejdk8:8u102

ADD sbt.boot /drone/sbt.boot

# Set environment
ENV SBT_HOME /usr/lib/sbt
ENV PATH $PATH:$SBT_HOME/bin
ENV sbt.boot.properties /drone/sbt.boot

RUN apk add --no-cache bash \
  && apk add --no-cache --virtual=build-dependencies wget ca-certificates \
  && apk add --no-cache git \
  && cd /usr/lib \
  && wget -q --no-cookies https://dl.bintray.com/sbt/native-packages/sbt/0.13.12/sbt-0.13.12.tgz -O - | gunzip | tar x \
  && apk del build-dependencies \
  && rm -rf /tmp/*


