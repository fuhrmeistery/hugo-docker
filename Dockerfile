FROM debian:10
ENV HUGO hugo_0.69.2_Linux-64bit.deb
ENV HUGO_PACKAGE https://github.com/gohugoio/hugo/releases/download/v0.69.2/${HUGO}
RUN apt-get update && apt-get upgrade -y && apt-get install curl -y && apt-get clean
RUN curl -fsSLO ${HUGO_PACKAGE}
RUN apt-get install -y ./${HUGO}