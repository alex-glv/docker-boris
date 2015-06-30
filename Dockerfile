FROM debian:jessie
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -q -y libreadline-dev php5 php5-common php5-cli curl php5-readline
RUN curl -L -O https://github.com/borisrepl/boris/releases/download/v1.0.8/boris.phar
RUN chmod +x boris.phar
RUN mv boris.phar /usr/bin/boris
CMD [ "boris" ]
